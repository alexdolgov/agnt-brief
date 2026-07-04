# Agentic Audit Brief: Cooler Loans

## Project Overview

- Project: Cooler Loans (`cooler-loans`)
- Website: [https://app.olympusdao.finance/#/lending/cooler](https://app.olympusdao.finance/#/lending/cooler)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.147Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: arbitrum, avalanche, berachain, ethereum, optimism
- Contract surface: 175 unique implementations (175 raw deployments)
- DeFi Llama TVL: $440,168,046.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 175 project-authored contract(s) across 5 chain(s); 14 ERC20 tokens, 2 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 22 common project-authored base contract(s) (module, kerneladapter, policy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 175; live-surface contracts included: 175 (175 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/175 (0.0%)
- Deployed-live implementations: 175 of 175 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/175
- Verified + Unaudited implementations: 175
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 175
- Raw deployments: 175
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 3 fresh, 7 aging, 2 stale, 15 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (175)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveAllocator | unknown | ethereum | n/a | [`0x0e1177...5fd9d4`](./contracts/ethereum-1/0x0e1177e47151be72e5992e0975000e73ab5fd9d4/) | ⚠️ Unaudited |
| AaveAllocatorV2 | unknown | ethereum | n/a | [`0x0d33c8...5be66f`](./contracts/ethereum-1/0x0d33c811d0fcc711bcb388dfb3a152de445be66f/) | ⚠️ Unaudited |
| AlchemixAllocatorV2 | unknown | ethereum | n/a | [`0x51563d...39bf56`](./contracts/ethereum-1/0x51563d61f8a5869b24eddfb2705308bae539bf56/) | ⚠️ Unaudited |
| AlphaOHM | unknown | ethereum | n/a | [`0x24ecfd...b0792e`](./contracts/ethereum-1/0x24ecfd535675f36ba1ab9c5d39b50dc097b0792e/) | ⚠️ Unaudited |
| AltExercisepOLY | unknown | ethereum | n/a | [`0x053449...daa729`](./contracts/ethereum-1/0x053449023313a67b0ea179ae2c4acd65afdaa729/) | ⚠️ Unaudited |
| AnycallExecutor | unknown | avalanche | n/a | [`0x70d6b3...a72c40`](./contracts/avalanche-43114/0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | arbitrum | n/a | [`0x739ca6...8abc4b`](./contracts/arbitrum-42161/0x739ca6d71365a08f584c8fc4e1029045fa8abc4b/) | ⚠️ Unaudited |
| aOHMMigration | unknown | ethereum | n/a | [`0x906d7a...ad8fd2`](./contracts/ethereum-1/0x906d7af3412e8f3cd9320629ebbd865c05ad8fd2/) | ⚠️ Unaudited |
| AuraAllocator | unknown | ethereum | n/a | [`0x872ebd...4bac7e`](./contracts/ethereum-1/0x872ebdd8129aa328c89f6bf032bbd77a4c4bac7e/) | ⚠️ Unaudited |
| AuraAllocatorV2 | unknown | ethereum | n/a | [`0x8caf91...d98fad`](./contracts/ethereum-1/0x8caf91a6bb38d55fb530dec0fab535fa78d98fad/) | ⚠️ Unaudited |
| BackingRefill | unknown | ethereum | n/a | [`0xc448b2...a09d8c`](./contracts/ethereum-1/0xc448b27aea1a825354c3296fcb2af598aea09d8c/) | ⚠️ Unaudited |
| BalancerLiquidityMigrator | unknown | ethereum | n/a | [`0xa9b52a...6618a6`](./contracts/ethereum-1/0xa9b52a2d0ffdbabdb2cb23ebb7cd879cac6618a6/) | ⚠️ Unaudited |
| BalancerStrategy | unknown | ethereum | n/a | [`0x48bdc4...013cdc`](./contracts/ethereum-1/0x48bdc486c9df31848c62fdc85c5c77d4be013cdc/) | ⚠️ Unaudited |
| BLVaultLido | unknown | ethereum | n/a | [`0xafe729...7c4b23`](./contracts/ethereum-1/0xafe729d57d2cc58978c2e01b4ec39c47fb7c4b23/) | ⚠️ Unaudited |
| BLVaultLusd | unknown | ethereum | n/a | [`0x9bc4d4...9655db`](./contracts/ethereum-1/0x9bc4d4bd9a5dea5974c52ba2b8ca061eea9655db/) | ⚠️ Unaudited |
| BLVaultManagerLusd | unknown | ethereum | n/a | [`0x263828...207bc9`](./contracts/ethereum-1/0x263828a42b1692f1b8efaf5ec6750cb7bb207bc9/) | ⚠️ Unaudited |
| BondCallback | unknown | ethereum | n/a | [`0x473f86...96c19b`](./contracts/ethereum-1/0x473f86ebfa7ab57c4c82c3592d6147104996c19b/) | ⚠️ Unaudited |
| BondFixedTermTeller | unknown | ethereum | n/a | [`0x007f77...a5fed6`](./contracts/ethereum-1/0x007f7735baf391e207e3aa380bb53c4bd9a5fed6/) | ⚠️ Unaudited |
| BondManager | unknown | ethereum | n/a | [`0xf577c7...d2b2a3`](./contracts/ethereum-1/0xf577c77ee3578c7f216327f41b5d7221ead2b2a3/) | ⚠️ Unaudited |
| BtrflyAllocator | unknown | ethereum | n/a | [`0xc8431f...c54e2f`](./contracts/ethereum-1/0xc8431feb345b46c30a4576c1b5faf080fdc54e2f/) | ⚠️ Unaudited |
| BunniHelper | unknown | ethereum | n/a | [`0xed2519...daa300`](./contracts/ethereum-1/0xed2519d8a47fa10c6ba062e7156cc391bcdaa300/) | ⚠️ Unaudited |
| Burner | unknown | ethereum | n/a | [`0x9f08c2...310558`](./contracts/ethereum-1/0x9f08c2603e919a46d6d98289c9ada5250b310558/) | ⚠️ Unaudited |
| CCIPCrossChainBridge | unknown | ethereum | n/a | [`0xfbf638...1d143d`](./contracts/ethereum-1/0xfbf6383dc3f6010d403ecdf12ddc1311701d143d/) | ⚠️ Unaudited |
| CDAuctioneerLimitOrders | unknown | ethereum | n/a | [`0x7d8f82...fafc2e`](./contracts/ethereum-1/0x7d8f82a0d5b67d5fdd1b77a899ff517818fafc2e/) | ⚠️ Unaudited |
| ClaimTransfer | unknown | ethereum | n/a | [`0x477822...d4e203`](./contracts/ethereum-1/0x4778228ef5ef7c96e1106e38b1c0ce7252d4e203/) | ⚠️ Unaudited |
| Clearinghouse | unknown | ethereum | n/a | [`0x1e094f...606fe0`](./contracts/ethereum-1/0x1e094fe00e13fd06d64eea4fb3cd912893606fe0/) | ⚠️ Unaudited |
| ContractRegistryAdmin | unknown | ethereum | n/a | [`0xba05d4...eabdc5`](./contracts/ethereum-1/0xba05d48fb94dc76820eb7ea1b360fd6dfdeabdc5/) | ⚠️ Unaudited |
| ConvertibleDepositActivator | unknown | ethereum | n/a | [`0x5261fb...de991f`](./contracts/ethereum-1/0x5261fba7b50aa22b19b9edf939b771d109de991f/) | ⚠️ Unaudited |
| ConvertibleDepositAuctioneer | unknown | ethereum | n/a | [`0xf35193...29e39a`](./contracts/ethereum-1/0xf35193da8c10e44af10853ba5a3a1a6f7529e39a/) | ⚠️ Unaudited |
| ConvertibleDepositFacility | unknown | ethereum | n/a | [`0xebde55...5f9678`](./contracts/ethereum-1/0xebde552d851dd6dfd3d360c596d3f4af6e5f9678/) | ⚠️ Unaudited |
| ConvexAllocator | unknown | ethereum | n/a | [`0x3df5a3...56df78`](./contracts/ethereum-1/0x3df5a355457db3a4b5c744b8623a7721bf56df78/) | ⚠️ Unaudited |
| CoolerComposites | unknown | ethereum | n/a | [`0x659376...1c57fd`](./contracts/ethereum-1/0x6593768febf9c95ac857fb7ef244d5738d1c57fd/) | ⚠️ Unaudited |
| CoolerFactory | unknown | ethereum | n/a | [`0x30ce56...db4216`](./contracts/ethereum-1/0x30ce56e80aa96ebba1e1a74bc5c0feb5b0db4216/) | ⚠️ Unaudited |
| CoolerLtvOracle | unknown | ethereum | n/a | [`0x9ee9f0...91e8dc`](./contracts/ethereum-1/0x9ee9f0c2e91e4f6b195b988a9e6e19efcf91e8dc/) | ⚠️ Unaudited |
| CoolerMonitoring | unknown | ethereum | n/a | [`0xa00f4b...557367`](./contracts/ethereum-1/0xa00f4b7c57a4995796d6e2ae4a6d5dec8a557367/) | ⚠️ Unaudited |
| CoolerTreasuryBorrower | unknown | ethereum | n/a | [`0xd58d74...3779b0`](./contracts/ethereum-1/0xd58d7406e9ce34c90cf849fc3eed3764eb3779b0/) | ⚠️ Unaudited |
| CoolerUtils | unknown | ethereum | n/a | [`0x3704da...df5264`](./contracts/ethereum-1/0x3704da6b3e73e1c9ad4e2dd0ac1aedcc62df5264/) | ⚠️ Unaudited |
| CoolerV2Migrator | unknown | ethereum | n/a | [`0xe045bd...e358d2`](./contracts/ethereum-1/0xe045bd0a0d85e980aa152064c06eae6b6ae358d2/) | ⚠️ Unaudited |
| CrossChainBridge | unknown | arbitrum | n/a | [`0x20b383...fb285c`](./contracts/arbitrum-42161/0x20b3834091f038ce04d8686fac99ca44a0fb285c/) | ⚠️ Unaudited |
| CurveStrategy | unknown | ethereum | n/a | [`0x4b152c...d6c4b2`](./contracts/ethereum-1/0x4b152ccb613ee248df9bb98195bc505665d6c4b2/) | ⚠️ Unaudited |
| CustomBANKBond | unknown | ethereum | n/a | [`0xa9df6a...9e6771`](./contracts/ethereum-1/0xa9df6a7fa0109839f38879620457ba7cc39e6771/) | ⚠️ Unaudited |
| CVXAllocatorV2 | unknown | ethereum | n/a | [`0x2d643d...c71681`](./contracts/ethereum-1/0x2d643df5de4e9ba063760d475beaa62821c71681/) | ⚠️ Unaudited |
| CvxCrvStakingHelper | unknown | ethereum | n/a | [`0x315014...edcf52`](./contracts/ethereum-1/0x3150141daff8c34b674ea3f925e3cd7d6eedcf52/) | ⚠️ Unaudited |
| DelegateEscrowFactory | unknown | ethereum | n/a | [`0xc84157...127a59`](./contracts/ethereum-1/0xc84157c2306238c9330fea14774a82a53a127a59/) | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | [`0xcb4e21...7fbbf2`](./contracts/ethereum-1/0xcb4e21eb404d80f3e1db781aad9ad6a1217fbbf2/) | ⚠️ Unaudited |
| DepositRedemptionVault | unknown | ethereum | n/a | [`0x20a3d8...9029db`](./contracts/ethereum-1/0x20a3d8510f2e1176e8db4cea9883a8287a9029db/) | ⚠️ Unaudited |
| Distributor | unknown | ethereum | n/a | [`0x27e606...697866`](./contracts/ethereum-1/0x27e606fdb5c922f8213dc588a434bf7583697866/) | ⚠️ Unaudited |
| DSRAllocator | unknown | ethereum | n/a | [`0x0ea263...46d063`](./contracts/ethereum-1/0x0ea26319836ff05b8c5c5afd83b8ab17dd46d063/) | ⚠️ Unaudited |
| Emergency | unknown | ethereum | n/a | [`0x9229b0...714a75`](./contracts/ethereum-1/0x9229b0b6fa4a58d67eb465567daa2c6a34714a75/) | ⚠️ Unaudited |
| EmissionManager | unknown | ethereum | n/a | [`0x50f441...48c0a2`](./contracts/ethereum-1/0x50f441a3387625bda8b8081ce3fd6c04cc48c0a2/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | arbitrum | n/a | [`0x312966...a8a43c`](./contracts/arbitrum-42161/0x3129662808bec728a27ab6a6b9afd3cbaca8a43c/) | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | avalanche | n/a | [`0x4643d9...b0df5a`](./contracts/avalanche-43114/0x4643d976e9b32dc26a316c5b5c75d7c57db0df5a/) | ⚠️ Unaudited |
| ERC4626Price | unknown | ethereum | n/a | [`0x5d23a8...6f3037`](./contracts/ethereum-1/0x5d23a83c9bec7ac6acea3760bc2eeca9186f3037/) | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | avalanche | n/a | [`0x12e994...1d8f3e`](./contracts/avalanche-43114/0x12e994e89c92b03df6c15fb8340f624aec1d8f3e/) | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | avalanche | n/a | [`0x17e2e3...49e49e`](./contracts/avalanche-43114/0x17e2e3d4a27e8e0790c85ff2ec13d001e749e49e/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | avalanche | n/a | [`0x869ec6...0d4964`](./contracts/avalanche-43114/0x869ec639a622a1bbdaf44d3b1fe0cc2b210d4964/) | ⚠️ Unaudited |
| ETHBondDeposits | unknown | ethereum | n/a | [`0x2b0fbb...f33639`](./contracts/ethereum-1/0x2b0fbb411d355979005ab4f003d99d4aadf33639/) | ⚠️ Unaudited |
| ExercisepOLY | unknown | ethereum | n/a | [`0x06843e...c50315`](./contracts/ethereum-1/0x06843e4b350a04f6722b792e2cd49f570dc50315/) | ⚠️ Unaudited |
| FactoryPortal | unknown | avalanche | n/a | [`0x2ac03b...c3f056`](./contracts/avalanche-43114/0x2ac03bf434db503f6f5f85c3954773731fc3f056/) | ⚠️ Unaudited |
| FantomAnimals | unknown | avalanche | n/a | [`0x3cb196...bb6dda`](./contracts/avalanche-43114/0x3cb1967b36c318510cc06ab901b428a166bb6dda/) | ⚠️ Unaudited |
| FraxSharesAllocator | unknown | ethereum | n/a | [`0x55eae7...c7123b`](./contracts/ethereum-1/0x55eae7195b14f38e46a686bba70b87f4c4c7123b/) | ⚠️ Unaudited |
| FraxSharesAllocatorVoting | unknown | ethereum | n/a | [`0xde7b85...309475`](./contracts/ethereum-1/0xde7b85f52577b113181921a7aa8fc0c22e309475/) | ⚠️ Unaudited |
| FraxswapPair | unknown | ethereum | n/a | [`0x38633e...74699f`](./contracts/ethereum-1/0x38633ed142bcc8128b45ab04a2e4a6e53774699f/) | ⚠️ Unaudited |
| FxsAllocatorV2 | unknown | ethereum | n/a | [`0x0f953d...a73493`](./contracts/ethereum-1/0x0f953d861347414698f34b75dbfd6e7df1a73493/) | ⚠️ Unaudited |
| GeneralizedTokemak | unknown | ethereum | n/a | [`0x0483de...bc92f5`](./contracts/ethereum-1/0x0483de8c11ee2f0538a29f0c294246677cbc92f5/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x0cf30d...336b2e`](./contracts/ethereum-1/0x0cf30dc0d48604a301df8010cdc028c055336b2e/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | arbitrum | n/a | [`0x012bbf...e2ad4c`](./contracts/arbitrum-42161/0x012bbf0481b97170577745d2167ee14f63e2ad4c/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | berachain | n/a | [`0x91494d...d099b5`](./contracts/berachain-80094/0x91494d1bc2286343d51c55e46ae80c9356d099b5/) | ⚠️ Unaudited |
| gOHM | unknown | ethereum | n/a | [`0x0ab870...20a52f`](./contracts/ethereum-1/0x0ab87046fbb341d058f17cbc4c1133f25a20a52f/) | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | ethereum | n/a | [`0x094123...ceffcd`](./contracts/ethereum-1/0x0941233c964e7d7efeb05d253176e5e634ceffcd/) | ⚠️ Unaudited |
| Incrementer | unknown | ethereum | n/a | [`0x3eddac...50015d`](./contracts/ethereum-1/0x3eddacf2c184a302ff17682a7e48a0e47550015d/) | ⚠️ Unaudited |
| IncurDebt | unknown | ethereum | n/a | [`0x544f54...a72eca`](./contracts/ethereum-1/0x544f54c5f38d6d6b96331f7e75cb202b5ea72eca/) | ⚠️ Unaudited |
| Kernel | unknown | optimism | n/a | [`0x18878d...d3159c`](./contracts/optimism-10/0x18878df23e2a36f81e820e4b47b4a40576d3159c/) | ⚠️ Unaudited |
| LegacyBurner | unknown | ethereum | n/a | [`0x367149...908d0b`](./contracts/ethereum-1/0x367149cf2d04d3114ffd1cc6b273222664908d0b/) | ⚠️ Unaudited |
| LiquidityMigrator | unknown | ethereum | n/a | [`0x13dfef...5153a3`](./contracts/ethereum-1/0x13dfeff85779118136bb9826dcad8f3bd25153a3/) | ⚠️ Unaudited |
| LoanConsolidator | unknown | ethereum | n/a | [`0x784ca0...e50dbc`](./contracts/ethereum-1/0x784ca0c006b8651bab183829a99fa46bece50dbc/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | ethereum | n/a | [`0xa5588e...7de3ad`](./contracts/ethereum-1/0xa5588e518ce5ee0e4628c005e4edabd5e87de3ad/) | ⚠️ Unaudited |
| LPLeverageLaunch | unknown | ethereum | n/a | [`0x26063b...fbdbbd`](./contracts/ethereum-1/0x26063b1f8dd844c07039f3bd172493d9fcfbdbbd/) | ⚠️ Unaudited |
| LUSDAllocator | unknown | ethereum | n/a | [`0x67bae8...007180`](./contracts/ethereum-1/0x67bae867b62fed0d1ca5f5f059d9a170e7007180/) | ⚠️ Unaudited |
| LUSDAllocatorV2 | unknown | ethereum | n/a | [`0x2c1700...d2a578`](./contracts/ethereum-1/0x2c1700f38c38c32595cfef3d6b0b275bc2d2a578/) | ⚠️ Unaudited |
| LUSDAllocatorV2R | unknown | ethereum | n/a | [`0x47d8d0...0e655c`](./contracts/ethereum-1/0x47d8d05f05f4ccb5ac48a5d90906d57b040e655c/) | ⚠️ Unaudited |
| LZBridgeActivator | unknown | ethereum | n/a | [`0x0f8cc5...ff4af7`](./contracts/ethereum-1/0x0f8cc53ac14dda2f9aebfccb6cc3a4426bff4af7/) | ⚠️ Unaudited |
| LZBridgeAndDelegateConfig | unknown | ethereum | n/a | [`0x946b73...bf2f12`](./contracts/ethereum-1/0x946b739a26a8e7f035b27b075eb0ce8a54bf2f12/) | ⚠️ Unaudited |
| LZBridgeGateway | unknown | ethereum | n/a | [`0x23ddfc...0c5f23`](./contracts/ethereum-1/0x23ddfccdd5c573b9fd7fc0fcd70b687a0d0c5f23/) | ⚠️ Unaudited |
| LZCrossChainBridge | unknown | ethereum | n/a | [`0x9ad85d...829330`](./contracts/ethereum-1/0x9ad85d2f5efc076bb321dca425e67cf2e6829330/) | ⚠️ Unaudited |
| LZEndpointDelegate | unknown | ethereum | n/a | [`0xb218eb...9efac0`](./contracts/ethereum-1/0xb218eb347218031b2b9d17a19b040bd3509efac0/) | ⚠️ Unaudited |
| MetaGovernanceAllocator | unknown | ethereum | n/a | [`0x41afc1...02d58c`](./contracts/ethereum-1/0x41afc1cd7d944cc38dba0afb31d5c6f83602d58c/) | ⚠️ Unaudited |
| MigrationProposalHelper | unknown | ethereum | n/a | [`0x62633b...44a5d4`](./contracts/ethereum-1/0x62633b567ed4fc4078db75a5cb4b896b3d44a5d4/) | ⚠️ Unaudited |
| MigrationRebalancer | unknown | ethereum | n/a | [`0x77b19a...2c404e`](./contracts/ethereum-1/0x77b19adf335143d954cd5f59a01879fa532c404e/) | ⚠️ Unaudited |
| MimirToken | unknown | ethereum | n/a | [`0x30879a...94a478`](./contracts/ethereum-1/0x30879a856a022a92d80a329d6ad4ce22c194a478/) | ⚠️ Unaudited |
| MockTreasury | unknown | ethereum | n/a | [`0xdb682f...c8ed20`](./contracts/ethereum-1/0xdb682fc2af3a1791081ac4efb60176c0a0c8ed20/) | ⚠️ Unaudited |
| MonoCooler | unknown | ethereum | n/a | [`0xdb591e...68e7cc`](./contracts/ethereum-1/0xdb591ea2e5db886da872654d58f6cc584b68e7cc/) | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | arbitrum | n/a | [`0x90d5f3...f5f095`](./contracts/arbitrum-42161/0x90d5f3aa862f87598011e6ef511e4e8ed2f5f095/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | avalanche | n/a | [`0xd1f617...8e4b32`](./contracts/avalanche-43114/0xd1f617fdc0e2e7af49f7250f163095e76f8e4b32/) | ⚠️ Unaudited |
| NFTRouter | unknown | avalanche | n/a | [`0x1fbbc7...692cd8`](./contracts/avalanche-43114/0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8/) | ⚠️ Unaudited |
| NullValueCalculator | unknown | ethereum | n/a | [`0x0d1c9b...26254f`](./contracts/ethereum-1/0x0d1c9b9bfda66226e4ff3b6bf8f565baeb26254f/) | ⚠️ Unaudited |
| OhmBondManager | unknown | ethereum | n/a | [`0x73d7e4...493896`](./contracts/ethereum-1/0x73d7e4bddecad7379d679e60f22788e501493896/) | ⚠️ Unaudited |
| OHMCirculatingSupplyConrtact | unknown | ethereum | n/a | [`0x0efff9...295034`](./contracts/ethereum-1/0x0efff9199aa1ac3c3e34e957567c1be8bf295034/) | ⚠️ Unaudited |
| OHMPreSale | unknown | ethereum | n/a | [`0x0e7620...14d893`](./contracts/ethereum-1/0x0e762067f824e9db190ad3565e3bf8cde314d893/) | ⚠️ Unaudited |
| OHMPrincipleDepository | unknown | ethereum | n/a | [`0x0ee5c2...4815b9`](./contracts/ethereum-1/0x0ee5c2865d6dff605e527b13c336f0b8774815b9/) | ⚠️ Unaudited |
| OlympusAuthority | unknown | berachain | n/a | [`0x060cb0...fcdcc0`](./contracts/berachain-80094/0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0/) | ⚠️ Unaudited |
| OlympusBondDepository | unknown | ethereum | n/a | [`0x10c0f9...89d08d`](./contracts/ethereum-1/0x10c0f93f64e3c8d0a1b0f4b87d6155fd9e89d08d/) | ⚠️ Unaudited |
| OlympusBondDepositoryV2 | unknown | ethereum | n/a | [`0x902504...9a1ef6`](./contracts/ethereum-1/0x9025046c6fb25fb39e720d97a8fd881ed69a1ef6/) | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | ethereum | n/a | [`0x6a617f...68bedc`](./contracts/ethereum-1/0x6a617fe9163c1499b9d2773fb2d0105a2368bedc/) | ⚠️ Unaudited |
| OlympusBoostedLiquidityRegistry | unknown | ethereum | n/a | [`0x375e06...3e2275`](./contracts/ethereum-1/0x375e06c694b5e50af8be8fb03495a612ea3e2275/) | ⚠️ Unaudited |
| OlympusClearinghouseRegistry | unknown | ethereum | n/a | [`0x24b96f...b4cad5`](./contracts/ethereum-1/0x24b96f2150bf1ed10d3e8b28ed33e392fbb4cad5/) | ⚠️ Unaudited |
| OlympusContractRegistry | unknown | ethereum | n/a | [`0x896315...8dde48`](./contracts/ethereum-1/0x89631595649cc6deba249a8012a5b2d88c8dde48/) | ⚠️ Unaudited |
| OlympusCVXBondDepository | unknown | ethereum | n/a | [`0x6754c6...021920`](./contracts/ethereum-1/0x6754c69fe02178f54ada19ebf1c5569826021920/) | ⚠️ Unaudited |
| OlympusCvxHolder | unknown | ethereum | n/a | [`0xdfc95a...e7f728`](./contracts/ethereum-1/0xdfc95aaf0a107daae2b350458ded4b7906e7f728/) | ⚠️ Unaudited |
| OlympusDAIDepository | unknown | ethereum | n/a | [`0xa64ed1...7a2a3c`](./contracts/ethereum-1/0xa64ed1b66cb2838ef2a198d8345c0ce6967a2a3c/) | ⚠️ Unaudited |
| OlympusDepositPositionManager | unknown | ethereum | n/a | [`0x02331a...1a9f1c`](./contracts/ethereum-1/0x02331a4c97a4841084df54d7c0ec04dd3f1a9f1c/) | ⚠️ Unaudited |
| OlympusDistributorContract | unknown | ethereum | n/a | [`0xce6568...a3f4c4`](./contracts/ethereum-1/0xce6568338708400d03f430d29f2eb40a33a3f4c4/) | ⚠️ Unaudited |
| OlympusERC20Token | unknown | optimism | n/a | [`0x060cb0...fcdcc0`](./contracts/optimism-10/0x060cb087a9730e13aa191f31a6d86bff8dfcdcc0/) | ⚠️ Unaudited |
| OlympusGovDelegation | unknown | ethereum | n/a | [`0xd3204a...daad74`](./contracts/ethereum-1/0xd3204ae00d6599ba6e182c6d640a79d76cdaad74/) | ⚠️ Unaudited |
| OlympusHeart | unknown | ethereum | n/a | [`0x1652b5...b11656`](./contracts/ethereum-1/0x1652b503e0f1cf38b6246ed3b91cb3786bb11656/) | ⚠️ Unaudited |
| OlympusLender | unknown | arbitrum | n/a | [`0x868c3a...b30f03`](./contracts/arbitrum-42161/0x868c3ae18fdea85bbb7a303e379c5b7e23b30f03/) | ⚠️ Unaudited |
| OlympusLPRewardPool | unknown | ethereum | n/a | [`0x39baa5...d34867`](./contracts/ethereum-1/0x39baa524eab3f5c9d0738bdf781c3ec9c8d34867/) | ⚠️ Unaudited |
| OlympusLPStaking | unknown | ethereum | n/a | [`0xf11f0f...722223`](./contracts/ethereum-1/0xf11f0f078bfaf05a28eac345bb84fcb2a3722223/) | ⚠️ Unaudited |
| OlympusMinter | unknown | optimism | n/a | [`0x623164...4e1a1c`](./contracts/optimism-10/0x623164a9ee2556d524b08f34f1d2389d7b4e1a1c/) | ⚠️ Unaudited |
| OlympusPrice | unknown | ethereum | n/a | [`0x9ded6a...3a6880`](./contracts/ethereum-1/0x9ded6a8b099c57bbeb9f81b76400a5a9c63a6880/) | ⚠️ Unaudited |
| OlympusPriceConfig | unknown | ethereum | n/a | [`0x3019ff...f14ba5`](./contracts/ethereum-1/0x3019ff96bd8308d1b66846b795e0aeefbdf14ba5/) | ⚠️ Unaudited |
| OlympusPricev1_2 | unknown | ethereum | n/a | [`0x465ccc...37f8fe`](./contracts/ethereum-1/0x465ccc69d285415bce199f855d3a68ea3537f8fe/) | ⚠️ Unaudited |
| OlympusProInverseBondCreator | unknown | ethereum | n/a | [`0xba42be...32ea47`](./contracts/ethereum-1/0xba42be149e5260eba4b82418a6306f55d532ea47/) | ⚠️ Unaudited |
| OlympusProMarketCreator | unknown | ethereum | n/a | [`0xb1fa0a...437ad1`](./contracts/ethereum-1/0xb1fa0ac44d399b778b14af0aaf4bcf8af3437ad1/) | ⚠️ Unaudited |
| OlympusProV2 | unknown | ethereum | n/a | [`0x22ae99...cdb4c0`](./contracts/ethereum-1/0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0/) | ⚠️ Unaudited |
| OlympusRange | unknown | ethereum | n/a | [`0x399cd3...f60fb5`](./contracts/ethereum-1/0x399cd3685912bb56aaed0949119db6ce5df60fb5/) | ⚠️ Unaudited |
| OlympusRewardDistributor | unknown | ethereum | n/a | [`0x2ce62b...4a6cd1`](./contracts/ethereum-1/0x2ce62b196ea521c88d6cf884283cb0372f4a6cd1/) | ⚠️ Unaudited |
| OlympusRoles | unknown | berachain | n/a | [`0x22ae99...cdb4c0`](./contracts/berachain-80094/0x22ae99d07584a2ae1af748de573c83f1b9cdb4c0/) | ⚠️ Unaudited |
| OlympusSalesLite | unknown | ethereum | n/a | [`0x274466...218116`](./contracts/ethereum-1/0x27446629dcf58834640b38464a50ecf742218116/) | ⚠️ Unaudited |
| OlympusStaking | unknown | ethereum | n/a | [`0x0822f3...f274a2`](./contracts/ethereum-1/0x0822f3c03dcc24d200aff33493dc08d0e1f274a2/) | ⚠️ Unaudited |
| OlympusStakingDistributor | unknown | ethereum | n/a | [`0xbe7315...93242f`](./contracts/ethereum-1/0xbe731507810c8747c3e01e62c676b1ca6f93242f/) | ⚠️ Unaudited |
| OlympusTokenMigrator | unknown | ethereum | n/a | [`0x184f3f...e784b3`](./contracts/ethereum-1/0x184f3fad8618a6f458c16bae63f70c426fe784b3/) | ⚠️ Unaudited |
| OlympusTreasury | unknown | ethereum | n/a | [`0x31f8cc...c846e8`](./contracts/ethereum-1/0x31f8cc382c9898b273eff4e0b7626a6987c846e8/) | ⚠️ Unaudited |
| OlympusV1BondDepository | unknown | ethereum | n/a | [`0x99e9b0...aeaa53`](./contracts/ethereum-1/0x99e9b0a9dc965361c2cbc07525ea591761aeaa53/) | ⚠️ Unaudited |
| OnsenAllocator | unknown | ethereum | n/a | [`0x031650...682ffc`](./contracts/ethereum-1/0x0316508a1b5abf1cae42912dc2c8b9774b682ffc/) | ⚠️ Unaudited |
| Operator | unknown | ethereum | n/a | [`0x0374c0...219326`](./contracts/ethereum-1/0x0374c001204ef5e7e4f5362a5a2430cb6c219326/) | ⚠️ Unaudited |
| OTCEscrow | unknown | ethereum | n/a | [`0xe3312c...e965eb`](./contracts/ethereum-1/0xe3312c3f1ab30878d9686452f7205ebe11e965eb/) | ⚠️ Unaudited |
| OwnedERC20 | unknown | ethereum | n/a | [`0x6d94b3...ba5f15`](./contracts/ethereum-1/0x6d94b3745b0ecf908b3b467907b947b43fba5f15/) | ⚠️ Unaudited |
| pOLY | unknown | ethereum | n/a | [`0xb37796...5da5a1`](./contracts/ethereum-1/0xb37796941ca55b7e4243841930c104ee325da5a1/) | ⚠️ Unaudited |
| PositionTokenRenderer | unknown | ethereum | n/a | [`0x9c859d...daa134`](./contracts/ethereum-1/0x9c859dc91db65bd7375660341231227336daa134/) | ⚠️ Unaudited |
| PreOlympusSales | unknown | ethereum | n/a | [`0x8c6229...3715ba`](./contracts/ethereum-1/0x8c6229d5f39ae5c53db75806002f380db73715ba/) | ⚠️ Unaudited |
| PreOlympusToken | unknown | ethereum | n/a | [`0x369944...71c800`](./contracts/ethereum-1/0x36994486c6e97c170065899d8659a28d7371c800/) | ⚠️ Unaudited |
| PriceConfigv2 | unknown | ethereum | n/a | [`0x5c69f6...ef9cbd`](./contracts/ethereum-1/0x5c69f61d384e41b55699c3b10523ed81c5ef9cbd/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | [`0x419fa2...84268a`](./contracts/avalanche-43114/0x419fa2e21092d834e3b02bd0802dee329c84268a/) | ⚠️ Unaudited |
| RaribleUserToken | unknown | ethereum | n/a | [`0x6b2c76...06ddd4`](./contracts/ethereum-1/0x6b2c7666f64d266ca9a0f7302d7f22f4db06ddd4/) | ⚠️ Unaudited |
| RariFuseAllocator | unknown | ethereum | n/a | [`0x061c86...80d818`](./contracts/ethereum-1/0x061c8610a784b8a1599de5b1157631e35180d818/) | ⚠️ Unaudited |
| ReceiptTokenManager | unknown | ethereum | n/a | [`0xd98b5b...beddd1`](./contracts/ethereum-1/0xd98b5b2e4d5d6cd554115de19efb7a9084beddd1/) | ⚠️ Unaudited |
| RedeemHelper | unknown | ethereum | n/a | [`0xe1e838...0b819e`](./contracts/ethereum-1/0xe1e83825613de12e8f0502da939523558f0b819e/) | ⚠️ Unaudited |
| ReserveMigrator | unknown | ethereum | n/a | [`0x986b99...2419f5`](./contracts/ethereum-1/0x986b99579bec7b990331474b66ccdb94fa2419f5/) | ⚠️ Unaudited |
| ReserveWrapper | unknown | ethereum | n/a | [`0xca6cd4...a386f9`](./contracts/ethereum-1/0xca6cd4f0a0033f8c20cf68d6df277e7001a386f9/) | ⚠️ Unaudited |
| RewardMasterChef | unknown | arbitrum | n/a | [`0x123706...5a5b8e`](./contracts/arbitrum-42161/0x123706cdd8e60324e610e9a2cc7012d0f45a5b8e/) | ⚠️ Unaudited |
| RolesAdmin | unknown | arbitrum | n/a | [`0x69168c...c93b70`](./contracts/arbitrum-42161/0x69168c08acf66f002fd02e1b169f38c022c93b70/) | ⚠️ Unaudited |
| SiloAMO | unknown | arbitrum | n/a | [`0xa8578c...68b97c`](./contracts/arbitrum-42161/0xa8578c9a73c2b4f75968ec76d6689045ff68b97c/) | ⚠️ Unaudited |
| SimplePriceFeedStrategy | unknown | ethereum | n/a | [`0xc8b00c...cef95d`](./contracts/ethereum-1/0xc8b00cbc78fd9d43e5cddd86099b9394c4cef95d/) | ⚠️ Unaudited |
| Skimmer | unknown | arbitrum | n/a | [`0x82f0b8...6829c1`](./contracts/arbitrum-42161/0x82f0b8b456c1a451378467398982d4834b6829c1/) | ⚠️ Unaudited |
| sOlympus | unknown | ethereum | n/a | [`0x049066...ccd460`](./contracts/ethereum-1/0x04906695d6d12cf5459975d7c3c03356e4ccd460/) | ⚠️ Unaudited |
| StakingHelper | unknown | ethereum | n/a | [`0xa55ce3...790915`](./contracts/ethereum-1/0xa55ce3e25bd4cb6c5375aa393335b708db790915/) | ⚠️ Unaudited |
| StakingWarmup | unknown | ethereum | n/a | [`0x2882a5...07c5f1`](./contracts/ethereum-1/0x2882a5cd82ac49e06620382660f5ed932607c5f1/) | ⚠️ Unaudited |
| SynapseERC20 | unknown | optimism | n/a | [`0x0b5740...868ffb`](./contracts/optimism-10/0x0b5740c6b4a97f90ef2f0220651cca420b868ffb/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x953ea3...2c9c39`](./contracts/ethereum-1/0x953ea3223d2dd3c1a91e9d6cca1bf7af162c9c39/) | ⚠️ Unaudited |
| TreasuryConfig | unknown | ethereum | n/a | [`0x09236b...cec2d2`](./contracts/ethereum-1/0x09236b98144602df2d0d675183595c6442cec2d2/) | ⚠️ Unaudited |
| TreasuryExtender | unknown | ethereum | n/a | [`0xb32ad0...2d17af`](./contracts/ethereum-1/0xb32ad041f23eafd682f57fce31d3ea4fd92d17af/) | ⚠️ Unaudited |
| UniSwapStrategy | unknown | ethereum | n/a | [`0x0692bd...771324`](./contracts/ethereum-1/0x0692bdcaa767dc62c420b7893a1045e657771324/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x2dce0d...bf4877`](./contracts/ethereum-1/0x2dce0dda1c2f98e0f171de8333c3c6fe1bbf4877/) | ⚠️ Unaudited |
| V1Migrator | unknown | ethereum | n/a | [`0x513165...90b8b0`](./contracts/ethereum-1/0x5131654efcd63f7b797e00118792e0d0dd90b8b0/) | ⚠️ Unaudited |
| ValueRouter | unknown | arbitrum | n/a | [`0x7fc567...faf801`](./contracts/arbitrum-42161/0x7fc5670b2041d34414b0b2178fc660b1e1faf801/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0x886ce9...62399d`](./contracts/ethereum-1/0x886ce997aa9ee4f8c2282e182ab72a705762399d/) | ⚠️ Unaudited |
| wOHM | unknown | ethereum | n/a | [`0xca7654...8e3e65`](./contracts/ethereum-1/0xca76543cf381ebbb277be79574059e32108e3e65/) | ⚠️ Unaudited |
| wsOHM | unknown | ethereum | n/a | [`0x583043...d57d4f`](./contracts/ethereum-1/0x583043074788bec7c5b2bcb555bb926483d57d4f/) | ⚠️ Unaudited |
| wsOHMStakingHelper | unknown | ethereum | n/a | [`0x9e0333...f17939`](./contracts/ethereum-1/0x9e0333d812a26df611dbc28e4e18703513f17939/) | ⚠️ Unaudited |
| XrpSwapAsset | unknown | avalanche | n/a | [`0xfb288d...4269aa`](./contracts/avalanche-43114/0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa/) | ⚠️ Unaudited |
| YieldDirector | unknown | ethereum | n/a | [`0x260417...358f18`](./contracts/ethereum-1/0x2604170762a1dd22bb4f96c963043cd4fc358f18/) | ⚠️ Unaudited |
| YieldFUBondingCalculator | unknown | ethereum | n/a | [`0xa38da9...2b3f95`](./contracts/ethereum-1/0xa38da9cc8797501d9235be00a9e9972bcf2b3f95/) | ⚠️ Unaudited |
| YieldRepurchaseFacility | unknown | ethereum | n/a | [`0x271e35...0b0692`](./contracts/ethereum-1/0x271e35a8555a62f6ba76508e85dfd76d580b0692/) | ⚠️ Unaudited |
| ZeroDistributor | unknown | ethereum | n/a | [`0x3ef13f...441695`](./contracts/ethereum-1/0x3ef13f5b6818f7746e0a1c70cc27fa2da0441695/) | ⚠️ Unaudited |

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
| [Link](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-OlympusDAO-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://web.archive.org/web/20211130101428/https://omniscia.io/olympusdao-algorithmic-currency-protocol) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/V2AuditCombined%20%28final%29.pdf) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://docs.olympusdao.finance/assets/files/OlympusDAO-1-1ec939694a04535f430fd977a133c77a.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://web.archive.org/web/20231210050357/https://hackmd.io/tJdujc0gSICv06p_9GgeFQ) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://code4rena.com/reports/2022-08-olympus) | Code4rena | Contest | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Link](https://web.archive.org/web/20231210043017/https://hackmd.io/@12og4u7y8i/rk5PeIiEs) | KebabSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://web.archive.org/web/20231210045634/https://hackmd.io/@12og4u7y8i/Sk56otcBs) | KebabSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/Boosted_Liquidity_Vault_Audit_-_Kebabsec.pdf) | Kebabsec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://docs.olympusdao.finance/assets/files/ottersec_audit_final-d1ecc01a73267c6cff89443f9d1f5382.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://docs.olympusdao.finance/assets/files/Olympus_Liquidity_Vaults_Audit_Report_1-779f26822be16f08675ffc261b17c075.pdf) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://gist.github.com/zobront/f1eec20c0e566632cf167004bf4076c6) | Zac Obron | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://docs.olympusdao.finance/assets/files/Cooler_Update_Audit_Report-f3f983a8ee8632637790bcc136275aa0.pdf) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://docs.olympusdao.finance/assets/files/2023_11_OlympusDAO-ba2977eb6290e903b703d47aea5b5362.pdf) | HickupHH3 | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [Link](https://docs.olympusdao.finance/assets/files/olympus_rbs2_audit_report-34c26d7cc13864ffc14b33acead60ad7.pdf) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://docs.olympusdao.finance/assets/files/Olympus_On-Chain_Governance_Audit_Report-6cc9f39fac65118966742e7cb105e6ac.pdf) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://docs.olympusdao.finance/assets/files/yaudit_report-47a860aa5e5083dce8d9fbc8a4dcfad8.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2024_10_LoanConsolidator_Audit.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Link](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2024_11_EmissionManager_ReserveMigrator.pdf) | yAudit | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-03-09_Cooler_V2-panprog.pdf) | unknown | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-03-19_Cooler_V2-Electisec.pdf) | unknown | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Link](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-03-19_Cooler_V2_Migrator-Electisec.pdf) | Electisec | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-04-04%20Cooler%20V2%20-%20Nethermind.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Link](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-06_Electisec_CCIP_Bridge.pdf) | Electisec | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Link](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-09_Convertible_Deposits-Guardian.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Link](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2025-10_Convertible_Deposits-Trust.pdf) | Trust | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Link](https://storage.googleapis.com/olympusdao-landing-page-reports/audits/2026-02_Migrator.pdf) | Guardian | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 175 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 27
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24014] Link
- [24015] Link
- [24016] Link
- [24017] Link
- [24018] Link
- [24019] Link
- [24020] Link
- [24021] Link
- [24022] Link
- [24023] Link
- [24024] Link
- [24025] Link
- [24026] Link
- [24027] Link
- [24028] Link
- [24029] Link
- [24030] Link
- [24031] Manual audit seed
- [24032] Link
- [24034] Manual audit seed
- [24036] Manual audit seed
- [24037] Link
- [24039] Manual audit seed
- [24041] Link
- [24042] Link
- [24043] Link
- [24044] Link

Fork inheritance lineage and inherited audits are included when available.
