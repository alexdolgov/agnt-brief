# Agentic Audit Brief: Gauntlet

## Project Overview

- Project: Gauntlet (`gauntlet`)
- Website: [https://www.gauntlet.xyz](https://www.gauntlet.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:27.091Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, base, bsc, ethereum, optimism
- Contract surface: 151 unique implementations (151 raw deployments)
- DeFi Llama TVL: $1,397,148,324.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Risk Curators. Structurally: 144 project-authored contract(s) across 5 chain(s); 3 ERC4626 vaults, 9 ERC20 tokens, 28 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 17 common project-authored base contract(s) (erc165, ownable2step, basevaultdeployer). Dominant framework: openzeppelin-upgradeable.

## Fork Lineage

This project reuses audited code from **Lista DAO** (`lista-dao`) in the HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, ListaVault, Moolah, … subsystem.
13 audits inherited from `lista-dao`, scoped to that subsystem.

Total inherited audits: 13. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 151; live-surface contracts included: 151 (151 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/151 (9.3%)
- Deployed-live implementations: 151 of 151 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/151
- Verified + Unaudited implementations: 137
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 151
- Raw deployments: 151
- Audits discovered: 18 (5 direct, 13 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 2 stale, 9 unknown
- Coverage code basis (deployed vs audited code): 14 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 9.3% (OpenZeppelin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 14 | 9.3% | 2025 |
| Bailsec | Tier 2 | 11 | 7.3% | 2026-06 |
| BlockSec | Tier 2 | 11 | 7.3% | n/a |
| CertiK | Tier 2 | 11 | 7.3% | 2026-06 |
| PeckShield | Tier 2 | 11 | 7.3% | n/a |
| Spearbit | Tier 1 | 3 | 2.0% | 2023-09 |
| WarRoom | Tier 2 | 1 | 0.7% | 2026-06 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AeraV2ERC721ReceiverFactory | unknown | base | n/a | [`0x1395c3...e77b09`](./contracts/base-8453/0x1395c314782bba704ca984ad41e57275f6e77b09/) | ✅ Audited |
| AeraVaultV2 | unknown | ethereum | n/a | [`0x14c79c...8f5a98`](./contracts/ethereum-1/0x14c79c24b2a82ce36e3f3d693aeea17e268f5a98/) | ✅ Audited |
| AeraVaultV2ERC721Receiver | unknown | base | n/a | [`0x9f3ef8...327b4d`](./contracts/base-8453/0x9f3ef866e769624d9a7a687a669d226c1e327b4d/) | ✅ Audited |
| HelioETHProvider | unknown | bsc | n/a | [`0xa16bb6...8e6ad9`](./contracts/bsc-56/0xa16bb61c80b29f7458d677009b3b5f4b868e6ad9/) | ✅ Audited |
| HelioProviderV2 | unknown | bsc | n/a | [`0x6c9f8c...f37c11`](./contracts/bsc-56/0x6c9f8c739843b5a5fd29da1a2bdf26811af37c11/) | ✅ Audited |
| LendingBroker | unknown | bsc | n/a | [`0x039c4a...36bbe9`](./contracts/bsc-56/0x039c4a60c53ff684b5113f0303a91f1d5336bbe9/) | ✅ Audited |
| Liquidator | unknown | bsc | n/a | [`0x534ae7...1973d0`](./contracts/bsc-56/0x534ae76dd9fccb0aa483f309b1a350d4f61973d0/) | ✅ Audited |
| ListaVault | unknown | bsc | n/a | [`0x29202d...457167`](./contracts/bsc-56/0x29202d64986097a099575807ed8284b0fd457167/) | ✅ Audited |
| Moolah | unknown | bsc | n/a | [`0x0af5cd...6bc34f`](./contracts/bsc-56/0x0af5cd9555bc52c34a5f7b20042109d0136bc34f/) | ✅ Audited |
| PancakeSwapV3LpProvider | unknown | bsc | n/a | [`0x104e7b...d42058`](./contracts/bsc-56/0x104e7b187a6455ebf79158a8d7140ea193d42058/) | ✅ Audited |
| RWAAdapter | unknown | bsc | n/a | [`0x0b116d...e350eb`](./contracts/bsc-56/0x0b116d1944e05348003479b517355b1ccee350eb/) | ✅ Audited |
| SmartProvider | unknown | bsc | n/a | [`0x1f48d5...6ea87f`](./contracts/bsc-56/0x1f48d539f1900ceb9901988087eee499c76ea87f/) | ✅ Audited |
| StableSwapPool | unknown | bsc | n/a | [`0x212b83...a3a126`](./contracts/bsc-56/0x212b836dc1ee8c8daefd1284bd27e96a2ea3a126/) | ✅ Audited |
| VeLista | unknown | bsc | n/a | [`0x765d17...70274e`](./contracts/bsc-56/0x765d17e43be4fa44b1cf75a01dc10ab95470274e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (137)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AeraFlashLoanRecipient | unknown | base | n/a | [`0x03fde0...972fad`](./contracts/base-8453/0x03fde00d6654f6c07fa7b33e3b6a7cc0d3972fad/) | ⚠️ Unaudited |
| AerodromePortfolioOracle | unknown | base | n/a | [`0x3396ec...be9925`](./contracts/base-8453/0x3396ec797b7ecfda7e53bfd48689609e8cbe9925/) | ⚠️ Unaudited |
| ArrakisV2Oracle | unknown | base | n/a | [`0x11b646...fd12f2`](./contracts/base-8453/0x11b64616130b72646bff7331a7eb0f9c6afd12f2/) | ⚠️ Unaudited |
| AsBnbPriceFeed | unknown | bsc | n/a | [`0xa13542...00704d`](./contracts/bsc-56/0xa13542f7e49e9852e5c333beaf8617c4cb00704d/) | ⚠️ Unaudited |
| AsterRewards | unknown | bsc | n/a | [`0x2fbf35...f68705`](./contracts/bsc-56/0x2fbf35f9da8c5c1e16247afa02770a01f4f68705/) | ⚠️ Unaudited |
| AsterVault | unknown | bsc | n/a | [`0x5f97a1...87a12b`](./contracts/bsc-56/0x5f97a18f317abe825cf1023ff61452e4d387a12b/) | ⚠️ Unaudited |
| AtlasOracleAdaptor | unknown | bsc | n/a | [`0x095989...1dca8b`](./contracts/bsc-56/0x095989a71792ccf2ae5f34401fdede71461dca8b/) | ⚠️ Unaudited |
| ATokenVault | unknown | base | n/a | [`0x10f6d5...f798b5`](./contracts/base-8453/0x10f6d5526a9ebc892b35ff306b3b1bcf63f798b5/) | ⚠️ Unaudited |
| AutoRefunder | unknown | bsc | n/a | [`0x9d1659...f46cea`](./contracts/bsc-56/0x9d16591537f939a341ca2a221781586b15f46cea/) | ⚠️ Unaudited |
| BaseVaultFactory | unknown | ethereum | n/a | [`0x1a8e10...9741b9`](./contracts/ethereum-1/0x1a8e10a9503e747aeb81da5941bcda6c6a9741b9/) | ⚠️ Unaudited |
| BatchManagementUtils | unknown | bsc | n/a | [`0x10548a...36e00f`](./contracts/bsc-56/0x10548a32ad10ba55b1bbf082a1ac5e912036e00f/) | ⚠️ Unaudited |
| BNBProvider | unknown | bsc | n/a | [`0x2def76...afb35d`](./contracts/bsc-56/0x2def76abf07ee5b1b12865578f7bd9514bafb35d/) | ⚠️ Unaudited |
| BrokerInterestRelayer | unknown | bsc | n/a | [`0x262dd5...abbd54`](./contracts/bsc-56/0x262dd5e34d03605e6c7f76705497349e74abbd54/) | ⚠️ Unaudited |
| BrokerLiquidator | unknown | bsc | n/a | [`0x1cb5b9...27d8a7`](./contracts/bsc-56/0x1cb5b91e24fed296feec2bec8d09b653e327d8a7/) | ⚠️ Unaudited |
| CDPLiquidator | unknown | bsc | n/a | [`0x1ce9c8...5123b5`](./contracts/bsc-56/0x1ce9c8884714bf6fc78d6e31e6d5b7b6af5123b5/) | ⚠️ Unaudited |
| CreditBrokerInfo | unknown | bsc | n/a | [`0x20ea8f...c4af93`](./contracts/bsc-56/0x20ea8ff10d3d9e487570011c6c107a44aac4af93/) | ⚠️ Unaudited |
| CreditBrokerInterestRelayer | unknown | bsc | n/a | [`0x315b29...c4c1a4`](./contracts/bsc-56/0x315b29b9e12b0c93f610a46c8995684db7c4c1a4/) | ⚠️ Unaudited |
| EmergencyShutdown | unknown | bsc | n/a | [`0x4f6de1...00a5b1`](./contracts/bsc-56/0x4f6de11aa3dea237092e2101ec9f3ddb2800a5b1/) | ⚠️ Unaudited |
| EmergencySwitchHub | unknown | bsc | n/a | [`0x07e1e0...9cf40d`](./contracts/bsc-56/0x07e1e05274fee68d10484adc8405786c2c9cf40d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x01ccc0...cce29f`](./contracts/bsc-56/0x01ccc0f0ae8907bd3efa947b2ce841082bcce29f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x091e6e...15418d`](./contracts/bsc-56/0x091e6ed7794d74b73081d32cab59fa47ff15418d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x098a0c...cc9bfb`](./contracts/bsc-56/0x098a0c419915bffa99983abee5d960c193cc9bfb/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x19c329...facf2b`](./contracts/bsc-56/0x19c3295fd1c1956663b1a784e87eea3c02facf2b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x1a438f...67ac17`](./contracts/bsc-56/0x1a438f71bc56514f47142c96a8f580ab5767ac17/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x1f819b...73f7d9`](./contracts/bsc-56/0x1f819b91e29e3d28ca63f8370a0b367b7c73f7d9/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x1f9831...eb52d8`](./contracts/bsc-56/0x1f9831626ce85909794eeaa5c35bf34db3eb52d8/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x2073dd...9d9f1f`](./contracts/bsc-56/0x2073ddce6d268ebbfc541d7f5d418de9ca9d9f1f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x2959c4...73f11a`](./contracts/bsc-56/0x2959c423bfe5cc6e41516599d982a29c0773f11a/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x2b3e5b...21d0a4`](./contracts/bsc-56/0x2b3e5b695722756130a553e9bb5a45e16d21d0a4/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x2bb416...7b2462`](./contracts/bsc-56/0x2bb41616323994b4ada381ea40cb2d135f7b2462/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x4837fb...58e5fd`](./contracts/bsc-56/0x4837fb5c9c84524cc0c93f066c1ac708a758e5fd/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x502131...d91aa9`](./contracts/bsc-56/0x5021319c1b8245e0680f19b7aa84a0f0f3d91aa9/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x80e663...b2641e`](./contracts/bsc-56/0x80e663ba9ef857d3f377f814c2f3d00187b2641e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x86e092...d8945c`](./contracts/bsc-56/0x86e09296aeda129d3b0b4c134b3202b84cd8945c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x8ebfa9...df3ec0`](./contracts/bsc-56/0x8ebfa9e687af71ec2e87a0380f73b9f57fdf3ec0/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x96146e...8959a2`](./contracts/bsc-56/0x96146ef4c6e1c42e05439ab037fc3d60188959a2/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0xb4678c...3a8498`](./contracts/bsc-56/0xb4678c3e8b49d2b95da48458f98805da193a8498/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0xe4153e...74ee76`](./contracts/bsc-56/0xe4153eb04417be05b8d6b2222e4cdd8ae674ee76/) | ⚠️ Unaudited |
| FeeCalculator | unknown | base | n/a | [`0x0698ab...aefc27`](./contracts/base-8453/0x0698aba37602522582c18f2ab8276cc2c0aefc27/) | ⚠️ Unaudited |
| FixedRateIrm | unknown | bsc | n/a | [`0x10c9cc...f08c82`](./contracts/bsc-56/0x10c9cc38a9117eaee1e0d0d24cf4de7804f08c82/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0xc684c6...05faec`](./contracts/ethereum-1/0xc684c6587712e5e7bdf9fd64415f23bd2b05faec/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | optimism | n/a | [`0x5a4e19...8dd4d0`](./contracts/optimism-10/0x5a4e19842e09000a582c20a4f524c26fb48dd4d0/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | base | n/a | [`0x5a4e19...8dd4d0`](./contracts/base-8453/0x5a4e19842e09000a582c20a4f524c26fb48dd4d0/) | ⚠️ Unaudited |
| IdleCollateralToken | unknown | bsc | n/a | [`0xb39d01...763fa3`](./contracts/bsc-56/0xb39d0107635686e6613dcd08018520c2fd763fa3/) | ⚠️ Unaudited |
| IdleOracle | unknown | bsc | n/a | [`0xc259ee...ff8733`](./contracts/bsc-56/0xc259ee9cb561dfb5dca010b29b57f12341ff8733/) | ⚠️ Unaudited |
| Interaction | unknown | bsc | n/a | [`0x4dcc11...16d3d7`](./contracts/bsc-56/0x4dcc1182f3bc8a968927faeedf5e32a0d716d3d7/) | ⚠️ Unaudited |
| InterestRateModel | unknown | bsc | n/a | [`0x34f834...dc8141`](./contracts/bsc-56/0x34f8345b9ec201f8ba6144516fc3a213aedc8141/) | ⚠️ Unaudited |
| LendingFeeRecipient | unknown | bsc | n/a | [`0x01e88f...35e208`](./contracts/bsc-56/0x01e88f69c798adf75120f4972539ac77fd35e208/) | ⚠️ Unaudited |
| LendingRevenueDistributor | unknown | bsc | n/a | [`0xe004ef...86fa21`](./contracts/bsc-56/0xe004efc1753ef845628b95d16058af1a9f86fa21/) | ⚠️ Unaudited |
| LendingRewardsDistributor | unknown | bsc | n/a | [`0x3e49ef...091959`](./contracts/bsc-56/0x3e49efd13693822507a8dfc0f9aa13ca14091959/) | ⚠️ Unaudited |
| LendingRewardsDistributorV2 | unknown | bsc | n/a | [`0x11691e...82a504`](./contracts/bsc-56/0x11691e3235541daace55c419fbea5ff12282a504/) | ⚠️ Unaudited |
| LisAster | unknown | bsc | n/a | [`0x4183b7...4314b7`](./contracts/bsc-56/0x4183b7045cac1b56bc9cb3e694d1f551a84314b7/) | ⚠️ Unaudited |
| LisAsterDistributor | unknown | bsc | n/a | [`0x1c11b6...b55444`](./contracts/bsc-56/0x1c11b62fdabffa770cd14645305a0da7c2b55444/) | ⚠️ Unaudited |
| LisAsterStaking | unknown | bsc | n/a | [`0x2d0a2d...e4c3eb`](./contracts/bsc-56/0x2d0a2d15ce64afa586fceca4e8156087b6e4c3eb/) | ⚠️ Unaudited |
| ListaAirdrop | unknown | bsc | n/a | [`0x087b98...7d5089`](./contracts/bsc-56/0x087b9843155597bd447088c4eccde485357d5089/) | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | bsc | n/a | [`0x362d27...9446ea`](./contracts/bsc-56/0x362d279284ed18fdc3e04bf0edd8bc453e9446ea/) | ⚠️ Unaudited |
| ListaRevenueDistributor | unknown | bsc | n/a | [`0x95cacf...b14635`](./contracts/bsc-56/0x95cacf296483efafbc924c8c30f72f9f51b14635/) | ⚠️ Unaudited |
| ListaStakeManager | unknown | bsc | n/a | [`0x5bf5c3...9f301c`](./contracts/bsc-56/0x5bf5c3b5f5c29dbc647d2557cc22b00ed29f301c/) | ⚠️ Unaudited |
| lisUSDPriceFeed | unknown | bsc | n/a | [`0x989af6...d7c2c0`](./contracts/bsc-56/0x989af6aa3db449e49f1b3210b8750446bed7c2c0/) | ⚠️ Unaudited |
| LpProxy | unknown | bsc | n/a | [`0x12b09b...1424c0`](./contracts/bsc-56/0x12b09bb62fb7bbcf732e6c2e166012dd7c1424c0/) | ⚠️ Unaudited |
| LpUsd | unknown | bsc | n/a | [`0x0a2381...8802de`](./contracts/bsc-56/0x0a23817c68a234425f7ebec215d4e8ea528802de/) | ⚠️ Unaudited |
| MarketFactory | unknown | bsc | n/a | [`0x12bb76...a128e3`](./contracts/bsc-56/0x12bb76cd6a2a1ccf2ac2cff64072fed6d8a128e3/) | ⚠️ Unaudited |
| mBTCProvider | unknown | bsc | n/a | [`0xad745b...731521`](./contracts/bsc-56/0xad745bcb555746317e3c2bc6aa583f43ad731521/) | ⚠️ Unaudited |
| MerkleVerifier | unknown | bsc | n/a | [`0x084bd8...9a33f7`](./contracts/bsc-56/0x084bd8392eaebfca8b6c020c7c8ddf02909a33f7/) | ⚠️ Unaudited |
| MockResilientOracle | unknown | bsc | n/a | [`0x4f1497...ae6a43`](./contracts/bsc-56/0x4f14975179419c0982a5cabed783ed5a81ae6a43/) | ⚠️ Unaudited |
| MoolahVault | unknown | bsc | n/a | [`0x0e5247...31c610`](./contracts/bsc-56/0x0e52472cc585f8e28322ca4536ebd7094431c610/) | ⚠️ Unaudited |
| MoolahVaultFactory | unknown | bsc | n/a | [`0x0d1fac...b9fb52`](./contracts/bsc-56/0x0d1fac46e766aa64cf4a23c07fbb966937b9fb52/) | ⚠️ Unaudited |
| MultiDepositorVault | unknown | base | n/a | [`0x000000...6640d5`](./contracts/base-8453/0x000000000001cdb57e58fa75fe420a0f4d6640d5/) | ⚠️ Unaudited |
| MultiDepositorVaultFactory | unknown | ethereum | n/a | [`0x29722c...b90b4f`](./contracts/ethereum-1/0x29722cc9a1cacff4a15914f9bc274b46f3b90b4f/) | ⚠️ Unaudited |
| mXRPPriceFeed | unknown | bsc | n/a | [`0x0999ca...3f84bf`](./contracts/bsc-56/0x0999ca2e63fbb2923bc4c3853b37e371b33f84bf/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | bsc | n/a | [`0x0ba7c9...b4ab3f`](./contracts/bsc-56/0x0ba7c9581c00b5629cbeb6d1074475a664b4ab3f/) | ⚠️ Unaudited |
| OracleAdaptor | unknown | bsc | n/a | [`0x00066f...e06fd4`](./contracts/bsc-56/0x00066f933bf16014143c284be85847a3a2e06fd4/) | ⚠️ Unaudited |
| PancakeSwapV3LpStakingHub | unknown | bsc | n/a | [`0x3da4f7...4b5606`](./contracts/bsc-56/0x3da4f7c6b5dc3c7b35fba746001542a4844b5606/) | ⚠️ Unaudited |
| PancakeSwapV3LpStakingVault | unknown | bsc | n/a | [`0x0998cd...71941d`](./contracts/bsc-56/0x0998cd70b60ee5cf5a41a69d7d121d065d71941d/) | ⚠️ Unaudited |
| PausableMock | unknown | bsc | n/a | [`0x7e8ef7...4a5ee0`](./contracts/bsc-56/0x7e8ef7053322c6e2fb5ff0304a620f8ce84a5ee0/) | ⚠️ Unaudited |
| PriceAndFeeCalculator | unknown | base | n/a | [`0x69dd4d...44372e`](./contracts/base-8453/0x69dd4d44eed6bbc33b8a0bdfe17897ab9044372e/) | ⚠️ Unaudited |
| ProductOracle | unknown | base | n/a | [`0x1c4322...2916b3`](./contracts/base-8453/0x1c4322915aff1b163baba5ecadeacfb22b2916b3/) | ⚠️ Unaudited |
| Provisioner | unknown | base | n/a | [`0x18cf8d...dbda07`](./contracts/base-8453/0x18cf8d963e1a727f9bbf3aeffa0bd04fb4dbda07/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x97458a...a9312f`](./contracts/bsc-56/0x97458ae48fc8362077c30930bc6c004b46a9312f/) | ⚠️ Unaudited |
| PublicLiquidator | unknown | bsc | n/a | [`0x50c542...e42572`](./contracts/bsc-56/0x50c542774620da722c90cc2ce709c4c1d2e42572/) | ⚠️ Unaudited |
| PufETHPriceFeed | unknown | bsc | n/a | [`0x303cb4...efc61b`](./contracts/bsc-56/0x303cb4c83f98d806d5a5c1190908540999efc61b/) | ⚠️ Unaudited |
| PumpBTCProvider | unknown | bsc | n/a | [`0xe701f1...d10b1e`](./contracts/bsc-56/0xe701f1a3064c3c06f2a6092c921e2a9946d10b1e/) | ⚠️ Unaudited |
| RateCalculator | unknown | bsc | n/a | [`0x3a8431...05c5de`](./contracts/bsc-56/0x3a84315d6e14291dace3fbc62d24f52c3505c5de/) | ⚠️ Unaudited |
| RewardHarvester | unknown | bsc | n/a | [`0xa0050e...9e5742`](./contracts/bsc-56/0xa0050e7d0ba04a7e80aa47d900241f48559e5742/) | ⚠️ Unaudited |
| RWAEarnPool | unknown | bsc | n/a | [`0x505829...357a33`](./contracts/bsc-56/0x505829773ebda34d6f627bb493cf993a1e357a33/) | ⚠️ Unaudited |
| SafeGuard | unknown | bsc | n/a | [`0x59828a...770ef6`](./contracts/bsc-56/0x59828a98b4ba4e69a12718bbdd831f10a2770ef6/) | ⚠️ Unaudited |
| SafeProxy | unknown | optimism | n/a | [`0x9e33fa...410585`](./contracts/optimism-10/0x9e33faae38ff641094fa68c65c2ce600b3410585/) | ⚠️ Unaudited |
| SafeProxy | unknown | arbitrum | n/a | [`0x9e33fa...410585`](./contracts/arbitrum-42161/0x9e33faae38ff641094fa68c65c2ce600b3410585/) | ⚠️ Unaudited |
| SingleDepositorVaultFactory | unknown | base | n/a | [`0x088a54...1843a2`](./contracts/base-8453/0x088a54b20239077572a27672bb7e19343f1843a2/) | ⚠️ Unaudited |
| SlisBnbOracle | unknown | bsc | n/a | [`0x114742...80819b`](./contracts/bsc-56/0x11474297387d096ae101a272ff6ad79b7280819b/) | ⚠️ Unaudited |
| SlisBnbPriceFeed | unknown | bsc | n/a | [`0x125bce...1dc1a3`](./contracts/bsc-56/0x125bcea7ae8ff45083e513faf4913a14bc1dc1a3/) | ⚠️ Unaudited |
| SlisBNBProvider | unknown | bsc | n/a | [`0x0aefec...820c70`](./contracts/bsc-56/0x0aefec58e6339c663e80306e38ffebbae0820c70/) | ⚠️ Unaudited |
| slisBNBx | unknown | bsc | n/a | [`0x44f987...64c5aa`](./contracts/bsc-56/0x44f987fe1fd3597abcf95b8790351d00ff64c5aa/) | ⚠️ Unaudited |
| SLisLibrary | unknown | bsc | n/a | [`0xb03518...d36da8`](./contracts/bsc-56/0xb03518022f7845e901f35ea39c64b0904cd36da8/) | ⚠️ Unaudited |
| StableAsUsdfPriceFeed | unknown | bsc | n/a | [`0xd5342f...a60042`](./contracts/bsc-56/0xd5342ff1ae0621be72c11ecb620a5cec0aa60042/) | ⚠️ Unaudited |
| StableSwapFactory | unknown | bsc | n/a | [`0x63dc1c...c6378d`](./contracts/bsc-56/0x63dc1c139a62dea7bcc7736f9465c283dac6378d/) | ⚠️ Unaudited |
| StableSwapLP | unknown | bsc | n/a | [`0x7c43dc...87a84c`](./contracts/bsc-56/0x7c43dca54fdd9b43c1f627edfb9e24d5b387a84c/) | ⚠️ Unaudited |
| StableSwapPoolInfo | unknown | bsc | n/a | [`0x395720...67fd70`](./contracts/bsc-56/0x3957208ba04b83796e1d9394baf2a6796467fd70/) | ⚠️ Unaudited |
| StableUsdtPriceFeed | unknown | bsc | n/a | [`0x6e6492...2e0b56`](./contracts/bsc-56/0x6e64923a9c1dc94e2b746c5dc58abebd2d2e0b56/) | ⚠️ Unaudited |
| StockOracle | unknown | bsc | n/a | [`0x1be38f...bce3d5`](./contracts/bsc-56/0x1be38f5d3b84cec3854f9fc4a9930594fabce3d5/) | ⚠️ Unaudited |
| StoneOracle | unknown | bsc | n/a | [`0x76d830...a4a8bf`](./contracts/bsc-56/0x76d830581d0e73014a944d919411c1f410a4a8bf/) | ⚠️ Unaudited |
| StonePriceFeed | unknown | bsc | n/a | [`0xd6860a...55c4d8`](./contracts/bsc-56/0xd6860a2e20d7b158aac422a4030648bf2655c4d8/) | ⚠️ Unaudited |
| sUSD1PriceFeed | unknown | bsc | n/a | [`0x54e881...b380b3`](./contracts/bsc-56/0x54e8810cdde88f531485d2f04321a28e7db380b3/) | ⚠️ Unaudited |
| sUSDePriceFeed | unknown | bsc | n/a | [`0x1b7ccb...fa6d9b`](./contracts/bsc-56/0x1b7ccb0e6061d3a3bada5d97eedd252e39fa6d9b/) | ⚠️ Unaudited |
| sUSDXLiquidationPriceFeed | unknown | bsc | n/a | [`0x152624...7c81c0`](./contracts/bsc-56/0x1526249ef1501bb4207e1431c285ffc2e17c81c0/) | ⚠️ Unaudited |
| sUSDXPriceFeed | unknown | bsc | n/a | [`0x7da003...1265e0`](./contracts/bsc-56/0x7da003f123c48f42a2149bfff107ac5d531265e0/) | ⚠️ Unaudited |
| SwapRouter | unknown | bsc | n/a | [`0x660c94...750c6e`](./contracts/bsc-56/0x660c94cef2914b1235cc1e38b1699b4d48750c6e/) | ⚠️ Unaudited |
| SyrupUSDTPriceFeed | unknown | bsc | n/a | [`0x573ca8...c5c308`](./contracts/bsc-56/0x573ca8c797f68fb8cc5aa96df5a19e3bb0c5c308/) | ⚠️ Unaudited |
| TimeLock | unknown | bsc | n/a | [`0x2162c6...b05da8`](./contracts/bsc-56/0x2162c6f603e178ce219798da20b2451a66b05da8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x031a6f...7c1461`](./contracts/bsc-56/0x031a6f543449d5fbf9c3e77f907043f7be7c1461/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0383d8...af7a0f`](./contracts/bsc-56/0x0383d85f4169897a02aed14bda2ae5db38af7a0f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x53c702...9a2fb1`](./contracts/bsc-56/0x53c7024411e5d12c0b17d412943c3dd5939a2fb1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x63393e...a96b2b`](./contracts/bsc-56/0x63393e8a6fa3dab6874729ae680b370c0ca96b2b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x68b9a9...f63807`](./contracts/bsc-56/0x68b9a9ea70f4391c016746be240037e5d4f63807/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x8b7d33...40f990`](./contracts/bsc-56/0x8b7d334d243b74d63c4b963893267a0f5240f990/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xe03034...64f510`](./contracts/bsc-56/0xe0303417325022bcd17a7d3351ee1646f864f510/) | ⚠️ Unaudited |
| uniBTCPriceFeed | unknown | bsc | n/a | [`0x150d8f...bbb936`](./contracts/bsc-56/0x150d8f804ebfd30202f59bc374301512e6bbb936/) | ⚠️ Unaudited |
| Usd1Oracle | unknown | bsc | n/a | [`0x40d695...1b39fa`](./contracts/bsc-56/0x40d695986c4dd086c4e3a94392ab6c12781b39fa/) | ⚠️ Unaudited |
| UsdfOracle | unknown | bsc | n/a | [`0x070975...8c4aa2`](./contracts/bsc-56/0x0709755a26b78ce8e1f4cab598ac7477858c4aa2/) | ⚠️ Unaudited |
| USDXLiquidationPriceFeed | unknown | bsc | n/a | [`0x7a4c41...626d2d`](./contracts/bsc-56/0x7a4c41f4479f42dc5ebe4aca94b12501e6626d2d/) | ⚠️ Unaudited |
| VaultAllocator | unknown | bsc | n/a | [`0x8eba9b...8fc7c2`](./contracts/bsc-56/0x8eba9befd7e0ed7e41f0b644be2b2e3be48fc7c2/) | ⚠️ Unaudited |
| VaultDistributor | unknown | bsc | n/a | [`0x73b1b1...573f6c`](./contracts/bsc-56/0x73b1b172e2278a09d2b3bc116659d9d887573f6c/) | ⚠️ Unaudited |
| VaultV2 | unknown | ethereum | n/a | [`0xe08145...97cb94`](./contracts/ethereum-1/0xe08145eb0132a219aad1b78a85bad8666a97cb94/) | ⚠️ Unaudited |
| VeListaInterestRebater | unknown | bsc | n/a | [`0x40c34a...0818fe`](./contracts/bsc-56/0x40c34acecfc302a1dc3c3592ecea52e17a0818fe/) | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | bsc | n/a | [`0x321abb...19caee`](./contracts/bsc-56/0x321abb57a8355818211d460fc91ca9b79019caee/) | ⚠️ Unaudited |
| WBETHOracle | unknown | bsc | n/a | [`0x6f3da9...384584`](./contracts/bsc-56/0x6f3da9ee8965ef22228a103df4719a74b7384584/) | ⚠️ Unaudited |
| WBETHPriceFeed | unknown | bsc | n/a | [`0xeb3ac5...92f5a6`](./contracts/bsc-56/0xeb3ac57d6af35519db62bd150bef7388f892f5a6/) | ⚠️ Unaudited |
| wNLPUSDTPriceFeed | unknown | bsc | n/a | [`0xf86155...de4262`](./contracts/bsc-56/0xf86155a27b5cd958732a29829d80017727de4262/) | ⚠️ Unaudited |
| wsrUSDPriceFeed | unknown | bsc | n/a | [`0xfee2c5...76a46f`](./contracts/bsc-56/0xfee2c5ad734e64c8a63105187a5b465c3176a46f/) | ⚠️ Unaudited |
| WstETHOracle | unknown | bsc | n/a | [`0x07399c...ee04b0`](./contracts/bsc-56/0x07399c1ca8e3e2aadd3858376cd7adaa16ee04b0/) | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | bsc | n/a | [`0x950620...d23fc5`](./contracts/bsc-56/0x950620918c66b080990b18635f1d7d4f70d23fc5/) | ⚠️ Unaudited |
| wstUSRNewPriceFeed | unknown | bsc | n/a | [`0xdc3360...324104`](./contracts/bsc-56/0xdc3360252a4f94c1e0d93816ff1335440e324104/) | ⚠️ Unaudited |
| wstUSRPriceFeed | unknown | bsc | n/a | [`0x5439ec...4722c8`](./contracts/bsc-56/0x5439ec87e111b1ac0ae676dbf561cd66164722c8/) | ⚠️ Unaudited |
| xSolvBTCOracle | unknown | bsc | n/a | [`0xd7e6cb...26527c`](./contracts/bsc-56/0xd7e6cb9dd8ee997d341e80cddb448beee526527c/) | ⚠️ Unaudited |
| xSolvBtcPriceFeed | unknown | bsc | n/a | [`0x267cbe...a0bc5e`](./contracts/bsc-56/0x267cbe0e9c37d7ab6c9f61ef4065a0ce8da0bc5e/) | ⚠️ Unaudited |
| yUSDFixedPriceFeed | unknown | bsc | n/a | [`0xaaff27...6d3365`](./contracts/bsc-56/0xaaff27ce7d8247d2d7725cdf5e590f72ca6d3365/) | ⚠️ Unaudited |
| yUSDPriceFeed | unknown | bsc | n/a | [`0x687c3e...e24a04`](./contracts/bsc-56/0x687c3ee02e0b6a26d025b1b5babd54c3a2e24a04/) | ⚠️ Unaudited |

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
| [Bailsec-ListaLending-Smart-Collateral-and-Liquidators-20251124.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-Smart-Collateral-and-Liquidators-20251124.pdf) | Bailsec | Audit | n/a | unknown | Inherited from Lista DAO — forked code, scoped to Liquidator | inherited | 1 | n/a |
| [WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf) | WarRoom | Audit | 2026-06 | fresh | Inherited from Lista DAO — forked code, scoped to Moolah | inherited | 1 | n/a |
| [blocksec_velista_v2.0-signed.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_velista_v2.0-signed.pdf) | BlockSec | Audit | n/a | unknown | Inherited from Lista DAO — forked code, scoped to VeLista | inherited | 1 | n/a |
| [Bailsec_SlisbnbProvider_Final_Report_241127.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Bailsec_SlisbnbProvider_Final_Report_241127.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Lista DAO — forked code, scoped to HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, +7 more | inherited | 11 | n/a |
| [Bailsec_V3_LP_20Sept_2025.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Bailsec_V3_LP_20Sept_2025.pdf) | OpenZeppelin | Audit | n/a | unknown | Inherited from Lista DAO — forked code, scoped to HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, +7 more | inherited | 11 | n/a |
| [BlockSec_060824_AMO_DynamicDutyCalculator_v1.0-signed.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_060824_AMO_DynamicDutyCalculator_v1.0-signed.pdf) | BlockSec | Audit | n/a | unknown | Inherited from Lista DAO — forked code, scoped to HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, +7 more | inherited | 11 | n/a |
| [BlockSec_OFT_190624.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_OFT_190624.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Lista DAO — forked code, scoped to HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, +7 more | inherited | 11 | n/a |
| [BlockSec_V3_LP_04Sept_2025.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_V3_LP_04Sept_2025.pdf) | OpenZeppelin | Audit | 2025 | aging | Inherited from Lista DAO — forked code, scoped to HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, +7 more | inherited | 11 | n/a |
| [Access your report here!](https://cdn.prod.website-files.com/648bdc0d4b8ce322f27da0af/68e69619549468027afb3a1a_36cd33a1b52a2f1491318ffa56f72273_USDC-10-8-5MB.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Spearbit-June-2025.pdf](https://drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view?usp=sharing) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-09-22.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/spearbit/2023-09-22.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | 3 | high |
| [2024-05-15.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/openzeppelin/2024-05-15.pdf) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | 3 | high |
| [cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16](https://cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16) | Spearbit | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bailsec-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-CollateralYieldVault-20260618.pdf) | Bailsec | Audit | 2026-06 | fresh | Inherited from Lista DAO — forked code, scoped to HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, +7 more | inherited | 11 | n/a |
| [Bailsec-FixedTerm-20260628.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-FixedTerm-20260628.pdf) | Bailsec | Audit | 2026-06 | fresh | Inherited from Lista DAO — forked code, scoped to HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, +7 more | inherited | 11 | n/a |
| [Bailsec-YieldBuffer-AuditReport-20260611.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-YieldBuffer-AuditReport-20260611.pdf) | Bailsec | Audit | 2026-06 | fresh | Inherited from Lista DAO — forked code, scoped to HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, +7 more | inherited | 11 | n/a |
| [Bailsec-slisXAUE-Audit Report.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Bailsec-slisXAUE-Audit%20Report.pdf) | Bailsec | Audit | 2026-06 | fresh | Inherited from Lista DAO — forked code, scoped to HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, +7 more | inherited | 11 | n/a |
| [CertiK-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/CertiK-CollateralYieldVault-20260618.pdf) | CertiK | Audit | 2026-06 | fresh | Inherited from Lista DAO — forked code, scoped to HelioETHProvider, HelioProviderV2, LendingBroker, Liquidator, +7 more | inherited | 11 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 151 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=6, inherited_name_remap=113

Zero-match audit list:

- [20416] Access your report here!
- [20417] Spearbit-June-2025.pdf
- [20420] cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16

Fork inheritance lineage and inherited audits are included when available.
