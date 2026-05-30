# Agentic Audit Brief: Seamless Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 77.7% over 90 days

## Project Overview

- Project: Seamless Protocol (`seamless-protocol`)
- Website: [https://www.seamlessprotocol.com](https://www.seamlessprotocol.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-30T11:14:56.749Z
- Pipeline run: v2-pipeline-2026-05-30-255779-2e4e
- Chains: base, ethereum
- Contract surface: 99 unique implementations (321 raw deployments)
- DeFi Llama TVL: $46,492,107.00
- On-chain TVL (included contracts): $34,752.77
- TVL by chain: Base $34,752.77

## Project Description

Seamless Protocol is a decentralized lending and leverage platform operating on Ethereum and Base. It enables users to supply assets into lending pools, borrow against them, and access leveraged positions through specialized tokenized products. The protocol integrates with Morpho for lending markets and offers governance-controlled emission and reward mechanisms.

### Architecture

The Governance family controls protocol parameters and emissions that affect all other families. Leverage Tokens and the weETH/WETH product both rely on Morpho lending adapters and rebalancing infrastructure, while Seamless Vaults on Morpho share the same underlying lending market integration.

## Audit Coverage Summary

- Verified implementations audited: 10/88 (11.4%)
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 99
- Raw deployments: 321
- Audits discovered: 59
- Scoreable audits (matched contracts): 18
- ASD (verified + unaudited TVL): $34,752.77
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 4 aging, 0 stale, 54 unknown
- Tier 1 coverage: 9.1% (Sherlock, Spearbit)
- Note: This protocol is classified as [declining]. ASD of $34,752.77 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 10 | 11.4% | n/a |
| Spearbit | Tier 1 | 8 | 9.1% | 2025-10 |
| Sherlock | Tier 1 | 7 | 8.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LeverageManager | governance | base | 5 deployments: ethereum `0x5c37eb...b3e351`; ethereum `0x9d04f6...64220e`; base [`0x38ba21...5ec3a8`](./contracts/base-8453/0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8/); base `0xeb0221...bb2b7c`; base `0xfe9101...2e1856` | ✅ Audited |
| LeverageRouter | adapter | base | 3 deployments: ethereum `0xb0764d...6e6dba`; base [`0x00c669...a11a5c`](./contracts/base-8453/0x00c66934ebca0f2a845812bc368b230f6da11a5c/); base `0xdba92f...9a887c` | ✅ Audited |
| LeverageToken | token | base | 10 deployments: ethereum `0x603da7...ff0a82`; ethereum `0x604d37...0b97a3`; ethereum `0x642681...c0fc3d`; ethereum `0x98c4e4...3ed1bf`; ethereum `0xc73ce5...b3033f`; ethereum `0xfe9101...2e1856`; base [`0x057a2a...537673`](./contracts/base-8453/0x057a2a1cc13a9af430976af912a27a05de537673/); base `0x603da7...ff0a82`; base `0xa2fcee...1dbb8c`; base `0xe0b2e4...1abe57` | ✅ Audited |
| MorphoLendingAdapter | adapter | ethereum | 7 deployments: ethereum [`0x00c669...a11a5c`](./contracts/ethereum-1/0x00c66934ebca0f2a845812bc368b230f6da11a5c/); ethereum `0xb224f5...129817`; ethereum `0xcb1eff...3aee58`; ethereum `0xe33eaf...9bd809`; ethereum `0xe9a32a...298f1f`; base `0x585cc1...f65c51`; base `0x9558b3...ab253f` | ✅ Audited |
| MorphoLendingAdapterFactory | adapter | ethereum | 2 deployments: ethereum [`0xce05fb...7ded71`](./contracts/ethereum-1/0xce05fbed9260810bdded179adfdaf737be7ded71/); base `0xdd3341...e68e61` | ✅ Audited |
| MulticallExecutor | periphery | ethereum | 2 deployments: ethereum [`0x16d02e...fd22e1`](./contracts/ethereum-1/0x16d02ebd89988cad1ce945807b963ab7a9fd22e1/); base `0x9d04f6...64220e` | ✅ Audited |
| PricingAdapter | adapter | ethereum | 3 deployments: ethereum [`0x44cceb...76c88f`](./contracts/ethereum-1/0x44ccebea0dac17105e91a59e182f65f8d176c88f/); base `0x94e337...b92c4c`; base `0xce05fb...7ded71` | ✅ Audited |
| RebalanceAdapter | adapter | ethereum | 8 deployments: ethereum [`0x0a4490...d6c127`](./contracts/ethereum-1/0x0a4490233fd6ea02873af11c744d286dc3d6c127/); ethereum `0x1d0c19...efaec8`; ethereum `0x42fc03...d081af`; ethereum `0x5e6b01...c30110`; ethereum `0x821ded...615bd7`; ethereum `0xf7356e...d6a69f`; base `0xa530e6...46dd32`; base `0xd923b2...c24912` | ✅ Audited |
| SwapAdapter | adapter | base | [`0xfdf71e...e38942`](./contracts/base-8453/0xfdf71e2c2b34cd1f8bb852e7c55e8b926fe38942/) | ✅ Audited |
| VeloraAdapter | adapter | base | 2 deployments: ethereum `0xc4e581...7db6ba`; base [`0x5c37eb...b3e351`](./contracts/base-8453/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/) | ✅ Audited |

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WrappedERC20PermissionedDeposit | token | base | 4 deployments: base [`0x3e8707...da2c5f`](./contracts/base-8453/0x3e8707557d4ad25d6042f590bcf8a06071da2c5f/); base `0x85082b...d062be`; base `0x9660af...645755`; base `0xc9ae3b...98c9e4` | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | 13 deployments: base [`0x0fbc23...1b255e`](./contracts/base-8453/0x0fbc23eefeae1ae5cc929b97bce88b11261b255e/); base `0x22850a...341571`; base `0x258730...ea8a4e`; base `0x2fb1be...ee78f4`; base `0x588313...e4eac5`; base `0x5ed616...c09c8a`; base `0x68dfad...80291e`; base `0x9c764c...7cdb67`; base `0xa70c94...8ca97b`; base `0xb94799...f993b7`; base `0xbff0e0...51b2d6`; base `0xc82a72...3cf8ea`; base `0xcefeb9...6fd328` | ⚠️ Unaudited |
| StakedToken | token | base | 3 deployments: base [`0x0f099f...ac7e46`](./contracts/base-8453/0x0f099f6c0714eb423d175a31140a25aad4ac7e46/); base `0x73f084...7172a4`; base `0xc45f94...8773de` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | base | [`0x982f3a...af1089`](./contracts/base-8453/0x982f3a0e3183896f9970b8a9ea6b69cd53af1089/) | ⚠️ Unaudited |
| ACLManager | governance | base | 2 deployments: base [`0x003c2a...e3d0b5`](./contracts/base-8453/0x003c2aa63fec8118297535350a66e7a53be3d0b5/); base `0x38f5c0...dfc184` | ⚠️ Unaudited |
| AerodromeAdapter | adapter | base | [`0x6cfc78...b1dcb2`](./contracts/base-8453/0x6cfc78c96f87e522ebfdf86995609414cfb1dcb2/) | ⚠️ Unaudited |
| AToken | token | base | [`0x27076a...27a8db`](./contracts/base-8453/0x27076a995387458da63b23d9afe3df851727a8db/) | ⚠️ Unaudited |
| BorrowLogic | core_logic | base | 2 deployments: base [`0xa40949...43d6fb`](./contracts/base-8453/0xa409495a6fb69b06b82f7a68766266357743d6fb/); base `0xac0b0d...f3f70a` | ⚠️ Unaudited |
| BridgeLogic | operational_periphery | base | 2 deployments: base [`0x1d9eca...d44551`](./contracts/base-8453/0x1d9eca99a4b4ab73fa1181f617107c66e1d44551/); base `0x76402a...c42f18` | ⚠️ Unaudited |
| CalldataLogic | unknown | base | [`0x2182b9...fe8d2e`](./contracts/base-8453/0x2182b918f29ee7d621128dde8dc07efaa5fe8d2e/) | ⚠️ Unaudited |
| CapsPlusRiskSteward | unknown | base | [`0x789aae...bad568`](./contracts/base-8453/0x789aaef4d2cb94e22cc1ad8e8714858029bad568/) | ⚠️ Unaudited |
| CLSynchronicityPriceAdapterPegToBase | operational_periphery | base | 2 deployments: base [`0x5c8552...bc76a4`](./contracts/base-8453/0x5c855237bcedf7265a9fb1e48d1bc14806bc76a4/); base `0xd81521...2caa76` | ⚠️ Unaudited |
| ConfiguratorLogic | governance | base | [`0x5d6fcd...f17895`](./contracts/base-8453/0x5d6fcde71293286ccd4418bbba444f2d67f17895/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | base | 12 deployments: base [`0x0d147d...ded911`](./contracts/base-8453/0x0d147db81e43e7944744117500f2386afbded911/); base `0x0ffc58...db9210`; base `0x34684b...921d4a`; base `0x35ba11...38c6a2`; base `0x4c1345...f1af5a`; base `0x57a803...7f536d`; base `0x876777...2618cf`; base `0x9610d3...32ae33`; base `0xa193ed...4cc226`; base `0xab74b1...fd2db4`; base `0xaf3bae...3acf2f`; base `0xced653...b963bd` | ⚠️ Unaudited |
| DelegationAwareAToken | token | base | [`0x34697a...f654a6`](./contracts/base-8453/0x34697a08b7a14f12a1d926d31bc8c2eab5f654a6/) | ⚠️ Unaudited |
| DeployLoopStrategyETHoverUSDCGuardianPayload | core_logic | base | [`0x391a36...bc0afa`](./contracts/base-8453/0x391a369b6904fef62dca2785cbfc0e6e20bc0afa/) | ⚠️ Unaudited |
| DeployLoopStrategyUSDCoverETHGuardianPayload | core_logic | base | [`0xe77232...89aca8`](./contracts/base-8453/0xe7723279a8a142d95a3fffc98f70f574ee89aca8/) | ⚠️ Unaudited |
| DeployUniversalAerodromeAdapterGuardianPayload | adapter | base | [`0x8e269a...b07eea`](./contracts/base-8453/0x8e269a45ad61a08c74e1ab3587821705a5b07eea/) | ⚠️ Unaudited |
| EmissionManager | operational_periphery | base | [`0x6e081f...141d14`](./contracts/base-8453/0x6e081f9ebb2b2f07c2f771074ebb32ddac141d14/) | ⚠️ Unaudited |
| EModeLogic | unknown | base | 2 deployments: base [`0x5d8df7...d49bad`](./contracts/base-8453/0x5d8df7515493a804da1d16c73d75bd9479d49bad/); base `0x683271...5ab529` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | 2 deployments: base [`0x07dfe9...6c4926`](./contracts/base-8453/0x07dfe9525a5d274d6f3e906e6a4efa7f066c4926/); base `0xa6d3fc...450f98` | ⚠️ Unaudited |
| ERC20BalanceSplitterTwoPayee | operational_periphery | base | 3 deployments: base [`0x4878a2...d5909b`](./contracts/base-8453/0x4878a29767c2452823100f98ba53506ed1d5909b/); base `0xf07059...8add30`; base `0xfbc092...d8b205` | ⚠️ Unaudited |
| ERC20TransferStrategy | core_logic | base | 2 deployments: base [`0x003d47...e89753`](./contracts/base-8453/0x003d47ddddb070822b35ae5cc4f0066cf9e89753/); base `0xd90eac...be55bb` | ⚠️ Unaudited |
| EscrowSeam | operational_periphery | base | 3 deployments: base [`0x2c1f4b...9a69c1`](./contracts/base-8453/0x2c1f4bbfb944df2ff7ce636fd3122fd0fe9a69c1/); base `0x78423b...09fbb1`; base `0x998e44...10d5e5` | ⚠️ Unaudited |
| EscrowSeamTransferStrategy | operational_periphery | base | [`0x2181be...dd89ac`](./contracts/base-8453/0x2181be388ced00754e7c1ee33dbcf78397dd89ac/) | ⚠️ Unaudited |
| EsSEAMAirdrop | operational_periphery | base | 2 deployments: base [`0xbedb9b...8fdde7`](./contracts/base-8453/0xbedb9b2b5c334635b64e3f6de436d082aa8fdde7/); base `0xf345e9...37de4d` | ⚠️ Unaudited |
| FeeKeeper | operational_periphery | base | 2 deployments: base [`0x003ee5...21f2f2`](./contracts/base-8453/0x003ee5e3b38cda6775d20a32080850106321f2f2/); base `0x21033e...b8d65b` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | base | 2 deployments: base [`0xcebbf1...877972`](./contracts/base-8453/0xcebbf1a8e6cdd813e7efce223a4820d7d2877972/); base `0xf9853a...0644ff` | ⚠️ Unaudited |
| Geyser | unknown | base | 5 deployments: base [`0x0324c7...6c1df7`](./contracts/base-8453/0x0324c763deb573b4cb7d7236d63937cc276c1df7/); base `0x5d1afc...ec65f1`; base `0x6c6515...10aeb8`; base `0x9f5af0...0fa915`; base `0xac42ef...c7b3ec` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | [`0xa1b5f2...955a22`](./contracts/base-8453/0xa1b5f2cc9b407177cd8a4acf1699fa0b99955a22/) | ⚠️ Unaudited |
| ILMRegistry | registry | base | [`0x36291d...f859b3`](./contracts/base-8453/0x36291d2d51a0122b9facbe3c3f989cc6b1f859b3/) | ⚠️ Unaudited |
| L2Encoder | unknown | base | [`0xcecef4...3cd7cf`](./contracts/base-8453/0xcecef475167f7bfd8995c0cbb577644b623cd7cf/) | ⚠️ Unaudited |
| L2Pool | core_logic | base | [`0x918e3d...174323`](./contracts/base-8453/0x918e3dfabd8c69a54d542cdeea4a3e0616174323/) | ⚠️ Unaudited |
| LeverageTokenDeploymentBatcher | token | ethereum | [`0x4466d5...0a0352`](./contracts/ethereum-1/0x4466d52b714ef32657db89ec61fab1b7e30a0352/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | base | 2 deployments: base [`0x44659e...cf2dfa`](./contracts/base-8453/0x44659e741a09c0d3c4756e04c559772596cf2dfa/); base `0x524adc...44b837` | ⚠️ Unaudited |
| LoanLogic | unknown | base | 4 deployments: base [`0x31da38...a378d6`](./contracts/base-8453/0x31da38f0eb1528212de20a3668b795e83ea378d6/); base `0x3e61ba...e4acd0`; base `0x7cbb6f...0ca955`; base `0x9bb43b...904c0e` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | 3 deployments: base [`0x27d8c7...c65c18`](./contracts/base-8453/0x27d8c7273fd3fcc6956a0b370ce5fd4a7fc65c18/); base `0x5a47c8...22f3c7`; base `0x616a4e...273738` | ⚠️ Unaudited |
| Pool | core_logic | base | [`0x16e485...bda6cf`](./contracts/base-8453/0x16e48501634dfbb52f556430d788c110e5bda6cf/) | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | base | [`0x0e02eb...39f3a0`](./contracts/base-8453/0x0e02eb705be325407707662c6f6d3466e939f3a0/) | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | base | [`0x90c505...53ef99`](./contracts/base-8453/0x90c5055530c0465abb077fa016a3699a3f53ef99/) | ⚠️ Unaudited |
| PoolConfigurator | core_logic | base | [`0xbfb739...b086cf`](./contracts/base-8453/0xbfb7391282a3576892bd1da328269ebac1b086cf/) | ⚠️ Unaudited |
| PoolLogic | core_logic | base | 2 deployments: base [`0xdd59cd...11dd6b`](./contracts/base-8453/0xdd59cd12c455a1c091331c55423c9e4e5111dd6b/); base `0xe51329...309805` | ⚠️ Unaudited |
| PriceOracleSentinel | operational_periphery | base | 3 deployments: base [`0x23dc16...a0ee45`](./contracts/base-8453/0x23dc1656251f27327783f750fab5797a03a0ee45/); base `0x46f157...ede8bf`; base `0xd228ed...b65571` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | core_logic | base | 3 deployments: base [`0x073d08...5a2634`](./contracts/base-8453/0x073d0850be622deaab113e582a599c15895a2634/); base `0xdbe56b...cdc4af`; base `0xf54f6e...955b05` | ⚠️ Unaudited |
| RebalanceLogic | unknown | base | 4 deployments: base [`0x07a4b1...f8a711`](./contracts/base-8453/0x07a4b168f9dae741b3b88bf6424434655af8a711/); base `0x3f7dd8...ad0223`; base `0xab965e...51ea3e`; base `0xc2cecb...4dfaae` | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | base | [`0xb49db8...a2c91f`](./contracts/base-8453/0xb49db8f1b197c91fa01a870d827187e400a2c91f/) | ⚠️ Unaudited |
| RewardsController | governance | base | 6 deployments: base [`0x2c6dc2...2adb93`](./contracts/base-8453/0x2c6dc2ce7747e726a590082adb3d7d08f52adb93/); base `0x32688c...ae794d`; base `0x36321e...d1bd89`; base `0x3dc440...35409d`; base `0x76e720...ca9049`; base `0x8243de...fc2850` | ⚠️ Unaudited |
| RouterV1 | adapter | base | [`0x59a11c...36bdc8`](./contracts/base-8453/0x59a11c2f543790b8ce1a2dc46c4ad08a4536bdc8/) | ⚠️ Unaudited |
| Seam | adapter | base | 7 deployments: base [`0x1c7a46...88cd85`](./contracts/base-8453/0x1c7a460413dd4e964f96d8dfc56e7223ce88cd85/); base `0x213fb4...513d24`; base `0x57b4b7...aefd3f`; base `0x5d0ee4...da76ec`; base `0xa900d0...54b8c4`; base `0xbf20ba...3895c1`; base `0xff7c1f...5e7847` | ⚠️ Unaudited |
| SeamAirdrop | operational_periphery | base | [`0xb7a653...5c702b`](./contracts/base-8453/0xb7a6531665c5e2b2d5b9aa04636847c8f45c702b/) | ⚠️ Unaudited |
| SeamEmissionManager | operational_periphery | base | 4 deployments: base [`0x03eeed...dd9cfa`](./contracts/base-8453/0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa/); base `0x1fdfc3...e38f9c`; base `0x57460d...1b3955`; base `0x785c97...b90778` | ⚠️ Unaudited |
| SeamGovernor | governance | base | 2 deployments: base [`0x5acb96...996317`](./contracts/base-8453/0x5acb96aac90bf545500251d1eed10bf47e996317/); base `0xc8a0e0...607bfc` | ⚠️ Unaudited |
| SeamGovernorV2 | governance | base | 3 deployments: base [`0x04faa2...e761b6`](./contracts/base-8453/0x04faa2826dbb38a7a4e9a5e3db26b9e389e761b6/); base `0x8768c7...0db294`; base `0xc3a36d...a9baef` | ⚠️ Unaudited |
| SeamL1 | unknown | ethereum | 2 deployments: ethereum [`0x4fdf85...417708`](./contracts/ethereum-1/0x4fdf852d7ce01b1594d38808be5cca9812417708/); ethereum `0x6b66cc...e726ba` | ⚠️ Unaudited |
| SeamTimelockController | governance | base | 4 deployments: base [`0x13f5b4...b35e6f`](./contracts/base-8453/0x13f5b49217f330167d6350530f6185a75ab35e6f/); base `0x639d2d...925fee`; base `0xa96448...b16718`; base `0xbe170d...ff790d` | ⚠️ Unaudited |
| SeamTransferStrategy | core_logic | base | [`0x2b1bde...fd154c`](./contracts/base-8453/0x2b1bdefce33f34128759f71076ebd62637fd154c/) | ⚠️ Unaudited |
| SeamVestingWallet | operational_periphery | base | 69 deployments: base [`0x0f471d...107f54`](./contracts/base-8453/0x0f471d88f31ab0be2ff1d0b1ff5f30a2e3107f54/); base `0x0fedae...13dbc2`; base `0x204fe7...b5406a`; base `0x216cc6...80d5b0`; base `0x260fc8...ea8147`; base `0x290067...1f0d72`; base `0x316c05...fe9d6a`; base `0x33e372...01c261`; base `0x348c2e...164408`; base `0x35aa3c...2efffe`; base `0x37e3f6...92d33c`; base `0x393267...bad29f`; base `0x3b5e0a...42a691`; base `0x430d6f...ebacb7`; base `0x435846...f18514`; base `0x4b5bb8...2adedb`; base `0x4e7fad...6332ea`; base `0x511f23...1ec7ac`; base `0x51ddfe...a14e04`; base `0x597ce0...3952b6`; base `0x5a61a1...ec5713`; base `0x5f8a82...7b5408`; base `0x61380a...809726`; base `0x614703...c9396f`; base `0x66345a...c8a5dc`; base `0x67e0ea...961ab0`; base `0x6ae5d8...2a4289`; base `0x6f4146...e11b0a`; base `0x734614...735254`; base `0x77d004...16451a`; base `0x78718b...0a6993`; base `0x7acd19...485903`; base `0x7b1293...5d973a`; base `0x7b2159...d10e03`; base `0x8023d7...bd908b`; base `0x80fad4...4e4f52`; base `0x81b50b...6dda5b`; base `0x91a2fb...846235`; base `0x91f7d6...35a9c1`; base `0x932d77...29d19c`; base `0x93b1d6...d838fb`; base `0x93f499...773d49`; base `0x96bbed...4f49e9`; base `0x96de17...5661bb`; base `0xa9d2a0...947168`; base `0xac3121...38ce0f`; base `0xb2118b...a07e8b`; base `0xb44e36...0a1a80`; base `0xb4f203...d6859e`; base `0xb5dd3b...e03808`; base `0xb7c6d0...7a48b5`; base `0xb8835b...660492`; base `0xbac77f...e08b8a`; base `0xbfbc3b...3f430c`; base `0xc0e23f...635285`; base `0xc4ae2b...122151`; base `0xc5a269...5c8103`; base `0xcbc784...391d6e`; base `0xd81335...85af2f`; base `0xdc37b7...dfa399`; base `0xdf90ed...4dff9f`; base `0xe15943...0a0427`; base `0xe423f4...59f972`; base `0xf1c220...01e14c`; base `0xf4c7d3...2d5c32`; base `0xf61fbc...bfd675`; base `0xf71f91...71ace1`; base `0xfbe83d...904f75`; base `0xfc233c...80f2eb` | ⚠️ Unaudited |
| SeamVestingWalletV2 | operational_periphery | base | 30 deployments: base [`0x017167...eafa7f`](./contracts/base-8453/0x017167a33aa3665e90ccc21fd35aef60deeafa7f/); base `0x04586b...d011b3`; base `0x059bcf...1f6072`; base `0x09b53e...b0bfe8`; base `0x09f5ef...bc3954`; base `0x10e2ff...266830`; base `0x175c05...5a7333`; base `0x195913...c98a85`; base `0x1a70f2...c83b02`; base `0x1bbd55...da2235`; base `0x1e7f54...523cc6`; base `0x3bda7d...af0dfb`; base `0x54cd1c...44d586`; base `0x5685c5...93ac80`; base `0x5e2693...be4a19`; base `0x643551...dff2ae`; base `0x6ab219...b66e17`; base `0x6e7b0d...0b0ff5`; base `0x7cd268...3fa730`; base `0x81ce02...5ddfa7`; base `0x82ccc4...a02637`; base `0x9130bb...c5cef3`; base `0x9272ad...d36a78`; base `0x95029e...3f5133`; base `0x9825fb...2a8542`; base `0x988202...7c9e79`; base `0x9ce33c...53dd7e`; base `0x9da10c...8191ba`; base `0xb4963f...5d558a`; base `0xe9acd2...e3a55b` | ⚠️ Unaudited |
| StableDebtToken | token | base | [`0xb4d5e1...1391bf`](./contracts/base-8453/0xb4d5e163738682a955404737f88fdcf15c1391bf/) | ⚠️ Unaudited |
| StataOracle | operational_periphery | base | [`0x5c24d7...653163`](./contracts/base-8453/0x5c24d71f079443384fd47cdad2372c9aed653163/) | ⚠️ Unaudited |
| StaticATokenFactory | registry | base | [`0x0a0c2e...715e21`](./contracts/base-8453/0x0a0c2e2b287ef159adece3e657e12e7d53715e21/) | ⚠️ Unaudited |
| StaticATokenLM | token | base | [`0xb11d23...4a352a`](./contracts/base-8453/0xb11d239a6007c4d8cc0fd6794e71b80bb14a352a/) | ⚠️ Unaudited |
| SupplyLogic | unknown | base | 2 deployments: base [`0xcc76e7...56f54b`](./contracts/base-8453/0xcc76e71283963a72d005c5b48f4ab2218d56f54b/); base `0xff017d...af4bb8` | ⚠️ Unaudited |
| Swapper | adapter | base | 5 deployments: base [`0x04550e...62c54e`](./contracts/base-8453/0x04550e50f4753352f233aba53f094fc3cd62c54e/); base `0x08561d...dc479d`; base `0x293982...55839e`; base `0xc9be03...9f2fc0`; base `0xe314ae...addabc` | ⚠️ Unaudited |
| Token | token | base | 5 deployments: base [`0x0e09f5...61fd5c`](./contracts/base-8453/0x0e09f59754b4f3695553e2f37f08cc987361fd5c/); base `0x4db264...1dd531`; base `0x560771...82c7c6`; base `0xc4d677...183b52`; base `0xe3b0f5...042b5c` | ⚠️ Unaudited |
| TransparentProxyFactory | registry | base | [`0x71d90c...cf1b5d`](./contracts/base-8453/0x71d90c266b9eb9a41fe8f875ddbddc3fadcf1b5d/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | base | [`0x3f5a90...f71ce8`](./contracts/base-8453/0x3f5a90ef7bc3ee64e1e95b850dbbc2469ff71ce8/) | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | base | [`0xb7397f...b9bf50`](./contracts/base-8453/0xb7397f841a449793c634c06cf12751d256b9bf50/) | ⚠️ Unaudited |
| UnbuttonToken | token | base | [`0xf9a5d2...4ba2aa`](./contracts/base-8453/0xf9a5d255220e14e69475c1180640eab3f14ba2aa/) | ⚠️ Unaudited |
| UnbuttonTokenFactory | registry | base | [`0x613379...3dc138`](./contracts/base-8453/0x613379008101df98d4ce5a1819e9f53fe33dc138/) | ⚠️ Unaudited |
| UniversalAerodromeAdapter | adapter | base | [`0x87f8d1...207468`](./contracts/base-8453/0x87f8d14a8796b22116d267cfe9a57e986f207468/) | ⚠️ Unaudited |
| UniversalVault | core_logic | base | [`0xe8bb3f...38af77`](./contracts/base-8453/0xe8bb3fc413114efbaeeecbb16a96cdde4938af77/) | ⚠️ Unaudited |
| V3RateStrategyFactory | registry | base | [`0xc19dd3...c1fed2`](./contracts/base-8453/0xc19dd38d22600202fbdb36584981b9a55ec1fed2/) | ⚠️ Unaudited |
| VariableDebtToken | token | base | [`0x3800da...475977`](./contracts/base-8453/0x3800da378e17a5b8d07d0144c321163591475977/) | ⚠️ Unaudited |
| VaultFactory | registry | base | [`0x40292d...7cd0b0`](./contracts/base-8453/0x40292d35b48ff625c648c2a7f0c9e42cd07cd0b0/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | base | [`0xdb0f02...ed5cf7`](./contracts/base-8453/0xdb0f02421f830398d7b59dae8d385e2cd5ed5cf7/) | ⚠️ Unaudited |
| WrappedTokenAdapter | adapter | base | 3 deployments: base [`0x1508f1...6d2a6d`](./contracts/base-8453/0x1508f1b71210593406f8b614dcc41cdf3e6d2a6d/); base `0x90f890...d5fc44`; base `0xc3e17c...b5f79e` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | base | [`0xaeeb38...aa1af3`](./contracts/base-8453/0xaeeb3898ede6a6e86864688383e211132baa1af3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x00f033...494a9d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0661df...e4950d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x426f8d...c53d34` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4311dc...189134` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x452a35...a663e3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5630a0...ad3ab8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x70224e...85426b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xac6d0e...e521a9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd24142...630d81` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd8a952...c9d923` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xecd2d0...606ea6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Cantina](https://cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | 22 | medium |
| [Sherlock](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2025.05.19%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 36 | high |
| [Cantina - 1 Oct 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%201%20Oct%202025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 11 | high |
| [Cantina - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%208%20May%202025.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 22 | medium |
| [Sherlock - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Sherlock%20-%208%20May%202025.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | 36 | high |
| [README.md (also discovered via alternate URL)](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/README.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 43 | high|medium |
| [SUMMARY.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/SUMMARY.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 42 | high |
| [contract.BeaconProxyFactory.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/BeaconProxyFactory.sol/contract.BeaconProxyFactory.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | low |
| [abstract.FeeManager.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/FeeManager.sol/abstract.FeeManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.LeverageManager.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/LeverageManager.sol/contract.LeverageManager.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 5 | medium |
| [contract.LeverageToken.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/LeverageToken.sol/contract.LeverageToken.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 10 | low |
| [interface.IBeaconProxyFactory.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/IBeaconProxyFactory.sol/interface.IBeaconProxyFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.ICollateralRatiosRebalanceAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/ICollateralRatiosRebalanceAdapter.sol/interface.ICollateralRatiosRebalanceAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IDutchAuctionRebalanceAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/IDutchAuctionRebalanceAdapter.sol/interface.IDutchAuctionRebalanceAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IFeeManager.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/IFeeManager.sol/interface.IFeeManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.ILendingAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/ILendingAdapter.sol/interface.ILendingAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.ILeverageManager.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/ILeverageManager.sol/interface.ILeverageManager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.ILeverageToken.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/ILeverageToken.sol/interface.ILeverageToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IMorphoLendingAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/IMorphoLendingAdapter.sol/interface.IMorphoLendingAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IMorphoLendingAdapterFactory.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/IMorphoLendingAdapterFactory.sol/interface.IMorphoLendingAdapterFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IPreLiquidationLendingAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/IPreLiquidationLendingAdapter.sol/interface.IPreLiquidationLendingAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IPreLiquidationRebalanceAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/IPreLiquidationRebalanceAdapter.sol/interface.IPreLiquidationRebalanceAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IRebalanceAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/IRebalanceAdapter.sol/interface.IRebalanceAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IRebalanceAdapterBase.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/IRebalanceAdapterBase.sol/interface.IRebalanceAdapterBase.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IAerodromeRouter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IAerodromeRouter.sol/interface.IAerodromeRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IAerodromeSlipstreamRouter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IAerodromeSlipstreamRouter.sol/interface.IAerodromeSlipstreamRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IAggregatorV2V3Interface.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IAggregatorV2V3Interface.sol/interface.IAggregatorV2V3Interface.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IAugustusRegistry.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IAugustusRegistry.sol/interface.IAugustusRegistry.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IEtherFiL2ExchangeRateProvider.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IEtherFiL2ExchangeRateProvider.sol/interface.IEtherFiL2ExchangeRateProvider.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IEtherFiL2ModeSyncPool.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IEtherFiL2ModeSyncPool.sol/interface.IEtherFiL2ModeSyncPool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.ILeverageRouter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/ILeverageRouter.sol/interface.ILeverageRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IMulticallExecutor.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IMulticallExecutor.sol/interface.IMulticallExecutor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IPricingAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IPricingAdapter.sol/interface.IPricingAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IUniswapSwapRouter02.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IUniswapSwapRouter02.sol/interface.IUniswapSwapRouter02.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IUniswapV2Router02.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IUniswapV2Router02.sol/interface.IUniswapV2Router02.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IVeloraAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IVeloraAdapter.sol/interface.IVeloraAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interface.IWETH9.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/interfaces/periphery/IWETH9.sol/interface.IWETH9.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.MorphoLendingAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/lending/MorphoLendingAdapter.sol/contract.MorphoLendingAdapter.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 7 | low |
| [contract.MorphoLendingAdapterFactory.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/lending/MorphoLendingAdapterFactory.sol/contract.MorphoLendingAdapterFactory.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 9 | low |
| [library.BytesLib.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/libraries/BytesLib.sol/library.BytesLib.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.LeverageRouter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/periphery/LeverageRouter.sol/contract.LeverageRouter.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | low |
| [contract.MulticallExecutor.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/periphery/MulticallExecutor.sol/contract.MulticallExecutor.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | low |
| [contract.PricingAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/periphery/PricingAdapter.sol/contract.PricingAdapter.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | medium |
| [contract.VeloraAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/periphery/VeloraAdapter.sol/contract.VeloraAdapter.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | low |
| [abstract.CollateralRatiosRebalanceAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/rebalance/CollateralRatiosRebalanceAdapter.sol/abstract.CollateralRatiosRebalanceAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [abstract.DutchAuctionRebalanceAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/rebalance/DutchAuctionRebalanceAdapter.sol/abstract.DutchAuctionRebalanceAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [abstract.PreLiquidationRebalanceAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/rebalance/PreLiquidationRebalanceAdapter.sol/abstract.PreLiquidationRebalanceAdapter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contract.RebalanceAdapter.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/rebalance/RebalanceAdapter.sol/contract.RebalanceAdapter.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 13 | low |
| [enum.ActionType.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/types/DataTypes.sol/enum.ActionType.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [enum.ExternalAction.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/types/DataTypes.sol/enum.ExternalAction.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 10 | low |
| [struct.ActionData.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/types/DataTypes.sol/struct.ActionData.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [struct.Auction.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/types/DataTypes.sol/struct.Auction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [struct.BaseLeverageTokenConfig.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/types/DataTypes.sol/struct.BaseLeverageTokenConfig.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [struct.LeverageTokenConfig.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/types/DataTypes.sol/struct.LeverageTokenConfig.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [struct.LeverageTokenState.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/types/DataTypes.sol/struct.LeverageTokenState.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [struct.RebalanceAction.md](https://github.com/seamless-protocol/leverage-tokens/blob/main/docs/src/src/types/DataTypes.sol/struct.RebalanceAction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x3e8707...da2c5f`](./contracts/base-8453/0x3e8707557d4ad25d6042f590bcf8a06071da2c5f/) | WrappedERC20PermissionedDeposit | token | $14,727.45 | Verified native implementation with $14,727.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fbc23...1b255e`](./contracts/base-8453/0x0fbc23eefeae1ae5cc929b97bce88b11261b255e/) | LoopStrategy | core_logic | $14,706.05 | Verified native implementation with $14,706.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0f099f...ac7e46`](./contracts/base-8453/0x0f099f6c0714eb423d175a31140a25aad4ac7e46/) | StakedToken | token | $5,319.26 | Verified native implementation with $5,319.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x982f3a...af1089`](./contracts/base-8453/0x982f3a0e3183896f9970b8a9ea6b69cd53af1089/) | AaveEcosystemReserveV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x27076a...27a8db`](./contracts/base-8453/0x27076a995387458da63b23d9afe3df851727a8db/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa40949...43d6fb`](./contracts/base-8453/0xa409495a6fb69b06b82f7a68766266357743d6fb/) | BorrowLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1d9eca...d44551`](./contracts/base-8453/0x1d9eca99a4b4ab73fa1181f617107c66e1d44551/) | BridgeLogic | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2182b9...fe8d2e`](./contracts/base-8453/0x2182b918f29ee7d621128dde8dc07efaa5fe8d2e/) | CalldataLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x789aae...bad568`](./contracts/base-8453/0x789aaef4d2cb94e22cc1ad8e8714858029bad568/) | CapsPlusRiskSteward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5d6fcd...f17895`](./contracts/base-8453/0x5d6fcde71293286ccd4418bbba444f2d67f17895/) | ConfiguratorLogic | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d147d...ded911`](./contracts/base-8453/0x0d147db81e43e7944744117500f2386afbded911/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x34697a...f654a6`](./contracts/base-8453/0x34697a08b7a14f12a1d926d31bc8c2eab5f654a6/) | DelegationAwareAToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x391a36...bc0afa`](./contracts/base-8453/0x391a369b6904fef62dca2785cbfc0e6e20bc0afa/) | DeployLoopStrategyETHoverUSDCGuardianPayload | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe77232...89aca8`](./contracts/base-8453/0xe7723279a8a142d95a3fffc98f70f574ee89aca8/) | DeployLoopStrategyUSDCoverETHGuardianPayload | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e269a...b07eea`](./contracts/base-8453/0x8e269a45ad61a08c74e1ab3587821705a5b07eea/) | DeployUniversalAerodromeAdapterGuardianPayload | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6e081f...141d14`](./contracts/base-8453/0x6e081f9ebb2b2f07c2f771074ebb32ddac141d14/) | EmissionManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5d8df7...d49bad`](./contracts/base-8453/0x5d8df7515493a804da1d16c73d75bd9479d49bad/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4878a2...d5909b`](./contracts/base-8453/0x4878a29767c2452823100f98ba53506ed1d5909b/) | ERC20BalanceSplitterTwoPayee | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x003d47...e89753`](./contracts/base-8453/0x003d47ddddb070822b35ae5cc4f0066cf9e89753/) | ERC20TransferStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2c1f4b...9a69c1`](./contracts/base-8453/0x2c1f4bbfb944df2ff7ce636fd3122fd0fe9a69c1/) | EscrowSeam | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2181be...dd89ac`](./contracts/base-8453/0x2181be388ced00754e7c1ee33dbcf78397dd89ac/) | EscrowSeamTransferStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbedb9b...8fdde7`](./contracts/base-8453/0xbedb9b2b5c334635b64e3f6de436d082aa8fdde7/) | EsSEAMAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcebbf1...877972`](./contracts/base-8453/0xcebbf1a8e6cdd813e7efce223a4820d7d2877972/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x36291d...f859b3`](./contracts/base-8453/0x36291d2d51a0122b9facbe3c3f989cc6b1f859b3/) | ILMRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcecef4...3cd7cf`](./contracts/base-8453/0xcecef475167f7bfd8995c0cbb577644b623cd7cf/) | L2Encoder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x918e3d...174323`](./contracts/base-8453/0x918e3dfabd8c69a54d542cdeea4a3e0616174323/) | L2Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4466d5...0a0352`](./contracts/ethereum-1/0x4466d52b714ef32657db89ec61fab1b7e30a0352/) | LeverageTokenDeploymentBatcher | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x44659e...cf2dfa`](./contracts/base-8453/0x44659e741a09c0d3c4756e04c559772596cf2dfa/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31da38...a378d6`](./contracts/base-8453/0x31da38f0eb1528212de20a3668b795e83ea378d6/) | LoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16e485...bda6cf`](./contracts/base-8453/0x16e48501634dfbb52f556430d788c110e5bda6cf/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x90c505...53ef99`](./contracts/base-8453/0x90c5055530c0465abb077fa016a3699a3f53ef99/) | PoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbfb739...b086cf`](./contracts/base-8453/0xbfb7391282a3576892bd1da328269ebac1b086cf/) | PoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdd59cd...11dd6b`](./contracts/base-8453/0xdd59cd12c455a1c091331c55423c9e4e5111dd6b/) | PoolLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x23dc16...a0ee45`](./contracts/base-8453/0x23dc1656251f27327783f750fab5797a03a0ee45/) | PriceOracleSentinel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x07a4b1...f8a711`](./contracts/base-8453/0x07a4b168f9dae741b3b88bf6424434655af8a711/) | RebalanceLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb49db8...a2c91f`](./contracts/base-8453/0xb49db8f1b197c91fa01a870d827187e400a2c91f/) | ReservesSetupHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x59a11c...36bdc8`](./contracts/base-8453/0x59a11c2f543790b8ce1a2dc46c4ad08a4536bdc8/) | RouterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb7a653...5c702b`](./contracts/base-8453/0xb7a6531665c5e2b2d5b9aa04636847c8f45c702b/) | SeamAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03eeed...dd9cfa`](./contracts/base-8453/0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa/) | SeamEmissionManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5acb96...996317`](./contracts/base-8453/0x5acb96aac90bf545500251d1eed10bf47e996317/) | SeamGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fdf85...417708`](./contracts/ethereum-1/0x4fdf852d7ce01b1594d38808be5cca9812417708/) | SeamL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13f5b4...b35e6f`](./contracts/base-8453/0x13f5b49217f330167d6350530f6185a75ab35e6f/) | SeamTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b1bde...fd154c`](./contracts/base-8453/0x2b1bdefce33f34128759f71076ebd62637fd154c/) | SeamTransferStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x017167...eafa7f`](./contracts/base-8453/0x017167a33aa3665e90ccc21fd35aef60deeafa7f/) | SeamVestingWalletV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c24d7...653163`](./contracts/base-8453/0x5c24d71f079443384fd47cdad2372c9aed653163/) | StataOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a0c2e...715e21`](./contracts/base-8453/0x0a0c2e2b287ef159adece3e657e12e7d53715e21/) | StaticATokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb11d23...4a352a`](./contracts/base-8453/0xb11d239a6007c4d8cc0fd6794e71b80bb14a352a/) | StaticATokenLM | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcc76e7...56f54b`](./contracts/base-8453/0xcc76e71283963a72d005c5b48f4ab2218d56f54b/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04550e...62c54e`](./contracts/base-8453/0x04550e50f4753352f233aba53f094fc3cd62c54e/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e09f5...61fd5c`](./contracts/base-8453/0x0e09f59754b4f3695553e2f37f08cc987361fd5c/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3f5a90...f71ce8`](./contracts/base-8453/0x3f5a90ef7bc3ee64e1e95b850dbbc2469ff71ce8/) | UiIncentiveDataProviderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb7397f...b9bf50`](./contracts/base-8453/0xb7397f841a449793c634c06cf12751d256b9bf50/) | UiPoolDataProviderV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x613379...3dc138`](./contracts/base-8453/0x613379008101df98d4ce5a1819e9f53fe33dc138/) | UnbuttonTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x87f8d1...207468`](./contracts/base-8453/0x87f8d14a8796b22116d267cfe9a57e986f207468/) | UniversalAerodromeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe8bb3f...38af77`](./contracts/base-8453/0xe8bb3fc413114efbaeeecbb16a96cdde4938af77/) | UniversalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc19dd3...c1fed2`](./contracts/base-8453/0xc19dd38d22600202fbdb36584981b9a55ec1fed2/) | V3RateStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3800da...475977`](./contracts/base-8453/0x3800da378e17a5b8d07d0144c321163591475977/) | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x40292d...7cd0b0`](./contracts/base-8453/0x40292d35b48ff625c648c2a7f0c9e42cd07cd0b0/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdb0f02...ed5cf7`](./contracts/base-8453/0xdb0f02421f830398d7b59dae8d385e2cd5ed5cf7/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1508f1...6d2a6d`](./contracts/base-8453/0x1508f1b71210593406f8b614dcc41cdf3e6d2a6d/) | WrappedTokenAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaeeb38...aa1af3`](./contracts/base-8453/0xaeeb3898ede6a6e86864688383e211132baa1af3/) | WrappedTokenGatewayV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 75 |
| upstream | 7 |
| standard_library | 11 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 41
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, low=9, medium=5
- Match method counts: extraction_exact=307

Zero-match audit list:

- [10390] abstract.FeeManager.md
- [10394] interface.IBeaconProxyFactory.md
- [10395] interface.ICollateralRatiosRebalanceAdapter.md
- [10396] interface.IDutchAuctionRebalanceAdapter.md
- [10397] interface.IFeeManager.md
- [10398] interface.ILendingAdapter.md
- [10399] interface.ILeverageManager.md
- [10400] interface.ILeverageToken.md
- [10401] interface.IMorphoLendingAdapter.md
- [10402] interface.IMorphoLendingAdapterFactory.md
- [10403] interface.IPreLiquidationLendingAdapter.md
- [10404] interface.IPreLiquidationRebalanceAdapter.md
- [10405] interface.IRebalanceAdapter.md
- [10406] interface.IRebalanceAdapterBase.md
- [10408] interface.IAerodromeRouter.md
- [10409] interface.IAerodromeSlipstreamRouter.md
- [10410] interface.IAggregatorV2V3Interface.md
- [10411] interface.IAugustusRegistry.md
- [10412] interface.IEtherFiL2ExchangeRateProvider.md
- [10413] interface.IEtherFiL2ModeSyncPool.md
- [10414] interface.ILeverageRouter.md
- [10415] interface.IMulticallExecutor.md
- [10416] interface.IPricingAdapter.md
- [10417] interface.IUniswapSwapRouter02.md
- [10418] interface.IUniswapV2Router02.md
- [10419] interface.IVeloraAdapter.md
- [10420] interface.IWETH9.md
- [10425] library.BytesLib.md
- [10432] abstract.CollateralRatiosRebalanceAdapter.md
- [10433] abstract.DutchAuctionRebalanceAdapter.md
- [10434] abstract.PreLiquidationRebalanceAdapter.md
- [10437] enum.ActionType.md
- [10439] struct.ActionData.md
- [10440] struct.Auction.md
- [10441] struct.BaseLeverageTokenConfig.md
- [10442] struct.LeverageTokenConfig.md
- [10443] struct.LeverageTokenState.md
- [10444] struct.RebalanceAction.md
- [10446] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [10447] 0002-metadata-manifest-and-pull-command.md
- [10448] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
