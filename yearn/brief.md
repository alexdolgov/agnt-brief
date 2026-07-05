# Agentic Audit Brief: Yearn

## Project Overview

- Project: Yearn (`yearn`)
- Website: [https://yearn.fi/](https://yearn.fi/)
- Lifecycle: unknown
- Generated: 2026-07-05T13:05:35.987Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 666 unique implementations (666 raw deployments)
- Coverage basis: 55/445 confirmed own live verified implementations (12.4%); conservative 8.6% with 193 needs-review implementation(s)
- DeFi Llama TVL: $202,148,460.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Risk Curators. Structurally: 543 project-authored contract(s) across 5 chain(s); 3 ERC4626 vaults, 66 ERC20 tokens, 4 ERC721 NFTs, 1 ERC1155 multi-token, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 85 common project-authored base contract(s) (lptokenwrapper, irewarddistributionrecipient, basestrategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 666; live-surface contracts included: 666 (660 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 55/445 (12.4%)
- Deployed-live implementations: 660 of 666 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 57/666
- Verified + Unaudited implementations: 609
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 666
- Raw deployments: 666
- Audits discovered: 89 (89 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 42
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 77 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 57 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 7.0% (ChainSecurity, MixBytes, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| MixBytes | Tier 1 | 29 | 4.4% | 2023-10 |
| yAcademy | Tier 2 | 22 | 3.3% | 2023-07 |
| Trail of Bits | Tier 1 | 20 | 3.0% | 2021-04 |
| PeckShield | Tier 2 | 18 | 2.7% | 2021-02 |
| Decurity | Tier 2 | 17 | 2.6% | 2022-07 |
| Statemind | Tier 2 | 17 | 2.6% | 2024-03 |
| unknown | Tier 2 | 11 | 1.7% | 2025-12 |
| yAudit | Tier 2 | 9 | 1.4% | 2023-07 |
| Quantstamp | Tier 2 | 5 | 0.8% | 2020-07 |
| ChainSecurity | Tier 1 | 4 | 0.6% | 2023-11 |
| CertiK | Tier 2 | 1 | 0.2% | 2020-02 |
| Optimum | Tier 2 | 1 | 0.2% | 2022-07 |

## Contract Surface

### ✅ Verified + Audited (57)

| Contract Name | Role | Surface | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|---|
| Accountant | unknown | own_core | base | n/a | [`0x1f3998...b27c8a`](./contracts/base-8453/0x1f399808fe52d0e960cab84b6b54d5707ab27c8a/) | ✅ Audited |
| AccountantFactory | unknown | own_core | ethereum | n/a | [`0xf728f8...1c32d1`](./contracts/ethereum-1/0xf728f839796a399acc2823c1e5591f05a31c32d1/) | ✅ Audited |
| Address | unknown | own_core | ethereum | n/a | [`0x1ed976...ea0aab`](./contracts/ethereum-1/0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab/) | ✅ Audited |
| AjnaRouterFactory | unknown | own_core | ethereum | n/a | [`0xfd8d41...189102`](./contracts/ethereum-1/0xfd8d419e4edea8a6ea7a104f76529a75be189102/) | ✅ Audited |
| Controller | unknown | own_core | ethereum | n/a | [`0x2e6556...1dc4c8`](./contracts/ethereum-1/0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8/) | ✅ Audited |
| Dumper | unknown | own_core | ethereum | n/a | [`0x590dd9...c1c4cf`](./contracts/ethereum-1/0x590dd9399bb53f1085097399c3265c7137c1c4cf/) | ✅ Audited |
| EthCream | unknown | own_core | ethereum | n/a | [`0xea87e0...665cfb`](./contracts/ethereum-1/0xea87e0f350abd0b0c213269f587d4c50a4665cfb/) | ✅ Audited |
| Executor | unknown | own_core | ethereum | n/a | [`0x71258e...8c2bf1`](./contracts/ethereum-1/0x71258ee726644f1d52d6a9f5e11c21d1e38c2bf1/) | ✅ Audited |
| Gauge | unknown | own_core | ethereum | n/a | [`0x107717...f3a27c`](./contracts/ethereum-1/0x107717c98c8125a94d3d2cc82b86a1b705f3a27c/) | ✅ Audited |
| GenericCream | unknown | own_core | ethereum | n/a | [`0x1baace...472fb3`](./contracts/ethereum-1/0x1baacef951d24c5d70a8ca88d89ce16b37472fb3/) | ✅ Audited |
| GenericDyDx | unknown | own_core | ethereum | n/a | [`0x1f2699...02ae73`](./contracts/ethereum-1/0x1f2699b3aaf3f04b61b99b776b4a21a08502ae73/) | ✅ Audited |
| GnosisSafe | unknown | standard_proxy_or_library (excluded) | ethereum | n/a | [`0x163884...790ff7`](./contracts/ethereum-1/0x16388463d60ffe0661cf7f1f31a7d658ac790ff7/) | ✅ Audited |
| KatanaStrategy | unknown | own_core | ethereum | n/a | [`0x5a090b...600e9c`](./contracts/ethereum-1/0x5a090b0d9426323e825e0a19d78b100863600e9c/) | ✅ Audited |
| Keep3rV1Oracle | unknown | own_core | ethereum | n/a | [`0x733538...70282c`](./contracts/ethereum-1/0x73353801921417f465377c8d898c6f4c0270282c/) | ✅ Audited |
| Keep3rV1Volatility | unknown | own_core | ethereum | n/a | [`0x173ed6...132dc9`](./contracts/ethereum-1/0x173ed6531818456f29fc74011a3b1fb4b6132dc9/) | ✅ Audited |
| NexusMutualCover | unknown | own_core | ethereum | n/a | [`0x93a288...de7a28`](./contracts/ethereum-1/0x93a2880f657793a1d839653c8f8cef52f3de7a28/) | ✅ Audited |
| Proxy | unknown | standard_proxy_or_library (excluded) | ethereum | n/a | [`0x242521...8ae64f`](./contracts/ethereum-1/0x242521ca01f330f050a65ff5b8ebbe92198ae64f/) | ✅ Audited |
| Registry | unknown | own_core | ethereum | n/a | [`0xd40ecf...45b038`](./contracts/ethereum-1/0xd40ecf29e001c76dcc4cc0d9cd50520ce845b038/) | ✅ Audited |
| RegistryFactory | unknown | own_core | ethereum | n/a | [`0x3a0fa8...8816a1`](./contracts/ethereum-1/0x3a0fa8aac82ad94048098d6af6e8eb36c98816a1/) | ✅ Audited |
| RescueStrategy | unknown | own_core | ethereum | n/a | [`0x9ecbb5...26b9a7`](./contracts/ethereum-1/0x9ecbb5c5b836dff9566b85ea7154ba360326b9a7/) | ✅ Audited |
| RouterStrategy | unknown | own_core | ethereum | n/a | [`0x9084b5...906dce`](./contracts/ethereum-1/0x9084b5a98e3b4b257affd82ae4a1753f87906dce/) | ✅ Audited |
| Staking | unknown | own_core | ethereum | n/a | [`0xcb7dce...5777ee`](./contracts/ethereum-1/0xcb7dce63abe175ca354dcca9cc10554d255777ee/) | ✅ Audited |
| StakingRewardsZap | unknown | own_core | ethereum | n/a | [`0x37f350...1accdc`](./contracts/ethereum-1/0x37f350dc357222e823620d473d0289c12e1accdc/) | ✅ Audited |
| Stash | unknown | own_core | ethereum | n/a | [`0xe376e8...726c2e`](./contracts/ethereum-1/0xe376e8e8e3b0793cd61c6f1283ba18548b726c2e/) | ✅ Audited |
| Strategy | unknown | own_core | ethereum | n/a | [`0x001f75...0f71a2`](./contracts/ethereum-1/0x001f751cdfee02e2f0714831be2f8384db0f71a2/) | ✅ Audited |
| StrategyAuraFactoryClonable | unknown | own_core | ethereum | n/a | [`0x2f00c2...fa18f4`](./contracts/ethereum-1/0x2f00c2b4b5bba25c72106595551073efc6fa18f4/) | ✅ Audited |
| StrategyCreamCRV | unknown | own_core | ethereum | n/a | [`0xacb5eb...fac2b7`](./contracts/ethereum-1/0xacb5ebaa9bac72581b269077ef4d0ba3eefac2b7/) | ✅ Audited |
| StrategyCreamYFI | unknown | own_core | ethereum | n/a | [`0x40bd98...549afb`](./contracts/ethereum-1/0x40bd98e3cce4f34c087a73dd3d05558733549afb/) | ✅ Audited |
| StrategyDForceUSDC | unknown | own_core | ethereum | n/a | [`0x01b354...11ab5c`](./contracts/ethereum-1/0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c/) | ✅ Audited |
| StrategyDForceUSDT | unknown | own_core | ethereum | n/a | [`0x787c77...a64bd8`](./contracts/ethereum-1/0x787c771035bde631391ced5c083db424a4a64bd8/) | ✅ Audited |
| StrategyFedPartner | unknown | own_core | ethereum | n/a | [`0xe6d110...f8b2dc`](./contracts/ethereum-1/0xe6d1100826c9b2db663edde5b2ff16e0baf8b2dc/) | ✅ Audited |
| StrategyLPConvert | unknown | own_core | ethereum | n/a | [`0x47499b...c5faf2`](./contracts/ethereum-1/0x47499bddf92e1fdff781fac78138acbdb5c5faf2/) | ✅ Audited |
| StrategyLQTYStaker | unknown | own_core | ethereum | n/a | [`0x478085...b5d4d6`](./contracts/ethereum-1/0x478085739ea884f38add4d36872acd8333b5d4d6/) | ✅ Audited |
| StrategyMKRVaultDAIDelegate | unknown | own_core | ethereum | n/a | [`0x28e5a4...e083a5`](./contracts/ethereum-1/0x28e5a47820313da9c74b8f2295795da6e6e083a5/) | ✅ Audited |
| StrategyProxy | unknown | own_core | ethereum | n/a | [`0x16c20c...597c7a`](./contracts/ethereum-1/0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a/) | ✅ Audited |
| StrategyRouterV3 | unknown | own_core | ethereum | n/a | [`0xa74967...4a01e3`](./contracts/ethereum-1/0xa7496763f035e73ec6b56f4c86312cc1874a01e3/) | ✅ Audited |
| StrategystETHAccumulatorV3 | unknown | own_core | ethereum | n/a | [`0x740e59...124a97`](./contracts/ethereum-1/0x740e59f165706f5c94cd52683c62ad8ad0124a97/) | ✅ Audited |
| StrategyVelodromeFactoryClonable | unknown | own_core | optimism | n/a | [`0x031533...c6d19b`](./contracts/optimism-10/0x03153325e09aab45926ec74c85e1eb1299c6d19b/) | ✅ Audited |
| StrategyYffi | unknown | own_core | ethereum | n/a | [`0xbe197e...da0b73`](./contracts/ethereum-1/0xbe197e668d13746bb92e675dea2868ff14da0b73/) | ✅ Audited |
| StrategyYfii | unknown | own_core | ethereum | n/a | [`0x2de055...edfa70`](./contracts/ethereum-1/0x2de055fec2b826ed4a7478ceddbeff82c1edfa70/) | ✅ Audited |
| Swapper | unknown | own_core | ethereum | n/a | [`0x2c73f6...d4695d`](./contracts/ethereum-1/0x2c73f6a362ef32b30585326ba57b5432c0d4695d/) | ✅ Audited |
| Timelock | unknown | own_core | ethereum | n/a | [`0x1994b5...929b81`](./contracts/ethereum-1/0x1994b59e02cd0d09d839b03660c205e88a929b81/) | ✅ Audited |
| TimelockGovernance | unknown | own_core | ethereum | n/a | [`0x026d4b...1dfb61`](./contracts/ethereum-1/0x026d4b8d693f6c446782c2c61ee357ec561dfb61/) | ✅ Audited |
| V3Router | unknown | own_core | ethereum | n/a | [`0x059b15...7a1ce5`](./contracts/ethereum-1/0x059b1507b22267fc1cda8b6d2fbf2cab5d7a1ce5/) | ✅ Audited |
| VaultRegistry | unknown | own_core | ethereum | n/a | [`0x78f737...ae93e9`](./contracts/ethereum-1/0x78f73705105a63e06b932611643e0b210fae93e9/) | ✅ Audited |
| yBribe | unknown | own_core | ethereum | n/a | [`0x03dfdb...7d3f6d`](./contracts/ethereum-1/0x03dfdbcd4056e2f92251c7b07423e1a33a7d3f6d/) | ✅ Audited |
| yCRV | unknown | own_core | ethereum | n/a | [`0x170411...2a221c`](./contracts/ethereum-1/0x170411a2d872945ee8c59e4ef5c3402ebe2a221c/) | ✅ Audited |
| yDAI | unknown | own_core | ethereum | n/a | [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/) | ✅ Audited |
| yDelegatedVault | unknown | own_core | ethereum | n/a | [`0x2088ba...b73d99`](./contracts/ethereum-1/0x2088ba482f2097eb47896a2ec5f3925637b73d99/) | ✅ Audited |
| YearnFeeRewards | unknown | own_core | ethereum | n/a | [`0xb01419...91a701`](./contracts/ethereum-1/0xb01419e74d8a2abb1bbad82925b19c36c191a701/) | ✅ Audited |
| YearnGovernance | unknown | own_core | ethereum | n/a | [`0x22c582...d6beea`](./contracts/ethereum-1/0x22c582ff022cbca971b89c77088b5661b3d6beea/) | ✅ Audited |
| YearnPartnerTracker | unknown | own_core | base | n/a | [`0xd0f08e...62667c`](./contracts/base-8453/0xd0f08e42a40569ff83d28aa783a5b6537462667c/) | ✅ Audited |
| YearnRewards | unknown | own_core | ethereum | n/a | [`0x0001fb...695c9f`](./contracts/ethereum-1/0x0001fb050fe7312791bf6475b96569d83f695c9f/) | ✅ Audited |
| YearnWethCreamStratV2 | unknown | own_core | ethereum | n/a | [`0x97785a...ef24f6`](./contracts/ethereum-1/0x97785a81b3505ea9026b2affa709dfd0c9ef24f6/) | ✅ Audited |
| YFI | unknown | own_core | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ✅ Audited |
| YToken | unknown | own_core | ethereum | n/a | [`0x222222...9479d6`](./contracts/ethereum-1/0x22222222aea0076fca927a3f44dc0b4fdf9479d6/) | ✅ Audited |
| yVault | unknown | own_core | ethereum | n/a | [`0x0fcda6...367889`](./contracts/ethereum-1/0x0fcda6f268d0c09cdfffe6bceac5233ac2367889/) | ✅ Audited |

### ⚠️ Verified + Unaudited (609)

| Contract Name | Role | Surface | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|---|
| 1UP depositor | unknown | needs_review | ethereum | n/a | [`0x633f18...564690`](./contracts/ethereum-1/0x633f1861e8c3e4a54451d3f726dc686a94564690/) | ⚠️ Unaudited |
| 1UP Vesting operator | unknown | needs_review | ethereum | n/a | [`0xf0d222...cccd9d`](./contracts/ethereum-1/0xf0d222c397998dc743fe430095c32c44e8cccd9d/) | ⚠️ Unaudited |
| AbiDecoder | unknown | own_supporting | ethereum | n/a | [`0x626271...6ac74d`](./contracts/ethereum-1/0x62627154d5ef4c3a2aa7fd1cadbd4425596ac74d/) | ⚠️ Unaudited |
| ACL | unknown | own_core | ethereum | n/a | [`0x17c719...2f7c90`](./contracts/ethereum-1/0x17c719e19d33261081279e8b720ff9397a2f7c90/) | ⚠️ Unaudited |
| AddLiquidityChecker | unknown | own_core | ethereum | n/a | [`0x33163e...5cb074`](./contracts/ethereum-1/0x33163e60d47255fe54392c6ab6fa2178315cb074/) | ⚠️ Unaudited |
| AddressesGenerator_VAULT_V2 | unknown | own_core | ethereum | n/a | [`0x437758...c375f0`](./contracts/ethereum-1/0x437758d475f70249e03eda6be23684ad1fc375f0/) | ⚠️ Unaudited |
| AddressesGeneratorEarn | unknown | own_core | ethereum | n/a | [`0xf53639...539344`](./contracts/ethereum-1/0xf536399c04683d7ab0bcb1308c245b4bbb539344/) | ⚠️ Unaudited |
| AddressesGeneratorIronBank | unknown | own_core | arbitrum | n/a | [`0x941f72...891763`](./contracts/arbitrum-42161/0x941f727f267913e76e3f03a25d3bc7c07e891763/) | ⚠️ Unaudited |
| AddressesGeneratorV1Vaults | unknown | own_core | ethereum | n/a | [`0xce29d3...9fc041`](./contracts/ethereum-1/0xce29d34c8e88a2e1edde10ad4eee4f3e379fc041/) | ⚠️ Unaudited |
| AddressesGeneratorV2Vaults | unknown | own_core | arbitrum | n/a | [`0x3a8efa...c0f094`](./contracts/arbitrum-42161/0x3a8efa2d87d60c0289f19b44a0928f4269c0f094/) | ⚠️ Unaudited |
| AddressesProvider | unknown | own_core | base | n/a | [`0x0d80c2...a55960`](./contracts/base-8453/0x0d80c2adfeabd3663ef64ca17a9b2a3c77a55960/) | ⚠️ Unaudited |
| AddressGeneratorFactoryVaults | unknown | own_core | ethereum | n/a | [`0xa654be...70d5be`](./contracts/ethereum-1/0xa654be30cb4a1e25d18da0629e48b13fb970d5be/) | ⚠️ Unaudited |
| AddressMergeHelper | unknown | own_supporting | optimism | n/a | [`0x156bab...a12529`](./contracts/optimism-10/0x156bab355e81b498072c9ce3cf655e9844a12529/) | ⚠️ Unaudited |
| AdminVoting | unknown | own_core | ethereum | n/a | [`0xc53baa...696734`](./contracts/ethereum-1/0xc53baaaa8595a7a2e7fee71db7291b939f696734/) | ⚠️ Unaudited |
| Agent | unknown | own_core | ethereum | n/a | [`0x5835c7...e4ee12`](./contracts/ethereum-1/0x5835c751ead74de1e75f49627226d7e75be4ee12/) | ⚠️ Unaudited |
| AgoraStrategy | unknown | own_core | ethereum | n/a | [`0xed5d52...b2a7cf`](./contracts/ethereum-1/0xed5d52c8e16257999f329c34685246ab6eb2a7cf/) | ⚠️ Unaudited |
| AHv2Repayment | unknown | own_supporting | ethereum | n/a | [`0x141e05...2f629e`](./contracts/ethereum-1/0x141e0541d87c6cbdbf2a6a8104248b4b922f629e/) | ⚠️ Unaudited |
| AirdropDistributor | unknown | needs_review | ethereum | n/a | [`0x4bd112...b99c62`](./contracts/ethereum-1/0x4bd112fff755c24c103adf5879ee914781b99c62/) | ⚠️ Unaudited |
| AirdropDistributorProxy | unknown | needs_review | ethereum | n/a | [`0x2c5333...5578af`](./contracts/ethereum-1/0x2c533357664d8750e5f851f39b2534147f5578af/) | ⚠️ Unaudited |
| Allocatin | unknown | own_core | arbitrum | n/a | [`0x000724...c40917`](./contracts/arbitrum-42161/0x0007240ff3c377fc324e581eedce86dd4dc40917/) | ⚠️ Unaudited |
| AllocationVesting | unknown | own_core | ethereum | n/a | [`0xc72bc1...436a0f`](./contracts/ethereum-1/0xc72bc1a8cf9b1a218386df641d8be99b40436a0f/) | ⚠️ Unaudited |
| AllowancesHelper | unknown | own_supporting | base | n/a | [`0x103df3...9a742c`](./contracts/base-8453/0x103df3248e4e4b45159cc29ff0f37b272a9a742c/) | ⚠️ Unaudited |
| Allowlist | unknown | own_core | ethereum | n/a | [`0xc4ed8d...2dcf04`](./contracts/ethereum-1/0xc4ed8de23884db99f3c04c1869a1e3380f2dcf04/) | ⚠️ Unaudited |
| AllowlistFactory | unknown | own_core | ethereum | n/a | [`0xef01bc...d03440`](./contracts/ethereum-1/0xef01bc08cf155098bda7a2efbc7ccef632d03440/) | ⚠️ Unaudited |
| AllowlistImplementationPartnerTracker | unknown | own_core | ethereum | n/a | [`0xd2367b...5c9b05`](./contracts/ethereum-1/0xd2367b534c1eb09867bfabe13cb72d2bbe5c9b05/) | ⚠️ Unaudited |
| AllowlistImplementationVeYFI | unknown | own_core | ethereum | n/a | [`0x526bc5...6e4e8e`](./contracts/ethereum-1/0x526bc546fa5c32bdeaa0f2da1f5ab707e26e4e8e/) | ⚠️ Unaudited |
| AlphaDistributor | unknown | own_core | ethereum | n/a | [`0x337531...721fab`](./contracts/ethereum-1/0x33753123ac0e1f3497091dad21781b8acc721fab/) | ⚠️ Unaudited |
| AlphaHomo | unknown | own_core | ethereum | n/a | [`0x39bcf3...9fabbf`](./contracts/ethereum-1/0x39bcf3caf436515ed48de859d0bda770d69fabbf/) | ⚠️ Unaudited |
| AngleAccumulatorV3 | unknown | own_core | ethereum | n/a | [`0x5ed812...f72d2e`](./contracts/ethereum-1/0x5ed81291a4b978a25bea88b0c40cb42d63f72d2e/) | ⚠️ Unaudited |
| AngleStrategy | unknown | own_core | ethereum | n/a | [`0x226354...9d7caf`](./contracts/ethereum-1/0x22635427c72e8b0028feae1b5e1957508d9d7caf/) | ⚠️ Unaudited |
| AngleVaultFactory | unknown | own_core | ethereum | n/a | [`0x66f3d3...e0b801`](./contracts/ethereum-1/0x66f3d3210f84fe8cc2c77a1f001a395b2ae0b801/) | ⚠️ Unaudited |
| AngleVaultGUni | unknown | own_core | ethereum | n/a | [`0x4ca321...1f1b02`](./contracts/ethereum-1/0x4ca321e4966a6bcbc26c13921cd76cac7d1f1b02/) | ⚠️ Unaudited |
| AngleVoter | unknown | own_core | ethereum | n/a | [`0x103a24...a3fab8`](./contracts/ethereum-1/0x103a24adf3c60e29ecf4d05ee742cadc7ba3fab8/) | ⚠️ Unaudited |
| AngleVoterV2 | unknown | own_core | ethereum | n/a | [`0xbabe5d...8cd98b`](./contracts/ethereum-1/0xbabe5d223fb31a37ce184481678a6667ac8cd98b/) | ⚠️ Unaudited |
| AngleVoterV3 | unknown | own_core | ethereum | n/a | [`0xdde0f1...917efd`](./contracts/ethereum-1/0xdde0f1755ded401a012617f706c66a59c6917efd/) | ⚠️ Unaudited |
| AprOracle | unknown | own_core | ethereum | n/a | [`0x1981ad...70af92`](./contracts/ethereum-1/0x1981ad9f44f2ea9add2dc4ad7d075c102c70af92/) | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | needs_review | ethereum | n/a | [`0x044dad...47ca14`](./contracts/ethereum-1/0x044dad5c0da888c93d8244261b67bd431b47ca14/) | ⚠️ Unaudited |
| ApwineAccumulator | unknown | own_core | ethereum | n/a | [`0x29bcfc...3070b2`](./contracts/ethereum-1/0x29bcfccb6cff577d68ea316f5685f343253070b2/) | ⚠️ Unaudited |
| ApwineDepositor | unknown | own_core | ethereum | n/a | [`0xfe928c...cefbcf`](./contracts/ethereum-1/0xfe928ca6a9c0cdf658a26a374b7373b9d6cefbcf/) | ⚠️ Unaudited |
| ApwineLocker | unknown | own_core | ethereum | n/a | [`0xe71e28...e5721d`](./contracts/ethereum-1/0xe71e28a510bc3f98a9e77e847ae5aef9a2e5721d/) | ⚠️ Unaudited |
| AuctionFactory | unknown | own_core | ethereum | n/a | [`0xba7fcb...d52f8e`](./contracts/ethereum-1/0xba7fcb508c7195ee5ae823f37ee2c11d7ed52f8e/) | ⚠️ Unaudited |
| AuctionKicker | unknown | own_core | ethereum | n/a | [`0x17d6e6...1f679e`](./contracts/ethereum-1/0x17d6e65317d42ce40f06538b68e824669e1f679e/) | ⚠️ Unaudited |
| AuctionRegistry | unknown | own_core | ethereum | n/a | [`0x94f447...e48d12`](./contracts/ethereum-1/0x94f44706a61845a4f9e59c4bc08cea4503e48d12/) | ⚠️ Unaudited |
| AuctionSweeper | unknown | own_core | ethereum | n/a | [`0x068ad6...19ddf4`](./contracts/ethereum-1/0x068ad6aa8cfa70480924675eb4545d27d319ddf4/) | ⚠️ Unaudited |
| BalancesHelper | unknown | own_core | optimism | n/a | [`0x167aa4...4e5186`](./contracts/optimism-10/0x167aa4ba31b8285707d1489ad705cb24cf4e5186/) | ⚠️ Unaudited |
| BaseConvertor | unknown | own_core | ethereum | n/a | [`0xa6b9ce...8c57f9`](./contracts/ethereum-1/0xa6b9ce48ec380dbbe3fc32c199f4fab3d08c57f9/) | ⚠️ Unaudited |
| BaseConvertor4626 | unknown | own_core | ethereum | n/a | [`0xa02459...2cbcb2`](./contracts/ethereum-1/0xa02459fe126130c4107a9b760d6eb43f2f2cbcb2/) | ⚠️ Unaudited |
| Basefee | unknown | own_supporting | arbitrum | n/a | [`0x02ff74...1d3480`](./contracts/arbitrum-42161/0x02ff746d8cb62709aeec611cec9b17d7dd1d3480/) | ⚠️ Unaudited |
| BaseFeeOracle | unknown | own_core | ethereum | n/a | [`0x1e7efa...3c868b`](./contracts/ethereum-1/0x1e7efabf282614aa2543edaa50517ef5a23c868b/) | ⚠️ Unaudited |
| Basic redeemer | unknown | needs_review | ethereum | n/a | [`0xf5dd78...62eb62`](./contracts/ethereum-1/0xf5dd7892ea53af04fb5f517ddb75089e5462eb62/) | ⚠️ Unaudited |
| BasicRewardsOracle | unknown | own_core | ethereum | n/a | [`0x176cff...c56ccc`](./contracts/ethereum-1/0x176cff10ee6755ba69f21ff95cebbe52c2c56ccc/) | ⚠️ Unaudited |
| BasicTradeFactory | unknown | own_supporting | ethereum | n/a | [`0x4a2b58...e42c35`](./contracts/ethereum-1/0x4a2b583812203d55182073324ecddca04ae42c35/) | ⚠️ Unaudited |
| Bits | unknown | own_supporting | ethereum | n/a | [`0x8558c4...b7b73b`](./contracts/ethereum-1/0x8558c4815625ffce94ec6e3eff97dbe6e1b7b73b/) | ⚠️ Unaudited |
| BlackpoolAccumulator | unknown | own_core | ethereum | n/a | [`0xfac788...8cbfbc`](./contracts/ethereum-1/0xfac788261da6e2affcd0e9ab340395378f8cbfbc/) | ⚠️ Unaudited |
| BlackpoolDepositor | unknown | own_core | ethereum | n/a | [`0x219f74...279993`](./contracts/ethereum-1/0x219f7496fbd30e1f21a20613f9372d608a279993/) | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | own_core | ethereum | n/a | [`0x8b4fd0...5da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | ⚠️ Unaudited |
| Bonus Distributor | unknown | needs_review | ethereum | n/a | [`0xa66002...b13116`](./contracts/ethereum-1/0xa66002e9ab0babf46882d0e0cd274f46ceb13116/) | ⚠️ Unaudited |
| Bonus Price Oracle | unknown | needs_review | ethereum | n/a | [`0x7e417e...0cb416`](./contracts/ethereum-1/0x7e417e19fe3f72798e1094e8df185378370cb416/) | ⚠️ Unaudited |
| Boost Delegation V2.1 | unknown | needs_review | ethereum | n/a | [`0x01fc53...cd9bd4`](./contracts/ethereum-1/0x01fc53a26033a5c0b81786b940ebefe0e7cd9bd4/) | ⚠️ Unaudited |
| Boost Delegation V3 | unknown | needs_review | ethereum | n/a | [`0x3da9be...efbb78`](./contracts/ethereum-1/0x3da9be10ab98512a96fc858595ad6dc21defbb78/) | ⚠️ Unaudited |
| BoostCalculator | unknown | own_core | ethereum | n/a | [`0x2ac44b...9c0ebc`](./contracts/ethereum-1/0x2ac44b31782a8c5ba896c29b3c2c0df1399c0ebc/) | ⚠️ Unaudited |
| Booster | unknown | own_core | ethereum | n/a | [`0x3f7c50...562bd3`](./contracts/ethereum-1/0x3f7c5021f5bc634fae82cf9f67f19c5f05562bd3/) | ⚠️ Unaudited |
| BoostViewVoodoo | unknown | own_supporting | ethereum | n/a | [`0x2cddd5...d79586`](./contracts/ethereum-1/0x2cddd57474f8ba6a512e983ff36354c7afd79586/) | ⚠️ Unaudited |
| BoostViewVoodoo2 | unknown | own_core | ethereum | n/a | [`0x56a3d2...d371b2`](./contracts/ethereum-1/0x56a3d20972fdf872ca8c799f83718f7297d371b2/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | own_core | ethereum | n/a | [`0x72c590...542719`](./contracts/ethereum-1/0x72c590349535ad52e6953744cb2a36b409542719/) | ⚠️ Unaudited |
| BountyHelper | unknown | own_core | ethereum | n/a | [`0x5ced8b...8dc1ed`](./contracts/ethereum-1/0x5ced8bbc7fca2fd370e50578786c3418848dc1ed/) | ⚠️ Unaudited |
| Burner | unknown | needs_review | ethereum | n/a | [`0xcac873...177f40`](./contracts/ethereum-1/0xcac873e93cfe5c79325e73c22975b665c6177f40/) | ⚠️ Unaudited |
| BytesLib | unknown | own_supporting | ethereum | n/a | [`0x7a432a...d72802`](./contracts/ethereum-1/0x7a432a6b19944e9e021b6cdca5e047ada5d72802/) | ⚠️ Unaudited |
| CalculationsChainlinkRegistry | unknown | own_core | optimism | n/a | [`0x5fd381...a55b4d`](./contracts/optimism-10/0x5fd3815dcb668200a662114fbc9af13ac0a55b4d/) | ⚠️ Unaudited |
| CalculationsCurve | unknown | own_core | optimism | n/a | [`0x0ffe84...aa7227`](./contracts/optimism-10/0x0ffe8434eae67c9838b12c3cd11ac4005daa7227/) | ⚠️ Unaudited |
| CalculationsFixedForex | unknown | own_core | ethereum | n/a | [`0x9956ca...3cb1fd`](./contracts/ethereum-1/0x9956ca141c344e177829671ec0f1a9d4ab3cb1fd/) | ⚠️ Unaudited |
| CalculationsIronBank | unknown | own_core | ethereum | n/a | [`0x55e9b1...de8ea4`](./contracts/ethereum-1/0x55e9b18fefff7e00548d54480373fc8843de8ea4/) | ⚠️ Unaudited |
| CalculationsOverrides | unknown | own_core | ethereum | n/a | [`0x2c8282...d5c648`](./contracts/ethereum-1/0x2c8282a17d0d20f0b3658a5eea952b2054d5c648/) | ⚠️ Unaudited |
| CalculationsSushiswap | unknown | own_core | arbitrum | n/a | [`0x5ea7e5...a1dd25`](./contracts/arbitrum-42161/0x5ea7e501c9a23f4a76dc7d33a11d995b13a1dd25/) | ⚠️ Unaudited |
| CalculationsSynth | unknown | own_core | ethereum | n/a | [`0x5a0474...43151a`](./contracts/ethereum-1/0x5a04749532195d5d16268da74775defcc843151a/) | ⚠️ Unaudited |
| CalculationsYearnVaults | unknown | own_core | ethereum | n/a | [`0x38477f...b9aa3c`](./contracts/ethereum-1/0x38477f2159638956d33e18951d98238a53b9aa3c/) | ⚠️ Unaudited |
| CalculationsZeroPrice | unknown | own_supporting | ethereum | n/a | [`0xa8b5ff...b7d8d7`](./contracts/ethereum-1/0xa8b5ff097a10a264c30ec302023730fe51b7d8d7/) | ⚠️ Unaudited |
| CallComparator | unknown | needs_review | ethereum | n/a | [`0xd3bfa8...1dec25`](./contracts/ethereum-1/0xd3bfa85dc668aab38121be12d69dd180301dec25/) | ⚠️ Unaudited |
| CapUSDExchange | unknown | own_core | ethereum | n/a | [`0xa1be70...35fdd4`](./contracts/ethereum-1/0xa1be7034b2aa8e72d81e17420b6c6c4f0035fdd4/) | ⚠️ Unaudited |
| CCTPStrategy | unknown | own_core | ethereum | n/a | [`0x6447b8...7ef295`](./contracts/ethereum-1/0x6447b88c071b98900c40da7c7957537c977ef295/) | ⚠️ Unaudited |
| ChildChainManager | unknown | third_party_dependency (excluded) | polygon | n/a | [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | needs_review | polygon | n/a | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | third_party_dependency (excluded) | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | unknown | third_party_dependency (excluded) | polygon | n/a | [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ChildERC721 | unknown | third_party_dependency (excluded) | polygon | n/a | [`0x6ebeac...a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | needs_review | polygon | n/a | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| Cliff Escrow | unknown | needs_review | ethereum | n/a | [`0x0ba8df...57e220`](./contracts/ethereum-1/0x0ba8df4bfd13e3e15da3406e4fab312a8257e220/) | ⚠️ Unaudited |
| CollateralMaximizer | unknown | own_core | ethereum | n/a | [`0x494ba8...1b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/) | ⚠️ Unaudited |
| CometOracle | unknown | own_supporting | ethereum | n/a | [`0x02939b...742f76`](./contracts/ethereum-1/0x02939ba4fd42e23d31652b4376842ab62a742f76/) | ⚠️ Unaudited |
| CommonHealthCheck | unknown | own_core | arbitrum | n/a | [`0x32059c...c470bc`](./contracts/arbitrum-42161/0x32059cce723b4dd15dd5cb2a5187f814e6c470bc/) | ⚠️ Unaudited |
| CommonTrigger | unknown | own_core | ethereum | n/a | [`0xf8df17...b9d52d`](./contracts/ethereum-1/0xf8df17a35c88abb25e83c92f9d293b4368b9d52d/) | ⚠️ Unaudited |
| CompensationEscrow | unknown | own_supporting | ethereum | n/a | [`0xda7b94...4b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | ⚠️ Unaudited |
| COMPfarming | unknown | needs_review | ethereum | n/a | [`0x1532eb...6aa870`](./contracts/ethereum-1/0x1532eb6c6d134903a0dedfc840128007b36aa870/) | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | own_core | ethereum | n/a | [`0x98158e...8039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ⚠️ Unaudited |
| Convertor4626Factory | unknown | own_core | ethereum | n/a | [`0x93a249...449156`](./contracts/ethereum-1/0x93a2497266ad6b4b86f93aaf08e7c88b11449156/) | ⚠️ Unaudited |
| ConvertorFactory | unknown | own_core | ethereum | n/a | [`0xa40b4c...854bfd`](./contracts/ethereum-1/0xa40b4c92a1c075e42be699f1ed42736ded854bfd/) | ⚠️ Unaudited |
| ConvexDepositToken | unknown | own_core | ethereum | n/a | [`0x000ca0...227de9`](./contracts/ethereum-1/0x000ca04b3225137b9110e77e12f1b484cc227de9/) | ⚠️ Unaudited |
| ConvexFactory | unknown | own_core | ethereum | n/a | [`0x3da992...4bc867`](./contracts/ethereum-1/0x3da992f4694d1a1624c32cafb5e57fe75b4bc867/) | ⚠️ Unaudited |
| CoveYFI | unknown | own_core | ethereum | n/a | [`0xff7184...65c248`](./contracts/ethereum-1/0xff71841eefca78a64421db28060855036765c248/) | ⚠️ Unaudited |
| Create2Deployer | unknown | standard_proxy_or_library (excluded) | ethereum | n/a | [`0x0e55ae...a4afab`](./contracts/ethereum-1/0x0e55aef1b392b8491369091ad808e87feaa4afab/) | ⚠️ Unaudited |
| CRON | unknown | own_core | ethereum | n/a | [`0x8e14d0...5d322e`](./contracts/ethereum-1/0x8e14d03061705eb48fda6bc6e244c5eabe5d322e/) | ⚠️ Unaudited |
| CrvStrategyKeep3r | unknown | own_core | ethereum | n/a | [`0xd0ac37...0b589d`](./contracts/ethereum-1/0xd0ac37e3524f295d141d3839d5ed5f26a40b589d/) | ⚠️ Unaudited |
| CrvStrategyKeep3rJob | unknown | own_core | ethereum | n/a | [`0x02027b...5e1af5`](./contracts/ethereum-1/0x02027bda2425204f152b8aa35fb78687d65e1af5/) | ⚠️ Unaudited |
| CrvStrategyKeep3rJob2 | unknown | own_core | ethereum | n/a | [`0xee1501...92aedd`](./contracts/ethereum-1/0xee15010105b9bb564cfdfdc5cee676485092aedd/) | ⚠️ Unaudited |
| CrvStrategyKeep3rStealthJob2 | unknown | own_core | ethereum | n/a | [`0x41edfd...7cd0d8`](./contracts/ethereum-1/0x41edfd5575fa4590a20f669bbda6c4ae367cd0d8/) | ⚠️ Unaudited |
| CrvUsdRedeemer | unknown | own_core | ethereum | n/a | [`0x935bcf...57aae3`](./contracts/ethereum-1/0x935bcf81c8a8d3a2b46560a8e2111b190057aae3/) | ⚠️ Unaudited |
| CrvVaultSwapper | unknown | own_core | ethereum | n/a | [`0x7c022d...25b4a9`](./contracts/ethereum-1/0x7c022d19518356d71ba046be28d721e1b425b4a9/) | ⚠️ Unaudited |
| CryptopoolLPOracle | unknown | needs_review | ethereum | n/a | [`0x68e469...dc461b`](./contracts/ethereum-1/0x68e46918dc347e20cf180747996258be00dc461b/) | ⚠️ Unaudited |
| Curve LP Module | unknown | third_party_dependency (excluded) | ethereum | n/a | [`0xce62d9...7d2022`](./contracts/ethereum-1/0xce62d9eb4409af3800e24719e08a736aab7d2022/) | ⚠️ Unaudited |
| CurveDepositToken | unknown | own_core | ethereum | n/a | [`0x572a4a...0c9d2a`](./contracts/ethereum-1/0x572a4a527ab4d073d641e0eddbcebe82a20c9d2a/) | ⚠️ Unaudited |
| CurveDepositZap | unknown | third_party_dependency (excluded) | ethereum | n/a | [`0x8e659f...80729e`](./contracts/ethereum-1/0x8e659fe8b1ddf8c5c50d55ed79c38837aa80729e/) | ⚠️ Unaudited |
| CurveFactory | unknown | own_core | ethereum | n/a | [`0x2664a7...d1569f`](./contracts/ethereum-1/0x2664a7b123e7e6b5cc5cf6a76cf65e409bd1569f/) | ⚠️ Unaudited |
| CurveGlobal | unknown | own_core | ethereum | n/a | [`0x21b1fc...c2a17a`](./contracts/ethereum-1/0x21b1fc8a52f179757bf555346130bf27c0c2a17a/) | ⚠️ Unaudited |
| CurveProxy | unknown | own_core | ethereum | n/a | [`0x490b8c...5d2f7e`](./contracts/ethereum-1/0x490b8c6007ffa5d3728a49c2ee199e51f05d2f7e/) | ⚠️ Unaudited |
| CustomPriceFeed | unknown | own_supporting | ethereum | n/a | [`0xa0ecd3...b531a0`](./contracts/ethereum-1/0xa0ecd3893890829a4ce5b7a0cc7ae25517b531a0/) | ⚠️ Unaudited |
| CustomTrigger | unknown | own_supporting | arbitrum | n/a | [`0xddb6cd...48a337`](./contracts/arbitrum-42161/0xddb6cd2ab6415dca60a46c62f634b6e4d148a337/) | ⚠️ Unaudited |
| DadFab | unknown | needs_review | ethereum | n/a | [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| DaiFab | unknown | needs_review | ethereum | n/a | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DAOFactory | unknown | own_core | ethereum | n/a | [`0x2d75ff...39a871`](./contracts/ethereum-1/0x2d75ff9fdca31a91f666187dd574f8ea8639a871/) | ⚠️ Unaudited |
| DebtAllocator | unknown | own_core | ethereum | n/a | [`0x1e9eb0...6b8671`](./contracts/ethereum-1/0x1e9eb053228b1156831759401de0e115356b8671/) | ⚠️ Unaudited |
| DebtAllocatorFactory | unknown | own_core | ethereum | n/a | [`0x03d43d...9a4c18`](./contracts/ethereum-1/0x03d43df6ff894c848fc6f1a0a7e8a539ef9a4c18/) | ⚠️ Unaudited |
| DebtAllocatorKeeper | unknown | own_core | ethereum | n/a | [`0x4d8713...5e1236`](./contracts/ethereum-1/0x4d87135e1188e85073b51d2bfef2ed40225e1236/) | ⚠️ Unaudited |
| DebtToken | unknown | own_core | ethereum | n/a | [`0x4591db...9fbb28`](./contracts/ethereum-1/0x4591dbff62656e7859afe5e45f6f47d3669fbb28/) | ⚠️ Unaudited |
| Delegated Staked YFI | unknown | needs_review | ethereum | n/a | [`0x9c4246...149d79`](./contracts/ethereum-1/0x9c42461aa8422926e3aef7b1c6e3743597149d79/) | ⚠️ Unaudited |
| Delegated Staking Reward Distributor | unknown | needs_review | ethereum | n/a | [`0x952b31...5e3d6e`](./contracts/ethereum-1/0x952b31960c97e76362ac340d07d183ada15e3d6e/) | ⚠️ Unaudited |
| DelegatedBalanceMapping | unknown | own_supporting | ethereum | n/a | [`0xc01a52...e5b142`](./contracts/ethereum-1/0xc01a529c01f9399c928a4afc50e25f12d1e5b142/) | ⚠️ Unaudited |
| DelegationFactory | unknown | own_core | ethereum | n/a | [`0xd39164...137748`](./contracts/ethereum-1/0xd39164369c37c412a04603666dcf4c7b33137748/) | ⚠️ Unaudited |
| Deployer | unknown | own_supporting | ethereum | n/a | [`0x8d85e7...8b0112`](./contracts/ethereum-1/0x8d85e7c9a4e369e53acc8d5426ae1568198b0112/) | ⚠️ Unaudited |
| DepositModule | unknown | own_core | ethereum | n/a | [`0x793d85...3ff1cb`](./contracts/ethereum-1/0x793d85f585145c050487c7afbf0e9b97143ff1cb/) | ⚠️ Unaudited |
| Depositor | unknown | own_core | ethereum | n/a | [`0xd9ec46...4e861f`](./contracts/ethereum-1/0xd9ec4616d0bf42b2f7caf01939f2c476954e861f/) | ⚠️ Unaudited |
| DepositorV2 | unknown | own_core | ethereum | n/a | [`0x941e71...8201e0`](./contracts/ethereum-1/0x941e716833734c7cafafc38f6bb8fec1858201e0/) | ⚠️ Unaudited |
| DepositorV3 | unknown | own_core | ethereum | n/a | [`0x56d27f...b196ad`](./contracts/ethereum-1/0x56d27f6ba42ec4c4e37dae0561e8e872abb196ad/) | ⚠️ Unaudited |
| DforceStrategyKeep3r | unknown | own_core | ethereum | n/a | [`0x300843...1a3078`](./contracts/ethereum-1/0x30084324619d9645019c3f2cb3a94611601a3078/) | ⚠️ Unaudited |
| DistributeYFI | unknown | own_supporting | ethereum | n/a | [`0x812ac0...cfa017`](./contracts/ethereum-1/0x812ac0eaeb422efa44eac670aa2246a25ecfa017/) | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | own_supporting | ethereum | n/a | [`0x4b1b08...368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | ⚠️ Unaudited |
| Donator | unknown | own_core | ethereum | n/a | [`0xc368ed...d28839`](./contracts/ethereum-1/0xc368ed8efc69d8e38ed4b4d726c40f9f9ad28839/) | ⚠️ Unaudited |
| DSChief | unknown | needs_review | ethereum | n/a | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | needs_review | ethereum | n/a | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSSLeverage | unknown | own_core | ethereum | n/a | [`0x050cd4...92640e`](./contracts/ethereum-1/0x050cd4835b08babfc6ff92187971b3253e92640e/) | ⚠️ Unaudited |
| DSToken | unknown | own_supporting | ethereum | n/a | [`0x068083...cc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| DummyStrategy | unknown | own_supporting | ethereum | n/a | [`0x6740bf...9d01ca`](./contracts/ethereum-1/0x6740bf10840d0a6358050fd1a28e2f8e859d01ca/) | ⚠️ Unaudited |
| dYFI | unknown | needs_review | ethereum | n/a | [`0x41252e...97a275`](./contracts/ethereum-1/0x41252e8691e964f7de35156b68493bab6797a275/) | ⚠️ Unaudited |
| dYFI Reward Pool | unknown | needs_review | ethereum | n/a | [`0x2391fc...6d894e`](./contracts/ethereum-1/0x2391fc8f5e417526338f5aa3968b1851c16d894e/) | ⚠️ Unaudited |
| DynamicSwap | unknown | own_core | ethereum | n/a | [`0x035fb9...4b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/) | ⚠️ Unaudited |
| EarnRegistry | unknown | own_core | ethereum | n/a | [`0x62a4e0...6eb04b`](./contracts/ethereum-1/0x62a4e0e7574e5407656a65cc8dbdf70f3c6eb04b/) | ⚠️ Unaudited |
| eETHDepositor | unknown | own_supporting | ethereum | n/a | [`0xefa259...9c2603`](./contracts/ethereum-1/0xefa259c4a7056de82eea8df9ef85de405d9c2603/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | own_core | ethereum | n/a | [`0x4ccea6...559ad4`](./contracts/ethereum-1/0x4ccea6503e8e5525d3de0c60855b6332af559ad4/) | ⚠️ Unaudited |
| EmissionSchedule | unknown | own_core | ethereum | n/a | [`0x906e0d...851f42`](./contracts/ethereum-1/0x906e0d769aae4fb3f53d3c989a50520a8e851f42/) | ⚠️ Unaudited |
| EnsAddressResolver | unknown | own_supporting | ethereum | n/a | [`0x8e89f5...f7f925`](./contracts/ethereum-1/0x8e89f5b28411d7cdf3efa24b056ecafca4f7f925/) | ⚠️ Unaudited |
| EnsHelper | unknown | own_supporting | ethereum | n/a | [`0x7d3311...b864e1`](./contracts/ethereum-1/0x7d33110619e8f95f12a750f21a08b8c7cfb864e1/) | ⚠️ Unaudited |
| ERC4626Exchange | unknown | own_core | ethereum | n/a | [`0x13100b...2b3054`](./contracts/ethereum-1/0x13100bb6ab4e349a36eaa6bd4ab0536bf72b3054/) | ⚠️ Unaudited |
| ERC4626FluidExchange | unknown | own_supporting | ethereum | n/a | [`0x9b1327...3521f3`](./contracts/ethereum-1/0x9b1327ccb2405e8410f29dbec78f18236c3521f3/) | ⚠️ Unaudited |
| EthereumStateSender | unknown | own_core | ethereum | n/a | [`0xa10256...ddd46b`](./contracts/ethereum-1/0xa1025644f5c3faac92b8672d3a537f4e4bddd46b/) | ⚠️ Unaudited |
| EVMScriptRegistryFactory | unknown | own_core | ethereum | n/a | [`0xd44d19...8351fd`](./contracts/ethereum-1/0xd44d19d0d1ab4245bb747be73a0b131daa8351fd/) | ⚠️ Unaudited |
| ExerciseHelperBMX | unknown | needs_review | base | n/a | [`0x614760...384cb1`](./contracts/base-8453/0x614760bed5e12863ad9baffb7c1bedd089384cb1/) | ⚠️ Unaudited |
| Factory | unknown | needs_review | ethereum | n/a | [`0x1043eb...4c421d`](./contracts/ethereum-1/0x1043eb60cef1f44654598338b1eb305cf54c421d/) | ⚠️ Unaudited |
| FactoryVaultsAdapter | unknown | own_integration_wrapper | ethereum | n/a | [`0x7fe950...acb773`](./contracts/ethereum-1/0x7fe9501b4b4ba5a259f5fece1d10257839acb773/) | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | needs_review | ethereum | n/a | [`0x3a2d0e...c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | ⚠️ Unaudited |
| Faketroller | unknown | own_supporting | ethereum | n/a | [`0x6257e3...9fef3f`](./contracts/ethereum-1/0x6257e36efc9c7c6057c119ea2af40907159fef3f/) | ⚠️ Unaudited |
| FeeBurner | unknown | needs_review | ethereum | n/a | [`0xb911fc...3c1ee8`](./contracts/ethereum-1/0xb911fcce8d5afcec73e072653107260bb23c1ee8/) | ⚠️ Unaudited |
| FeeConverter | unknown | own_core | ethereum | n/a | [`0x726251...804333`](./contracts/ethereum-1/0x72625102868f56bc9696c91090938718d3804333/) | ⚠️ Unaudited |
| FeeDistributor | unknown | needs_review | ethereum | n/a | [`0x286af1...39ecc0`](./contracts/ethereum-1/0x286af1b3d36fbba523b18ac4658722090a39ecc0/) | ⚠️ Unaudited |
| FeeReceiver | unknown | own_integration_wrapper | ethereum | n/a | [`0xfdce02...e9cbf8`](./contracts/ethereum-1/0xfdce0267803c6a0d209d3721d2f01fd618e9cbf8/) | ⚠️ Unaudited |
| FeeRegistry | unknown | own_core | ethereum | n/a | [`0x0f1dc3...30d19c`](./contracts/ethereum-1/0x0f1dc3bd5fe8a3034d6df0a411efc7916830d19c/) | ⚠️ Unaudited |
| FeeSplitter | unknown | own_core | ethereum | n/a | [`0x2d353a...000509`](./contracts/ethereum-1/0x2d353a52da9e4ead947f27931a26e0797a000509/) | ⚠️ Unaudited |
| FiatToken | unknown | own_core | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | own_core | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | own_supporting | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | own_core | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | own_core | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | own_core | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| Fixed rate oracle | unknown | needs_review | ethereum | n/a | [`0x81d26c...fb3b6e`](./contracts/ethereum-1/0x81d26c6bcf459ec7766b3c81df02c3be94fb3b6e/) | ⚠️ Unaudited |
| FixedRateStrategyAprOracle | unknown | own_core | ethereum | n/a | [`0xff7c33...41c437`](./contracts/ethereum-1/0xff7c33eb1c2020674e04b398368c884a2541c437/) | ⚠️ Unaudited |
| FixedTrigger | unknown | own_core | ethereum | n/a | [`0xf414a2...1e1721`](./contracts/ethereum-1/0xf414a220f86d39f6381bea86c26a88e9331e1721/) | ⚠️ Unaudited |
| fKRW | unknown | needs_review | ethereum | n/a | [`0x5c08b5...f2893a`](./contracts/ethereum-1/0x5c08b51ddbe8ba76e07be79975906c39aef2893a/) | ⚠️ Unaudited |
| FlashSeller | unknown | own_core | ethereum | n/a | [`0x002060...cedeee`](./contracts/ethereum-1/0x0020609046710676cafc8eb5ce95fc110ccedeee/) | ⚠️ Unaudited |
| FluidAprOracleMainnet | unknown | own_core | ethereum | n/a | [`0x031ede...a7cbe2`](./contracts/ethereum-1/0x031ede4ca99b9d75fc77a8b0e661c90005a7cbe2/) | ⚠️ Unaudited |
| FluidExchange | unknown | own_core | ethereum | n/a | [`0x9aad75...1bad70`](./contracts/ethereum-1/0x9aad75f860a05b14853efe4f2ae75a3a261bad70/) | ⚠️ Unaudited |
| FluidLenderFactoryMainnet | unknown | own_core | ethereum | n/a | [`0x859df6...a43861`](./contracts/ethereum-1/0x859df6fe178ffbf55693a7a833aadb10c6a43861/) | ⚠️ Unaudited |
| Forwarder | unknown | own_core | ethereum | n/a | [`0xb9a3a8...11d9fa`](./contracts/ethereum-1/0xb9a3a8735a453b2f8ad375654939cbb08411d9fa/) | ⚠️ Unaudited |
| FpisAccumulator | unknown | own_core | ethereum | n/a | [`0x0ca369...a9f460`](./contracts/ethereum-1/0x0ca369a70ad74e52604abc63792abbe088a9f460/) | ⚠️ Unaudited |
| Funding Distributor | unknown | needs_review | ethereum | n/a | [`0xbcc932...f6116b`](./contracts/ethereum-1/0xbcc932e4750c3e465a7e54a06a34f9edf8f6116b/) | ⚠️ Unaudited |
| fUSD | unknown | needs_review | ethereum | n/a | [`0x3d7f09...6dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/) | ⚠️ Unaudited |
| FxChild | unknown | needs_review | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| FxsAccumulator | unknown | own_core | ethereum | n/a | [`0xca53fe...2b4008`](./contracts/ethereum-1/0xca53fe979d427a7c2c5f45f54d9d9fae622b4008/) | ⚠️ Unaudited |
| Gas | unknown | own_supporting | ethereum | n/a | [`0x0791d0...f2bf0e`](./contracts/ethereum-1/0x0791d07689b4ba39a4c44cd25717981be1f2bf0e/) | ⚠️ Unaudited |
| GasPool | unknown | own_supporting | ethereum | n/a | [`0xe0598d...8cab61`](./contracts/ethereum-1/0xe0598d793baf7b4f49f4a003885e4180b28cab61/) | ⚠️ Unaudited |
| GasPoolReimburser | unknown | own_core | ethereum | n/a | [`0x4165ef...bc1c38`](./contracts/ethereum-1/0x4165ef806ec952bad7ba1d5db81aef2bdebc1c38/) | ⚠️ Unaudited |
| Gauge Controller | unknown | needs_review | ethereum | n/a | [`0x037ee0...0e5af9`](./contracts/ethereum-1/0x037ee0c66d0ddba4319ab9d1a70a66ac800e5af9/) | ⚠️ Unaudited |
| Gauge factory | unknown | needs_review | ethereum | n/a | [`0x43cfc6...2e0b91`](./contracts/ethereum-1/0x43cfc64f00b4e45619cfbc7964d982fa022e0b91/) | ⚠️ Unaudited |
| Gauge registry | unknown | needs_review | ethereum | n/a | [`0x1d0fdc...936f8b`](./contracts/ethereum-1/0x1d0fdcb628b2f8c0e22354d45b3b2d4ce9936f8b/) | ⚠️ Unaudited |
| Gauge rewards | unknown | needs_review | ethereum | n/a | [`0x35440c...f5475f`](./contracts/ethereum-1/0x35440c602bc4f01bbec6cb616ccb901c9df5475f/) | ⚠️ Unaudited |
| GaugeProxy | unknown | own_core | ethereum | n/a | [`0x823fd2...61081c`](./contracts/ethereum-1/0x823fd217dcc5ce36ca6bc1489586ecb42b61081c/) | ⚠️ Unaudited |
| GaugeV2 | unknown | own_core | ethereum | n/a | [`0x128e72...3ddfc9`](./contracts/ethereum-1/0x128e72dfd8b00cbf9d12cb75e846ac87b83ddfc9/) | ⚠️ Unaudited |
| GaugeValidator | unknown | own_core | ethereum | n/a | [`0x1c662c...dc9524`](./contracts/ethereum-1/0x1c662cac382140bfc148f3003fd14b0d58dc9524/) | ⚠️ Unaudited |
| GearboxCrvUSDOracle | unknown | own_supporting | ethereum | n/a | [`0x452cce...2059de`](./contracts/ethereum-1/0x452cce47601f5a8053f612b0b65b2e142e2059de/) | ⚠️ Unaudited |
| GearboxOracle | unknown | own_supporting | ethereum | n/a | [`0xa67cfa...06a2ba`](./contracts/ethereum-1/0xa67cfa1f29411c3e9b4842a32d15a740bb06a2ba/) | ⚠️ Unaudited |
| GemFab | unknown | needs_review | ethereum | n/a | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | needs_review | ethereum | n/a | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| Generic governor | unknown | needs_review | ethereum | n/a | [`0xb7a528...3e5ba5`](./contracts/ethereum-1/0xb7a528cf6d36f736fa678a629b98a427d43e5ba5/) | ⚠️ Unaudited |
| GenericV2Keep3rJob | unknown | own_core | ethereum | n/a | [`0xf796c1...277480`](./contracts/ethereum-1/0xf796c1a96c1e803cb748f2e7124b427536277480/) | ⚠️ Unaudited |
| Getter | unknown | own_supporting | ethereum | n/a | [`0x016aaf...76ab39`](./contracts/ethereum-1/0x016aaf67c352ee493d1e17177de0eabc3d76ab39/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | standard_proxy_or_library (excluded) | polygon | n/a | [`0x163880...125bc1`](./contracts/polygon-137/0x16388000546eded4d476bd2a4a374b5a16125bc1/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | standard_proxy_or_library (excluded) | base | n/a | [`0x01fe33...348e93`](./contracts/base-8453/0x01fe3347316b2223961b20689c65eaea71348e93/) | ⚠️ Unaudited |
| Governance | unknown | own_core | ethereum | n/a | [`0xc7212f...0cb735`](./contracts/ethereum-1/0xc7212fc959bbb606f97036e8ac3da7aabf0cb735/) | ⚠️ Unaudited |
| GovernanceMulticall | unknown | own_core | ethereum | n/a | [`0x464218...da2c56`](./contracts/ethereum-1/0x464218afe1839abd9e89daa3fb0d4a20fbda2c56/) | ⚠️ Unaudited |
| GovernanceSwap | unknown | own_core | ethereum | n/a | [`0x220c33...447afc`](./contracts/ethereum-1/0x220c33bb71d3b6a6a6ea2036abdb1c9449447afc/) | ⚠️ Unaudited |
| HarvestV2Keep3rJob | unknown | own_core | ethereum | n/a | [`0x3da70a...4c6688`](./contracts/ethereum-1/0x3da70a551c0f785580a291b7d8c7d0f3dc4c6688/) | ⚠️ Unaudited |
| HarvestV2Keep3rStealthJob | unknown | own_core | ethereum | n/a | [`0x2150b4...b152d6`](./contracts/ethereum-1/0x2150b45626199cfa5089368bdca30cd0bfb152d6/) | ⚠️ Unaudited |
| HarvestV2QueueKeep3rJob | unknown | own_core | ethereum | n/a | [`0xe5a7db...4d118d`](./contracts/ethereum-1/0xe5a7db399dec2c5ddefebc52ea70f127284d118d/) | ⚠️ Unaudited |
| HegicERCPool | unknown | needs_review | ethereum | n/a | [`0x7224f2...a1345a`](./contracts/ethereum-1/0x7224f2e96061a1e3f51d152e32ccfab79ca1345a/) | ⚠️ Unaudited |
| HegicOptions | unknown | needs_review | ethereum | n/a | [`0x30a086...e4ae70`](./contracts/ethereum-1/0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70/) | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | own_core | ethereum | n/a | [`0x061940...082f23`](./contracts/ethereum-1/0x06194062288575f35c0af45d5e7013b65e082f23/) | ⚠️ Unaudited |
| Helper | unknown | own_core | ethereum | n/a | [`0x5aacd0...c34a6f`](./contracts/ethereum-1/0x5aacd0d03096039ac4381cd814637e9fb7c34a6f/) | ⚠️ Unaudited |
| HybridFactoryOwner | unknown | needs_review | ethereum | n/a | [`0x0f4e1a...3f1048`](./contracts/ethereum-1/0x0f4e1a1bcde549653e9302ba1caab403373f1048/) | ⚠️ Unaudited |
| HybridVault | unknown | needs_review | ethereum | n/a | [`0xd772ed...fdc3ac`](./contracts/ethereum-1/0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac/) | ⚠️ Unaudited |
| HybridVaultFactory | unknown | needs_review | ethereum | n/a | [`0xbdc322...b8dc5b`](./contracts/ethereum-1/0xbdc32268851c324c6185809271dfe6d8dab8dc5b/) | ⚠️ Unaudited |
| iCollateral | unknown | needs_review | ethereum | n/a | [`0x78705d...f4e025`](./contracts/ethereum-1/0x78705df56477ff301b71b176a2bd3151b9f4e025/) | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | own_supporting | ethereum | n/a | [`0xb10e11...3b0f69`](./contracts/ethereum-1/0xb10e11f3e38dc35e06397689e45fa939eb3b0f69/) | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | own_core | ethereum | n/a | [`0x06a8fe...3ddcc1`](./contracts/ethereum-1/0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1/) | ⚠️ Unaudited |
| iDAI | unknown | needs_review | ethereum | n/a | [`0x6c5f9d...ca35a0`](./contracts/ethereum-1/0x6c5f9d1d115862ca99253e5738590f6d31ca35a0/) | ⚠️ Unaudited |
| iDAIZapSwap | unknown | needs_review | ethereum | n/a | [`0x260fbb...a867fa`](./contracts/ethereum-1/0x260fbb4855b2a4a719097131016b573f95a867fa/) | ⚠️ Unaudited |
| IEarnAPR | unknown | needs_review | ethereum | n/a | [`0x9cad8a...268eec`](./contracts/ethereum-1/0x9cad8ab10daa9af1a9d2b878541f41b697268eec/) | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | needs_review | ethereum | n/a | [`0x029fea...44c9bb`](./contracts/ethereum-1/0x029feae8d773a3fe25f1a3e35a526bb54744c9bb/) | ⚠️ Unaudited |
| IEarnManager | unknown | needs_review | ethereum | n/a | [`0x318135...50edfb`](./contracts/ethereum-1/0x318135fbd0b40d48fcef431ccdf6c7926450edfb/) | ⚠️ Unaudited |
| IEarnProvider | unknown | needs_review | ethereum | n/a | [`0x7b3680...884bb4`](./contracts/ethereum-1/0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4/) | ⚠️ Unaudited |
| IEther | unknown | own_core | ethereum | n/a | [`0x75a4d0...cd25eb`](./contracts/ethereum-1/0x75a4d0b18e98674199829ddd2a6477ea25cd25eb/) | ⚠️ Unaudited |
| Incentives for inclusion vote | unknown | needs_review | ethereum | n/a | [`0x705577...8d1bc2`](./contracts/ethereum-1/0x70557705dc49d7dc383356b27bc206f1018d1bc2/) | ⚠️ Unaudited |
| Incentives for Snapshot votes | unknown | needs_review | ethereum | n/a | [`0xae9de8...0a5179`](./contracts/ethereum-1/0xae9de8a3e62e8e2f1e3800d142d23527680a5179/) | ⚠️ Unaudited |
| Incentives for weight vote | unknown | needs_review | ethereum | n/a | [`0x742da6...3c2302`](./contracts/ethereum-1/0x742da637305e8a2d8dad8a82848ee90f543c2302/) | ⚠️ Unaudited |
| IncentiveVoting | unknown | own_core | ethereum | n/a | [`0xfd8df0...2e850c`](./contracts/ethereum-1/0xfd8df0db401ab7ec7a06a8465134fa32132e850c/) | ⚠️ Unaudited |
| Inclusion vote | unknown | needs_review | ethereum | n/a | [`0x6bc087...0f2c31`](./contracts/ethereum-1/0x6bc0878939669339e82dbfa13d260c89230f2c31/) | ⚠️ Unaudited |
| InflationaryVest | unknown | needs_review | ethereum | n/a | [`0x1f5789...31b112`](./contracts/ethereum-1/0x1f5789030ff8aed85c20baf614368c605b31b112/) | ⚠️ Unaudited |
| insuredVault | unknown | needs_review | ethereum | n/a | [`0xa53e9e...2863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | ⚠️ Unaudited |
| insurerVault | unknown | needs_review | ethereum | n/a | [`0xb8813d...457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | ⚠️ Unaudited |
| InterimAdmin | unknown | needs_review | ethereum | n/a | [`0x4a62a6...9d341e`](./contracts/ethereum-1/0x4a62a602295214c31f5a6f7a67271110f69d341e/) | ⚠️ Unaudited |
| Introspection | unknown | own_supporting | ethereum | n/a | [`0x3cce08...9cc802`](./contracts/ethereum-1/0x3cce081280060811889b63b98bf3d607029cc802/) | ⚠️ Unaudited |
| iTrade | unknown | needs_review | ethereum | n/a | [`0x14a5ca...104e3e`](./contracts/ethereum-1/0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e/) | ⚠️ Unaudited |
| Keep3r | unknown | needs_review | ethereum | n/a | [`0x30f358...2f57f1`](./contracts/ethereum-1/0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1/) | ⚠️ Unaudited |
| Keep3rEscrow | unknown | own_core | ethereum | n/a | [`0x39392a...5a8ed5`](./contracts/ethereum-1/0x39392ae1b305161ecb500be8da88444c5b5a8ed5/) | ⚠️ Unaudited |
| Keep3rEscrowJob | unknown | own_core | ethereum | n/a | [`0x83a34a...ccd73d`](./contracts/ethereum-1/0x83a34a6469dbfd7654ae6d842d20977e89ccd73d/) | ⚠️ Unaudited |
| Keep3rHelper | unknown | own_supporting | ethereum | n/a | [`0xb41772...af955e`](./contracts/ethereum-1/0xb41772890c8b1564c5015a12c0dc6f18b0af955e/) | ⚠️ Unaudited |
| Keep3rJob | unknown | own_supporting | ethereum | n/a | [`0xb68e7d...02d10d`](./contracts/ethereum-1/0xb68e7deb279eaa11f234dff4931458d2c002d10d/) | ⚠️ Unaudited |
| Keep3rLiquidityManager | unknown | own_core | ethereum | n/a | [`0xf14cb1...cdc9ca`](./contracts/ethereum-1/0xf14cb1feb6c40f26d9ca0ea39a9a613428cdc9ca/) | ⚠️ Unaudited |
| Keep3rLiquidityManagerJob | unknown | own_core | ethereum | n/a | [`0x7e0cc5...c39085`](./contracts/ethereum-1/0x7e0cc5edf2dd01fc543d698b7e00ff54c6c39085/) | ⚠️ Unaudited |
| Keep3rProxyJob | unknown | own_core | ethereum | n/a | [`0x6d5a78...024645`](./contracts/ethereum-1/0x6d5a780fe782e90b49a85926cc77ddab0d024645/) | ⚠️ Unaudited |
| Keep3rSugarMommy | unknown | own_core | ethereum | n/a | [`0xef9512...97d321`](./contracts/ethereum-1/0xef9512e5f33e2d1c66f77ad61b3434a2fc97d321/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | needs_review | ethereum | n/a | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | own_core | ethereum | n/a | [`0x1530a2...5a5df9`](./contracts/ethereum-1/0x1530a2924805aed2385f8b91849cab7fe95a5df9/) | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | own_core | ethereum | n/a | [`0x739689...ab620c`](./contracts/ethereum-1/0x7396899638410094b3690f8bd2b56f07fdab620c/) | ⚠️ Unaudited |
| Keep3rV1Library | unknown | needs_review | ethereum | n/a | [`0xdaef20...924c93`](./contracts/ethereum-1/0xdaef201ba1ba0354d71848893dd6d56905924c93/) | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | own_core | ethereum | n/a | [`0x0a03b4...f5c080`](./contracts/ethereum-1/0x0a03b4f6d5314bb257540dc7702c326f97f5c080/) | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | own_core | ethereum | n/a | [`0x1bf162...c8f6c0`](./contracts/ethereum-1/0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0/) | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | own_core | ethereum | n/a | [`0x2266be...7880cb`](./contracts/ethereum-1/0x2266be1ee5d345914976fd4ce9f4be65737880cb/) | ⚠️ Unaudited |
| Keep3rV2OracleFactoryWrapper | unknown | own_integration_wrapper | ethereum | n/a | [`0xa07662...b5296d`](./contracts/ethereum-1/0xa07662c041c4f7b31fd61c13c44212ff35b5296d/) | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | own_core | ethereum | n/a | [`0x1542ec...ba0f82`](./contracts/ethereum-1/0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82/) | ⚠️ Unaudited |
| Keeper | unknown | own_core | ethereum | n/a | [`0x52605b...7db2f8`](./contracts/ethereum-1/0x52605bbf54845f520a3e94792d019f62407db2f8/) | ⚠️ Unaudited |
| KeeperWrapper | unknown | own_integration_wrapper | optimism | n/a | [`0x9ce011...061482`](./contracts/optimism-10/0x9ce0115381f009e382acd52761127eff61061482/) | ⚠️ Unaudited |
| Kernel | unknown | own_core | ethereum | n/a | [`0x47d62e...59e827`](./contracts/ethereum-1/0x47d62ed9fe6ef6810eac3165053d95579059e827/) | ⚠️ Unaudited |
| Launch vote weight measure | unknown | needs_review | ethereum | n/a | [`0xe931d4...b13b2c`](./contracts/ethereum-1/0xe931d4ee3250822beccc9d0defdf9b51edb13b2c/) | ⚠️ Unaudited |
| LazyHarvest | unknown | own_supporting | ethereum | n/a | [`0x9ea775...c5d0f3`](./contracts/ethereum-1/0x9ea775672e4424c403f048ab08c7f56015c5d0f3/) | ⚠️ Unaudited |
| LEVAMM | unknown | needs_review | ethereum | n/a | [`0x07ceda...ba305e`](./contracts/ethereum-1/0x07cedaadf49552cbdbf684824323e631ceba305e/) | ⚠️ Unaudited |
| LftLocker | unknown | own_core | ethereum | n/a | [`0xd05957...853d37`](./contracts/ethereum-1/0xd059575a78508b02e89ef9ae0c1b409b07853d37/) | ⚠️ Unaudited |
| Liquid locker | unknown | needs_review | ethereum | n/a | [`0x95710b...76b098`](./contracts/ethereum-1/0x95710bde45c8d384a976cc58cc7a7e489576b098/) | ⚠️ Unaudited |
| Liquid Locker Depositor | unknown | needs_review | ethereum | n/a | [`0x3d4ced...26bc8f`](./contracts/ethereum-1/0x3d4ced97adb0ae3a53da95a47ffc749aad26bc8f/) | ⚠️ Unaudited |
| Liquid Locker Middleware | unknown | needs_review | ethereum | n/a | [`0x58832f...db3748`](./contracts/ethereum-1/0x58832fc23fb5c7342175c1f050d33b5420db3748/) | ⚠️ Unaudited |
| Liquid Locker Redemption | unknown | needs_review | ethereum | n/a | [`0xba18d0...0e681d`](./contracts/ethereum-1/0xba18d0df75a3ff58ef40a8fc0d3e4db74a0e681d/) | ⚠️ Unaudited |
| Liquid Locker Reward Distributor | unknown | needs_review | ethereum | n/a | [`0x7efc39...72a000`](./contracts/ethereum-1/0x7efc3953bed2fc20b9f825ebffab1cc8b072a000/) | ⚠️ Unaudited |
| Liquid Locker Vesting Escrow Factory | unknown | needs_review | ethereum | n/a | [`0x4c2f62...a76fe2`](./contracts/ethereum-1/0x4c2f62f11279fce767ecd7b280512acab7a76fe2/) | ⚠️ Unaudited |
| LiquidationManager | unknown | own_core | ethereum | n/a | [`0x5de309...f8e9e2`](./contracts/ethereum-1/0x5de309dfd7f94e9e2a18cb6ba61ca305abf8e9e2/) | ⚠️ Unaudited |
| LiquidationOracle | unknown | needs_review | ethereum | n/a | [`0xd82f6d...a3e8ce`](./contracts/ethereum-1/0xd82f6d42356e225bf79b870a05aac79062a3e8ce/) | ⚠️ Unaudited |
| Liquidity Gauge | unknown | needs_review | ethereum | n/a | [`0x008c2d...d781f7`](./contracts/ethereum-1/0x008c2d6e93cc7eb61b6bea1e012214b851d781f7/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | needs_review | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| LiquidRouter | unknown | own_integration_wrapper | ethereum | n/a | [`0x02dd79...a9440d`](./contracts/ethereum-1/0x02dd79b4a88fefe639d2a88e20f8013edea9440d/) | ⚠️ Unaudited |
| LiquidTransferProxy | unknown | own_core | ethereum | n/a | [`0x30285a...d3288f`](./contracts/ethereum-1/0x30285a1ce301fc7eb57628a7f53d02fbded3288f/) | ⚠️ Unaudited |
| LitePsmExchange | unknown | own_core | ethereum | n/a | [`0x126462...34dc5e`](./contracts/ethereum-1/0x126462a6fc6b8f04e5d46a778daea0544e34dc5e/) | ⚠️ Unaudited |
| LockedyvUSD | unknown | own_core | ethereum | n/a | [`0x1f9aa2...4615c9`](./contracts/ethereum-1/0x1f9aa28c97475e854d8a5c60149e51ab8c4615c9/) | ⚠️ Unaudited |
| LockedyvUSDAprOracle | unknown | own_supporting | ethereum | n/a | [`0x209ec2...b1a90b`](./contracts/ethereum-1/0x209ec22002fa0fe83adbe7d1335edd7faeb1a90b/) | ⚠️ Unaudited |
| LockerZapper | unknown | own_core | ethereum | n/a | [`0x7ba61c...062bba`](./contracts/ethereum-1/0x7ba61c8e19414dcb8fe769a7be63b508c8062bba/) | ⚠️ Unaudited |
| LongOTokenPut | unknown | own_core | ethereum | n/a | [`0x12c51d...ce3aa6`](./contracts/ethereum-1/0x12c51dac6e63faac989abe39d1c698dad8ce3aa6/) | ⚠️ Unaudited |
| LooperKeeper | unknown | own_core | ethereum | n/a | [`0x706eac...2c80e3`](./contracts/ethereum-1/0x706eacfc476f46547200a73709e2efe1522c80e3/) | ⚠️ Unaudited |
| LT | unknown | needs_review | ethereum | n/a | [`0x0b0d8b...3f1eb4`](./contracts/ethereum-1/0x0b0d8bccf062555ec18d5e4d8fe895e64e3f1eb4/) | ⚠️ Unaudited |
| LTMigrator | unknown | needs_review | ethereum | n/a | [`0x2cdb9f...37066c`](./contracts/ethereum-1/0x2cdb9f485e718f551cfeea6c33cb7062ed37066c/) | ⚠️ Unaudited |
| MainnetVeOracleOptimism | unknown | own_core | ethereum | n/a | [`0x751a72...d437fc`](./contracts/ethereum-1/0x751a728d74eb37c7a7f4e35f9853f37e76d437fc/) | ⚠️ Unaudited |
| ManagementList | unknown | own_core | optimism | n/a | [`0x7e9756...63d619`](./contracts/optimism-10/0x7e9756e1427b3c38f001f9d272d8d62bef63d619/) | ⚠️ Unaudited |
| ManualBorrowRewardAprOracle | unknown | own_supporting | ethereum | n/a | [`0x6f7580...ff28ed`](./contracts/ethereum-1/0x6f758057f79d6faca91fce01b1331d0de9ff28ed/) | ⚠️ Unaudited |
| MasterMinter | unknown | own_core | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MaticWETH | unknown | third_party_dependency (excluded) | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| MechanicsRegistry | unknown | own_core | ethereum | n/a | [`0xe8d5a8...b499bb`](./contracts/ethereum-1/0xe8d5a85758fe98f7dce251cad552691d49b499bb/) | ⚠️ Unaudited |
| Memory | unknown | own_supporting | ethereum | n/a | [`0x9db355...f216b2`](./contracts/ethereum-1/0x9db355769b637249d8d5f8df2378dc77eff216b2/) | ⚠️ Unaudited |
| MetaKeep3r | unknown | own_core | ethereum | n/a | [`0x93dfa8...0a9372`](./contracts/ethereum-1/0x93dfa873b15ad496ba8116ce6cfec52ef30a9372/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | own_core | ethereum | n/a | [`0x68aea7...f845a3`](./contracts/ethereum-1/0x68aea7b82df6ccdf76235d46445ed83f85f845a3/) | ⚠️ Unaudited |
| MigrateTroveZap | unknown | needs_review | ethereum | n/a | [`0x1371c1...4f9047`](./contracts/ethereum-1/0x1371c1dae7d3ad43bb79ecce1b882ad9754f9047/) | ⚠️ Unaudited |
| Minter | unknown | own_supporting | ethereum | n/a | [`0x708f45...82fb7b`](./contracts/ethereum-1/0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b/) | ⚠️ Unaudited |
| MomFab | unknown | needs_review | ethereum | n/a | [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| MultiCollateralHintHelpers | unknown | own_core | ethereum | n/a | [`0x3c5871...47a9cd`](./contracts/ethereum-1/0x3c5871d69c8d6503001e1a8f3bf7e5ebe447a9cd/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | own_supporting | ethereum | n/a | [`0x58fa55...a1eb1c`](./contracts/ethereum-1/0x58fa5521f48b258b5e48a56b9b1bd95bffa1eb1c/) | ⚠️ Unaudited |
| Normalizer | unknown | own_supporting | ethereum | n/a | [`0x9214a6...f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/) | ⚠️ Unaudited |
| Null Minter | unknown | needs_review | ethereum | n/a | [`0x1025cf...017214`](./contracts/ethereum-1/0x1025cf97b8a91cbd8e6d2cbf972437a54d017214/) | ⚠️ Unaudited |
| OneInchSwapper | unknown | needs_review | arbitrum | n/a | [`0x06a53f...dbf89d`](./contracts/arbitrum-42161/0x06a53f5e51ae9fec9cc10fef3278cd969ddbf89d/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | own_core | optimism | n/a | [`0x9046d3...e9107b`](./contracts/optimism-10/0x9046d36440290ffde54fe0dd84db8b1cfee9107b/) | ⚠️ Unaudited |
| OptimismVeOracle | unknown | own_core | optimism | n/a | [`0x32d804...479c41`](./contracts/optimism-10/0x32d80467126bc2cc0bae26471357fd616f479c41/) | ⚠️ Unaudited |
| OptionsV1Library | unknown | own_core | ethereum | n/a | [`0x48bc6d...76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | needs_review | ethereum | n/a | [`0x00fbd1...d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/) | ⚠️ Unaudited |
| OpynBuyVault | unknown | needs_review | ethereum | n/a | [`0x4ca4e1...85012c`](./contracts/ethereum-1/0x4ca4e12fd8e37e30ed3a37bccf61ba8edf85012c/) | ⚠️ Unaudited |
| OpynPerpVaultBtc | unknown | needs_review | ethereum | n/a | [`0xaa25cb...00bcb4`](./contracts/ethereum-1/0xaa25cb1b10b8252480cc6a3b17c22e6c0e00bcb4/) | ⚠️ Unaudited |
| OpynPerpVaultEth | unknown | needs_review | ethereum | n/a | [`0xc10b7c...dcf4a5`](./contracts/ethereum-1/0xc10b7ca0383f0357edeed233dc806b5229dcf4a5/) | ⚠️ Unaudited |
| Oracle | unknown | own_core | arbitrum | n/a | [`0x043518...78e9b9`](./contracts/arbitrum-42161/0x043518ab266485dc085a1db095b8d9c2fc78e9b9/) | ⚠️ Unaudited |
| OracleBondedKeeper | unknown | own_core | ethereum | n/a | [`0xa8646c...c63762`](./contracts/ethereum-1/0xa8646ce5d983e996eba22eb39e5956653ec63762/) | ⚠️ Unaudited |
| OriginMintExchange | unknown | own_core | ethereum | n/a | [`0x707e11...c810c0`](./contracts/ethereum-1/0x707e119476e1450a20e153a7ba99a9d5c4c810c0/) | ⚠️ Unaudited |
| OSMedianizer | unknown | own_core | ethereum | n/a | [`0xcf6308...1ed0f1`](./contracts/ethereum-1/0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1/) | ⚠️ Unaudited |
| Ownership proxy | unknown | needs_review | ethereum | n/a | [`0x56af9c...76fafd`](./contracts/ethereum-1/0x56af9c2780e0323810acfdaeab3f58ef6e76fafd/) | ⚠️ Unaudited |
| OYfi | unknown | needs_review | ethereum | n/a | [`0xdc1ba2...af9c22`](./contracts/ethereum-1/0xdc1ba2a504430131c7a291b7d114b11e7baf9c22/) | ⚠️ Unaudited |
| PairsHelper | unknown | own_core | ethereum | n/a | [`0x1153f2...ce26da`](./contracts/ethereum-1/0x1153f280e7ec1182fc9ae7f35daa41f21ece26da/) | ⚠️ Unaudited |
| PartialKeep3rV1OracleJob | unknown | own_core | ethereum | n/a | [`0x5efd85...8ba696`](./contracts/ethereum-1/0x5efd850044ba76b8ffe49437cb301be3568ba696/) | ⚠️ Unaudited |
| PawnBrokerFactory | unknown | own_core | ethereum | n/a | [`0xfb58b3...116969`](./contracts/ethereum-1/0xfb58b3306a6e00c65a1de8ad4aba21ac8f116969/) | ⚠️ Unaudited |
| PawnBrokerLooper | unknown | own_core | ethereum | n/a | [`0xd362ef...db0986`](./contracts/ethereum-1/0xd362efc75ef1879f37a900823495f402cfdb0986/) | ⚠️ Unaudited |
| PermastakerOperator | unknown | own_core | ethereum | n/a | [`0x3419b3...c955bf`](./contracts/ethereum-1/0x3419b3fff84b5fbf6eec061ba3f9b72809c955bf/) | ⚠️ Unaudited |
| Permissionless yETH deposit/withdrawal facility | unknown | needs_review | ethereum | n/a | [`0xab7427...64ec9d`](./contracts/ethereum-1/0xab742729a0b09399a9f9caa5b23be8eb7464ec9d/) | ⚠️ Unaudited |
| PessimisticVelodromeLPOracle | unknown | own_core | optimism | n/a | [`0x20cd9e...65b694`](./contracts/optimism-10/0x20cd9e17c3df2e82a852872b7792eecafa65b694/) | ⚠️ Unaudited |
| PlatformFactory | unknown | own_core | ethereum | n/a | [`0x1abe68...7744d1`](./contracts/ethereum-1/0x1abe682c785ccf18c91f4da045792115ae7744d1/) | ⚠️ Unaudited |
| Pool governor | unknown | needs_review | ethereum | n/a | [`0xcafdf1...e86656`](./contracts/ethereum-1/0xcafdf1393d9a30d56c7fec50412e21ede3e86656/) | ⚠️ Unaudited |
| PoolRegistry | unknown | own_core | ethereum | n/a | [`0x3051cc...603a4a`](./contracts/ethereum-1/0x3051cc7114c07365c99cf82de13cd9d10e603a4a/) | ⚠️ Unaudited |
| PreDepositFactory | unknown | own_core | ethereum | n/a | [`0x12a51c...aa25bf`](./contracts/ethereum-1/0x12a51ccf52c5ed74b48c0c38e0098ee2cbaa25bf/) | ⚠️ Unaudited |
| PriceFeed | unknown | own_core | ethereum | n/a | [`0x543a89...a884ed`](./contracts/ethereum-1/0x543a89fe8dd9403b89222540a881d3642da884ed/) | ⚠️ Unaudited |
| PriceFeedNoPrevious | unknown | own_core | ethereum | n/a | [`0x41e410...1d3e86`](./contracts/ethereum-1/0x41e41068618ae53f126175eb32fea3c29c1d3e86/) | ⚠️ Unaudited |
| PriceProxy | unknown | own_supporting | ethereum | n/a | [`0x3e94fa...3be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | ⚠️ Unaudited |
| PricesHelper | unknown | own_supporting | ethereum | n/a | [`0x5d63a8...ddc99b`](./contracts/ethereum-1/0x5d63a8584d91ebc5033d022afd6c5a7c7fddc99b/) | ⚠️ Unaudited |
| PrismaClaimOperator | unknown | own_core | ethereum | n/a | [`0x8e2e98...1880ab`](./contracts/ethereum-1/0x8e2e98e1ea79c31c9ab957e465c5529fc81880ab/) | ⚠️ Unaudited |
| PrismaCore | unknown | own_core | ethereum | n/a | [`0x5d17ea...64ccf8`](./contracts/ethereum-1/0x5d17ea085f2ff5da3e6979d5d26f1dbab664ccf8/) | ⚠️ Unaudited |
| PrismaPSM | unknown | own_core | ethereum | n/a | [`0x15b434...1fff61`](./contracts/ethereum-1/0x15b434fa5eb482b5aeb56f07df7a29bf261fff61/) | ⚠️ Unaudited |
| PrismaSnapshotMockToken | unknown | own_supporting | ethereum | n/a | [`0xea3030...0acc56`](./contracts/ethereum-1/0xea3030b900d94ed36e5a4e8b15b1db76530acc56/) | ⚠️ Unaudited |
| PrismaToken | unknown | own_core | ethereum | n/a | [`0xda4786...afd71c`](./contracts/ethereum-1/0xda47862a83dac0c112ba89c6abc2159b95afd71c/) | ⚠️ Unaudited |
| PrismaVault | unknown | own_core | ethereum | n/a | [`0x06bdf2...7eb02c`](./contracts/ethereum-1/0x06bdf212c290473dcacea9793890c5024c7eb02c/) | ⚠️ Unaudited |
| PropertiesAggregator | unknown | own_supporting | ethereum | n/a | [`0x3f870c...55e995`](./contracts/ethereum-1/0x3f870c0ee9ed1662b42d2d91781f1958f355e995/) | ⚠️ Unaudited |
| ProposalGuardian | unknown | own_supporting | ethereum | n/a | [`0xc813f6...002e76`](./contracts/ethereum-1/0xc813f688ca38d37e35845fb2eb180efbc5002e76/) | ⚠️ Unaudited |
| Protocol Address Provider | unknown | needs_review | ethereum | n/a | [`0x775f09...05653c`](./contracts/ethereum-1/0x775f09d6f3c8d2182dfa8bce8628acf51105653c/) | ⚠️ Unaudited |
| Protocol Owned Liquidity | unknown | needs_review | ethereum | n/a | [`0x929401...b04478`](./contracts/ethereum-1/0x929401e30aab6bd648def2d30ff44952bab04478/) | ⚠️ Unaudited |
| PublicAllocatorTendExecutor | unknown | own_core | ethereum | n/a | [`0xb86c97...121d5d`](./contracts/ethereum-1/0xb86c97f61db0b339d4ffe7f39f7725b80a121d5d/) | ⚠️ Unaudited |
| Receiver | unknown | own_integration_wrapper | ethereum | n/a | [`0x642a16...89dc2c`](./contracts/ethereum-1/0x642a16a7885d7a8b9353e2a4b68834f31389dc2c/) | ⚠️ Unaudited |
| RefundAccountant | unknown | own_core | polygon | n/a | [`0x54483f...1d4cee`](./contracts/polygon-137/0x54483f1592ab0adea2757ae0d62e6393361d4cee/) | ⚠️ Unaudited |
| RegisteryAdapterV2Vault | unknown | own_core | ethereum | n/a | [`0x071b84...c57186`](./contracts/ethereum-1/0x071b848b34586d0dc0009a3c0e6240b123c57186/) | ⚠️ Unaudited |
| RegisteryAdapterV2Vaults | unknown | own_core | ethereum | n/a | [`0x240315...2d1271`](./contracts/ethereum-1/0x240315db938d44bb124ae619f5fd0269a02d1271/) | ⚠️ Unaudited |
| RegistryAdapterIronBank | unknown | own_core | ethereum | n/a | [`0x21670d...b7cc62`](./contracts/ethereum-1/0x21670ddb429b6d80b5be4e65532576bb14b7cc62/) | ⚠️ Unaudited |
| RegistryAdapterV2Vault | unknown | own_core | optimism | n/a | [`0xbcfca7...047690`](./contracts/optimism-10/0xbcfca75ff12e2c1bb404c2c216dbf901be047690/) | ⚠️ Unaudited |
| ReleaseRegistry | unknown | own_core | ethereum | n/a | [`0x0377b4...5f7198`](./contracts/ethereum-1/0x0377b4dadda86c89a0091772b79ba67d0e5f7198/) | ⚠️ Unaudited |
| RemappingOracle | unknown | own_supporting | ethereum | n/a | [`0x282fb1...dec8aa`](./contracts/ethereum-1/0x282fb12f1d498766ef93423e10d2f2ece9dec8aa/) | ⚠️ Unaudited |
| Repay | unknown | own_core | ethereum | n/a | [`0x52f28c...5d7117`](./contracts/ethereum-1/0x52f28c876969de6175bd16d7515ff430c15d7117/) | ⚠️ Unaudited |
| RescueStrat | unknown | own_supporting | ethereum | n/a | [`0xcb354d...be9d21`](./contracts/ethereum-1/0xcb354dff03c15499ab9834faa63b6839c3be9d21/) | ⚠️ Unaudited |
| ResupplyPair | unknown | own_core | ethereum | n/a | [`0xd210bc...e1e42b`](./contracts/ethereum-1/0xd210bc75b822795a80672413e189312598e1e42b/) | ⚠️ Unaudited |
| rETHDepositor | unknown | own_supporting | ethereum | n/a | [`0x6e38f9...6e2cb2`](./contracts/ethereum-1/0x6e38f97be87f639fad08b79e2d6f1822e26e2cb2/) | ⚠️ Unaudited |
| Revenue Price Oracle | unknown | needs_review | ethereum | n/a | [`0xc1f9b5...abae2e`](./contracts/ethereum-1/0xc1f9b548afcbe850f2beba8a50e55d86f4abae2e/) | ⚠️ Unaudited |
| Revenue Recipient | unknown | needs_review | ethereum | n/a | [`0x5b5ab5...159587`](./contracts/ethereum-1/0x5b5ab518f532ce260a5d2795e1eec544fc159587/) | ⚠️ Unaudited |
| Reward Claimer | unknown | needs_review | ethereum | n/a | [`0xa82454...b05e50`](./contracts/ethereum-1/0xa82454009e01ae697012a73cb232d85e61b05e50/) | ⚠️ Unaudited |
| Reward Distributor | unknown | needs_review | ethereum | n/a | [`0xd31911...ff5934`](./contracts/ethereum-1/0xd31911a33a5577be233dc096f6f5a7e496ff5934/) | ⚠️ Unaudited |
| RewardDepositor | unknown | own_core | ethereum | n/a | [`0x922cf0...6c1096`](./contracts/ethereum-1/0x922cf0e43f8c8dc02399a10fcf25f3f17c6c1096/) | ⚠️ Unaudited |
| RewardsPuller | unknown | own_core | ethereum | n/a | [`0xb7e60d...6a1503`](./contracts/ethereum-1/0xb7e60dab3799e238d01e0f90c4506eef8f6a1503/) | ⚠️ Unaudited |
| RiskOracle | unknown | needs_review | ethereum | n/a | [`0x073931...e8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/) | ⚠️ Unaudited |
| RoleManager | unknown | own_core | arbitrum | n/a | [`0x3bf720...6685b1`](./contracts/arbitrum-42161/0x3bf72024420bdc4d7ca6a8b6211829476d6685b1/) | ⚠️ Unaudited |
| RoleManagerFactory | unknown | own_core | ethereum | n/a | [`0xca1245...e9e5ce`](./contracts/ethereum-1/0xca12459a931643bf28388c67639b3f352fe9e5ce/) | ⚠️ Unaudited |
| RouterFactory | unknown | own_core | ethereum | n/a | [`0x7919a3...f2fa2a`](./contracts/ethereum-1/0x7919a37ba0921347b9142041ee7be1d410f2fa2a/) | ⚠️ Unaudited |
| SafeProxy | unknown | standard_proxy_or_library (excluded) | ethereum | n/a | [`0x90d0f2...886b51`](./contracts/ethereum-1/0x90d0f26025571295d18a6c041e47450b81886b51/) | ⚠️ Unaudited |
| SafeProxy | unknown | standard_proxy_or_library (excluded) | base | n/a | [`0x90d0f2...886b51`](./contracts/base-8453/0x90d0f26025571295d18a6c041e47450b81886b51/) | ⚠️ Unaudited |
| SafeProxy | unknown | standard_proxy_or_library (excluded) | arbitrum | n/a | [`0x90d0f2...886b51`](./contracts/arbitrum-42161/0x90d0f26025571295d18a6c041e47450b81886b51/) | ⚠️ Unaudited |
| SafetyRedundancy | unknown | own_supporting | ethereum | n/a | [`0x6bdfea...fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/) | ⚠️ Unaudited |
| sdFPIS | unknown | needs_review | ethereum | n/a | [`0x334cb6...dbfac4`](./contracts/ethereum-1/0x334cb66050049c1e392007b018321c44a1dbfac4/) | ⚠️ Unaudited |
| SdLiquidityZapper | unknown | own_core | ethereum | n/a | [`0x2a3bd2...d7e24b`](./contracts/ethereum-1/0x2a3bd204d41c41804953558b9a29349e85d7e24b/) | ⚠️ Unaudited |
| SdtDistributorV2 | unknown | needs_review | ethereum | n/a | [`0x10a4a0...6cc2b6`](./contracts/ethereum-1/0x10a4a0db6554bfd90cfce11c97d3cf1b296cc2b6/) | ⚠️ Unaudited |
| sdToken | unknown | needs_review | ethereum | n/a | [`0x0879c1...122c66`](./contracts/ethereum-1/0x0879c1a344910c2944c29b892a1cf0c216122c66/) | ⚠️ Unaudited |
| ShadowQueueAprOracle | unknown | own_core | ethereum | n/a | [`0x2f10af...63db90`](./contracts/ethereum-1/0x2f10af0abc52025160167bffbec7167e5363db90/) | ⚠️ Unaudited |
| Sharer | unknown | own_core | ethereum | n/a | [`0x9a65e8...65b6b8`](./contracts/ethereum-1/0x9a65e8ecc9d0112dab0e05c9496894227765b6b8/) | ⚠️ Unaudited |
| SharerV3 | unknown | own_core | ethereum | n/a | [`0x2c641e...792f7d`](./contracts/ethereum-1/0x2c641e14afecb16b4aa6601a40ee60c3cc792f7d/) | ⚠️ Unaudited |
| ShareValueHelper | unknown | own_core | ethereum | n/a | [`0x0259e6...7671fa`](./contracts/ethereum-1/0x0259e629ecded874e0e289e047817cf50f7671fa/) | ⚠️ Unaudited |
| ShortOTokenActionWithSwapBtc | unknown | own_core | ethereum | n/a | [`0xb5a187...a3098d`](./contracts/ethereum-1/0xb5a187cd9140b6b0db97f014f5c6af5802a3098d/) | ⚠️ Unaudited |
| ShortOTokenActionWithSwapEth | unknown | needs_review | ethereum | n/a | [`0x7946b9...7417e2`](./contracts/ethereum-1/0x7946b98660c04a19475148c25c6d3bb3bf7417e2/) | ⚠️ Unaudited |
| Shutdown Module | unknown | needs_review | ethereum | n/a | [`0xe94628...5ba5fa`](./contracts/ethereum-1/0xe9462885290eb79ece41367d92712d6f525ba5fa/) | ⚠️ Unaudited |
| Signer | unknown | own_supporting | ethereum | n/a | [`0x10d7cb...7081fc`](./contracts/ethereum-1/0x10d7cb15642d540a4521a7b2840dab01287081fc/) | ⚠️ Unaudited |
| SimpleRedeem | unknown | own_core | ethereum | n/a | [`0x276d33...353465`](./contracts/ethereum-1/0x276d33825a217019b6afe5b317bef302db353465/) | ⚠️ Unaudited |
| SimpleTreasuryVault | unknown | own_core | ethereum | n/a | [`0x7a6de4...b6b364`](./contracts/ethereum-1/0x7a6de4affaddc01b2780ff701f8722de53b6b364/) | ⚠️ Unaudited |
| SimpleVaultMigrator | unknown | own_core | ethereum | n/a | [`0x056b0f...befe7b`](./contracts/ethereum-1/0x056b0fe9bcbf55fb89ceed0081b2d52f3cbefe7b/) | ⚠️ Unaudited |
| SingleSidedAMM | unknown | needs_review | ethereum | n/a | [`0x82bfdd...bf4b8a`](./contracts/ethereum-1/0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a/) | ⚠️ Unaudited |
| SingleTokenRewardDistributor | unknown | own_core | ethereum | n/a | [`0x1d02f6...2ad746`](./contracts/ethereum-1/0x1d02f6a86ed5650f93e40fcd62fa5727c32ad746/) | ⚠️ Unaudited |
| SIUSDAprOracle | unknown | own_supporting | ethereum | n/a | [`0xe51331...7336c3`](./contracts/ethereum-1/0xe51331a12e2b09067dd5b02021bf89e3a97336c3/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | own_supporting | ethereum | n/a | [`0x173f5f...9f3b27`](./contracts/ethereum-1/0x173f5f648b18cf1c7f6aac66a35bf462539f3b27/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | own_core | ethereum | n/a | [`0x5268ba...b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/) | ⚠️ Unaudited |
| Snapshot measure | unknown | needs_review | ethereum | n/a | [`0x0d8ab0...ba915f`](./contracts/ethereum-1/0x0d8ab04f46323ca50941495ac15a49ddacba915f/) | ⚠️ Unaudited |
| Snapshot Splitter | unknown | needs_review | ethereum | n/a | [`0x168b92...ada222`](./contracts/ethereum-1/0x168b92fc04eb8815a517b3f12341166bc5ada222/) | ⚠️ Unaudited |
| Snapshot vote weight token | unknown | needs_review | ethereum | n/a | [`0xb2ba98...840804`](./contracts/ethereum-1/0xb2ba982e22a488c8dcbb46cfe14473b1a6840804/) | ⚠️ Unaudited |
| SortedTroves | unknown | own_core | ethereum | n/a | [`0x3bab3f...8bbb50`](./contracts/ethereum-1/0x3bab3f90095c424b923d67f4be1790935c8bbb50/) | ⚠️ Unaudited |
| Splitter | unknown | own_core | ethereum | n/a | [`0x34a045...76e526`](./contracts/ethereum-1/0x34a045499247b983d16a49a1b72d5b3b2e76e526/) | ⚠️ Unaudited |
| SpotOracle | unknown | own_supporting | ethereum | n/a | [`0x0eaeca...79fa51`](./contracts/ethereum-1/0x0eaeca0e27b3cdb855b7a9b06ca2d9cdfb79fa51/) | ⚠️ Unaudited |
| SpotOracleAggregator | unknown | own_core | ethereum | n/a | [`0xadcdaa...9ba14b`](./contracts/ethereum-1/0xadcdaaf8f74ad19c46710492389aa846429ba14b/) | ⚠️ Unaudited |
| SpotOracleAggregatorUltra | unknown | own_core | ethereum | n/a | [`0xdbf40c...eaa071`](./contracts/ethereum-1/0xdbf40c130399a730f22c7d59facf519e2feaa071/) | ⚠️ Unaudited |
| StabilityPool | unknown | own_core | ethereum | n/a | [`0x695350...6bb6ed`](./contracts/ethereum-1/0x6953504f2f4537d7a7b4024508f321f7816bb6ed/) | ⚠️ Unaudited |
| StableAMM | unknown | needs_review | ethereum | n/a | [`0x0670e2...9eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/) | ⚠️ Unaudited |
| StableCreditHelper | unknown | own_core | ethereum | n/a | [`0x404f9e...ca0acb`](./contracts/ethereum-1/0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb/) | ⚠️ Unaudited |
| StableCreditProtocol | unknown | needs_review | ethereum | n/a | [`0x15fe17...26f5f9`](./contracts/ethereum-1/0x15fe17da18288d1799643be1bb07fb939626f5f9/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | own_core | ethereum | n/a | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | ⚠️ Unaudited |
| Staked YFI | unknown | needs_review | ethereum | n/a | [`0x42b252...ecc016`](./contracts/ethereum-1/0x42b25284e8ae427d79da78b65dffc232aaecc016/) | ⚠️ Unaudited |
| StakedyBoldOracle | unknown | own_supporting | ethereum | n/a | [`0x64a7de...5a849f`](./contracts/ethereum-1/0x64a7de4025c0c8793b08e484999ea33c585a849f/) | ⚠️ Unaudited |
| StakeNTroveZap | unknown | needs_review | ethereum | n/a | [`0x195115...3fdb83`](./contracts/ethereum-1/0x1951159afb9ceec77c8d767386dc15471f3fdb83/) | ⚠️ Unaudited |
| StakeZap | unknown | needs_review | ethereum | n/a | [`0x4f7633...8e2dfd`](./contracts/ethereum-1/0x4f76333e716788b0786b405fa8ea8928928e2dfd/) | ⚠️ Unaudited |
| Staking Middleware | unknown | needs_review | ethereum | n/a | [`0x24b267...e00a86`](./contracts/ethereum-1/0x24b267aa3946209ca19231d0f17110577be00a86/) | ⚠️ Unaudited |
| Staking Module | unknown | needs_review | ethereum | n/a | [`0x27a2fc...78ac52`](./contracts/ethereum-1/0x27a2fc2d47c5063a551c8fe81f580b84ab78ac52/) | ⚠️ Unaudited |
| Staking Reward Distributor | unknown | needs_review | ethereum | n/a | [`0x95547e...da6113`](./contracts/ethereum-1/0x95547ede56cf74b73dd78a37f547127dffda6113/) | ⚠️ Unaudited |
| Staking rewards | unknown | needs_review | ethereum | n/a | [`0xfe9c8a...e3b0d2`](./contracts/ethereum-1/0xfe9c8a785eab9ee13a908af10a51229d35e3b0d2/) | ⚠️ Unaudited |
| StakingRewards | unknown | own_core | optimism | n/a | [`0x009c05...bf8dfe`](./contracts/optimism-10/0x009c05bfb6d51fa0439d1473681b472019bf8dfe/) | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | needs_review | ethereum | n/a | [`0x3b3d59...0a6a52`](./contracts/ethereum-1/0x3b3d59a46a9c2b5abf02a85d4dc1915b270a6a52/) | ⚠️ Unaudited |
| StakingRewardsRegistry | unknown | own_core | ethereum | n/a | [`0x7d8dac...c9d44f`](./contracts/ethereum-1/0x7d8dac450df7e222ae1d591046eb7b5324c9d44f/) | ⚠️ Unaudited |
| StaticCallProxy | unknown | own_core | ethereum | n/a | [`0x3d7ec4...1a6cb0`](./contracts/ethereum-1/0x3d7ec4a09cd4330f5c2c4341621a8249001a6cb0/) | ⚠️ Unaudited |
| StealthRelayer | unknown | own_core | ethereum | n/a | [`0x0a61c2...60ee2a`](./contracts/ethereum-1/0x0a61c2146a7800bdc278833f21ebf56cd660ee2a/) | ⚠️ Unaudited |
| StealthVault | unknown | own_core | ethereum | n/a | [`0xc454f4...4ca45e`](./contracts/ethereum-1/0xc454f4e1ddb39c8de9663287d52b0e4feb4ca45e/) | ⚠️ Unaudited |
| StrategiesHelper | unknown | own_core | ethereum | n/a | [`0x11bba9...22dd91`](./contracts/ethereum-1/0x11bba9df4541c8e40288428d91b19ac64b22dd91/) | ⚠️ Unaudited |
| Strategy4626 | unknown | own_core | ethereum | n/a | [`0x05d13f...c2bcb8`](./contracts/ethereum-1/0x05d13fba06956514a550d0560293f8bcbec2bcb8/) | ⚠️ Unaudited |
| StrategyAprOracle | unknown | own_core | ethereum | n/a | [`0x0d50ca...c4aed4`](./contracts/ethereum-1/0x0d50cae113c7d971be5577836ced3b367ec4aed4/) | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | own_core | ethereum | n/a | [`0x2be5d9...f9e88b`](./contracts/ethereum-1/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b/) | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | own_core | ethereum | n/a | [`0xd643cf...d47ede`](./contracts/ethereum-1/0xd643cf07344428770b84973e049a1c18b5d47ede/) | ⚠️ Unaudited |
| StrategyFactory | unknown | own_core | base | n/a | [`0x02754c...bcf6aa`](./contracts/base-8453/0x02754ce97319adb7eb03782dc541d7b6f1bcf6aa/) | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | own_core | ethereum | n/a | [`0x31641a...69156f`](./contracts/ethereum-1/0x31641a4836c172640fa1c02999b09c5d1069156f/) | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | own_core | ethereum | n/a | [`0x442510...e0b81c`](./contracts/ethereum-1/0x442510ba285d5390cb5385a91a380d4268e0b81c/) | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | own_core | ethereum | n/a | [`0x3bd13c...72ad24`](./contracts/ethereum-1/0x3bd13c2c082cb269c54432746335a7814972ad24/) | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | own_core | ethereum | n/a | [`0x2288c4...4ec989`](./contracts/ethereum-1/0x2288c409e67b6ce52180f97a8cddf7abc24ec989/) | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | own_core | ethereum | n/a | [`0x35cee4...ba817a`](./contracts/ethereum-1/0x35cee4c61b7619956e0b2015b5411f93cbba817a/) | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | own_core | ethereum | n/a | [`0x25faca...20d8d6`](./contracts/ethereum-1/0x25faca21dd2ad7edb3a027d543e617496820d8d6/) | ⚠️ Unaudited |
| StrategyYearnBasic | unknown | own_core | ethereum | n/a | [`0x7811bd...badf5c`](./contracts/ethereum-1/0x7811bdc0e906eecaaf951057305187d0a4badf5c/) | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | own_core | ethereum | n/a | [`0x395f93...88797c`](./contracts/ethereum-1/0x395f93350d5102b6139abfc84a7d6ee70488797c/) | ⚠️ Unaudited |
| String | unknown | own_supporting | optimism | n/a | [`0x02ff74...1d3480`](./contracts/optimism-10/0x02ff746d8cb62709aeec611cec9b17d7dd1d3480/) | ⚠️ Unaudited |
| Strings | unknown | needs_review | ethereum | n/a | [`0x45f80a...3c4a93`](./contracts/ethereum-1/0x45f80a180acb435aa0a52f1a260f3cc2703c4a93/) | ⚠️ Unaudited |
| StringSplit | unknown | own_supporting | ethereum | n/a | [`0x1c0eee...ec52ff`](./contracts/ethereum-1/0x1c0eeef670d82498f7547062aac7ee2143ec52ff/) | ⚠️ Unaudited |
| SturdyUSDCOracle | unknown | own_core | ethereum | n/a | [`0x7af63d...c2102c`](./contracts/ethereum-1/0x7af63dc2d7bb6996f8727d4462e68fc3c1c2102c/) | ⚠️ Unaudited |
| SupplyFactory | unknown | needs_review | ethereum | n/a | [`0xf2eb91...41978f`](./contracts/ethereum-1/0xf2eb916605402e5c7e81f7d609d0e2204841978f/) | ⚠️ Unaudited |
| SUSDSExchange | unknown | own_core | ethereum | n/a | [`0x8a3bc2...4fc744`](./contracts/ethereum-1/0x8a3bc2cce3ea37ead933422252e349512f4fc744/) | ⚠️ Unaudited |
| SUSDSUSDTExchange | unknown | own_core | ethereum | n/a | [`0x328ee8...31df80`](./contracts/ethereum-1/0x328ee88a60da26e270061533c6e9fa03c031df80/) | ⚠️ Unaudited |
| SwapDebtForCollZap | unknown | own_supporting | ethereum | n/a | [`0x114785...342a1a`](./contracts/ethereum-1/0x11478565ac5925745386d58eae65c9597e342a1a/) | ⚠️ Unaudited |
| SwapHelper | unknown | needs_review | ethereum | n/a | [`0x4d6c97...4e1981`](./contracts/ethereum-1/0x4d6c977a6998544f667b0aeec8c93822504e1981/) | ⚠️ Unaudited |
| SwapperV3 | unknown | own_core | ethereum | n/a | [`0x4e6ae7...6bf694`](./contracts/ethereum-1/0x4e6ae791cc33120d72392f2449dbb91dec6bf694/) | ⚠️ Unaudited |
| SwapperV4 | unknown | own_core | ethereum | n/a | [`0x0e1b2d...00f853`](./contracts/ethereum-1/0x0e1b2d617834994a74c14f255b56ef0b1100f853/) | ⚠️ Unaudited |
| SwapperV5 | unknown | own_core | ethereum | n/a | [`0x1b7e6f...9330a2`](./contracts/ethereum-1/0x1b7e6fb817112b036eaa4ae85479ff1c2e9330a2/) | ⚠️ Unaudited |
| SweeperV2 | unknown | own_supporting | ethereum | n/a | [`0x6b3d9f...40ff26`](./contracts/ethereum-1/0x6b3d9fe074c18a2fa10a8206670ef7f65f40ff26/) | ⚠️ Unaudited |
| Synthetic | unknown | needs_review | ethereum | n/a | [`0x0485a4...e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | own_core | ethereum | n/a | [`0xaa90d9...38ffdc`](./contracts/ethereum-1/0xaa90d9cc2f41a150489da5fffba2060a2938ffdc/) | ⚠️ Unaudited |
| SynthetixAMM | unknown | own_core | ethereum | n/a | [`0x5ed4a4...f8c8be`](./contracts/ethereum-1/0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be/) | ⚠️ Unaudited |
| SynthetixExchange | unknown | own_core | ethereum | n/a | [`0x0691cf...04c2cf`](./contracts/ethereum-1/0x0691cf9d171d6c9c3876598b14732248b204c2cf/) | ⚠️ Unaudited |
| SyrupDepositExchange | unknown | own_core | ethereum | n/a | [`0x3ac4ae...bcbd4f`](./contracts/ethereum-1/0x3ac4aee8be925472e2239e9633b9157e7cbcbd4f/) | ⚠️ Unaudited |
| SyrupExchange | unknown | own_core | ethereum | n/a | [`0xe9409b...7bd0f0`](./contracts/ethereum-1/0xe9409b50cd0f25d203319f7bcf729f195a7bd0f0/) | ⚠️ Unaudited |
| TapFab | unknown | needs_review | ethereum | n/a | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| Team | unknown | needs_review | ethereum | n/a | [`0xa59b34...23bf43`](./contracts/ethereum-1/0xa59b34c87f97bdf95ab3e532fd9b7d1fcd23bf43/) | ⚠️ Unaudited |
| Team Accountant | unknown | needs_review | ethereum | n/a | [`0x1c2219...ffdfd6`](./contracts/ethereum-1/0x1c221980aab2e52ccc02180e0c171ca5e5ffdfd6/) | ⚠️ Unaudited |
| Team Registry | unknown | needs_review | ethereum | n/a | [`0x9da431...372f29`](./contracts/ethereum-1/0x9da431b8a5b5962ebff1d1876ddb0f336a372f29/) | ⚠️ Unaudited |
| TendiesFarm | unknown | own_core | ethereum | n/a | [`0x101dd6...e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | ⚠️ Unaudited |
| TendV2Keep3rJob | unknown | own_core | ethereum | n/a | [`0x2ef780...c57bc3`](./contracts/ethereum-1/0x2ef7801c6a9d451ef20d0f513c738cc012c57bc3/) | ⚠️ Unaudited |
| Test | unknown | own_supporting | ethereum | n/a | [`0x643a69...901e26`](./contracts/ethereum-1/0x643a6970460e336a526e7b185f7b3e6ff6901e26/) | ⚠️ Unaudited |
| TestGuestList | unknown | own_core | ethereum | n/a | [`0x1403ee...2993ab`](./contracts/ethereum-1/0x1403eea5fff87253658d755030a73dfbca2993ab/) | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | own_supporting | ethereum | n/a | [`0x2df934...60da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/) | ⚠️ Unaudited |
| TimelockController | unknown | standard_proxy_or_library (excluded) | ethereum | n/a | [`0x88ba03...67bf73`](./contracts/ethereum-1/0x88ba032be87d5ef1fbe87336b7090767f367bf73/) | ⚠️ Unaudited |
| TimelockExecutor | unknown | own_core | ethereum | n/a | [`0xf8f60b...a5779b`](./contracts/ethereum-1/0xf8f60bf9456a6e0141149db2dd6f02c60da5779b/) | ⚠️ Unaudited |
| TokenLocker | unknown | own_core | ethereum | n/a | [`0x3f7854...22829d`](./contracts/ethereum-1/0x3f78544364c3eccdce4d9c89a630aea26122829d/) | ⚠️ Unaudited |
| TokenSender | unknown | needs_review | ethereum | n/a | [`0x223bb2...2a5d0b`](./contracts/ethereum-1/0x223bb2252c2b1855c337b2a0d6d066c76d2a5d0b/) | ⚠️ Unaudited |
| TokenVotingFactory | unknown | own_core | ethereum | n/a | [`0x076e29...fb9e20`](./contracts/ethereum-1/0x076e298405b75a02c222d3860d703e4c92fb9e20/) | ⚠️ Unaudited |
| TopFab | unknown | needs_review | ethereum | n/a | [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| Treasury | unknown | own_core | base | n/a | [`0x02ff74...1d3480`](./contracts/base-8453/0x02ff746d8cb62709aeec611cec9b17d7dd1d3480/) | ⚠️ Unaudited |
| TreasuryVault | unknown | own_core | ethereum | n/a | [`0x93a62d...a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | ⚠️ Unaudited |
| Trigonometry | unknown | own_supporting | ethereum | n/a | [`0x23e258...b3dae2`](./contracts/ethereum-1/0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2/) | ⚠️ Unaudited |
| TroveManager | unknown | own_core | ethereum | n/a | [`0x14a3b7...05f7a6`](./contracts/ethereum-1/0x14a3b726724a0e620cde342a7c04c09e0d05f7a6/) | ⚠️ Unaudited |
| TroveManagerGetters | unknown | own_supporting | ethereum | n/a | [`0x4404ff...c9ae7a`](./contracts/ethereum-1/0x4404ff820dad76afc4f931079eb13fd418c9ae7a/) | ⚠️ Unaudited |
| TrustedVaultMigrator | unknown | own_core | ethereum | n/a | [`0x1824df...72ab90`](./contracts/ethereum-1/0x1824df8d751704fa10fa371d62a37f9b8772ab90/) | ⚠️ Unaudited |
| TubFab | unknown | needs_review | ethereum | n/a | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| TvlAdapter_VAULT_V2 | unknown | own_core | ethereum | n/a | [`0x5e4c80...0c47dc`](./contracts/ethereum-1/0x5e4c808d762b969290b2d5fa89ed13c6b40c47dc/) | ⚠️ Unaudited |
| TvlAdapterEarn | unknown | own_core | ethereum | n/a | [`0x1007ed...248691`](./contracts/ethereum-1/0x1007ed6fdfac72bbea9c719cf1fa9c355d248691/) | ⚠️ Unaudited |
| TvlAdapterIronBank | unknown | own_core | ethereum | n/a | [`0xec7ac8...097f24`](./contracts/ethereum-1/0xec7ac8ac897f5082b2c3d4e8d2173f992a097f24/) | ⚠️ Unaudited |
| TvlAdapterV1Vaults | unknown | own_core | ethereum | n/a | [`0xf4fb89...4c6c78`](./contracts/ethereum-1/0xf4fb8903a41fc78686b26de55502cde42a4c6c78/) | ⚠️ Unaudited |
| TvlAdapterV2Vaults | unknown | own_core | ethereum | n/a | [`0x14d6e0...da8785`](./contracts/ethereum-1/0x14d6e0908bae40a2487352b2a9cb1a6232da8785/) | ⚠️ Unaudited |
| TvlAdapterVeCrv | unknown | own_core | ethereum | n/a | [`0x560144...a850e5`](./contracts/ethereum-1/0x560144c25e53149ac410e5d33bdb131e49a850e5/) | ⚠️ Unaudited |
| TwapOracle | unknown | own_core | ethereum | n/a | [`0x7aa349...24d013`](./contracts/ethereum-1/0x7aa3490e09feb1ee220acf57801e0ab16b24d013/) | ⚠️ Unaudited |
| UChildDAI | unknown | needs_review | polygon | n/a | [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | third_party_dependency (excluded) | polygon | n/a | [`0x0735a6...6f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | third_party_dependency (excluded) | polygon | n/a | [`0x02daef...057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | third_party_dependency (excluded) | polygon | n/a | [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | third_party_dependency (excluded) | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UniOracleFactory | unknown | own_core | ethereum | n/a | [`0x61da8b...61d136`](./contracts/ethereum-1/0x61da8b0808cea5281a912cd85421a6d12261d136/) | ⚠️ Unaudited |
| UniqueAddresses | unknown | own_supporting | ethereum | n/a | [`0x07da86...ecfabe`](./contracts/ethereum-1/0x07da8603916ee59a921eb4f1eb89daef71ecfabe/) | ⚠️ Unaudited |
| UniqueAddressesHelper | unknown | own_supporting | ethereum | n/a | [`0xc3a0be...f9467c`](./contracts/ethereum-1/0xc3a0bef4a47ba579cbba510ae2c59d9b9bf9467c/) | ⚠️ Unaudited |
| Unitroller | unknown | own_core | ethereum | n/a | [`0xab1c34...144cbb`](./contracts/ethereum-1/0xab1c342c7bf5ec5f02adea1c2270670bca144cbb/) | ⚠️ Unaudited |
| Unwrapper | unknown | own_integration_wrapper | ethereum | n/a | [`0x13dfeb...cadd85`](./contracts/ethereum-1/0x13dfeb3cc4f05229c449c30a9ae4141d7fcadd85/) | ⚠️ Unaudited |
| USDCToUSDS | unknown | own_core | ethereum | n/a | [`0x04d961...b71afe`](./contracts/ethereum-1/0x04d9614e94f1885ef819e96f9402e1a81eb71afe/) | ⚠️ Unaudited |
| USDCToUSDS | unknown | own_core | ethereum | n/a | [`0x1b88f1...c271ee`](./contracts/ethereum-1/0x1b88f199d42f2114de341c5b68e9c92af1c271ee/) | ⚠️ Unaudited |
| USDSFarmerDAI | unknown | own_core | ethereum | n/a | [`0x78c2c5...c765d1`](./contracts/ethereum-1/0x78c2c5d6e4ac63edbf534a1c88093edb6bc765d1/) | ⚠️ Unaudited |
| USDSFarmerUSDC | unknown | own_core | ethereum | n/a | [`0x38e95f...230f8b`](./contracts/ethereum-1/0x38e95f4ae861feed3952d0dac5abb14a94230f8b/) | ⚠️ Unaudited |
| V2Keeper | unknown | own_core | ethereum | n/a | [`0x736d7e...6cfccf`](./contracts/ethereum-1/0x736d7e3c5a6cb2ce3b764300140abf476f6cfccf/) | ⚠️ Unaudited |
| VaultKeep3r | unknown | own_core | ethereum | n/a | [`0x054a87...b03203`](./contracts/ethereum-1/0x054a87ddfde3ccb5ddb03739375329bcc1b03203/) | ⚠️ Unaudited |
| VaultKeep3rJob | unknown | own_core | ethereum | n/a | [`0x4a479e...880c10`](./contracts/ethereum-1/0x4a479e4457841d2d2ff86e5a5389300963880c10/) | ⚠️ Unaudited |
| VaultRoleManagerHandoff | unknown | own_supporting | ethereum | n/a | [`0x2045cf...cd7e19`](./contracts/ethereum-1/0x2045cfdd404f88f86f611976ba3f11f8bdcd7e19/) | ⚠️ Unaudited |
| VaultsRegistryHelper2 | unknown | own_core | ethereum | n/a | [`0x57ca31...cb70d8`](./contracts/ethereum-1/0x57ca31224bec6901b353251840ae4d10c3cb70d8/) | ⚠️ Unaudited |
| VaultSwapper | unknown | own_core | ethereum | n/a | [`0xf12eea...0e51b6`](./contracts/ethereum-1/0xf12eeab1c759dd7d8c012cca6d8715eed80e51b6/) | ⚠️ Unaudited |
| VaultV1 | unknown | own_supporting | ethereum | n/a | [`0xa4c78b...dc4f7a`](./contracts/ethereum-1/0xa4c78b49c9ec659df1f5b620f2dc8b80a0dc4f7a/) | ⚠️ Unaudited |
| VaultV2 | unknown | own_core | ethereum | n/a | [`0x626632...0e27de`](./contracts/ethereum-1/0x62663257c7958e411b98941f93925297940e27de/) | ⚠️ Unaudited |
| VelodromeGlobal | unknown | own_core | base | n/a | [`0x2d12ca...3cdff1`](./contracts/base-8453/0x2d12caffa46ab3b6c5ceb224620de8b4de3cdff1/) | ⚠️ Unaudited |
| VeSDTFeeAngleProxyV2 | unknown | needs_review | ethereum | n/a | [`0x059f78...fcd1ac`](./contracts/ethereum-1/0x059f78859a152e42dd590a49be44f2ebe9fcd1ac/) | ⚠️ Unaudited |
| Vesting Escrow | unknown | needs_review | ethereum | n/a | [`0x0cf5bf...db23ef`](./contracts/ethereum-1/0x0cf5bf5e7ba48796d6ec641a75f55bd1d6db23ef/) | ⚠️ Unaudited |
| Vesting Escrow for veYFI liquid lockers | unknown | needs_review | ethereum | n/a | [`0x212559...fc9942`](./contracts/ethereum-1/0x212559a47cc87607c9bf07538bd7aa6836fc9942/) | ⚠️ Unaudited |
| Vesting Staker (1UP) | unknown | needs_review | ethereum | n/a | [`0x298bc0...e6304f`](./contracts/ethereum-1/0x298bc0153998bc43003ca8b27768228791e6304f/) | ⚠️ Unaudited |
| Vesting Staker (Cove) | unknown | needs_review | ethereum | n/a | [`0xc198fc...8fa691`](./contracts/ethereum-1/0xc198fcb71e5a2cf29f7bcafaa462f3b0238fa691/) | ⚠️ Unaudited |
| Vesting Staker (StakeDAO) | unknown | needs_review | ethereum | n/a | [`0x3e3734...123a1d`](./contracts/ethereum-1/0x3e37347bcdf609139f74dcaeac553343cb123a1d/) | ⚠️ Unaudited |
| VestingVault | unknown | own_supporting | ethereum | n/a | [`0x4f5981...a7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/) | ⚠️ Unaudited |
| VeYfiPositionHelper | unknown | own_supporting | ethereum | n/a | [`0x5a70cd...6ecbe8`](./contracts/ethereum-1/0x5a70cd937ba3daec8188e937e243ffa43d6ecbe8/) | ⚠️ Unaudited |
| VirtualPool | unknown | needs_review | ethereum | n/a | [`0x125ca4...2af268`](./contracts/ethereum-1/0x125ca420ea1556a65bb926fa7bd5d72fc22af268/) | ⚠️ Unaudited |
| Vote weight measure with delegation and decay | unknown | needs_review | ethereum | n/a | [`0x52574a...dba81d`](./contracts/ethereum-1/0x52574a10ce418afef388e39cea61643d33dba81d/) | ⚠️ Unaudited |
| Voting | unknown | own_core | ethereum | n/a | [`0xc55a39...3a3dcd`](./contracts/ethereum-1/0xc55a3957476cc1e7fef40856802edd150c3a3dcd/) | ⚠️ Unaudited |
| Voting Escrow | unknown | needs_review | ethereum | n/a | [`0x13daff...7470a0`](./contracts/ethereum-1/0x13daffdf8863c47290363b0109b681e3f37470a0/) | ⚠️ Unaudited |
| Voting Escrow Reward Distributor | unknown | needs_review | ethereum | n/a | [`0x2548bf...9ee884`](./contracts/ethereum-1/0x2548bf65916fdabb5a5673fc4225011ff29ee884/) | ⚠️ Unaudited |
| VotingPowerCondition | unknown | needs_review | ethereum | n/a | [`0x2321a7...0591b7`](./contracts/ethereum-1/0x2321a7facf817cfea12cd444d6d3cfa7ba0591b7/) | ⚠️ Unaudited |
| VoxFab | unknown | needs_review | ethereum | n/a | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| VulnerableTroveRedeemer | unknown | own_supporting | ethereum | n/a | [`0x1e07cf...7d0438`](./contracts/ethereum-1/0x1e07cfbf666741b2fb3a33516a23293cae7d0438/) | ⚠️ Unaudited |
| Vyper_contract | unknown | needs_review | optimism | n/a | [`0x000000...fc4383`](./contracts/optimism-10/0x0000000022d53366457f9d5e68ec105046fc4383/) | ⚠️ Unaudited |
| Wallet | unknown | own_core | ethereum | n/a | [`0x77d851...353d7f`](./contracts/ethereum-1/0x77d851a9f62a4c76481cda94d40772642b353d7f/) | ⚠️ Unaudited |
| WeETHUnwindAdapter | unknown | own_integration_wrapper | ethereum | n/a | [`0x0a0e05...6e9d12`](./contracts/ethereum-1/0x0a0e0580bd8493be43cad2910cb5497f696e9d12/) | ⚠️ Unaudited |
| Weight aggregator | unknown | needs_review | ethereum | n/a | [`0x6973cf...dfecd7`](./contracts/ethereum-1/0x6973cf85d479b9253e13e71f377e8cd2c2dfecd7/) | ⚠️ Unaudited |
| Weight vote | unknown | needs_review | ethereum | n/a | [`0x25aea8...544a18`](./contracts/ethereum-1/0x25aea8c84e138d2bab058bcfbdcbd62d26544a18/) | ⚠️ Unaudited |
| WETH | unknown | third_party_dependency (excluded) | ethereum | n/a | [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | third_party_dependency (excluded) | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WETHWstETHExchange | unknown | own_core | ethereum | n/a | [`0x706aa5...940c03`](./contracts/ethereum-1/0x706aa50385c51596b6d9cbcf97645c6a98940c03/) | ⚠️ Unaudited |
| WrappedYFI | unknown | own_core | ethereum | n/a | [`0x017e71...231981`](./contracts/ethereum-1/0x017e71e96f2ae777c679740d2d8dc15ed4231981/) | ⚠️ Unaudited |
| WstETHUnwindAdapter | unknown | own_integration_wrapper | ethereum | n/a | [`0x33e472...71099b`](./contracts/ethereum-1/0x33e472b038575bf745f5d42dc58b09a6f971099b/) | ⚠️ Unaudited |
| xVault | unknown | own_core | ethereum | n/a | [`0x0205ae...e419c5`](./contracts/ethereum-1/0x0205ae93e18aa23d31e3df53899547b986e419c5/) | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | own_core | ethereum | n/a | [`0x44ff2a...53b367`](./contracts/ethereum-1/0x44ff2af361e4b6a2892523d513df5245fc53b367/) | ⚠️ Unaudited |
| yBAL Zap v1 | unknown | needs_review | ethereum | n/a | [`0xccd31d...058bae`](./contracts/ethereum-1/0xccd31df9084615d87036586f5139c83c6a058bae/) | ⚠️ Unaudited |
| YBC Bonus Recipient | unknown | needs_review | ethereum | n/a | [`0xf03a91...039e4c`](./contracts/ethereum-1/0xf03a919a59f8381be220511ecf788b15fb039e4c/) | ⚠️ Unaudited |
| YBC Membership Election | unknown | needs_review | ethereum | n/a | [`0xe16608...fb206c`](./contracts/ethereum-1/0xe16608758c11322d407745927d2d033f1bfb206c/) | ⚠️ Unaudited |
| YBC Reward Distributor | unknown | needs_review | ethereum | n/a | [`0x53100f...c8bbe1`](./contracts/ethereum-1/0x53100f8979d3655a2e95465f583b0f4a11c8bbe1/) | ⚠️ Unaudited |
| YBC Weight Aggregator | unknown | needs_review | ethereum | n/a | [`0xadb722...1468d9`](./contracts/ethereum-1/0xadb7228a85fcd24e3cfc8c58e2d4b9f03e1468d9/) | ⚠️ Unaudited |
| YBSFactory | unknown | own_core | ethereum | n/a | [`0x3ea136...65ac4f`](./contracts/ethereum-1/0x3ea13660e4b4319a1418c5a5e9fe98263e65ac4f/) | ⚠️ Unaudited |
| YBSRegistry | unknown | own_core | ethereum | n/a | [`0x262be1...e9f738`](./contracts/ethereum-1/0x262be1d31d0754399d8d5dc63b99c22146e9f738/) | ⚠️ Unaudited |
| YBSRewardFactory | unknown | own_core | ethereum | n/a | [`0xdbbf7d...af0bd5`](./contracts/ethereum-1/0xdbbf7d6d71397b33675ad16c31bd3505c6af0bd5/) | ⚠️ Unaudited |
| YBSUtilities | unknown | own_core | ethereum | n/a | [`0x265c8d...619569`](./contracts/ethereum-1/0x265c8d21a322b04804524b857089de2fef619569/) | ⚠️ Unaudited |
| YBSUtilsFactory | unknown | own_core | ethereum | n/a | [`0x210e69...41c6f0`](./contracts/ethereum-1/0x210e690ed371d69c7ea42ba716d8ab782041c6f0/) | ⚠️ Unaudited |
| YBToken | unknown | needs_review | ethereum | n/a | [`0x01791f...c045ff`](./contracts/ethereum-1/0x01791f726b4103694969820be083196cc7c045ff/) | ⚠️ Unaudited |
| yBUSD | unknown | needs_review | ethereum | n/a | [`0x04bc0a...bca9ae`](./contracts/ethereum-1/0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae/) | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | own_core | ethereum | n/a | [`0x24dd02...e82a5d`](./contracts/ethereum-1/0x24dd028bd027511482e701d08bae002cd6e82a5d/) | ⚠️ Unaudited |
| YCRV Zap v3 | unknown | needs_review | ethereum | n/a | [`0xdc899a...35a66a`](./contracts/ethereum-1/0xdc899ab992fbcfbac936ce5a5bc5a86a5d35a66a/) | ⚠️ Unaudited |
| YCRV Zap v4 | unknown | needs_review | ethereum | n/a | [`0x4ec30e...b23839`](./contracts/ethereum-1/0x4ec30e8f98dcf08b29b02f46082ed05f88b23839/) | ⚠️ Unaudited |
| YCRVSplitter | unknown | own_core | ethereum | n/a | [`0x05fc81...d5e401`](./contracts/ethereum-1/0x05fc8174050f0a41deb7e562187911d45cd5e401/) | ⚠️ Unaudited |
| ycUSDC | unknown | needs_review | ethereum | n/a | [`0x0597ea...bc0f2c`](./contracts/ethereum-1/0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c/) | ⚠️ Unaudited |
| ycUSDT | unknown | needs_review | ethereum | n/a | [`0x631d66...3931a4`](./contracts/ethereum-1/0x631d66f79191c86d7b7a7c0e2afae3ae943931a4/) | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | needs_review | ethereum | n/a | [`0x56ab71...a6bd33`](./contracts/ethereum-1/0x56ab71990783442f68fb25e0b466196c7ca6bd33/) | ⚠️ Unaudited |
| yDelegate | unknown | own_core | ethereum | n/a | [`0x610258...a05f83`](./contracts/ethereum-1/0x61025859c349dfbe6ef0dfca202ef3e84ca05f83/) | ⚠️ Unaudited |
| yDiscount | unknown | needs_review | ethereum | n/a | [`0x11e475...feb958`](./contracts/ethereum-1/0x11e4757b9f88cf17f8a0f5ea7e6b4f40affeb958/) | ⚠️ Unaudited |
| Yearn Builder Collective | unknown | needs_review | ethereum | n/a | [`0xd6afd7...dcb315`](./contracts/ethereum-1/0xd6afd78c05f0d425f2b46359746dd44991dcb315/) | ⚠️ Unaudited |
| Yearn Token Vault | unknown | needs_review | base | n/a | [`0x061ea8...6d79e1`](./contracts/base-8453/0x061ea85f0f2936d382cad1861d7bcefd986d79e1/) | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | needs_review | ethereum | n/a | [`0x04aebe...48dd13`](./contracts/ethereum-1/0x04aebe2e4301cdf5e9c57b01ebdfe4ac4b48dd13/) | ⚠️ Unaudited |
| Yearn Vault Factory | unknown | needs_review | ethereum | n/a | [`0x310ac2...22bcac`](./contracts/ethereum-1/0x310ac28acf5e514abdbff9ab25e21f1bfe22bcac/) | ⚠️ Unaudited |
| Yearn4626Router | unknown | own_integration_wrapper | ethereum | n/a | [`0x1112db...4fd8de`](./contracts/ethereum-1/0x1112dbcf805682e828606f74ab717abf4b4fd8de/) | ⚠️ Unaudited |
| YearnAccumulator | unknown | own_core | ethereum | n/a | [`0x8b6543...c30ec3`](./contracts/ethereum-1/0x8b65438178cd4ef67b0177135de84fe7e3c30ec3/) | ⚠️ Unaudited |
| YearnBoostedStaker | unknown | own_core | ethereum | n/a | [`0x5d2ea3...0fad91`](./contracts/ethereum-1/0x5d2ea33449a60a70e8fcdc5251fdd86a030fad91/) | ⚠️ Unaudited |
| YearnDaiCompStratV2 | unknown | own_core | ethereum | n/a | [`0x4c6e9d...5e2773`](./contracts/ethereum-1/0x4c6e9d7e5d69429100fcc8afb25ea980065e2773/) | ⚠️ Unaudited |
| YearnFamily2021 | unknown | needs_review | ethereum | n/a | [`0x9d45da...c918e8`](./contracts/ethereum-1/0x9d45dab69f1309f1f55a7280b1f6a2699ec918e8/) | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | own_core | ethereum | n/a | [`0x41303e...343eeb`](./contracts/ethereum-1/0x41303e87db5be5b1c7a341440d04ec6a11343eeb/) | ⚠️ Unaudited |
| YearnOptionsV1Manager | unknown | own_core | ethereum | n/a | [`0x4a993e...d598f0`](./contracts/ethereum-1/0x4a993e737cb5c807f73447e7e31403f753d598f0/) | ⚠️ Unaudited |
| YearnV1EarnKeep3r | unknown | own_core | ethereum | n/a | [`0xe7f4ab...13ec0c`](./contracts/ethereum-1/0xe7f4ab593aec81eca754da1b3b7ce0c42a13ec0c/) | ⚠️ Unaudited |
| YearnV1EarnKeep3rV2 | unknown | own_core | ethereum | n/a | [`0xf8106d...faf709`](./contracts/ethereum-1/0xf8106d779246612ff7a6a623ef7026a9ccfaf709/) | ⚠️ Unaudited |
| YearnV2Oracle | unknown | own_core | ethereum | n/a | [`0x02f82f...5b704a`](./contracts/ethereum-1/0x02f82f30c8d45373619ba39344304731785b704a/) | ⚠️ Unaudited |
| yETH bootstrap | unknown | needs_review | ethereum | n/a | [`0x0c80cf...b74098`](./contracts/ethereum-1/0x0c80cf2bf3e9f7307c8321f272315762a7b74098/) | ⚠️ Unaudited |
| yETH delegated staking contract | unknown | needs_review | ethereum | n/a | [`0xbb5950...81e75c`](./contracts/ethereum-1/0xbb595031c02810b8f4e035017fb4502ae481e75c/) | ⚠️ Unaudited |
| yETH deposit/withdrawal facility | unknown | needs_review | ethereum | n/a | [`0x95be65...a50be6`](./contracts/ethereum-1/0x95be6555f5c734f4e2169e746c533f40aca50be6/) | ⚠️ Unaudited |
| yETH recovery claim | unknown | needs_review | ethereum | n/a | [`0x956485...ff3143`](./contracts/ethereum-1/0x9564850c7090b13794e6d1164b0826c0aeff3143/) | ⚠️ Unaudited |
| yETH stake zap | unknown | needs_review | ethereum | n/a | [`0x50f052...d2db0e`](./contracts/ethereum-1/0x50f052f17757e62872f055cdba2ef580cfd2db0e/) | ⚠️ Unaudited |
| yETH staking contract | unknown | needs_review | ethereum | n/a | [`0x583019...04d0b4`](./contracts/ethereum-1/0x583019ff0f430721ada9cfb4fac8f06ca104d0b4/) | ⚠️ Unaudited |
| yETH strategy deposit/withdrawal facility | unknown | needs_review | ethereum | n/a | [`0x818a8e...7fc5e1`](./contracts/ethereum-1/0x818a8e8240ac57949e28577b81e9eb9ecd7fc5e1/) | ⚠️ Unaudited |
| yETH token | unknown | needs_review | ethereum | n/a | [`0x1bed97...6131f7`](./contracts/ethereum-1/0x1bed97cbc3c24a4fb5c069c6e311a967386131f7/) | ⚠️ Unaudited |
| yETH weighted stableswap pool | unknown | needs_review | ethereum | n/a | [`0x0ca1bd...ba6822`](./contracts/ethereum-1/0x0ca1bd1301191576bea9b9afcfd4649dd1ba6822/) | ⚠️ Unaudited |
| YFI Buyback Auction | unknown | needs_review | ethereum | n/a | [`0x4349ed...806df3`](./contracts/ethereum-1/0x4349ed200029e6cf38f1455b9da88981f1806df3/) | ⚠️ Unaudited |
| YFI matching | unknown | needs_review | ethereum | n/a | [`0x572b06...eaaacc`](./contracts/ethereum-1/0x572b0675b0a815d1970c1310fe4aa8884feaaacc/) | ⚠️ Unaudited |
| yInsure | unknown | own_core | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| yInsureView | unknown | own_core | ethereum | n/a | [`0x6d2738...98340b`](./contracts/ethereum-1/0x6d2738fa41e83c5b5633f466f9aa11dae098340b/) | ⚠️ Unaudited |
| YLiquidMarket | unknown | own_core | ethereum | n/a | [`0x28b47d...ea001f`](./contracts/ethereum-1/0x28b47dbbc7af3482e900f2ed4885490deaea001f/) | ⚠️ Unaudited |
| YLiquidMarketAprOracle | unknown | own_supporting | ethereum | n/a | [`0x76a56d...1f1075`](./contracts/ethereum-1/0x76a56db217bc1fee1c4098a716f1b229671f1075/) | ⚠️ Unaudited |
| YLiquidRateModel | unknown | own_core | ethereum | n/a | [`0x54f1c4...7ac258`](./contracts/ethereum-1/0x54f1c4a118c75e5626f353dd3dbb4f6a9f7ac258/) | ⚠️ Unaudited |
| YLocker | unknown | own_core | ethereum | n/a | [`0xb5ebcc...307d31`](./contracts/ethereum-1/0xb5ebcc79fb618bada1a537d06af93717ac307d31/) | ⚠️ Unaudited |
| YlockerDrops | unknown | needs_review | ethereum | n/a | [`0x0a8bda...a0215c`](./contracts/ethereum-1/0x0a8bda95dd5404de1c56859d6b8b5d7ae7a0215c/) | ⚠️ Unaudited |
| YLockerProxy | unknown | own_supporting | ethereum | n/a | [`0xa8c992...ab53d9`](./contracts/ethereum-1/0xa8c992f43b067f92ce866f216897fae54bab53d9/) | ⚠️ Unaudited |
| yLQTYBooster | unknown | needs_review | ethereum | n/a | [`0x4c62d0...c18305`](./contracts/ethereum-1/0x4c62d08dafbd7c7dbd85c34276064cf35ac18305/) | ⚠️ Unaudited |
| yPRISMA | unknown | needs_review | ethereum | n/a | [`0x0618a9...c9f508`](./contracts/ethereum-1/0x0618a9f121ee4b15ba6478a4bcab0c5fbac9f508/) | ⚠️ Unaudited |
| yPRISMA Airdrop Minter | unknown | needs_review | ethereum | n/a | [`0xa7038b...5d86c7`](./contracts/ethereum-1/0xa7038b413e7a4e359e0019ab4ff7b0e5315d86c7/) | ⚠️ Unaudited |
| yPRISMA Boost Minter | unknown | needs_review | ethereum | n/a | [`0x147be7...a7e224`](./contracts/ethereum-1/0x147be71ab3c998f2d03106de56eeb5042aa7e224/) | ⚠️ Unaudited |
| yPRISMA Boost Minter V2 | unknown | needs_review | ethereum | n/a | [`0x3bf2be...f166d1`](./contracts/ethereum-1/0x3bf2be603d439e3b5aa7ceddeea99c017ef166d1/) | ⚠️ Unaudited |
| yPRISMA Forwarder Callback Minter | unknown | needs_review | ethereum | n/a | [`0x3d0565...b0550f`](./contracts/ethereum-1/0x3d05654f333eea534fc5d7b873c9b8bf35b0550f/) | ⚠️ Unaudited |
| yPRISMA Legacy Minter | unknown | needs_review | ethereum | n/a | [`0x04ecfd...934c28`](./contracts/ethereum-1/0x04ecfdb67b00fd70007570342887390ebf934c28/) | ⚠️ Unaudited |
| YPrismaFeeDistributor | unknown | own_core | ethereum | n/a | [`0x1d385b...232e4c`](./contracts/ethereum-1/0x1d385beeb7b325f4a5c0a9507fd8a1071b232e4c/) | ⚠️ Unaudited |
| YPrismaFeeReceiver | unknown | own_integration_wrapper | ethereum | n/a | [`0x76df88...20ecdc`](./contracts/ethereum-1/0x76df88aa8711822472cb40ed8c972a461a20ecdc/) | ⚠️ Unaudited |
| YPrismaForwarderCallbackMinter | unknown | own_core | ethereum | n/a | [`0x395749...0cf116`](./contracts/ethereum-1/0x39574917361c4a371471e8527b36305eab0cf116/) | ⚠️ Unaudited |
| YPrismaForwarderCallbackMinterV2 | unknown | own_core | ethereum | n/a | [`0x5e0c38...4d0bcd`](./contracts/ethereum-1/0x5e0c38f5d10ac99d31d0b8badf8a7977da4d0bcd/) | ⚠️ Unaudited |
| YRegistry | unknown | own_core | ethereum | n/a | [`0x3ee41c...9d63a0`](./contracts/ethereum-1/0x3ee41c098f9666ed2ea246f4d2558010e59d63a0/) | ⚠️ Unaudited |
| ySUSD | unknown | needs_review | ethereum | n/a | [`0x36324b...d41380`](./contracts/ethereum-1/0x36324b8168f960a12a8fd01406c9c78143d41380/) | ⚠️ Unaudited |
| yTokenProxy | unknown | needs_review | ethereum | n/a | [`0x1d5ad9...54203a`](./contracts/ethereum-1/0x1d5ad987b743eb624662fe5c62b8f6015554203a/) | ⚠️ Unaudited |
| yTokenRebalance | unknown | needs_review | ethereum | n/a | [`0x19b642...e9cc09`](./contracts/ethereum-1/0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09/) | ⚠️ Unaudited |
| yTUSD | unknown | needs_review | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| YUnsafeOracleV1 | unknown | own_core | ethereum | n/a | [`0xd1f5ae...707cbc`](./contracts/ethereum-1/0xd1f5aee3f025d2f4e42dd74dec17d5faa4707cbc/) | ⚠️ Unaudited |
| yUSD | unknown | own_core | ethereum | n/a | [`0x12c068...af3aff`](./contracts/ethereum-1/0x12c0681dca0deb095f2f192c3ab64bf320af3aff/) | ⚠️ Unaudited |
| yUSDC | unknown | needs_review | ethereum | n/a | [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/) | ⚠️ Unaudited |
| yUSDT | unknown | needs_review | ethereum | n/a | [`0x3118ee...b9aade`](./contracts/ethereum-1/0x3118eec34240620ffd044dfa3aaa0a0f78b9aade/) | ⚠️ Unaudited |
| yVaultCheck | unknown | own_supporting | ethereum | n/a | [`0x1bbe0f...a6d1ad`](./contracts/ethereum-1/0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad/) | ⚠️ Unaudited |
| yVaultFactory | unknown | own_supporting | ethereum | n/a | [`0x044dea...f677b5`](./contracts/ethereum-1/0x044deaa1e5a8593adcead599e8d66fb5d3f677b5/) | ⚠️ Unaudited |
| YVEmpire | unknown | own_supporting | ethereum | n/a | [`0xeb8d98...8d2eaa`](./contracts/ethereum-1/0xeb8d98f9e42a15b0eb35315f737bdfda1a8d2eaa/) | ⚠️ Unaudited |
| yWBTC | unknown | needs_review | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| yWrappedVault | unknown | needs_review | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |
| Zap | unknown | needs_review | ethereum | n/a | [`0x110421...f2a0bc`](./contracts/ethereum-1/0x1104215963474a0fa0ac09f4e212ef7282f2a0bc/) | ⚠️ Unaudited |
| ZapSteth | unknown | needs_review | ethereum | n/a | [`0x15e540...257660`](./contracts/ethereum-1/0x15e5405b90abba31f29c618f9dc8d65e95257660/) | ⚠️ Unaudited |
| ZapYvecrv | unknown | needs_review | ethereum | n/a | [`0x277793...519a2c`](./contracts/ethereum-1/0x2777938e0a1c12bce97c9cc9b36e737c08519a2c/) | ⚠️ Unaudited |
| ZapYvecrvSusd | unknown | needs_review | ethereum | n/a | [`0x85db61...f97fef`](./contracts/ethereum-1/0x85db618d507909570299d3e3cffd0fc4d4f97fef/) | ⚠️ Unaudited |
| ZapYvWETH | unknown | own_supporting | ethereum | n/a | [`0x5a0bad...44d540`](./contracts/ethereum-1/0x5a0bade607eaca65a0fe6d1437e0e3ec2144d540/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.chainsecurity.com/security-audit/yearn-yeth-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [download report](https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YearnYETH_Audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [DL audit link](https://www.chainsecurity.com/security-audit/yearn-yeth-periphery) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [download report](https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YDiscount_Audit.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.chainsecurity.com/security-audit/yearn-yeth-governance) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [download report](https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YETHGovernance_Audit.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | contract_name | 1 | high |
| [Yearn Finance yETH-bootstrap Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Yearn%20Finance/yETH-bootstrap/Yearn%20Finance%20yETH-bootstrap%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [StrategyCurveYCRV.sol - HackMD.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/StrategyCurveYCRV.sol%20-%20HackMD.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [YearnV2_ our gotcha notes - HackMD.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/YearnV2_%20our%20gotcha%20notes%20-%20HackMD.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 5 | medium |
| [Certik - itoken-finance-audit-report-1.1.0.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202002_Certik_itoken/Certik%20-%20itoken-finance-audit-report-1.1.0.pdf) | CertiK | Audit | 2020-02 | stale | Direct | contract_name | 1 | high |
| [Quantstamp - Yearn.Finance Security Review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202007_Quantstamp_yearn-finance/Quantstamp%20-%20Yearn.Finance%20Security%20Review.pdf) | Quantstamp | Audit | 2020-07 | stale | Direct | contract_name | 5 | high |
| [MixBytes - Timeloans.Finance Smart Contract Security Audit Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202011_MixBytes_timeloans-finance/MixBytes%20-%20Timeloans.Finance%20Smart%20Contract%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202011_MixBytes_vaultsv1/MixBytes%20-%20Yearn.Finance%20protocol%20v.1%20Smart%20Contracts%20Audit%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-11 | stale | Direct | contract_name | 9 | high |
| [MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yearn-vaults/MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | 17 | high |
| [MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yearn-vaults/MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yoracle-link/MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | 2 | high |
| [PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202101_Peckshield_yearn-strategies/PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | 18 | high |
| [Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_coverv2/Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-02 | stale | Direct | contract_name | 3 | high |
| [202102_MixBytes_sushiswap-bentobox.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_sushiswap-bentobox/202102_MixBytes_sushiswap-bentobox.pdf) | MixBytes | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_yearn-generic-lender/MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-02 | stale | Direct | contract_name | 4 | high |
| [PeckShield_Audit_Report_CoverForge_v1.0.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_Peckshield_cover-forge/PeckShield_Audit_Report_CoverForge_v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202103_MixBytes_yearn-ypool-3pool/MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202103_MixBytes_yearn-ypool-3pool/MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210423_MixBytes_yearn_curve_voter_proxy/MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | 1 | high |
| [MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210428_MixBytes_yearn_generic_lender_aave/MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202104_MixBytes_yearn-v3-wrapper/MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | 3 | high |
| [MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202104_MixBytes_yearn-yvboost/MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | 1 | high |
| [MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210526_MixBytes_yearn_strategies_snx/MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210616_MixBytes_yearn_liquity_stabily_pool/MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-06 | stale | Direct | contract_name | 1 | high |
| [ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210719_ToB_yearn_vaultsv2/ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf) | Trail of Bits | Audit | 2021-04 | stale | Direct | contract_name | 20 | high |
| [MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20211019_MixBytes_yearn_maker_dai_delegate/MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-10 | stale | Direct | contract_name | 18 | high |
| [ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220123_ChainSecurity_yearn_partner_tracker/ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf) | ChainSecurity | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220123_Mixbytes_yearn_strategy_ssb/Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202202_Optimum_Tokemak/Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Mixbytes_Yearn_Joint_Strategy/Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf) | MixBytes | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Mixbytes_Yearn_Yswaps/Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf) | MixBytes | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Optimum_Notional_Finance_Strategy/Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |
| [Dedaub_-_Angle.md](https://github.com/yearn/yearn-security/blob/master/audits/202204_Dedaub_Angle/Dedaub_-_Angle.md) | Dedaub | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Dedaub_-_Stargate.md](https://github.com/yearn/yearn-security/blob/master/audits/202204_Dedaub_Stargate/Dedaub_-_Stargate.md) | Dedaub | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220511_Optimum_Gen_lev_lending_Strategy/Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [Optimum_-_Stargate_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220528_Stargate_Strategy/Optimum_-_Stargate_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-05 | stale | Direct | contract_name | 1 | high |
| [Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220528_Stargate_Strategy/Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202206_Decurity_yearn_nohedge_joint/Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf) | Decurity | Audit | 2022-07 | stale | Direct | contract_name | 17 | high |
| [Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202206_Optimum_Notional_LP/Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-06 | stale | Direct | contract_name | 1 | high |
| [Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202207_Optimum_Angle/Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-07 | stale | Direct | contract_name | 1 | high |
| [Statemind_-_Yearn_veyfi_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202207_Statemind_yearn-veyfi/Statemind_-_Yearn_veyfi_Audit.pdf) | Statemind | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [202208_Statemind_Tarot_Impermax.md](https://github.com/yearn/yearn-security/blob/master/audits/202208_Statemind_Tarot_Impermax/202208_Statemind_Tarot_Impermax.md) | Statemind | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [yAcademy_-_LevGeist_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_LevGeist_review.pdf) | yAcademy | Audit | 2021-06 | stale | Direct | contract_name | 18 | high |
| [yAcademy_-_Yearn_BalancerLpFactory_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_Yearn_BalancerLpFactory_review.pdf) | yAcademy | Audit | 2021-07 | stale | Direct | contract_name | 1 | high |
| [yAcademy_-_joint_strategy_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_joint_strategy_review.pdf) | yAcademy | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [yAcademy_-_yearn_veyfi_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_yearn-veyfi/yAcademy_-_yearn_veyfi_review.pdf) | yAcademy | Audit | 2022-04 | stale | Direct | contract_name | 3 | high |
| [ChainSecurity_Yearn_Serpentor_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202209_ChainSecurity_yearn-serpentor/ChainSecurity_Yearn_Serpentor_audit.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | 1 | high |
| [ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202209_ChainSecurity_yearn-yCRV-and-ZapYCRV/ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | 1 | high |
| [ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202211_ChainSecurity_yearn-veYFI_and_RewardPool/ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf) | ChainSecurity | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [ChainSecurity_Yearn_Yearn_yETH_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20230626_ChainSecurity_yeth_core/ChainSecurity_Yearn_Yearn_yETH_audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20230711_MixBytes_yeth-bootstrap/Yearn%20Finance%20yETH-bootstrap%20Security%20Audit%20Report%20-%20Mixbytes.pdf) | yAudit | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [ChainSecurity_Yearn_yETH_Periphery_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20230829_ChainSecurity_yeth_periphery/ChainSecurity_Yearn_yETH_Periphery_audit.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20231013_Mixbytes_yearn_vesting_escrow/Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf) | MixBytes | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Yearn V3 report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240502_Statemind_Yearn_V3/Yearn%20V3%20report.pdf) | Statemind | Audit | 2024-03 | stale | Direct | contract_name | 17 | high |
| [Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240504_ChainSecurity_Yearn_V3/Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf) | ChainSecurity | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240504_ChainSecurity_Yearn_V3/Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf) | ChainSecurity | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240601_YAcademy_Yearn_V3/06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf) | YAcademy | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [yearn-vaults-v3](https://github.com/yearn/yearn-vaults-v3) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2020-09-25.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2020-09-25.md) | unknown | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |
| [2020-10-10.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2020-10-10.md) | unknown | Audit | 2020-10 | stale | Direct | contract_name | 1 | medium |
| [2020-10-30.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2020-10-30.md) | unknown | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |
| [2021-01-17.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-01-17.md) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 1 | medium |
| [2021-02-04.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-02-04.md) | unknown | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [2021-02-18.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-02-18.md) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 1 | low |
| [2021-04-02.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-04-02.md) | unknown | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [2021-05-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-05-13.md) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | medium |
| [2021-05-14.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-05-14.md) | unknown | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [2021-05-20.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-05-20.md) | unknown | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [2021-06-29.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-06-29.md) | unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [2021-10-27.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-10-27.md) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [2022-01-30.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-01-30.md) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [2022-09-06.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-09-06.md) | unknown | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [2022-11-01.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-11-01.md) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 1 | high |
| [2022-11-07.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-11-07.md) | unknown | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [2023-03-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-03-13.md) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [2023-04-04.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-04-04.md) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [2023-05-21.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-05-21.md) | unknown | Audit | 2023-05 | stale | Direct | contract_name | 1 | low |
| [2023-06-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-06-13.md) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [2023-12-11.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-12-11.md) | unknown | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [2024-01-03.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2024-01-03.md) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [2025-05-08.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-05-08.md) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-08-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-08-13.md) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 3 | medium |
| [2025-11-26.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-11-26.md) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [2025-12-01.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-12-01.md) | unknown | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x633f18...564690`](./contracts/ethereum-1/0x633f1861e8c3e4a54451d3f726dc686a94564690/) | 1UP depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0d222...cccd9d`](./contracts/ethereum-1/0xf0d222c397998dc743fe430095c32c44e8cccd9d/) | 1UP Vesting operator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x626271...6ac74d`](./contracts/ethereum-1/0x62627154d5ef4c3a2aa7fd1cadbd4425596ac74d/) | AbiDecoder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c719...2f7c90`](./contracts/ethereum-1/0x17c719e19d33261081279e8b720ff9397a2f7c90/) | ACL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33163e...5cb074`](./contracts/ethereum-1/0x33163e60d47255fe54392c6ab6fa2178315cb074/) | AddLiquidityChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x437758...c375f0`](./contracts/ethereum-1/0x437758d475f70249e03eda6be23684ad1fc375f0/) | AddressesGenerator_VAULT_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf53639...539344`](./contracts/ethereum-1/0xf536399c04683d7ab0bcb1308c245b4bbb539344/) | AddressesGeneratorEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x941f72...891763`](./contracts/arbitrum-42161/0x941f727f267913e76e3f03a25d3bc7c07e891763/) | AddressesGeneratorIronBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce29d3...9fc041`](./contracts/ethereum-1/0xce29d34c8e88a2e1edde10ad4eee4f3e379fc041/) | AddressesGeneratorV1Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3a8efa...c0f094`](./contracts/arbitrum-42161/0x3a8efa2d87d60c0289f19b44a0928f4269c0f094/) | AddressesGeneratorV2Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d80c2...a55960`](./contracts/base-8453/0x0d80c2adfeabd3663ef64ca17a9b2a3c77a55960/) | AddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa654be...70d5be`](./contracts/ethereum-1/0xa654be30cb4a1e25d18da0629e48b13fb970d5be/) | AddressGeneratorFactoryVaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x156bab...a12529`](./contracts/optimism-10/0x156bab355e81b498072c9ce3cf655e9844a12529/) | AddressMergeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc53baa...696734`](./contracts/ethereum-1/0xc53baaaa8595a7a2e7fee71db7291b939f696734/) | AdminVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5835c7...e4ee12`](./contracts/ethereum-1/0x5835c751ead74de1e75f49627226d7e75be4ee12/) | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed5d52...b2a7cf`](./contracts/ethereum-1/0xed5d52c8e16257999f329c34685246ab6eb2a7cf/) | AgoraStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141e05...2f629e`](./contracts/ethereum-1/0x141e0541d87c6cbdbf2a6a8104248b4b922f629e/) | AHv2Repayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bd112...b99c62`](./contracts/ethereum-1/0x4bd112fff755c24c103adf5879ee914781b99c62/) | AirdropDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c5333...5578af`](./contracts/ethereum-1/0x2c533357664d8750e5f851f39b2534147f5578af/) | AirdropDistributorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x000724...c40917`](./contracts/arbitrum-42161/0x0007240ff3c377fc324e581eedce86dd4dc40917/) | Allocatin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc72bc1...436a0f`](./contracts/ethereum-1/0xc72bc1a8cf9b1a218386df641d8be99b40436a0f/) | AllocationVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x103df3...9a742c`](./contracts/base-8453/0x103df3248e4e4b45159cc29ff0f37b272a9a742c/) | AllowancesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4ed8d...2dcf04`](./contracts/ethereum-1/0xc4ed8de23884db99f3c04c1869a1e3380f2dcf04/) | Allowlist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef01bc...d03440`](./contracts/ethereum-1/0xef01bc08cf155098bda7a2efbc7ccef632d03440/) | AllowlistFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd2367b...5c9b05`](./contracts/ethereum-1/0xd2367b534c1eb09867bfabe13cb72d2bbe5c9b05/) | AllowlistImplementationPartnerTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x526bc5...6e4e8e`](./contracts/ethereum-1/0x526bc546fa5c32bdeaa0f2da1f5ab707e26e4e8e/) | AllowlistImplementationVeYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x337531...721fab`](./contracts/ethereum-1/0x33753123ac0e1f3497091dad21781b8acc721fab/) | AlphaDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39bcf3...9fabbf`](./contracts/ethereum-1/0x39bcf3caf436515ed48de859d0bda770d69fabbf/) | AlphaHomo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ed812...f72d2e`](./contracts/ethereum-1/0x5ed81291a4b978a25bea88b0c40cb42d63f72d2e/) | AngleAccumulatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226354...9d7caf`](./contracts/ethereum-1/0x22635427c72e8b0028feae1b5e1957508d9d7caf/) | AngleStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66f3d3...e0b801`](./contracts/ethereum-1/0x66f3d3210f84fe8cc2c77a1f001a395b2ae0b801/) | AngleVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca321...1f1b02`](./contracts/ethereum-1/0x4ca321e4966a6bcbc26c13921cd76cac7d1f1b02/) | AngleVaultGUni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x103a24...a3fab8`](./contracts/ethereum-1/0x103a24adf3c60e29ecf4d05ee742cadc7ba3fab8/) | AngleVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbabe5d...8cd98b`](./contracts/ethereum-1/0xbabe5d223fb31a37ce184481678a6667ac8cd98b/) | AngleVoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdde0f1...917efd`](./contracts/ethereum-1/0xdde0f1755ded401a012617f706c66a59c6917efd/) | AngleVoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1981ad...70af92`](./contracts/ethereum-1/0x1981ad9f44f2ea9add2dc4ad7d075c102c70af92/) | AprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x044dad...47ca14`](./contracts/ethereum-1/0x044dad5c0da888c93d8244261b67bd431b47ca14/) | APRWithPoolOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29bcfc...3070b2`](./contracts/ethereum-1/0x29bcfccb6cff577d68ea316f5685f343253070b2/) | ApwineAccumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe928c...cefbcf`](./contracts/ethereum-1/0xfe928ca6a9c0cdf658a26a374b7373b9d6cefbcf/) | ApwineDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe71e28...e5721d`](./contracts/ethereum-1/0xe71e28a510bc3f98a9e77e847ae5aef9a2e5721d/) | ApwineLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba7fcb...d52f8e`](./contracts/ethereum-1/0xba7fcb508c7195ee5ae823f37ee2c11d7ed52f8e/) | AuctionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d6e6...1f679e`](./contracts/ethereum-1/0x17d6e65317d42ce40f06538b68e824669e1f679e/) | AuctionKicker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94f447...e48d12`](./contracts/ethereum-1/0x94f44706a61845a4f9e59c4bc08cea4503e48d12/) | AuctionRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x068ad6...19ddf4`](./contracts/ethereum-1/0x068ad6aa8cfa70480924675eb4545d27d319ddf4/) | AuctionSweeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x167aa4...4e5186`](./contracts/optimism-10/0x167aa4ba31b8285707d1489ad705cb24cf4e5186/) | BalancesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6b9ce...8c57f9`](./contracts/ethereum-1/0xa6b9ce48ec380dbbe3fc32c199f4fab3d08c57f9/) | BaseConvertor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa02459...2cbcb2`](./contracts/ethereum-1/0xa02459fe126130c4107a9b760d6eb43f2f2cbcb2/) | BaseConvertor4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02ff74...1d3480`](./contracts/arbitrum-42161/0x02ff746d8cb62709aeec611cec9b17d7dd1d3480/) | Basefee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7efa...3c868b`](./contracts/ethereum-1/0x1e7efabf282614aa2543edaa50517ef5a23c868b/) | BaseFeeOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5dd78...62eb62`](./contracts/ethereum-1/0xf5dd7892ea53af04fb5f517ddb75089e5462eb62/) | Basic redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x176cff...c56ccc`](./contracts/ethereum-1/0x176cff10ee6755ba69f21ff95cebbe52c2c56ccc/) | BasicRewardsOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a2b58...e42c35`](./contracts/ethereum-1/0x4a2b583812203d55182073324ecddca04ae42c35/) | BasicTradeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8558c4...b7b73b`](./contracts/ethereum-1/0x8558c4815625ffce94ec6e3eff97dbe6e1b7b73b/) | Bits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfac788...8cbfbc`](./contracts/ethereum-1/0xfac788261da6e2affcd0e9ab340395378f8cbfbc/) | BlackpoolAccumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x219f74...279993`](./contracts/ethereum-1/0x219f7496fbd30e1f21a20613f9372d608a279993/) | BlackpoolDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b4fd0...5da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | BlackScholesEstimate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa66002...b13116`](./contracts/ethereum-1/0xa66002e9ab0babf46882d0e0cd274f46ceb13116/) | Bonus Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e417e...0cb416`](./contracts/ethereum-1/0x7e417e19fe3f72798e1094e8df185378370cb416/) | Bonus Price Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01fc53...cd9bd4`](./contracts/ethereum-1/0x01fc53a26033a5c0b81786b940ebefe0e7cd9bd4/) | Boost Delegation V2.1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3da9be...efbb78`](./contracts/ethereum-1/0x3da9be10ab98512a96fc858595ad6dc21defbb78/) | Boost Delegation V3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ac44b...9c0ebc`](./contracts/ethereum-1/0x2ac44b31782a8c5ba896c29b3c2c0df1399c0ebc/) | BoostCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f7c50...562bd3`](./contracts/ethereum-1/0x3f7c5021f5bc634fae82cf9f67f19c5f05562bd3/) | Booster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cddd5...d79586`](./contracts/ethereum-1/0x2cddd57474f8ba6a512e983ff36354c7afd79586/) | BoostViewVoodoo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56a3d2...d371b2`](./contracts/ethereum-1/0x56a3d20972fdf872ca8c799f83718f7297d371b2/) | BoostViewVoodoo2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72c590...542719`](./contracts/ethereum-1/0x72c590349535ad52e6953744cb2a36b409542719/) | BorrowerOperations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ced8b...8dc1ed`](./contracts/ethereum-1/0x5ced8bbc7fca2fd370e50578786c3418848dc1ed/) | BountyHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcac873...177f40`](./contracts/ethereum-1/0xcac873e93cfe5c79325e73c22975b665c6177f40/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a432a...d72802`](./contracts/ethereum-1/0x7a432a6b19944e9e021b6cdca5e047ada5d72802/) | BytesLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5fd381...a55b4d`](./contracts/optimism-10/0x5fd3815dcb668200a662114fbc9af13ac0a55b4d/) | CalculationsChainlinkRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0ffe84...aa7227`](./contracts/optimism-10/0x0ffe8434eae67c9838b12c3cd11ac4005daa7227/) | CalculationsCurve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9956ca...3cb1fd`](./contracts/ethereum-1/0x9956ca141c344e177829671ec0f1a9d4ab3cb1fd/) | CalculationsFixedForex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55e9b1...de8ea4`](./contracts/ethereum-1/0x55e9b18fefff7e00548d54480373fc8843de8ea4/) | CalculationsIronBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c8282...d5c648`](./contracts/ethereum-1/0x2c8282a17d0d20f0b3658a5eea952b2054d5c648/) | CalculationsOverrides | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5ea7e5...a1dd25`](./contracts/arbitrum-42161/0x5ea7e501c9a23f4a76dc7d33a11d995b13a1dd25/) | CalculationsSushiswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a0474...43151a`](./contracts/ethereum-1/0x5a04749532195d5d16268da74775defcc843151a/) | CalculationsSynth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38477f...b9aa3c`](./contracts/ethereum-1/0x38477f2159638956d33e18951d98238a53b9aa3c/) | CalculationsYearnVaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8b5ff...b7d8d7`](./contracts/ethereum-1/0xa8b5ff097a10a264c30ec302023730fe51b7d8d7/) | CalculationsZeroPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3bfa8...1dec25`](./contracts/ethereum-1/0xd3bfa85dc668aab38121be12d69dd180301dec25/) | CallComparator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1be70...35fdd4`](./contracts/ethereum-1/0xa1be7034b2aa8e72d81e17420b6c6c4f0035fdd4/) | CapUSDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6447b8...7ef295`](./contracts/ethereum-1/0x6447b88c071b98900c40da7c7957537c977ef295/) | CCTPStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ChildChainManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ChildMintableERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ba8df...57e220`](./contracts/ethereum-1/0x0ba8df4bfd13e3e15da3406e4fab312a8257e220/) | Cliff Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x494ba8...1b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/) | CollateralMaximizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02939b...742f76`](./contracts/ethereum-1/0x02939ba4fd42e23d31652b4376842ab62a742f76/) | CometOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32059c...c470bc`](./contracts/arbitrum-42161/0x32059cce723b4dd15dd5cb2a5187f814e6c470bc/) | CommonHealthCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8df17...b9d52d`](./contracts/ethereum-1/0xf8df17a35c88abb25e83c92f9d293b4368b9d52d/) | CommonTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda7b94...4b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | CompensationEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1532eb...6aa870`](./contracts/ethereum-1/0x1532eb6c6d134903a0dedfc840128007b36aa870/) | COMPfarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98158e...8039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ConverterDAItoYCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93a249...449156`](./contracts/ethereum-1/0x93a2497266ad6b4b86f93aaf08e7c88b11449156/) | Convertor4626Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa40b4c...854bfd`](./contracts/ethereum-1/0xa40b4c92a1c075e42be699f1ed42736ded854bfd/) | ConvertorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff7184...65c248`](./contracts/ethereum-1/0xff71841eefca78a64421db28060855036765c248/) | CoveYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e14d0...5d322e`](./contracts/ethereum-1/0x8e14d03061705eb48fda6bc6e244c5eabe5d322e/) | CRON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0ac37...0b589d`](./contracts/ethereum-1/0xd0ac37e3524f295d141d3839d5ed5f26a40b589d/) | CrvStrategyKeep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02027b...5e1af5`](./contracts/ethereum-1/0x02027bda2425204f152b8aa35fb78687d65e1af5/) | CrvStrategyKeep3rJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee1501...92aedd`](./contracts/ethereum-1/0xee15010105b9bb564cfdfdc5cee676485092aedd/) | CrvStrategyKeep3rJob2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41edfd...7cd0d8`](./contracts/ethereum-1/0x41edfd5575fa4590a20f669bbda6c4ae367cd0d8/) | CrvStrategyKeep3rStealthJob2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x935bcf...57aae3`](./contracts/ethereum-1/0x935bcf81c8a8d3a2b46560a8e2111b190057aae3/) | CrvUsdRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c022d...25b4a9`](./contracts/ethereum-1/0x7c022d19518356d71ba046be28d721e1b425b4a9/) | CrvVaultSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68e469...dc461b`](./contracts/ethereum-1/0x68e46918dc347e20cf180747996258be00dc461b/) | CryptopoolLPOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0ecd3...b531a0`](./contracts/ethereum-1/0xa0ecd3893890829a4ce5b7a0cc7ae25517b531a0/) | CustomPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xddb6cd...48a337`](./contracts/arbitrum-42161/0xddb6cd2ab6415dca60a46c62f634b6e4d148a337/) | CustomTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | DadFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | DaiFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d75ff...39a871`](./contracts/ethereum-1/0x2d75ff9fdca31a91f666187dd574f8ea8639a871/) | DAOFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e9eb0...6b8671`](./contracts/ethereum-1/0x1e9eb053228b1156831759401de0e115356b8671/) | DebtAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03d43d...9a4c18`](./contracts/ethereum-1/0x03d43df6ff894c848fc6f1a0a7e8a539ef9a4c18/) | DebtAllocatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d8713...5e1236`](./contracts/ethereum-1/0x4d87135e1188e85073b51d2bfef2ed40225e1236/) | DebtAllocatorKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4591db...9fbb28`](./contracts/ethereum-1/0x4591dbff62656e7859afe5e45f6f47d3669fbb28/) | DebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c4246...149d79`](./contracts/ethereum-1/0x9c42461aa8422926e3aef7b1c6e3743597149d79/) | Delegated Staked YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x952b31...5e3d6e`](./contracts/ethereum-1/0x952b31960c97e76362ac340d07d183ada15e3d6e/) | Delegated Staking Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc01a52...e5b142`](./contracts/ethereum-1/0xc01a529c01f9399c928a4afc50e25f12d1e5b142/) | DelegatedBalanceMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd39164...137748`](./contracts/ethereum-1/0xd39164369c37c412a04603666dcf4c7b33137748/) | DelegationFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d85e7...8b0112`](./contracts/ethereum-1/0x8d85e7c9a4e369e53acc8d5426ae1568198b0112/) | Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x793d85...3ff1cb`](./contracts/ethereum-1/0x793d85f585145c050487c7afbf0e9b97143ff1cb/) | DepositModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9ec46...4e861f`](./contracts/ethereum-1/0xd9ec4616d0bf42b2f7caf01939f2c476954e861f/) | Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x941e71...8201e0`](./contracts/ethereum-1/0x941e716833734c7cafafc38f6bb8fec1858201e0/) | DepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56d27f...b196ad`](./contracts/ethereum-1/0x56d27f6ba42ec4c4e37dae0561e8e872abb196ad/) | DepositorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x300843...1a3078`](./contracts/ethereum-1/0x30084324619d9645019c3f2cb3a94611601a3078/) | DforceStrategyKeep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x812ac0...cfa017`](./contracts/ethereum-1/0x812ac0eaeb422efa44eac670aa2246a25ecfa017/) | DistributeYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b1b08...368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | DistributionRewardsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc368ed...d28839`](./contracts/ethereum-1/0xc368ed8efc69d8e38ed4b4d726c40f9f9ad28839/) | Donator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | DSChief | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | DSChiefFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x050cd4...92640e`](./contracts/ethereum-1/0x050cd4835b08babfc6ff92187971b3253e92640e/) | DSSLeverage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6740bf...9d01ca`](./contracts/ethereum-1/0x6740bf10840d0a6358050fd1a28e2f8e859d01ca/) | DummyStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41252e...97a275`](./contracts/ethereum-1/0x41252e8691e964f7de35156b68493bab6797a275/) | dYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2391fc...6d894e`](./contracts/ethereum-1/0x2391fc8f5e417526338f5aa3968b1851c16d894e/) | dYFI Reward Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x035fb9...4b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/) | DynamicSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62a4e0...6eb04b`](./contracts/ethereum-1/0x62a4e0e7574e5407656a65cc8dbdf70f3c6eb04b/) | EarnRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefa259...9c2603`](./contracts/ethereum-1/0xefa259c4a7056de82eea8df9ef85de405d9c2603/) | eETHDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ccea6...559ad4`](./contracts/ethereum-1/0x4ccea6503e8e5525d3de0c60855b6332af559ad4/) | EminenceCurrency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x906e0d...851f42`](./contracts/ethereum-1/0x906e0d769aae4fb3f53d3c989a50520a8e851f42/) | EmissionSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e89f5...f7f925`](./contracts/ethereum-1/0x8e89f5b28411d7cdf3efa24b056ecafca4f7f925/) | EnsAddressResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d3311...b864e1`](./contracts/ethereum-1/0x7d33110619e8f95f12a750f21a08b8c7cfb864e1/) | EnsHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13100b...2b3054`](./contracts/ethereum-1/0x13100bb6ab4e349a36eaa6bd4ab0536bf72b3054/) | ERC4626Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b1327...3521f3`](./contracts/ethereum-1/0x9b1327ccb2405e8410f29dbec78f18236c3521f3/) | ERC4626FluidExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa10256...ddd46b`](./contracts/ethereum-1/0xa1025644f5c3faac92b8672d3a537f4e4bddd46b/) | EthereumStateSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd44d19...8351fd`](./contracts/ethereum-1/0xd44d19d0d1ab4245bb747be73a0b131daa8351fd/) | EVMScriptRegistryFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x614760...384cb1`](./contracts/base-8453/0x614760bed5e12863ad9baffb7c1bedd089384cb1/) | ExerciseHelperBMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1043eb...4c421d`](./contracts/ethereum-1/0x1043eb60cef1f44654598338b1eb305cf54c421d/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fe950...acb773`](./contracts/ethereum-1/0x7fe9501b4b4ba5a259f5fece1d10257839acb773/) | FactoryVaultsAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2d0e...c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | FairLaunchCapitalVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6257e3...9fef3f`](./contracts/ethereum-1/0x6257e36efc9c7c6057c119ea2af40907159fef3f/) | Faketroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb911fc...3c1ee8`](./contracts/ethereum-1/0xb911fcce8d5afcec73e072653107260bb23c1ee8/) | FeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x726251...804333`](./contracts/ethereum-1/0x72625102868f56bc9696c91090938718d3804333/) | FeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x286af1...39ecc0`](./contracts/ethereum-1/0x286af1b3d36fbba523b18ac4658722090a39ecc0/) | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdce02...e9cbf8`](./contracts/ethereum-1/0xfdce0267803c6a0d209d3721d2f01fd618e9cbf8/) | FeeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f1dc3...30d19c`](./contracts/ethereum-1/0x0f1dc3bd5fe8a3034d6df0a411efc7916830d19c/) | FeeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d353a...000509`](./contracts/ethereum-1/0x2d353a52da9e4ead947f27931a26e0797a000509/) | FeeSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81d26c...fb3b6e`](./contracts/ethereum-1/0x81d26c6bcf459ec7766b3c81df02c3be94fb3b6e/) | Fixed rate oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff7c33...41c437`](./contracts/ethereum-1/0xff7c33eb1c2020674e04b398368c884a2541c437/) | FixedRateStrategyAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf414a2...1e1721`](./contracts/ethereum-1/0xf414a220f86d39f6381bea86c26a88e9331e1721/) | FixedTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c08b5...f2893a`](./contracts/ethereum-1/0x5c08b51ddbe8ba76e07be79975906c39aef2893a/) | fKRW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002060...cedeee`](./contracts/ethereum-1/0x0020609046710676cafc8eb5ce95fc110ccedeee/) | FlashSeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x031ede...a7cbe2`](./contracts/ethereum-1/0x031ede4ca99b9d75fc77a8b0e661c90005a7cbe2/) | FluidAprOracleMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9aad75...1bad70`](./contracts/ethereum-1/0x9aad75f860a05b14853efe4f2ae75a3a261bad70/) | FluidExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x859df6...a43861`](./contracts/ethereum-1/0x859df6fe178ffbf55693a7a833aadb10c6a43861/) | FluidLenderFactoryMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9a3a8...11d9fa`](./contracts/ethereum-1/0xb9a3a8735a453b2f8ad375654939cbb08411d9fa/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ca369...a9f460`](./contracts/ethereum-1/0x0ca369a70ad74e52604abc63792abbe088a9f460/) | FpisAccumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcc932...f6116b`](./contracts/ethereum-1/0xbcc932e4750c3e465a7e54a06a34f9edf8f6116b/) | Funding Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d7f09...6dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/) | fUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca53fe...2b4008`](./contracts/ethereum-1/0xca53fe979d427a7c2c5f45f54d9d9fae622b4008/) | FxsAccumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0791d0...f2bf0e`](./contracts/ethereum-1/0x0791d07689b4ba39a4c44cd25717981be1f2bf0e/) | Gas | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0598d...8cab61`](./contracts/ethereum-1/0xe0598d793baf7b4f49f4a003885e4180b28cab61/) | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4165ef...bc1c38`](./contracts/ethereum-1/0x4165ef806ec952bad7ba1d5db81aef2bdebc1c38/) | GasPoolReimburser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x037ee0...0e5af9`](./contracts/ethereum-1/0x037ee0c66d0ddba4319ab9d1a70a66ac800e5af9/) | Gauge Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43cfc6...2e0b91`](./contracts/ethereum-1/0x43cfc64f00b4e45619cfbc7964d982fa022e0b91/) | Gauge factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0fdc...936f8b`](./contracts/ethereum-1/0x1d0fdcb628b2f8c0e22354d45b3b2d4ce9936f8b/) | Gauge registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35440c...f5475f`](./contracts/ethereum-1/0x35440c602bc4f01bbec6cb616ccb901c9df5475f/) | Gauge rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x823fd2...61081c`](./contracts/ethereum-1/0x823fd217dcc5ce36ca6bc1489586ecb42b61081c/) | GaugeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x128e72...3ddfc9`](./contracts/ethereum-1/0x128e72dfd8b00cbf9d12cb75e846ac87b83ddfc9/) | GaugeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c662c...dc9524`](./contracts/ethereum-1/0x1c662cac382140bfc148f3003fd14b0d58dc9524/) | GaugeValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | GemFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | GemPit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7a528...3e5ba5`](./contracts/ethereum-1/0xb7a528cf6d36f736fa678a629b98a427d43e5ba5/) | Generic governor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf796c1...277480`](./contracts/ethereum-1/0xf796c1a96c1e803cb748f2e7124b427536277480/) | GenericV2Keep3rJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x016aaf...76ab39`](./contracts/ethereum-1/0x016aaf67c352ee493d1e17177de0eabc3d76ab39/) | Getter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7212f...0cb735`](./contracts/ethereum-1/0xc7212fc959bbb606f97036e8ac3da7aabf0cb735/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x464218...da2c56`](./contracts/ethereum-1/0x464218afe1839abd9e89daa3fb0d4a20fbda2c56/) | GovernanceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x220c33...447afc`](./contracts/ethereum-1/0x220c33bb71d3b6a6a6ea2036abdb1c9449447afc/) | GovernanceSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3da70a...4c6688`](./contracts/ethereum-1/0x3da70a551c0f785580a291b7d8c7d0f3dc4c6688/) | HarvestV2Keep3rJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2150b4...b152d6`](./contracts/ethereum-1/0x2150b45626199cfa5089368bdca30cd0bfb152d6/) | HarvestV2Keep3rStealthJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5a7db...4d118d`](./contracts/ethereum-1/0xe5a7db399dec2c5ddefebc52ea70f127284d118d/) | HarvestV2QueueKeep3rJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7224f2...a1345a`](./contracts/ethereum-1/0x7224f2e96061a1e3f51d152e32ccfab79ca1345a/) | HegicERCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30a086...e4ae70`](./contracts/ethereum-1/0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70/) | HegicOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061940...082f23`](./contracts/ethereum-1/0x06194062288575f35c0af45d5e7013b65e082f23/) | HegicOptionsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5aacd0...c34a6f`](./contracts/ethereum-1/0x5aacd0d03096039ac4381cd814637e9fb7c34a6f/) | Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f4e1a...3f1048`](./contracts/ethereum-1/0x0f4e1a1bcde549653e9302ba1caab403373f1048/) | HybridFactoryOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd772ed...fdc3ac`](./contracts/ethereum-1/0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac/) | HybridVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdc322...b8dc5b`](./contracts/ethereum-1/0xbdc32268851c324c6185809271dfe6d8dab8dc5b/) | HybridVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78705d...f4e025`](./contracts/ethereum-1/0x78705df56477ff301b71b176a2bd3151b9f4e025/) | iCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb10e11...3b0f69`](./contracts/ethereum-1/0xb10e11f3e38dc35e06397689e45fa939eb3b0f69/) | iCollateralVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06a8fe...3ddcc1`](./contracts/ethereum-1/0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1/) | iCollateralVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c5f9d...ca35a0`](./contracts/ethereum-1/0x6c5f9d1d115862ca99253e5738590f6d31ca35a0/) | iDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x260fbb...a867fa`](./contracts/ethereum-1/0x260fbb4855b2a4a719097131016b573f95a867fa/) | iDAIZapSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cad8a...268eec`](./contracts/ethereum-1/0x9cad8ab10daa9af1a9d2b878541f41b697268eec/) | IEarnAPR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x029fea...44c9bb`](./contracts/ethereum-1/0x029feae8d773a3fe25f1a3e35a526bb54744c9bb/) | IEarnAPRWithPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x318135...50edfb`](./contracts/ethereum-1/0x318135fbd0b40d48fcef431ccdf6c7926450edfb/) | IEarnManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b3680...884bb4`](./contracts/ethereum-1/0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4/) | IEarnProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75a4d0...cd25eb`](./contracts/ethereum-1/0x75a4d0b18e98674199829ddd2a6477ea25cd25eb/) | IEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x705577...8d1bc2`](./contracts/ethereum-1/0x70557705dc49d7dc383356b27bc206f1018d1bc2/) | Incentives for inclusion vote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae9de8...0a5179`](./contracts/ethereum-1/0xae9de8a3e62e8e2f1e3800d142d23527680a5179/) | Incentives for Snapshot votes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x742da6...3c2302`](./contracts/ethereum-1/0x742da637305e8a2d8dad8a82848ee90f543c2302/) | Incentives for weight vote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd8df0...2e850c`](./contracts/ethereum-1/0xfd8df0db401ab7ec7a06a8465134fa32132e850c/) | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bc087...0f2c31`](./contracts/ethereum-1/0x6bc0878939669339e82dbfa13d260c89230f2c31/) | Inclusion vote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f5789...31b112`](./contracts/ethereum-1/0x1f5789030ff8aed85c20baf614368c605b31b112/) | InflationaryVest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa53e9e...2863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | insuredVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8813d...457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | insurerVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a62a6...9d341e`](./contracts/ethereum-1/0x4a62a602295214c31f5a6f7a67271110f69d341e/) | InterimAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cce08...9cc802`](./contracts/ethereum-1/0x3cce081280060811889b63b98bf3d607029cc802/) | Introspection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14a5ca...104e3e`](./contracts/ethereum-1/0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e/) | iTrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30f358...2f57f1`](./contracts/ethereum-1/0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1/) | Keep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39392a...5a8ed5`](./contracts/ethereum-1/0x39392ae1b305161ecb500be8da88444c5b5a8ed5/) | Keep3rEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83a34a...ccd73d`](./contracts/ethereum-1/0x83a34a6469dbfd7654ae6d842d20977e89ccd73d/) | Keep3rEscrowJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb41772...af955e`](./contracts/ethereum-1/0xb41772890c8b1564c5015a12c0dc6f18b0af955e/) | Keep3rHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb68e7d...02d10d`](./contracts/ethereum-1/0xb68e7deb279eaa11f234dff4931458d2c002d10d/) | Keep3rJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf14cb1...cdc9ca`](./contracts/ethereum-1/0xf14cb1feb6c40f26d9ca0ea39a9a613428cdc9ca/) | Keep3rLiquidityManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e0cc5...c39085`](./contracts/ethereum-1/0x7e0cc5edf2dd01fc543d698b7e00ff54c6c39085/) | Keep3rLiquidityManagerJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d5a78...024645`](./contracts/ethereum-1/0x6d5a780fe782e90b49a85926cc77ddab0d024645/) | Keep3rProxyJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef9512...97d321`](./contracts/ethereum-1/0xef9512e5f33e2d1c66f77ad61b3434a2fc97d321/) | Keep3rSugarMommy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | Keep3rV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1530a2...5a5df9`](./contracts/ethereum-1/0x1530a2924805aed2385f8b91849cab7fe95a5df9/) | Keep3rV1Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x739689...ab620c`](./contracts/ethereum-1/0x7396899638410094b3690f8bd2b56f07fdab620c/) | Keep3rV1JobRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdaef20...924c93`](./contracts/ethereum-1/0xdaef201ba1ba0354d71848893dd6d56905924c93/) | Keep3rV1Library | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a03b4...f5c080`](./contracts/ethereum-1/0x0a03b4f6d5314bb257540dc7702c326f97f5c080/) | Keep3rV1OracleUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bf162...c8f6c0`](./contracts/ethereum-1/0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0/) | Keep3rV2Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2266be...7880cb`](./contracts/ethereum-1/0x2266be1ee5d345914976fd4ce9f4be65737880cb/) | Keep3rV2OracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa07662...b5296d`](./contracts/ethereum-1/0xa07662c041c4f7b31fd61c13c44212ff35b5296d/) | Keep3rV2OracleFactoryWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1542ec...ba0f82`](./contracts/ethereum-1/0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82/) | Keep3rV3OracleUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52605b...7db2f8`](./contracts/ethereum-1/0x52605bbf54845f520a3e94792d019f62407db2f8/) | Keeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9ce011...061482`](./contracts/optimism-10/0x9ce0115381f009e382acd52761127eff61061482/) | KeeperWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47d62e...59e827`](./contracts/ethereum-1/0x47d62ed9fe6ef6810eac3165053d95579059e827/) | Kernel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe931d4...b13b2c`](./contracts/ethereum-1/0xe931d4ee3250822beccc9d0defdf9b51edb13b2c/) | Launch vote weight measure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ea775...c5d0f3`](./contracts/ethereum-1/0x9ea775672e4424c403f048ab08c7f56015c5d0f3/) | LazyHarvest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07ceda...ba305e`](./contracts/ethereum-1/0x07cedaadf49552cbdbf684824323e631ceba305e/) | LEVAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd05957...853d37`](./contracts/ethereum-1/0xd059575a78508b02e89ef9ae0c1b409b07853d37/) | LftLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95710b...76b098`](./contracts/ethereum-1/0x95710bde45c8d384a976cc58cc7a7e489576b098/) | Liquid locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d4ced...26bc8f`](./contracts/ethereum-1/0x3d4ced97adb0ae3a53da95a47ffc749aad26bc8f/) | Liquid Locker Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58832f...db3748`](./contracts/ethereum-1/0x58832fc23fb5c7342175c1f050d33b5420db3748/) | Liquid Locker Middleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba18d0...0e681d`](./contracts/ethereum-1/0xba18d0df75a3ff58ef40a8fc0d3e4db74a0e681d/) | Liquid Locker Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7efc39...72a000`](./contracts/ethereum-1/0x7efc3953bed2fc20b9f825ebffab1cc8b072a000/) | Liquid Locker Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c2f62...a76fe2`](./contracts/ethereum-1/0x4c2f62f11279fce767ecd7b280512acab7a76fe2/) | Liquid Locker Vesting Escrow Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5de309...f8e9e2`](./contracts/ethereum-1/0x5de309dfd7f94e9e2a18cb6ba61ca305abf8e9e2/) | LiquidationManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd82f6d...a3e8ce`](./contracts/ethereum-1/0xd82f6d42356e225bf79b870a05aac79062a3e8ce/) | LiquidationOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x008c2d...d781f7`](./contracts/ethereum-1/0x008c2d6e93cc7eb61b6bea1e012214b851d781f7/) | Liquidity Gauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | LiquidityIncome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02dd79...a9440d`](./contracts/ethereum-1/0x02dd79b4a88fefe639d2a88e20f8013edea9440d/) | LiquidRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30285a...d3288f`](./contracts/ethereum-1/0x30285a1ce301fc7eb57628a7f53d02fbded3288f/) | LiquidTransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x126462...34dc5e`](./contracts/ethereum-1/0x126462a6fc6b8f04e5d46a778daea0544e34dc5e/) | LitePsmExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f9aa2...4615c9`](./contracts/ethereum-1/0x1f9aa28c97475e854d8a5c60149e51ab8c4615c9/) | LockedyvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x209ec2...b1a90b`](./contracts/ethereum-1/0x209ec22002fa0fe83adbe7d1335edd7faeb1a90b/) | LockedyvUSDAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ba61c...062bba`](./contracts/ethereum-1/0x7ba61c8e19414dcb8fe769a7be63b508c8062bba/) | LockerZapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12c51d...ce3aa6`](./contracts/ethereum-1/0x12c51dac6e63faac989abe39d1c698dad8ce3aa6/) | LongOTokenPut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x706eac...2c80e3`](./contracts/ethereum-1/0x706eacfc476f46547200a73709e2efe1522c80e3/) | LooperKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b0d8b...3f1eb4`](./contracts/ethereum-1/0x0b0d8bccf062555ec18d5e4d8fe895e64e3f1eb4/) | LT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cdb9f...37066c`](./contracts/ethereum-1/0x2cdb9f485e718f551cfeea6c33cb7062ed37066c/) | LTMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x751a72...d437fc`](./contracts/ethereum-1/0x751a728d74eb37c7a7f4e35f9853f37e76d437fc/) | MainnetVeOracleOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7e9756...63d619`](./contracts/optimism-10/0x7e9756e1427b3c38f001f9d272d8d62bef63d619/) | ManagementList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f7580...ff28ed`](./contracts/ethereum-1/0x6f758057f79d6faca91fce01b1331d0de9ff28ed/) | ManualBorrowRewardAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe8d5a8...b499bb`](./contracts/ethereum-1/0xe8d5a85758fe98f7dce251cad552691d49b499bb/) | MechanicsRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9db355...f216b2`](./contracts/ethereum-1/0x9db355769b637249d8d5f8df2378dc77eff216b2/) | Memory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93dfa8...0a9372`](./contracts/ethereum-1/0x93dfa873b15ad496ba8116ce6cfec52ef30a9372/) | MetaKeep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1371c1...4f9047`](./contracts/ethereum-1/0x1371c1dae7d3ad43bb79ecce1b882ad9754f9047/) | MigrateTroveZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x708f45...82fb7b`](./contracts/ethereum-1/0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | MomFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c5871...47a9cd`](./contracts/ethereum-1/0x3c5871d69c8d6503001e1a8f3bf7e5ebe447a9cd/) | MultiCollateralHintHelpers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58fa55...a1eb1c`](./contracts/ethereum-1/0x58fa5521f48b258b5e48a56b9b1bd95bffa1eb1c/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9214a6...f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/) | Normalizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1025cf...017214`](./contracts/ethereum-1/0x1025cf97b8a91cbd8e6d2cbf972437a54d017214/) | Null Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06a53f...dbf89d`](./contracts/arbitrum-42161/0x06a53f5e51ae9fec9cc10fef3278cd969ddbf89d/) | OneInchSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9046d3...e9107b`](./contracts/optimism-10/0x9046d36440290ffde54fe0dd84db8b1cfee9107b/) | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x32d804...479c41`](./contracts/optimism-10/0x32d80467126bc2cc0bae26471357fd616f479c41/) | OptimismVeOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48bc6d...76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | OptionsV1Library | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00fbd1...d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/) | OptionsV1Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca4e1...85012c`](./contracts/ethereum-1/0x4ca4e12fd8e37e30ed3a37bccf61ba8edf85012c/) | OpynBuyVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa25cb...00bcb4`](./contracts/ethereum-1/0xaa25cb1b10b8252480cc6a3b17c22e6c0e00bcb4/) | OpynPerpVaultBtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc10b7c...dcf4a5`](./contracts/ethereum-1/0xc10b7ca0383f0357edeed233dc806b5229dcf4a5/) | OpynPerpVaultEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x043518...78e9b9`](./contracts/arbitrum-42161/0x043518ab266485dc085a1db095b8d9c2fc78e9b9/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8646c...c63762`](./contracts/ethereum-1/0xa8646ce5d983e996eba22eb39e5956653ec63762/) | OracleBondedKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x707e11...c810c0`](./contracts/ethereum-1/0x707e119476e1450a20e153a7ba99a9d5c4c810c0/) | OriginMintExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf6308...1ed0f1`](./contracts/ethereum-1/0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1/) | OSMedianizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56af9c...76fafd`](./contracts/ethereum-1/0x56af9c2780e0323810acfdaeab3f58ef6e76fafd/) | Ownership proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc1ba2...af9c22`](./contracts/ethereum-1/0xdc1ba2a504430131c7a291b7d114b11e7baf9c22/) | OYfi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1153f2...ce26da`](./contracts/ethereum-1/0x1153f280e7ec1182fc9ae7f35daa41f21ece26da/) | PairsHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5efd85...8ba696`](./contracts/ethereum-1/0x5efd850044ba76b8ffe49437cb301be3568ba696/) | PartialKeep3rV1OracleJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb58b3...116969`](./contracts/ethereum-1/0xfb58b3306a6e00c65a1de8ad4aba21ac8f116969/) | PawnBrokerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd362ef...db0986`](./contracts/ethereum-1/0xd362efc75ef1879f37a900823495f402cfdb0986/) | PawnBrokerLooper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3419b3...c955bf`](./contracts/ethereum-1/0x3419b3fff84b5fbf6eec061ba3f9b72809c955bf/) | PermastakerOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab7427...64ec9d`](./contracts/ethereum-1/0xab742729a0b09399a9f9caa5b23be8eb7464ec9d/) | Permissionless yETH deposit/withdrawal facility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x20cd9e...65b694`](./contracts/optimism-10/0x20cd9e17c3df2e82a852872b7792eecafa65b694/) | PessimisticVelodromeLPOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1abe68...7744d1`](./contracts/ethereum-1/0x1abe682c785ccf18c91f4da045792115ae7744d1/) | PlatformFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcafdf1...e86656`](./contracts/ethereum-1/0xcafdf1393d9a30d56c7fec50412e21ede3e86656/) | Pool governor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3051cc...603a4a`](./contracts/ethereum-1/0x3051cc7114c07365c99cf82de13cd9d10e603a4a/) | PoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12a51c...aa25bf`](./contracts/ethereum-1/0x12a51ccf52c5ed74b48c0c38e0098ee2cbaa25bf/) | PreDepositFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x543a89...a884ed`](./contracts/ethereum-1/0x543a89fe8dd9403b89222540a881d3642da884ed/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41e410...1d3e86`](./contracts/ethereum-1/0x41e41068618ae53f126175eb32fea3c29c1d3e86/) | PriceFeedNoPrevious | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e94fa...3be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | PriceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d63a8...ddc99b`](./contracts/ethereum-1/0x5d63a8584d91ebc5033d022afd6c5a7c7fddc99b/) | PricesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e2e98...1880ab`](./contracts/ethereum-1/0x8e2e98e1ea79c31c9ab957e465c5529fc81880ab/) | PrismaClaimOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d17ea...64ccf8`](./contracts/ethereum-1/0x5d17ea085f2ff5da3e6979d5d26f1dbab664ccf8/) | PrismaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15b434...1fff61`](./contracts/ethereum-1/0x15b434fa5eb482b5aeb56f07df7a29bf261fff61/) | PrismaPSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea3030...0acc56`](./contracts/ethereum-1/0xea3030b900d94ed36e5a4e8b15b1db76530acc56/) | PrismaSnapshotMockToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda4786...afd71c`](./contracts/ethereum-1/0xda47862a83dac0c112ba89c6abc2159b95afd71c/) | PrismaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06bdf2...7eb02c`](./contracts/ethereum-1/0x06bdf212c290473dcacea9793890c5024c7eb02c/) | PrismaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f870c...55e995`](./contracts/ethereum-1/0x3f870c0ee9ed1662b42d2d91781f1958f355e995/) | PropertiesAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc813f6...002e76`](./contracts/ethereum-1/0xc813f688ca38d37e35845fb2eb180efbc5002e76/) | ProposalGuardian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x775f09...05653c`](./contracts/ethereum-1/0x775f09d6f3c8d2182dfa8bce8628acf51105653c/) | Protocol Address Provider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x929401...b04478`](./contracts/ethereum-1/0x929401e30aab6bd648def2d30ff44952bab04478/) | Protocol Owned Liquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb86c97...121d5d`](./contracts/ethereum-1/0xb86c97f61db0b339d4ffe7f39f7725b80a121d5d/) | PublicAllocatorTendExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x642a16...89dc2c`](./contracts/ethereum-1/0x642a16a7885d7a8b9353e2a4b68834f31389dc2c/) | Receiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x54483f...1d4cee`](./contracts/polygon-137/0x54483f1592ab0adea2757ae0d62e6393361d4cee/) | RefundAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x071b84...c57186`](./contracts/ethereum-1/0x071b848b34586d0dc0009a3c0e6240b123c57186/) | RegisteryAdapterV2Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x240315...2d1271`](./contracts/ethereum-1/0x240315db938d44bb124ae619f5fd0269a02d1271/) | RegisteryAdapterV2Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21670d...b7cc62`](./contracts/ethereum-1/0x21670ddb429b6d80b5be4e65532576bb14b7cc62/) | RegistryAdapterIronBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbcfca7...047690`](./contracts/optimism-10/0xbcfca75ff12e2c1bb404c2c216dbf901be047690/) | RegistryAdapterV2Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0377b4...5f7198`](./contracts/ethereum-1/0x0377b4dadda86c89a0091772b79ba67d0e5f7198/) | ReleaseRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x282fb1...dec8aa`](./contracts/ethereum-1/0x282fb12f1d498766ef93423e10d2f2ece9dec8aa/) | RemappingOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52f28c...5d7117`](./contracts/ethereum-1/0x52f28c876969de6175bd16d7515ff430c15d7117/) | Repay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb354d...be9d21`](./contracts/ethereum-1/0xcb354dff03c15499ab9834faa63b6839c3be9d21/) | RescueStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd210bc...e1e42b`](./contracts/ethereum-1/0xd210bc75b822795a80672413e189312598e1e42b/) | ResupplyPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e38f9...6e2cb2`](./contracts/ethereum-1/0x6e38f97be87f639fad08b79e2d6f1822e26e2cb2/) | rETHDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1f9b5...abae2e`](./contracts/ethereum-1/0xc1f9b548afcbe850f2beba8a50e55d86f4abae2e/) | Revenue Price Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b5ab5...159587`](./contracts/ethereum-1/0x5b5ab518f532ce260a5d2795e1eec544fc159587/) | Revenue Recipient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa82454...b05e50`](./contracts/ethereum-1/0xa82454009e01ae697012a73cb232d85e61b05e50/) | Reward Claimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd31911...ff5934`](./contracts/ethereum-1/0xd31911a33a5577be233dc096f6f5a7e496ff5934/) | Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x922cf0...6c1096`](./contracts/ethereum-1/0x922cf0e43f8c8dc02399a10fcf25f3f17c6c1096/) | RewardDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7e60d...6a1503`](./contracts/ethereum-1/0xb7e60dab3799e238d01e0f90c4506eef8f6a1503/) | RewardsPuller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x073931...e8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/) | RiskOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3bf720...6685b1`](./contracts/arbitrum-42161/0x3bf72024420bdc4d7ca6a8b6211829476d6685b1/) | RoleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca1245...e9e5ce`](./contracts/ethereum-1/0xca12459a931643bf28388c67639b3f352fe9e5ce/) | RoleManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7919a3...f2fa2a`](./contracts/ethereum-1/0x7919a37ba0921347b9142041ee7be1d410f2fa2a/) | RouterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bdfea...fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/) | SafetyRedundancy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x334cb6...dbfac4`](./contracts/ethereum-1/0x334cb66050049c1e392007b018321c44a1dbfac4/) | sdFPIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a3bd2...d7e24b`](./contracts/ethereum-1/0x2a3bd204d41c41804953558b9a29349e85d7e24b/) | SdLiquidityZapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10a4a0...6cc2b6`](./contracts/ethereum-1/0x10a4a0db6554bfd90cfce11c97d3cf1b296cc2b6/) | SdtDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0879c1...122c66`](./contracts/ethereum-1/0x0879c1a344910c2944c29b892a1cf0c216122c66/) | sdToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f10af...63db90`](./contracts/ethereum-1/0x2f10af0abc52025160167bffbec7167e5363db90/) | ShadowQueueAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a65e8...65b6b8`](./contracts/ethereum-1/0x9a65e8ecc9d0112dab0e05c9496894227765b6b8/) | Sharer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c641e...792f7d`](./contracts/ethereum-1/0x2c641e14afecb16b4aa6601a40ee60c3cc792f7d/) | SharerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0259e6...7671fa`](./contracts/ethereum-1/0x0259e629ecded874e0e289e047817cf50f7671fa/) | ShareValueHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5a187...a3098d`](./contracts/ethereum-1/0xb5a187cd9140b6b0db97f014f5c6af5802a3098d/) | ShortOTokenActionWithSwapBtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7946b9...7417e2`](./contracts/ethereum-1/0x7946b98660c04a19475148c25c6d3bb3bf7417e2/) | ShortOTokenActionWithSwapEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe94628...5ba5fa`](./contracts/ethereum-1/0xe9462885290eb79ece41367d92712d6f525ba5fa/) | Shutdown Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10d7cb...7081fc`](./contracts/ethereum-1/0x10d7cb15642d540a4521a7b2840dab01287081fc/) | Signer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x276d33...353465`](./contracts/ethereum-1/0x276d33825a217019b6afe5b317bef302db353465/) | SimpleRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a6de4...b6b364`](./contracts/ethereum-1/0x7a6de4affaddc01b2780ff701f8722de53b6b364/) | SimpleTreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x056b0f...befe7b`](./contracts/ethereum-1/0x056b0fe9bcbf55fb89ceed0081b2d52f3cbefe7b/) | SimpleVaultMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82bfdd...bf4b8a`](./contracts/ethereum-1/0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a/) | SingleSidedAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d02f6...2ad746`](./contracts/ethereum-1/0x1d02f6a86ed5650f93e40fcd62fa5727c32ad746/) | SingleTokenRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe51331...7336c3`](./contracts/ethereum-1/0xe51331a12e2b09067dd5b02021bf89e3a97336c3/) | SIUSDAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x173f5f...9f3b27`](./contracts/ethereum-1/0x173f5f648b18cf1c7f6aac66a35bf462539f3b27/) | SmartWalletChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5268ba...b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d8ab0...ba915f`](./contracts/ethereum-1/0x0d8ab04f46323ca50941495ac15a49ddacba915f/) | Snapshot measure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x168b92...ada222`](./contracts/ethereum-1/0x168b92fc04eb8815a517b3f12341166bc5ada222/) | Snapshot Splitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2ba98...840804`](./contracts/ethereum-1/0xb2ba982e22a488c8dcbb46cfe14473b1a6840804/) | Snapshot vote weight token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bab3f...8bbb50`](./contracts/ethereum-1/0x3bab3f90095c424b923d67f4be1790935c8bbb50/) | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34a045...76e526`](./contracts/ethereum-1/0x34a045499247b983d16a49a1b72d5b3b2e76e526/) | Splitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eaeca...79fa51`](./contracts/ethereum-1/0x0eaeca0e27b3cdb855b7a9b06ca2d9cdfb79fa51/) | SpotOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadcdaa...9ba14b`](./contracts/ethereum-1/0xadcdaaf8f74ad19c46710492389aa846429ba14b/) | SpotOracleAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbf40c...eaa071`](./contracts/ethereum-1/0xdbf40c130399a730f22c7d59facf519e2feaa071/) | SpotOracleAggregatorUltra | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x695350...6bb6ed`](./contracts/ethereum-1/0x6953504f2f4537d7a7b4024508f321f7816bb6ed/) | StabilityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0670e2...9eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/) | StableAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x404f9e...ca0acb`](./contracts/ethereum-1/0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb/) | StableCreditHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15fe17...26f5f9`](./contracts/ethereum-1/0x15fe17da18288d1799643be1bb07fb939626f5f9/) | StableCreditProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | StableYieldCredit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42b252...ecc016`](./contracts/ethereum-1/0x42b25284e8ae427d79da78b65dffc232aaecc016/) | Staked YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64a7de...5a849f`](./contracts/ethereum-1/0x64a7de4025c0c8793b08e484999ea33c585a849f/) | StakedyBoldOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x195115...3fdb83`](./contracts/ethereum-1/0x1951159afb9ceec77c8d767386dc15471f3fdb83/) | StakeNTroveZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f7633...8e2dfd`](./contracts/ethereum-1/0x4f76333e716788b0786b405fa8ea8928928e2dfd/) | StakeZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24b267...e00a86`](./contracts/ethereum-1/0x24b267aa3946209ca19231d0f17110577be00a86/) | Staking Middleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27a2fc...78ac52`](./contracts/ethereum-1/0x27a2fc2d47c5063a551c8fe81f580b84ab78ac52/) | Staking Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95547e...da6113`](./contracts/ethereum-1/0x95547ede56cf74b73dd78a37f547127dffda6113/) | Staking Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe9c8a...e3b0d2`](./contracts/ethereum-1/0xfe9c8a785eab9ee13a908af10a51229d35e3b0d2/) | Staking rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x009c05...bf8dfe`](./contracts/optimism-10/0x009c05bfb6d51fa0439d1473681b472019bf8dfe/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b3d59...0a6a52`](./contracts/ethereum-1/0x3b3d59a46a9c2b5abf02a85d4dc1915b270a6a52/) | StakingRewardsMulti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d8dac...c9d44f`](./contracts/ethereum-1/0x7d8dac450df7e222ae1d591046eb7b5324c9d44f/) | StakingRewardsRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d7ec4...1a6cb0`](./contracts/ethereum-1/0x3d7ec4a09cd4330f5c2c4341621a8249001a6cb0/) | StaticCallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a61c2...60ee2a`](./contracts/ethereum-1/0x0a61c2146a7800bdc278833f21ebf56cd660ee2a/) | StealthRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc454f4...4ca45e`](./contracts/ethereum-1/0xc454f4e1ddb39c8de9663287d52b0e4feb4ca45e/) | StealthVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11bba9...22dd91`](./contracts/ethereum-1/0x11bba9df4541c8e40288428d91b19ac64b22dd91/) | StrategiesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05d13f...c2bcb8`](./contracts/ethereum-1/0x05d13fba06956514a550d0560293f8bcbec2bcb8/) | Strategy4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d50ca...c4aed4`](./contracts/ethereum-1/0x0d50cae113c7d971be5577836ced3b367ec4aed4/) | StrategyAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be5d9...f9e88b`](./contracts/ethereum-1/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b/) | StrategyControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd643cf...d47ede`](./contracts/ethereum-1/0xd643cf07344428770b84973e049a1c18b5d47ede/) | StrategyDForceDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02754c...bcf6aa`](./contracts/base-8453/0x02754ce97319adb7eb03782dc541d7b6f1bcf6aa/) | StrategyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31641a...69156f`](./contracts/ethereum-1/0x31641a4836c172640fa1c02999b09c5d1069156f/) | StrategyMStableSavings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x442510...e0b81c`](./contracts/ethereum-1/0x442510ba285d5390cb5385a91a380d4268e0b81c/) | StrategyMStableSavingsTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bd13c...72ad24`](./contracts/ethereum-1/0x3bd13c2c082cb269c54432746335a7814972ad24/) | StrategyRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2288c4...4ec989`](./contracts/ethereum-1/0x2288c409e67b6ce52180f97a8cddf7abc24ec989/) | StrategySNXSUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35cee4...ba817a`](./contracts/ethereum-1/0x35cee4c61b7619956e0b2015b5411f93cbba817a/) | StrategyVaultTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25faca...20d8d6`](./contracts/ethereum-1/0x25faca21dd2ad7edb3a027d543e617496820d8d6/) | StrategyVaultUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7811bd...badf5c`](./contracts/ethereum-1/0x7811bdc0e906eecaaf951057305187d0a4badf5c/) | StrategyYearnBasic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x395f93...88797c`](./contracts/ethereum-1/0x395f93350d5102b6139abfc84a7d6ee70488797c/) | StrategyYFIGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02ff74...1d3480`](./contracts/optimism-10/0x02ff746d8cb62709aeec611cec9b17d7dd1d3480/) | String | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f80a...3c4a93`](./contracts/ethereum-1/0x45f80a180acb435aa0a52f1a260f3cc2703c4a93/) | Strings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c0eee...ec52ff`](./contracts/ethereum-1/0x1c0eeef670d82498f7547062aac7ee2143ec52ff/) | StringSplit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7af63d...c2102c`](./contracts/ethereum-1/0x7af63dc2d7bb6996f8727d4462e68fc3c1c2102c/) | SturdyUSDCOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2eb91...41978f`](./contracts/ethereum-1/0xf2eb916605402e5c7e81f7d609d0e2204841978f/) | SupplyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a3bc2...4fc744`](./contracts/ethereum-1/0x8a3bc2cce3ea37ead933422252e349512f4fc744/) | SUSDSExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x328ee8...31df80`](./contracts/ethereum-1/0x328ee88a60da26e270061533c6e9fa03c031df80/) | SUSDSUSDTExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x114785...342a1a`](./contracts/ethereum-1/0x11478565ac5925745386d58eae65c9597e342a1a/) | SwapDebtForCollZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d6c97...4e1981`](./contracts/ethereum-1/0x4d6c977a6998544f667b0aeec8c93822504e1981/) | SwapHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e6ae7...6bf694`](./contracts/ethereum-1/0x4e6ae791cc33120d72392f2449dbb91dec6bf694/) | SwapperV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e1b2d...00f853`](./contracts/ethereum-1/0x0e1b2d617834994a74c14f255b56ef0b1100f853/) | SwapperV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b7e6f...9330a2`](./contracts/ethereum-1/0x1b7e6fb817112b036eaa4ae85479ff1c2e9330a2/) | SwapperV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b3d9f...40ff26`](./contracts/ethereum-1/0x6b3d9fe074c18a2fa10a8206670ef7f65f40ff26/) | SweeperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0485a4...e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | Synthetic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa90d9...38ffdc`](./contracts/ethereum-1/0xaa90d9cc2f41a150489da5fffba2060a2938ffdc/) | SyntheticRebaseDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ed4a4...f8c8be`](./contracts/ethereum-1/0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be/) | SynthetixAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0691cf...04c2cf`](./contracts/ethereum-1/0x0691cf9d171d6c9c3876598b14732248b204c2cf/) | SynthetixExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ac4ae...bcbd4f`](./contracts/ethereum-1/0x3ac4aee8be925472e2239e9633b9157e7cbcbd4f/) | SyrupDepositExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9409b...7bd0f0`](./contracts/ethereum-1/0xe9409b50cd0f25d203319f7bcf729f195a7bd0f0/) | SyrupExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | TapFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa59b34...23bf43`](./contracts/ethereum-1/0xa59b34c87f97bdf95ab3e532fd9b7d1fcd23bf43/) | Team | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c2219...ffdfd6`](./contracts/ethereum-1/0x1c221980aab2e52ccc02180e0c171ca5e5ffdfd6/) | Team Accountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9da431...372f29`](./contracts/ethereum-1/0x9da431b8a5b5962ebff1d1876ddb0f336a372f29/) | Team Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x101dd6...e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | TendiesFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ef780...c57bc3`](./contracts/ethereum-1/0x2ef7801c6a9d451ef20d0f513c738cc012c57bc3/) | TendV2Keep3rJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x643a69...901e26`](./contracts/ethereum-1/0x643a6970460e336a526e7b185f7b3e6ff6901e26/) | Test | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1403ee...2993ab`](./contracts/ethereum-1/0x1403eea5fff87253658d755030a73dfbca2993ab/) | TestGuestList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2df934...60da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/) | TimeLoanPairFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8f60b...a5779b`](./contracts/ethereum-1/0xf8f60bf9456a6e0141149db2dd6f02c60da5779b/) | TimelockExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f7854...22829d`](./contracts/ethereum-1/0x3f78544364c3eccdce4d9c89a630aea26122829d/) | TokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x223bb2...2a5d0b`](./contracts/ethereum-1/0x223bb2252c2b1855c337b2a0d6d066c76d2a5d0b/) | TokenSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x076e29...fb9e20`](./contracts/ethereum-1/0x076e298405b75a02c222d3860d703e4c92fb9e20/) | TokenVotingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | TopFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02ff74...1d3480`](./contracts/base-8453/0x02ff746d8cb62709aeec611cec9b17d7dd1d3480/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93a62d...a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | TreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23e258...b3dae2`](./contracts/ethereum-1/0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2/) | Trigonometry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14a3b7...05f7a6`](./contracts/ethereum-1/0x14a3b726724a0e620cde342a7c04c09e0d05f7a6/) | TroveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4404ff...c9ae7a`](./contracts/ethereum-1/0x4404ff820dad76afc4f931079eb13fd418c9ae7a/) | TroveManagerGetters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1824df...72ab90`](./contracts/ethereum-1/0x1824df8d751704fa10fa371d62a37f9b8772ab90/) | TrustedVaultMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | TubFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e4c80...0c47dc`](./contracts/ethereum-1/0x5e4c808d762b969290b2d5fa89ed13c6b40c47dc/) | TvlAdapter_VAULT_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1007ed...248691`](./contracts/ethereum-1/0x1007ed6fdfac72bbea9c719cf1fa9c355d248691/) | TvlAdapterEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec7ac8...097f24`](./contracts/ethereum-1/0xec7ac8ac897f5082b2c3d4e8d2173f992a097f24/) | TvlAdapterIronBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4fb89...4c6c78`](./contracts/ethereum-1/0xf4fb8903a41fc78686b26de55502cde42a4c6c78/) | TvlAdapterV1Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14d6e0...da8785`](./contracts/ethereum-1/0x14d6e0908bae40a2487352b2a9cb1a6232da8785/) | TvlAdapterV2Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x560144...a850e5`](./contracts/ethereum-1/0x560144c25e53149ac410e5d33bdb131e49a850e5/) | TvlAdapterVeCrv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7aa349...24d013`](./contracts/ethereum-1/0x7aa3490e09feb1ee220acf57801e0ab16b24d013/) | TwapOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | UChildDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61da8b...61d136`](./contracts/ethereum-1/0x61da8b0808cea5281a912cd85421a6d12261d136/) | UniOracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07da86...ecfabe`](./contracts/ethereum-1/0x07da8603916ee59a921eb4f1eb89daef71ecfabe/) | UniqueAddresses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3a0be...f9467c`](./contracts/ethereum-1/0xc3a0bef4a47ba579cbba510ae2c59d9b9bf9467c/) | UniqueAddressesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab1c34...144cbb`](./contracts/ethereum-1/0xab1c342c7bf5ec5f02adea1c2270670bca144cbb/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13dfeb...cadd85`](./contracts/ethereum-1/0x13dfeb3cc4f05229c449c30a9ae4141d7fcadd85/) | Unwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d961...b71afe`](./contracts/ethereum-1/0x04d9614e94f1885ef819e96f9402e1a81eb71afe/) | USDCToUSDS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b88f1...c271ee`](./contracts/ethereum-1/0x1b88f199d42f2114de341c5b68e9c92af1c271ee/) | USDCToUSDS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78c2c5...c765d1`](./contracts/ethereum-1/0x78c2c5d6e4ac63edbf534a1c88093edb6bc765d1/) | USDSFarmerDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e95f...230f8b`](./contracts/ethereum-1/0x38e95f4ae861feed3952d0dac5abb14a94230f8b/) | USDSFarmerUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x736d7e...6cfccf`](./contracts/ethereum-1/0x736d7e3c5a6cb2ce3b764300140abf476f6cfccf/) | V2Keeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054a87...b03203`](./contracts/ethereum-1/0x054a87ddfde3ccb5ddb03739375329bcc1b03203/) | VaultKeep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a479e...880c10`](./contracts/ethereum-1/0x4a479e4457841d2d2ff86e5a5389300963880c10/) | VaultKeep3rJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2045cf...cd7e19`](./contracts/ethereum-1/0x2045cfdd404f88f86f611976ba3f11f8bdcd7e19/) | VaultRoleManagerHandoff | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57ca31...cb70d8`](./contracts/ethereum-1/0x57ca31224bec6901b353251840ae4d10c3cb70d8/) | VaultsRegistryHelper2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf12eea...0e51b6`](./contracts/ethereum-1/0xf12eeab1c759dd7d8c012cca6d8715eed80e51b6/) | VaultSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4c78b...dc4f7a`](./contracts/ethereum-1/0xa4c78b49c9ec659df1f5b620f2dc8b80a0dc4f7a/) | VaultV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x626632...0e27de`](./contracts/ethereum-1/0x62663257c7958e411b98941f93925297940e27de/) | VaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d12ca...3cdff1`](./contracts/base-8453/0x2d12caffa46ab3b6c5ceb224620de8b4de3cdff1/) | VelodromeGlobal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x059f78...fcd1ac`](./contracts/ethereum-1/0x059f78859a152e42dd590a49be44f2ebe9fcd1ac/) | VeSDTFeeAngleProxyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf5bf...db23ef`](./contracts/ethereum-1/0x0cf5bf5e7ba48796d6ec641a75f55bd1d6db23ef/) | Vesting Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212559...fc9942`](./contracts/ethereum-1/0x212559a47cc87607c9bf07538bd7aa6836fc9942/) | Vesting Escrow for veYFI liquid lockers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x298bc0...e6304f`](./contracts/ethereum-1/0x298bc0153998bc43003ca8b27768228791e6304f/) | Vesting Staker (1UP) | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc198fc...8fa691`](./contracts/ethereum-1/0xc198fcb71e5a2cf29f7bcafaa462f3b0238fa691/) | Vesting Staker (Cove) | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e3734...123a1d`](./contracts/ethereum-1/0x3e37347bcdf609139f74dcaeac553343cb123a1d/) | Vesting Staker (StakeDAO) | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f5981...a7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/) | VestingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a70cd...6ecbe8`](./contracts/ethereum-1/0x5a70cd937ba3daec8188e937e243ffa43d6ecbe8/) | VeYfiPositionHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x125ca4...2af268`](./contracts/ethereum-1/0x125ca420ea1556a65bb926fa7bd5d72fc22af268/) | VirtualPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52574a...dba81d`](./contracts/ethereum-1/0x52574a10ce418afef388e39cea61643d33dba81d/) | Vote weight measure with delegation and decay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc55a39...3a3dcd`](./contracts/ethereum-1/0xc55a3957476cc1e7fef40856802edd150c3a3dcd/) | Voting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13daff...7470a0`](./contracts/ethereum-1/0x13daffdf8863c47290363b0109b681e3f37470a0/) | Voting Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2548bf...9ee884`](./contracts/ethereum-1/0x2548bf65916fdabb5a5673fc4225011ff29ee884/) | Voting Escrow Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2321a7...0591b7`](./contracts/ethereum-1/0x2321a7facf817cfea12cd444d6d3cfa7ba0591b7/) | VotingPowerCondition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | VoxFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e07cf...7d0438`](./contracts/ethereum-1/0x1e07cfbf666741b2fb3a33516a23293cae7d0438/) | VulnerableTroveRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x000000...fc4383`](./contracts/optimism-10/0x0000000022d53366457f9d5e68ec105046fc4383/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77d851...353d7f`](./contracts/ethereum-1/0x77d851a9f62a4c76481cda94d40772642b353d7f/) | Wallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a0e05...6e9d12`](./contracts/ethereum-1/0x0a0e0580bd8493be43cad2910cb5497f696e9d12/) | WeETHUnwindAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6973cf...dfecd7`](./contracts/ethereum-1/0x6973cf85d479b9253e13e71f377e8cd2c2dfecd7/) | Weight aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25aea8...544a18`](./contracts/ethereum-1/0x25aea8c84e138d2bab058bcfbdcbd62d26544a18/) | Weight vote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x706aa5...940c03`](./contracts/ethereum-1/0x706aa50385c51596b6d9cbcf97645c6a98940c03/) | WETHWstETHExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x017e71...231981`](./contracts/ethereum-1/0x017e71e96f2ae777c679740d2d8dc15ed4231981/) | WrappedYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33e472...71099b`](./contracts/ethereum-1/0x33e472b038575bf745f5d42dc58b09a6f971099b/) | WstETHUnwindAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0205ae...e419c5`](./contracts/ethereum-1/0x0205ae93e18aa23d31e3df53899547b986e419c5/) | xVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44ff2a...53b367`](./contracts/ethereum-1/0x44ff2af361e4b6a2892523d513df5245fc53b367/) | yAffiliateFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xccd31d...058bae`](./contracts/ethereum-1/0xccd31df9084615d87036586f5139c83c6a058bae/) | yBAL Zap v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf03a91...039e4c`](./contracts/ethereum-1/0xf03a919a59f8381be220511ecf788b15fb039e4c/) | YBC Bonus Recipient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe16608...fb206c`](./contracts/ethereum-1/0xe16608758c11322d407745927d2d033f1bfb206c/) | YBC Membership Election | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53100f...c8bbe1`](./contracts/ethereum-1/0x53100f8979d3655a2e95465f583b0f4a11c8bbe1/) | YBC Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadb722...1468d9`](./contracts/ethereum-1/0xadb7228a85fcd24e3cfc8c58e2d4b9f03e1468d9/) | YBC Weight Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ea136...65ac4f`](./contracts/ethereum-1/0x3ea13660e4b4319a1418c5a5e9fe98263e65ac4f/) | YBSFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x262be1...e9f738`](./contracts/ethereum-1/0x262be1d31d0754399d8d5dc63b99c22146e9f738/) | YBSRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbbf7d...af0bd5`](./contracts/ethereum-1/0xdbbf7d6d71397b33675ad16c31bd3505c6af0bd5/) | YBSRewardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265c8d...619569`](./contracts/ethereum-1/0x265c8d21a322b04804524b857089de2fef619569/) | YBSUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x210e69...41c6f0`](./contracts/ethereum-1/0x210e690ed371d69c7ea42ba716d8ab782041c6f0/) | YBSUtilsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01791f...c045ff`](./contracts/ethereum-1/0x01791f726b4103694969820be083196cc7c045ff/) | YBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04bc0a...bca9ae`](./contracts/ethereum-1/0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae/) | yBUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24dd02...e82a5d`](./contracts/ethereum-1/0x24dd028bd027511482e701d08bae002cd6e82a5d/) | yCollateralVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc899a...35a66a`](./contracts/ethereum-1/0xdc899ab992fbcfbac936ce5a5bc5a86a5d35a66a/) | YCRV Zap v3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ec30e...b23839`](./contracts/ethereum-1/0x4ec30e8f98dcf08b29b02f46082ed05f88b23839/) | YCRV Zap v4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05fc81...d5e401`](./contracts/ethereum-1/0x05fc8174050f0a41deb7e562187911d45cd5e401/) | YCRVSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0597ea...bc0f2c`](./contracts/ethereum-1/0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c/) | ycUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x631d66...3931a4`](./contracts/ethereum-1/0x631d66f79191c86d7b7a7c0e2afae3ae943931a4/) | ycUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56ab71...a6bd33`](./contracts/ethereum-1/0x56ab71990783442f68fb25e0b466196c7ca6bd33/) | yDAIv2Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x610258...a05f83`](./contracts/ethereum-1/0x61025859c349dfbe6ef0dfca202ef3e84ca05f83/) | yDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11e475...feb958`](./contracts/ethereum-1/0x11e4757b9f88cf17f8a0f5ea7e6b4f40affeb958/) | yDiscount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6afd7...dcb315`](./contracts/ethereum-1/0xd6afd78c05f0d425f2b46359746dd44991dcb315/) | Yearn Builder Collective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x061ea8...6d79e1`](./contracts/base-8453/0x061ea85f0f2936d382cad1861d7bcefd986d79e1/) | Yearn Token Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04aebe...48dd13`](./contracts/ethereum-1/0x04aebe2e4301cdf5e9c57b01ebdfe4ac4b48dd13/) | Yearn V3 Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x310ac2...22bcac`](./contracts/ethereum-1/0x310ac28acf5e514abdbff9ab25e21f1bfe22bcac/) | Yearn Vault Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1112db...4fd8de`](./contracts/ethereum-1/0x1112dbcf805682e828606f74ab717abf4b4fd8de/) | Yearn4626Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b6543...c30ec3`](./contracts/ethereum-1/0x8b65438178cd4ef67b0177135de84fe7e3c30ec3/) | YearnAccumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d2ea3...0fad91`](./contracts/ethereum-1/0x5d2ea33449a60a70e8fcdc5251fdd86a030fad91/) | YearnBoostedStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c6e9d...5e2773`](./contracts/ethereum-1/0x4c6e9d7e5d69429100fcc8afb25ea980065e2773/) | YearnDaiCompStratV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d45da...c918e8`](./contracts/ethereum-1/0x9d45dab69f1309f1f55a7280b1f6a2699ec918e8/) | YearnFamily2021 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41303e...343eeb`](./contracts/ethereum-1/0x41303e87db5be5b1c7a341440d04ec6a11343eeb/) | YearnLiquidationKeep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a993e...d598f0`](./contracts/ethereum-1/0x4a993e737cb5c807f73447e7e31403f753d598f0/) | YearnOptionsV1Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7f4ab...13ec0c`](./contracts/ethereum-1/0xe7f4ab593aec81eca754da1b3b7ce0c42a13ec0c/) | YearnV1EarnKeep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8106d...faf709`](./contracts/ethereum-1/0xf8106d779246612ff7a6a623ef7026a9ccfaf709/) | YearnV1EarnKeep3rV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02f82f...5b704a`](./contracts/ethereum-1/0x02f82f30c8d45373619ba39344304731785b704a/) | YearnV2Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c80cf...b74098`](./contracts/ethereum-1/0x0c80cf2bf3e9f7307c8321f272315762a7b74098/) | yETH bootstrap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb5950...81e75c`](./contracts/ethereum-1/0xbb595031c02810b8f4e035017fb4502ae481e75c/) | yETH delegated staking contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95be65...a50be6`](./contracts/ethereum-1/0x95be6555f5c734f4e2169e746c533f40aca50be6/) | yETH deposit/withdrawal facility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x956485...ff3143`](./contracts/ethereum-1/0x9564850c7090b13794e6d1164b0826c0aeff3143/) | yETH recovery claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50f052...d2db0e`](./contracts/ethereum-1/0x50f052f17757e62872f055cdba2ef580cfd2db0e/) | yETH stake zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x583019...04d0b4`](./contracts/ethereum-1/0x583019ff0f430721ada9cfb4fac8f06ca104d0b4/) | yETH staking contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818a8e...7fc5e1`](./contracts/ethereum-1/0x818a8e8240ac57949e28577b81e9eb9ecd7fc5e1/) | yETH strategy deposit/withdrawal facility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bed97...6131f7`](./contracts/ethereum-1/0x1bed97cbc3c24a4fb5c069c6e311a967386131f7/) | yETH token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ca1bd...ba6822`](./contracts/ethereum-1/0x0ca1bd1301191576bea9b9afcfd4649dd1ba6822/) | yETH weighted stableswap pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4349ed...806df3`](./contracts/ethereum-1/0x4349ed200029e6cf38f1455b9da88981f1806df3/) | YFI Buyback Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x572b06...eaaacc`](./contracts/ethereum-1/0x572b0675b0a815d1970c1310fe4aa8884feaaacc/) | YFI matching | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | yInsure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d2738...98340b`](./contracts/ethereum-1/0x6d2738fa41e83c5b5633f466f9aa11dae098340b/) | yInsureView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28b47d...ea001f`](./contracts/ethereum-1/0x28b47dbbc7af3482e900f2ed4885490deaea001f/) | YLiquidMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76a56d...1f1075`](./contracts/ethereum-1/0x76a56db217bc1fee1c4098a716f1b229671f1075/) | YLiquidMarketAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54f1c4...7ac258`](./contracts/ethereum-1/0x54f1c4a118c75e5626f353dd3dbb4f6a9f7ac258/) | YLiquidRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5ebcc...307d31`](./contracts/ethereum-1/0xb5ebcc79fb618bada1a537d06af93717ac307d31/) | YLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a8bda...a0215c`](./contracts/ethereum-1/0x0a8bda95dd5404de1c56859d6b8b5d7ae7a0215c/) | YlockerDrops | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8c992...ab53d9`](./contracts/ethereum-1/0xa8c992f43b067f92ce866f216897fae54bab53d9/) | YLockerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c62d0...c18305`](./contracts/ethereum-1/0x4c62d08dafbd7c7dbd85c34276064cf35ac18305/) | yLQTYBooster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0618a9...c9f508`](./contracts/ethereum-1/0x0618a9f121ee4b15ba6478a4bcab0c5fbac9f508/) | yPRISMA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7038b...5d86c7`](./contracts/ethereum-1/0xa7038b413e7a4e359e0019ab4ff7b0e5315d86c7/) | yPRISMA Airdrop Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x147be7...a7e224`](./contracts/ethereum-1/0x147be71ab3c998f2d03106de56eeb5042aa7e224/) | yPRISMA Boost Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bf2be...f166d1`](./contracts/ethereum-1/0x3bf2be603d439e3b5aa7ceddeea99c017ef166d1/) | yPRISMA Boost Minter V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d0565...b0550f`](./contracts/ethereum-1/0x3d05654f333eea534fc5d7b873c9b8bf35b0550f/) | yPRISMA Forwarder Callback Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04ecfd...934c28`](./contracts/ethereum-1/0x04ecfdb67b00fd70007570342887390ebf934c28/) | yPRISMA Legacy Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d385b...232e4c`](./contracts/ethereum-1/0x1d385beeb7b325f4a5c0a9507fd8a1071b232e4c/) | YPrismaFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76df88...20ecdc`](./contracts/ethereum-1/0x76df88aa8711822472cb40ed8c972a461a20ecdc/) | YPrismaFeeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x395749...0cf116`](./contracts/ethereum-1/0x39574917361c4a371471e8527b36305eab0cf116/) | YPrismaForwarderCallbackMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e0c38...4d0bcd`](./contracts/ethereum-1/0x5e0c38f5d10ac99d31d0b8badf8a7977da4d0bcd/) | YPrismaForwarderCallbackMinterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ee41c...9d63a0`](./contracts/ethereum-1/0x3ee41c098f9666ed2ea246f4d2558010e59d63a0/) | YRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36324b...d41380`](./contracts/ethereum-1/0x36324b8168f960a12a8fd01406c9c78143d41380/) | ySUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d5ad9...54203a`](./contracts/ethereum-1/0x1d5ad987b743eb624662fe5c62b8f6015554203a/) | yTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b642...e9cc09`](./contracts/ethereum-1/0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09/) | yTokenRebalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | yTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1f5ae...707cbc`](./contracts/ethereum-1/0xd1f5aee3f025d2f4e42dd74dec17d5faa4707cbc/) | YUnsafeOracleV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12c068...af3aff`](./contracts/ethereum-1/0x12c0681dca0deb095f2f192c3ab64bf320af3aff/) | yUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/) | yUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3118ee...b9aade`](./contracts/ethereum-1/0x3118eec34240620ffd044dfa3aaa0a0f78b9aade/) | yUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bbe0f...a6d1ad`](./contracts/ethereum-1/0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad/) | yVaultCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x044dea...f677b5`](./contracts/ethereum-1/0x044deaa1e5a8593adcead599e8d66fb5d3f677b5/) | yVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb8d98...8d2eaa`](./contracts/ethereum-1/0xeb8d98f9e42a15b0eb35315f737bdfda1a8d2eaa/) | YVEmpire | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | yWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | yWrappedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x110421...f2a0bc`](./contracts/ethereum-1/0x1104215963474a0fa0ac09f4e212ef7282f2a0bc/) | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15e540...257660`](./contracts/ethereum-1/0x15e5405b90abba31f29c618f9dc8d65e95257660/) | ZapSteth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x277793...519a2c`](./contracts/ethereum-1/0x2777938e0a1c12bce97c9cc9b36e737c08519a2c/) | ZapYvecrv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85db61...f97fef`](./contracts/ethereum-1/0x85db618d507909570299d3e3cffd0fc4d4f97fef/) | ZapYvecrvSusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a0bad...44d540`](./contracts/ethereum-1/0x5a0bade607eaca65a0fe6d1437e0e3ec2144d540/) | ZapYvWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 645 |
| upstream | 12 |
| standard_library | 9 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 47
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=34, low=3, medium=5
- Match method counts: extraction_exact=188

Zero-match audit list:

- [18631] DL audit link
- [18632] download report
- [18633] DL audit link
- [18635] Yearn Finance yETH-bootstrap Security Audit Report.pdf
- [18636] StrategyCurveYCRV.sol - HackMD.pdf
- [18640] MixBytes - Timeloans.Finance Smart Contract Security Audit Report.pdf
- [18643] MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf
- [18647] 202102_MixBytes_sushiswap-bentobox.pdf
- [18649] PeckShield_Audit_Report_CoverForge_v1.0.pdf
- [18650] MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf
- [18651] MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf
- [18653] MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf
- [18660] ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf
- [18663] Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf
- [18666] Dedaub_-_Angle.md
- [18667] Dedaub_-_Stargate.md
- [18670] Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf
- [18674] Statemind_-_Yearn_veyfi_Audit.pdf
- [18675] 202208_Statemind_Tarot_Impermax.md
- [18678] yAcademy_-_joint_strategy_review.pdf
- [18682] ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf
- [18684] Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf
- [18685] ChainSecurity_Yearn_yETH_Periphery_audit.pdf
- [18686] Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf
- [18688] Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf
- [18689] Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf
- [18690] 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf
- [18691] yearn-vaults-v3
- [18692] 2020-09-25.md
- [18694] 2020-10-30.md
- [18696] 2021-02-04.md
- [18698] 2021-04-02.md
- [18700] 2021-05-14.md
- [18701] 2021-05-20.md
- [18702] 2021-06-29.md
- [18703] 2021-10-27.md
- [18704] 2022-01-30.md
- [18705] 2022-09-06.md
- [18707] 2022-11-07.md
- [18708] 2023-03-13.md
- [18709] 2023-04-04.md
- [18711] 2023-06-13.md
- [18712] 2023-12-11.md
- [18713] 2024-01-03.md
- [18714] 2025-05-08.md
- [18716] 2025-11-26.md
- [18717] 2025-12-01.md

Fork inheritance lineage and inherited audits are included when available.
