# Agentic Audit Brief: DeltaPrime

## Project Overview

- Project: DeltaPrime (`deltaprime`)
- Website: [https://deltaprime.io](https://deltaprime.io)
- Lifecycle: active (Tier 0, 94.3% below peak)
- Generated: 2026-06-13T16:36:17.584Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-ee40
- Chains: arbitrum, avalanche
- Contract surface: 482 unique implementations (1549 raw deployments)
- DeFi Llama TVL: $3,659,171.81
- On-chain TVL (included contracts): $2,569.58
- TVL by chain: Avalanche $2,569.58

## Project Description

DeltaPrime is a leveraged farming protocol that enables users to borrow assets against their deposits to amplify yield farming positions. It operates across multiple chains, providing pools for various tokens and integrating with external DeFi protocols for yield generation and liquidation.

### Architecture

The Lending and Borrowing Pools provide the capital for leveraged positions, while the Smart Loan Management family uses diamond proxies to create and manage individual user loans that interact with these pools. Shared infrastructure includes governance contracts (TokenManager, AssetsExposureController) and intermediary contracts that connect the loan management system to external DEXs and yield protocols.

## Audit Coverage Summary

- Verified implementations audited: 0/174 (0.0%)
- Verified + Unaudited implementations: 173
- Verified by bytecode match: 1
- Unverified implementations: 308
- Unique implementations: 482
- Raw deployments: 1549
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,569.58
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (173)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PoolWithAccessNFT | core_logic | avalanche | 4 deployments: avalanche [`0x3eb972...e52a3d`](./contracts/avalanche-43114/0x3eb97259ace735304b7147aec60bb4fd9ae52a3d/); avalanche `0x431290...0d3073`; avalanche `0x5ff1de...482868`; avalanche `0x797281...545c18` | ⚠️ Unaudited |
| WavaxPoolTUP | core_logic | avalanche | [`0xd26e50...6542f5`](./contracts/avalanche-43114/0xd26e504fc642b96751fd55d3e68af295806542f5/) | ⚠️ Unaudited |
| AddressProvider | registry | arbitrum | 2 deployments: arbitrum [`0x6aa0fe...8f3982`](./contracts/arbitrum-42161/0x6aa0fe94731add419897f5783712ebc13e8f3982/); arbitrum `0x848714...361183` | ⚠️ Unaudited |
| ArbBorrowIndex | core_logic | arbitrum | 10 deployments: arbitrum [`0x0f9c98...5558be`](./contracts/arbitrum-42161/0x0f9c986e9fe3d7c9de6e018ccb4e83dc555558be/); arbitrum `0x22f6b6...d25cf9`; arbitrum `0x2692e8...abc4d9`; arbitrum `0x4d5292...89adaf`; arbitrum `0x81d7ad...f652b9`; arbitrum `0x8d3896...06bfa6`; arbitrum `0xa508c3...0afb74`; arbitrum `0xb60935...aad3c5`; arbitrum `0xc3d4ca...41846b`; arbitrum `0xc92a36...e0c650` | ⚠️ Unaudited |
| ArbDepositIndex | unknown | arbitrum | 9 deployments: arbitrum [`0x0f8b4a...88ce93`](./contracts/arbitrum-42161/0x0f8b4a814bf00a358866e3c97f9e65e2d188ce93/); arbitrum `0x11938f...9aca52`; arbitrum `0x2af687...3523d7`; arbitrum `0x347bfb...0cf6b2`; arbitrum `0x3c9699...b53249`; arbitrum `0x474df4...86eb53`; arbitrum `0x647c15...0d5863`; arbitrum `0xdeab10...040147`; arbitrum `0xea3293...092e08` | ⚠️ Unaudited |
| ArbPool | core_logic | arbitrum | 26 deployments: arbitrum [`0x200160...39f606`](./contracts/arbitrum-42161/0x200160c94b2b55dc36ef41ebc677722bd439f606/); arbitrum `0x206ac5...372551`; arbitrum `0x2b8c61...c3d08a`; arbitrum `0x419404...959fc5`; arbitrum `0x47f391...d623a6`; arbitrum `0x493d93...79b81c`; arbitrum `0x4cb8b0...d2e2dc`; arbitrum `0x5292af...236399`; arbitrum `0x549b20...fefc0e`; arbitrum `0x57f2a8...3263ab`; arbitrum `0x581816...fdc8b5`; arbitrum `0x587fe8...beaab7`; arbitrum `0x6e66f5...7dbce4`; arbitrum `0x7bd921...eff1cd`; arbitrum `0x91da06...a33ef9`; arbitrum `0x9a2cbb...2a4adf`; arbitrum `0x9b4efb...78a193`; arbitrum `0xa273ef...948e2b`; arbitrum `0xa37a69...071e62`; arbitrum `0xc629e8...dc41c2`; arbitrum `0xc69d70...c41671`; arbitrum `0xc7cf98...f71503`; arbitrum `0xd65e7a...629d91`; arbitrum `0xf503bf...16f0f2`; arbitrum `0xfb2a62...5f108f`; arbitrum `0xfefaaf...3655f2` | ⚠️ Unaudited |
| ArbPoolFactory | registry | arbitrum | 2 deployments: arbitrum [`0x315c55...7b4870`](./contracts/arbitrum-42161/0x315c55f5da4db2b516f1331dfa344da47c7b4870/); arbitrum `0xd1f36c...819119` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculator | unknown | arbitrum | 5 deployments: arbitrum [`0x5d776f...12b34f`](./contracts/arbitrum-42161/0x5d776f18289c1cadbb11d77723c3d0605912b34f/); arbitrum `0x7b73b0...fc711d`; arbitrum `0xb9e770...6006b1`; arbitrum `0xd4a360...2cfc45`; arbitrum `0xffc157...f6dbb1` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculatorFixedRate | unknown | arbitrum | 9 deployments: arbitrum [`0x034702...c849e2`](./contracts/arbitrum-42161/0x0347025482c9f8ec6c8323e87b81eb11dcc849e2/); arbitrum `0x11daa8...066c26`; arbitrum `0x159cf7...4e69a7`; arbitrum `0x378bb4...5727e4`; arbitrum `0x41784e...13d71a`; arbitrum `0x519aee...eb67e2`; arbitrum `0x5820cb...74339c`; arbitrum `0x7db730...0631cf`; arbitrum `0xe77f03...fa5f23` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculatorZeroRate | unknown | arbitrum | [`0xf35884...af4f9c`](./contracts/arbitrum-42161/0xf35884ab6f38414827c1d543b57befb690af4f9c/) | ⚠️ Unaudited |
| AssetsExposureController | governance | arbitrum | 3 deployments: arbitrum [`0x52b952...ee8d89`](./contracts/arbitrum-42161/0x52b95237c3c1803518f52c648f3c5a7593ee8d89/); arbitrum `0x565fd8...16c00a`; avalanche `0x9f0798...31fb95` | ⚠️ Unaudited |
| AssetsOperationsArbitrumFacet | unknown | arbitrum | 47 deployments: arbitrum [`0x040e6a...1d12e2`](./contracts/arbitrum-42161/0x040e6a4b92f00c876ab2e047dee5a9087f1d12e2/); arbitrum `0x05bb41...3d0ad9`; arbitrum `0x0b5a12...fa9492`; arbitrum `0x0ec0c6...aa0869`; arbitrum `0x109560...603865`; arbitrum `0x182f2c...03d5ba`; arbitrum `0x242d26...2afe07`; arbitrum `0x268607...626fc4`; arbitrum `0x26ae24...5bef80`; arbitrum `0x2a4fff...d15d21`; arbitrum `0x4074d6...3190ed`; arbitrum `0x4599e4...b5b94b`; arbitrum `0x4dbd37...781771`; arbitrum `0x5236b7...216db6`; arbitrum `0x53c1f7...64a567`; arbitrum `0x57ae63...44ec39`; arbitrum `0x5c5478...24d7d5`; arbitrum `0x632554...f07e21`; arbitrum `0x656024...a6e5f6`; arbitrum `0x6d00ec...0bb207`; arbitrum `0x6eb321...5774c4`; arbitrum `0x700c8c...d657f8`; arbitrum `0x71cdf7...498c48`; arbitrum `0x733149...2709b7`; arbitrum `0x771b82...bb4901`; arbitrum `0x803d63...e1e9aa`; arbitrum `0x86e39c...44c5fa`; arbitrum `0x884da1...8411b6`; arbitrum `0x89c896...7ed72b`; arbitrum `0x9826fa...0c5f6c`; arbitrum `0x988414...9a9d12`; arbitrum `0x98edaa...373187`; arbitrum `0x9cd052...8781ed`; arbitrum `0xa1ec5e...53b79f`; arbitrum `0xa2670d...7268e6`; arbitrum `0xa98402...79d6b3`; arbitrum `0xb27e01...458dae`; arbitrum `0xbf8b2d...a5d085`; arbitrum `0xc98915...96e473`; arbitrum `0xca60c5...91b5f5`; arbitrum `0xd43231...f94dcf`; arbitrum `0xd63fa0...350621`; arbitrum `0xe27372...63c23f`; arbitrum `0xe896cf...fe2b92`; arbitrum `0xe8f249...d82752`; arbitrum `0xf71eb1...85b4d0`; arbitrum `0xfeff07...39d1eb` | ⚠️ Unaudited |
| AssetsOperationsAvalancheFacet | unknown | avalanche | 5 deployments: avalanche [`0x074e3e...9a37bb`](./contracts/avalanche-43114/0x074e3eee1c274d6004cda9a6c803fe47f29a37bb/); avalanche `0x23c7fe...ab0fcb`; avalanche `0x834c1b...69e344`; avalanche `0x94464c...bf3fa7`; avalanche `0xb6d0f3...6ecb3b` | ⚠️ Unaudited |
| AssetsOperationsFacet | unknown | avalanche | 11 deployments: arbitrum `0x5e02c0...bd2ce4`; avalanche [`0x10aaef...104c71`](./contracts/avalanche-43114/0x10aaefc8787a41f7ee44cb032859d1f412104c71/); avalanche `0x35e37e...8760e7`; avalanche `0x5ddeb4...d4d064`; avalanche `0x5f2076...72265f`; avalanche `0x622703...8ca804`; avalanche `0xcf4be1...23dc88`; avalanche `0xe05d08...665d59`; avalanche `0xe55bc0...8a7d76`; avalanche `0xe657d0...4ea3a8`; avalanche `0xf1a98f...85da62` | ⚠️ Unaudited |
| BeefyFinanceArbitrumFacet | unknown | arbitrum | 6 deployments: arbitrum [`0x10aaef...104c71`](./contracts/arbitrum-42161/0x10aaefc8787a41f7ee44cb032859d1f412104c71/); arbitrum `0xa26467...b026d6`; arbitrum `0xb79184...ee2ba1`; arbitrum `0xbfb452...15d59c`; arbitrum `0xd8659a...c22072`; arbitrum `0xf2e90d...dcf37a` | ⚠️ Unaudited |
| BorrowAccessNFT | core_logic | avalanche | 2 deployments: avalanche [`0xa22a30...91d77f`](./contracts/avalanche-43114/0xa22a30894333cc5b66240c722ca55f8c7691d77f/); avalanche `0xf8d1b3...9fdea4` | ⚠️ Unaudited |
| BtcBorrowIndex | core_logic | avalanche | 10 deployments: arbitrum `0x0796a9...aeb0e1`; arbitrum `0x1e36f0...c0ff49`; arbitrum `0x5e67f5...d00f1f`; arbitrum `0x7ca507...7bab40`; arbitrum `0xc2a446...0166cd`; arbitrum `0xc2b0fe...c95f3a`; arbitrum `0xd04e07...b785ae`; arbitrum `0xf7844a...e262cd`; avalanche [`0x05f08c...fad5c7`](./contracts/avalanche-43114/0x05f08c14c430a1210678d322bf9b5deb5afad5c7/); avalanche `0x8f0848...0a78fd` | ⚠️ Unaudited |
| BtcDepositIndex | unknown | arbitrum | 10 deployments: arbitrum [`0x2acf4b...8a0aa8`](./contracts/arbitrum-42161/0x2acf4b820d1436d4c7f10589ae03c61a5a8a0aa8/); arbitrum `0x4ae651...be6557`; arbitrum `0x5a65c9...eaf0b4`; arbitrum `0x70952a...b91f21`; arbitrum `0x7789bf...2fcaf7`; arbitrum `0x7a73fd...4bfd4a`; arbitrum `0xab91d9...1848f4`; arbitrum `0xbbbef5...530d4b`; avalanche `0x52b74a...07061c`; avalanche `0x637fdb...546a08` | ⚠️ Unaudited |
| BtcPool | core_logic | arbitrum | 23 deployments: arbitrum [`0x08245f...99be79`](./contracts/arbitrum-42161/0x08245f89bf4712fdf9fe3b25b85ac332da99be79/); arbitrum `0x0ed7b4...195fb5`; arbitrum `0x19a9ce...08a764`; arbitrum `0x1b9bca...c3b06e`; arbitrum `0x2644e1...373012`; arbitrum `0x47b0f0...4a1ddc`; arbitrum `0x5b6c77...7ddbf5`; arbitrum `0x5cde36...1f8c35`; arbitrum `0x6a08fb...6c6f38`; arbitrum `0x74d06e...30fc9e`; arbitrum `0x82babb...645081`; arbitrum `0xac6a79...731889`; arbitrum `0xae5ba1...4237c5`; arbitrum `0xb5119f...d46d43`; arbitrum `0xb99201...4aa3ab`; arbitrum `0xc89476...9a044c`; arbitrum `0xcc3144...46ef10`; arbitrum `0xd26e50...6542f5`; arbitrum `0xea712a...b6e5f6`; arbitrum `0xf2f89a...d5f672`; arbitrum `0xf8c3e8...e949f7`; avalanche `0x5acb06...d4cd4e`; avalanche `0xc15d06...e0b599` | ⚠️ Unaudited |
| BtcPoolFactory | registry | arbitrum | [`0xa42be1...e43f16`](./contracts/arbitrum-42161/0xa42be11a62509ebf70133d5a7dd27be5e6e43f16/) | ⚠️ Unaudited |
| BtcPoolTUP | core_logic | avalanche | [`0x475589...bb63d0`](./contracts/avalanche-43114/0x475589b0ed87591a893df42ec6076d2499bb63d0/) | ⚠️ Unaudited |
| BtcVariableUtilisationRatesCalculator | unknown | arbitrum | 7 deployments: arbitrum [`0x00fe52...69d2cc`](./contracts/arbitrum-42161/0x00fe526a4ff5446b98e20b5490e2e65f5b69d2cc/); arbitrum `0x2557c3...fe637e`; arbitrum `0x290ebe...2aa14a`; arbitrum `0x7cb9b8...0830e6`; avalanche `0x75c09a...f9058e`; avalanche `0x7a49d8...ead6a2`; avalanche `0x994f42...f4dadf` | ⚠️ Unaudited |
| BtcVariableUtilisationRatesCalculatorFixedRate | unknown | arbitrum | 5 deployments: arbitrum [`0x257757...6b46bc`](./contracts/arbitrum-42161/0x257757c91bbfd46f571b16ab70e2cf05ac6b46bc/); arbitrum `0x884b78...aadbc2`; arbitrum `0xa87458...6b7cb0`; arbitrum `0xad45f1...1daaf0`; arbitrum `0xecd58d...38ba66` | ⚠️ Unaudited |
| BtcVariableUtilisationRatesCalculatorZeroRate | unknown | arbitrum | [`0xfd9bab...bb9a1e`](./contracts/arbitrum-42161/0xfd9babc65434c32d4da596958fc46d89f8bb9a1e/) | ⚠️ Unaudited |
| ContractPausedEmptyImplementation | unknown | arbitrum | [`0x54ef8c...d4d6ee`](./contracts/arbitrum-42161/0x54ef8c794e1375a43e657f63e9470e657bd4d6ee/) | ⚠️ Unaudited |
| CTKN | unknown | arbitrum | 6 deployments: arbitrum [`0x032d8e...b66c43`](./contracts/arbitrum-42161/0x032d8ea2e6855e898fd177eb2d7916d8fab66c43/); arbitrum `0x2cf25d...34b975`; arbitrum `0x3f412f...f4e0bd`; arbitrum `0xa2ee2b...26b5ba`; arbitrum `0xa5a658...1836a4`; arbitrum `0xc71f9a...9a38ee` | ⚠️ Unaudited |
| CTKNMock | unknown | arbitrum | [`0x55ca74...881826`](./contracts/arbitrum-42161/0x55ca7409da9cc35908c54a2ae9c605bf3c881826/) | ⚠️ Unaudited |
| DaiBorrowIndex | core_logic | arbitrum | 6 deployments: arbitrum [`0x147e2e...1bfda0`](./contracts/arbitrum-42161/0x147e2e39a419f3641b0f9464998d197bbd1bfda0/); arbitrum `0x38c83d...2ac967`; arbitrum `0x555b0c...64e372`; arbitrum `0x636557...3884c6`; arbitrum `0xf5ad6c...ec8c48`; arbitrum `0xf8d1b3...9fdea4` | ⚠️ Unaudited |
| DaiDepositIndex | unknown | arbitrum | 6 deployments: arbitrum [`0x8894df...609bc8`](./contracts/arbitrum-42161/0x8894df0686b38d85d431f52660107b6f57609bc8/); arbitrum `0xa6af43...e6f066`; arbitrum `0xadc48e...fb69d1`; arbitrum `0xe7b30e...18be5b`; arbitrum `0xe933cf...109353`; arbitrum `0xff3f46...528a30` | ⚠️ Unaudited |
| DaiPool | core_logic | arbitrum | 18 deployments: arbitrum [`0x0444f5...85dd4d`](./contracts/arbitrum-42161/0x0444f5a0df5199b267e85a02cf044b9b8985dd4d/); arbitrum `0x04d6db...851cd5`; arbitrum `0x076460...a46c4f`; arbitrum `0x09952c...926064`; arbitrum `0x2a634b...b26a30`; arbitrum `0x31cc5a...c60da3`; arbitrum `0x5b8fff...db8919`; arbitrum `0x617f2e...16021d`; arbitrum `0x6b99dd...015dec`; arbitrum `0x8259ad...32bb59`; arbitrum `0x8ff77b...e96d04`; arbitrum `0xa1eddb...1315b4`; arbitrum `0xd16b56...513168`; arbitrum `0xd5e8f6...362540`; arbitrum `0xd74ef6...f19f9b`; arbitrum `0xdb5d94...7cf7fa`; arbitrum `0xf7c8bb...91b7d6`; arbitrum `0xfa354e...8378f1` | ⚠️ Unaudited |
| DaiPoolFactory | registry | arbitrum | [`0xb50349...a4c3da`](./contracts/arbitrum-42161/0xb5034979baf764aa944ca1050cf39283aba4c3da/) | ⚠️ Unaudited |
| DaiVariableUtilisationRatesCalculator | unknown | arbitrum | 5 deployments: arbitrum [`0x44761e...db5c1f`](./contracts/arbitrum-42161/0x44761ea5a4b92adbbe8c17212c97e3de4bdb5c1f/); arbitrum `0x7eef8c...a49956`; arbitrum `0xa9ac9f...20fd69`; arbitrum `0xc876dc...784b74`; arbitrum `0xd480d9...4b5ebc` | ⚠️ Unaudited |
| DaiVariableUtilisationRatesCalculatorFixedRate | unknown | arbitrum | 4 deployments: arbitrum [`0x5d33b4...81859e`](./contracts/arbitrum-42161/0x5d33b4b48f2d8842d306923077868123c981859e/); arbitrum `0x765310...958ef6`; arbitrum `0xbf8a40...e51d00`; arbitrum `0xf52628...5277f9` | ⚠️ Unaudited |
| DaiVariableUtilisationRatesCalculatorZeroRate | unknown | arbitrum | 2 deployments: arbitrum [`0x255700...d557f9`](./contracts/arbitrum-42161/0x255700194f34162405eed34549b678d0e4d557f9/); arbitrum `0x6a89dd...67a3ea` | ⚠️ Unaudited |
| DepositAccessNFT | token | avalanche | 3 deployments: avalanche [`0x36df23...cf7a23`](./contracts/avalanche-43114/0x36df235a552ae3fb47a0d9a74ea3368a42cf7a23/); avalanche `0xb13c47...db8799`; avalanche `0xe86ec4...4c90a7` | ⚠️ Unaudited |
| DepositSwap | unknown | avalanche | 2 deployments: avalanche [`0x74b5c3...051713`](./contracts/avalanche-43114/0x74b5c3499abde6d85b6287617195813455051713/); avalanche `0xba819e...8ae098` | ⚠️ Unaudited |
| DepositSwapArbitrum | unknown | arbitrum | 7 deployments: arbitrum [`0x0b420f...0bccea`](./contracts/arbitrum-42161/0x0b420f7002375543d04471bf84ead6fb0f0bccea/); arbitrum `0x1b314c...8af907`; arbitrum `0x280027...08e90d`; arbitrum `0x6862d0...14c66b`; arbitrum `0x70deaa...6ac55b`; arbitrum `0x889cfe...7552b9`; arbitrum `0xaa3a31...dd49e2` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | arbitrum | 6 deployments: arbitrum [`0x3732ba...f3fbcc`](./contracts/arbitrum-42161/0x3732ba82d54568609b2e63cb64487af0d7f3fbcc/); arbitrum `0x44ac7f...03cc77`; arbitrum `0x81252d...51c8c1`; arbitrum `0xfccf6c...fa97ee`; avalanche `0x5efffd...703818`; avalanche `0x6442aa...f5683a` | ⚠️ Unaudited |
| DiamondInit | unknown | arbitrum | 3 deployments: arbitrum [`0x3e273b...7e7d04`](./contracts/arbitrum-42161/0x3e273bcc448d22b9329a56da3a91ace1b57e7d04/); avalanche `0x63a2c5...478d7c`; avalanche `0x6a47ec...086181` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | arbitrum | 5 deployments: arbitrum [`0x5a501b...1e3763`](./contracts/arbitrum-42161/0x5a501b5698eade321b3553ea633046c6a91e3763/); arbitrum `0x69bec7...72b23f`; avalanche `0xac3a92...804aba`; avalanche `0xb2c4b9...a22cfc`; avalanche `0xfb2a62...5f108f` | ⚠️ Unaudited |
| EarlyAccessNFT | token | avalanche | 3 deployments: avalanche [`0x0f9246...a7460a`](./contracts/avalanche-43114/0x0f9246f2de0c90e9dfafb33996b41c638ca7460a/); avalanche `0x252cba...47566c`; avalanche `0xe31b51...237281` | ⚠️ Unaudited |
| ERC20Mock | token | arbitrum | 2 deployments: arbitrum [`0x9add42...d94860`](./contracts/arbitrum-42161/0x9add42075a0fa68fb9891779f20e7e8074d94860/); arbitrum `0xd7c136...0812cf` | ⚠️ Unaudited |
| EthBorrowIndex | core_logic | avalanche | 2 deployments: avalanche [`0x23c691...dd7b93`](./contracts/avalanche-43114/0x23c69155bd7cc8f63cac203b364edb0e96dd7b93/); avalanche `0x66b8ad...edb2cb` | ⚠️ Unaudited |
| EthDepositIndex | unknown | avalanche | 2 deployments: avalanche [`0x796dbe...32132f`](./contracts/avalanche-43114/0x796dbe7adc72158f08b0b79e20caa4293d32132f/); avalanche `0xa09687...81edf9` | ⚠️ Unaudited |
| EthPool | core_logic | arbitrum | 4 deployments: arbitrum [`0x58ee09...f4b166`](./contracts/arbitrum-42161/0x58ee09b419fb027315c7ca5390298a7355f4b166/); arbitrum `0xa2827f...a121e5`; avalanche `0xee8f64...389f3b`; avalanche `0xfaf20e...8c7795` | ⚠️ Unaudited |
| EthPoolTUP | core_logic | avalanche | [`0xd7feb2...359148`](./contracts/avalanche-43114/0xd7feb276ba254cd9b34804a986ce9a8c3e359148/) | ⚠️ Unaudited |
| EthVariableUtilisationRatesCalculator | unknown | avalanche | 3 deployments: avalanche [`0x4a63e3...f5fbfb`](./contracts/avalanche-43114/0x4a63e3190a64a9d9deb5269e0e0d4b82c6f5fbfb/); avalanche `0x9c1d4b...a8f550`; avalanche `0xb354bc...53c89f` | ⚠️ Unaudited |
| GLPFacet | unknown | avalanche | 3 deployments: avalanche [`0x30a97f...09c3c1`](./contracts/avalanche-43114/0x30a97f8ed97098228e47630cc91e4749e709c3c1/); avalanche `0xa3531d...5bb7e4`; avalanche `0xf71376...3cbcee` | ⚠️ Unaudited |
| GLPFacetArbi | unknown | arbitrum | 10 deployments: arbitrum [`0x1b8c6e...f0cbd0`](./contracts/arbitrum-42161/0x1b8c6ece5588d21369935a91d3f2459f66f0cbd0/); arbitrum `0x4a9b37...5170e7`; arbitrum `0x793fab...518b0b`; arbitrum `0x82e218...4f80bc`; arbitrum `0x92f037...c88dfa`; arbitrum `0xad7ef2...5295d1`; arbitrum `0xb544e1...36e29d`; arbitrum `0xbb94ff...1e2f67`; arbitrum `0xc10b6f...75751e`; arbitrum `0xe98776...b74e3a` | ⚠️ Unaudited |
| GlvFacetArbitrum | unknown | arbitrum | 10 deployments: arbitrum [`0x11847e...1d22f3`](./contracts/arbitrum-42161/0x11847ee581f524c29a54541a9d91587b941d22f3/); arbitrum `0x284416...f272f7`; arbitrum `0x326556...b7920d`; arbitrum `0x46566f...eb6c1c`; arbitrum `0x509e48...45ff8c`; arbitrum `0xca9676...0ce1ab`; arbitrum `0xcb8071...09ad6b`; arbitrum `0xd85641...244b25`; arbitrum `0xdba4cd...d4c8e3`; arbitrum `0xfa637f...ff70fc` | ⚠️ Unaudited |
| GmxBenchmarkMath | unknown | arbitrum | 2 deployments: arbitrum [`0x02ca12...75ca4f`](./contracts/arbitrum-42161/0x02ca120518601adbc97d603ab44e5b990d75ca4f/); arbitrum `0x528ca2...ea567d` | ⚠️ Unaudited |
| GmxV2CallbacksFacetArbitrum | unknown | arbitrum | 37 deployments: arbitrum [`0x02c55a...948edd`](./contracts/arbitrum-42161/0x02c55abdad2d35cd7c3358ada129c682b1948edd/); arbitrum `0x09c107...9e51a0`; arbitrum `0x0b05ae...84f046`; arbitrum `0x0ce396...adac8e`; arbitrum `0x181624...672507`; arbitrum `0x18409b...6464f7`; arbitrum `0x1d74fc...6a636f`; arbitrum `0x28f86f...f9bf40`; arbitrum `0x2a82ad...ac8feb`; arbitrum `0x31a50a...91e3ac`; arbitrum `0x3ba10a...6a6edc`; arbitrum `0x4e2fb6...2ee54f`; arbitrum `0x4f3354...926906`; arbitrum `0x587d68...b05645`; arbitrum `0x6027b7...a7a55e`; arbitrum `0x6a828f...1bd655`; arbitrum `0x78885c...c01f7d`; arbitrum `0x838436...106e6b`; arbitrum `0x874a3c...6dc51f`; arbitrum `0x8e25d1...358450`; arbitrum `0x934250...dd1738`; arbitrum `0xa09a93...70b7a3`; arbitrum `0xa0ad3f...605357`; arbitrum `0xa0c32b...48b37a`; arbitrum `0xa4b4dc...80e68c`; arbitrum `0xb1d680...9b443b`; arbitrum `0xb2728f...9992b3`; arbitrum `0xb2ca32...9ade5b`; arbitrum `0xbb178e...42e333`; arbitrum `0xc53662...2df1ab`; arbitrum `0xd9a0f6...8ad9b2`; arbitrum `0xda39c4...76b07a`; arbitrum `0xdad1df...7388b4`; arbitrum `0xe15a59...b0805e`; arbitrum `0xe5138c...ce1d95`; arbitrum `0xeca1da...bc2da8`; arbitrum `0xf6c2e4...bb2032` | ⚠️ Unaudited |
| GmxV2FacetArbitrum | unknown | arbitrum | 52 deployments: arbitrum [`0x009bfb...d77202`](./contracts/arbitrum-42161/0x009bfb7e9c76d08fb776a2d7f09b5447c3d77202/); arbitrum `0x03efc1...971c61`; arbitrum `0x07cce3...b0bf80`; arbitrum `0x101644...f7b22b`; arbitrum `0x1a0183...5ace77`; arbitrum `0x25de87...53f74a`; arbitrum `0x2e0138...417db2`; arbitrum `0x34440c...61e784`; arbitrum `0x3b8430...9d81a3`; arbitrum `0x3e597c...5d29dd`; arbitrum `0x3f4aad...a1c421`; arbitrum `0x4575a7...a0fe09`; arbitrum `0x4c07bf...aac8f1`; arbitrum `0x514897...b08b58`; arbitrum `0x55436a...1723e8`; arbitrum `0x5f52e3...22cb82`; arbitrum `0x61f67d...6e0a6f`; arbitrum `0x6c2df7...921ac8`; arbitrum `0x6f9c5d...d3a96a`; arbitrum `0x73c647...903071`; arbitrum `0x8f93c9...d13d23`; arbitrum `0x93df59...68d91e`; arbitrum `0x980779...aab03f`; arbitrum `0x997b79...290732`; arbitrum `0x9a7972...5eb738`; arbitrum `0xa480cf...dd7c0b`; arbitrum `0xa8fe94...809540`; arbitrum `0xae7e1d...97ae51`; arbitrum `0xb3f00b...8881f0`; arbitrum `0xb4073f...d12ad3`; arbitrum `0xb6af79...4ef22b`; arbitrum `0xbbf79d...8d5be4`; arbitrum `0xbcc297...201ed9`; arbitrum `0xbe4e41...2d2618`; arbitrum `0xc1e215...376211`; arbitrum `0xc3c881...654818`; arbitrum `0xc5dcd6...6c0ded`; arbitrum `0xca1467...79b8e0`; arbitrum `0xd1fee1...19dfb2`; arbitrum `0xd406bb...89894f`; arbitrum `0xd846fc...5353a8`; arbitrum `0xdb5380...f1e4a5`; arbitrum `0xdc1649...6dadf3`; arbitrum `0xdcb272...b06505`; arbitrum `0xe11b17...d5c42a`; arbitrum `0xe1b56c...617b5f`; arbitrum `0xe36472...c4f42f`; arbitrum `0xe5ff4d...52288b`; arbitrum `0xe923fb...be6376`; arbitrum `0xf71e04...2bfdab`; arbitrum `0xf8b2d3...f68166`; arbitrum `0xfa994c...f19cb9` | ⚠️ Unaudited |
| GmxV2FacetAvalanche | unknown | avalanche | 3 deployments: avalanche [`0x106246...f45d99`](./contracts/avalanche-43114/0x1062467cbaddfc0bfe1257f120e2710194f45d99/); avalanche `0x3f3a0d...747c5d`; avalanche `0x5e4e17...235837` | ⚠️ Unaudited |
| GmxV2PlusFacetArbitrum | unknown | arbitrum | 30 deployments: arbitrum [`0x2160d2...a2a1ea`](./contracts/arbitrum-42161/0x2160d2a4c733d40b00e37be8b96affd579a2a1ea/); arbitrum `0x2cf576...e40606`; arbitrum `0x3226ea...b46790`; arbitrum `0x3a766c...bf20f6`; arbitrum `0x3cf6cf...580843`; arbitrum `0x46c69a...9351b8`; arbitrum `0x4820bb...25043b`; arbitrum `0x52c4fb...d8ba02`; arbitrum `0x5728a7...ba3b80`; arbitrum `0x736d70...241a11`; arbitrum `0x7eb560...73580e`; arbitrum `0x7f942f...3cd0e1`; arbitrum `0x86883b...11d211`; arbitrum `0x872952...f26fd2`; arbitrum `0x88de44...84a69c`; arbitrum `0x8dab20...ff1f7e`; arbitrum `0x9aa7da...a305b8`; arbitrum `0xa4f6ca...247214`; arbitrum `0xb06360...c3c0ee`; arbitrum `0xb885fa...a684b2`; arbitrum `0xbcfbeb...b76173`; arbitrum `0xbea87f...849bfb`; arbitrum `0xc7368b...37e25b`; arbitrum `0xcfb93a...f5d5d4`; arbitrum `0xd36da1...df6c03`; arbitrum `0xe1e0bd...cb2dd5`; arbitrum `0xe202c0...0e3bfe`; arbitrum `0xea9583...b842c6`; arbitrum `0xeb071f...5a8902`; arbitrum `0xffde77...76b06d` | ⚠️ Unaudited |
| HealthMeterFacetProd | unknown | arbitrum | 14 deployments: arbitrum [`0x0f386e...0ad704`](./contracts/arbitrum-42161/0x0f386e8c205c75fe00a144be0be576490b0ad704/); arbitrum `0x124b02...33f17f`; arbitrum `0x16238e...aac8f9`; arbitrum `0x386662...25dfc9`; arbitrum `0x438da2...0d8196`; arbitrum `0x5ccf13...a91dd6`; arbitrum `0x6ddb93...c6b34e`; arbitrum `0x8edb1a...31a56b`; arbitrum `0x99983b...15ae61`; arbitrum `0xc3eefd...a13bac`; arbitrum `0xf946fe...e56233`; avalanche `0x44c075...8eea39`; avalanche `0xae8e9b...20d08c`; avalanche `0xfa9a2c...f04743` | ⚠️ Unaudited |
| LevelFinanceFacet | unknown | arbitrum | 13 deployments: arbitrum [`0x0e2cfe...6eea1d`](./contracts/arbitrum-42161/0x0e2cfe411e1f3e3aeedb06af3e5e42fd976eea1d/); arbitrum `0x17fa27...92f66c`; arbitrum `0x27898d...14736c`; arbitrum `0x326ebe...9790ad`; arbitrum `0x37a5e0...87bf0b`; arbitrum `0x619ed4...3d4749`; arbitrum `0x6e68c0...65dac3`; arbitrum `0x7304bc...423658`; arbitrum `0x7a4336...8937e2`; arbitrum `0xc663aa...5faffd`; arbitrum `0xd49ced...acd225`; arbitrum `0xdd4032...b95c4a`; arbitrum `0xe7e35b...04f563` | ⚠️ Unaudited |
| LinearIndex | unknown | avalanche | 8 deployments: avalanche [`0x035611...992ae5`](./contracts/avalanche-43114/0x035611d3237ebbe6f8eb2b7bdc580a3f53992ae5/); avalanche `0x082761...abd4bc`; avalanche `0x543744...6233a5`; avalanche `0x554da9...a1ea7e`; avalanche `0x5be954...633d4f`; avalanche `0x8894df...609bc8`; avalanche `0x899c48...cfdddc`; avalanche `0xdfef86...5bfeec` | ⚠️ Unaudited |
| LinkBorrowIndex | core_logic | arbitrum | 2 deployments: arbitrum [`0x627efa...5a71c8`](./contracts/arbitrum-42161/0x627efaaab9b63e8d1bd6aee676b8f68f9f5a71c8/); arbitrum `0x98c5ce...1f0b41` | ⚠️ Unaudited |
| LinkDepositIndex | unknown | arbitrum | 2 deployments: arbitrum [`0x10859b...4b5cd1`](./contracts/arbitrum-42161/0x10859b97e0c0b736c783a9a0f7a08e1e7a4b5cd1/); arbitrum `0x518e32...3dd5d1` | ⚠️ Unaudited |
| LinkPool | core_logic | arbitrum | [`0x2d99ee...f42a03`](./contracts/arbitrum-42161/0x2d99ee2fed53b0ec85fe32abb8135df44ff42a03/) | ⚠️ Unaudited |
| LinkPoolFactory | registry | arbitrum | [`0x37b4a5...26dae1`](./contracts/arbitrum-42161/0x37b4a5fc1ece6d1f182549ec596821a81f26dae1/) | ⚠️ Unaudited |
| LinkVariableUtilisationRatesCalculator | unknown | arbitrum | [`0x317dbf...8071cc`](./contracts/arbitrum-42161/0x317dbf309d8eb41ad036b6bcc85f411e298071cc/) | ⚠️ Unaudited |
| LiquidationFlashloan | unknown | avalanche | 4 deployments: avalanche [`0x3a7de0...345b95`](./contracts/avalanche-43114/0x3a7de0b05a0a7ed9c692e3523ca82bf6db345b95/); avalanche `0x70ab2d...523ca2`; avalanche `0xbebf96...be5c34`; avalanche `0xef59ef...948f99` | ⚠️ Unaudited |
| LiquidationFlashloanArbitrum | unknown | arbitrum | 10 deployments: arbitrum [`0x0d45a3...f6e375`](./contracts/arbitrum-42161/0x0d45a30f878895af7510f7a23e82eca253f6e375/); arbitrum `0x2eb9db...a22026`; arbitrum `0x5a8053...52a788`; arbitrum `0x66eb3b...5e0649`; arbitrum `0x71bdf0...704c28`; arbitrum `0x7c4e79...a8456c`; arbitrum `0x83cd0a...e1c3ed`; arbitrum `0x97a9a2...15c755`; arbitrum `0xc4f546...6f9c25`; arbitrum `0xd171b9...f907cc` | ⚠️ Unaudited |
| LiquidationFlashloanAvalanche | unknown | avalanche | 3 deployments: avalanche [`0x2412bc...cbe8f9`](./contracts/avalanche-43114/0x2412bc40cb51a533fbfdc2314d86d7c31fcbe8f9/); avalanche `0xa82a6b...1ba447`; avalanche `0xc20229...e1855c` | ⚠️ Unaudited |
| LTIPFacet | unknown | arbitrum | 2 deployments: arbitrum [`0x427f21...18522e`](./contracts/arbitrum-42161/0x427f2121f1a2ccaac508412bcef4e68b0418522e/); arbitrum `0xb605a0...20775a` | ⚠️ Unaudited |
| MockBorrowIndex | core_logic | arbitrum | 6 deployments: arbitrum [`0x0f24e8...18b9b4`](./contracts/arbitrum-42161/0x0f24e8b8fc7178d3a7600c33068b91d0b518b9b4/); arbitrum `0x14cb8b...d20c2d`; arbitrum `0x494d07...ac946c`; arbitrum `0x8fd72f...d4038e`; arbitrum `0x9b10f5...790b88`; arbitrum `0xf7ceaf...4c0ce2` | ⚠️ Unaudited |
| MockDepositIndex | unknown | arbitrum | 6 deployments: arbitrum [`0x0fdbb2...031e8f`](./contracts/arbitrum-42161/0x0fdbb2018f98aa8b0d2d91bd7a0336766d031e8f/); arbitrum `0x344993...6af923`; arbitrum `0x4be302...112195`; arbitrum `0xb07262...f5bb61`; arbitrum `0xd58b43...f0ada6`; arbitrum `0xeb84cb...13803d` | ⚠️ Unaudited |
| MockERC20OpenMint | token | arbitrum | [`0x5ce6ee...e872af`](./contracts/arbitrum-42161/0x5ce6ee56619d3ea3e54d5e9c7d92bec266e872af/) | ⚠️ Unaudited |
| MockPool | core_logic | arbitrum | 11 deployments: arbitrum [`0x0e3113...ed70a7`](./contracts/arbitrum-42161/0x0e31136cd6742b4656ed46e28306080620ed70a7/); arbitrum `0x49f296...6fc4b9`; arbitrum `0x4b181a...b2814b`; arbitrum `0x5f9a71...dc47f4`; arbitrum `0x6a4959...84ce39`; arbitrum `0x6d1cae...80ee80`; arbitrum `0x729acf...414f9c`; arbitrum `0x8ee2d6...7e00a2`; arbitrum `0xce7d93...b11ecb`; arbitrum `0xd9ec11...49329b`; arbitrum `0xee30b0...cb033d` | ⚠️ Unaudited |
| MockToken | token | arbitrum | 3 deployments: arbitrum [`0x22205e...c6d2b7`](./contracts/arbitrum-42161/0x22205e4722a99f83434c555dbae6849e0bc6d2b7/); arbitrum `0x63a657...1f32b4`; arbitrum `0xa93930...1ba234` | ⚠️ Unaudited |
| MockToken6Decimals | token | arbitrum | 4 deployments: arbitrum [`0x019aba...eab533`](./contracts/arbitrum-42161/0x019aba434a6dc067aa7267488e5e763360eab533/); arbitrum `0x7a4a53...81dd3b`; arbitrum `0xb3efdb...5c009d`; arbitrum `0xcc318d...5d2f6f` | ⚠️ Unaudited |
| OwnershipFacet | unknown | avalanche | 8 deployments: arbitrum `0x13b4ee...893932`; arbitrum `0x1e34d7...01a7f6`; arbitrum `0x88efcc...8f9300`; arbitrum `0x8f1374...0770b2`; arbitrum `0x966ac0...414384`; arbitrum `0x9e8451...c36dc7`; avalanche [`0x10cc67...68a859`](./contracts/avalanche-43114/0x10cc67f62d7869ee3d48da50e0945e48ad68a859/); avalanche `0xa8fe94...809540` | ⚠️ Unaudited |
| PangolinDEXFacet | unknown | avalanche | 5 deployments: avalanche [`0x280027...08e90d`](./contracts/avalanche-43114/0x280027359db03b38a2c765a49457b5d02208e90d/); avalanche `0x61ff2a...74680e`; avalanche `0xb605a0...20775a`; avalanche `0xe29e0f...ed796e`; avalanche `0xe3bd27...5f353d` | ⚠️ Unaudited |
| PangolinExchange | unknown | avalanche | 2 deployments: avalanche [`0x027843...8702ba`](./contracts/avalanche-43114/0x0278438423f433e277f65d14c0e002b8828702ba/); avalanche `0x8fe384...7a1de0` | ⚠️ Unaudited |
| PangolinIntermediary | unknown | avalanche | 8 deployments: avalanche [`0x251e8a...291def`](./contracts/avalanche-43114/0x251e8adefc9005148618a8789c87a37087291def/); avalanche `0x493d93...79b81c`; avalanche `0x5d3e1e...e2dac6`; avalanche `0x66eb3b...5e0649`; avalanche `0x771b82...bb4901`; avalanche `0x843a52...b1f538`; avalanche `0x9a7972...5eb738`; avalanche `0xdb5d94...7cf7fa` | ⚠️ Unaudited |
| PangolinIntermediaryTUP | proxy | avalanche | [`0x82ea19...fe4435`](./contracts/avalanche-43114/0x82ea19989cb775d7914c06ffe3a5d996a6fe4435/) | ⚠️ Unaudited |
| ParaSwapFacet | unknown | arbitrum | 19 deployments: arbitrum [`0x0aa196...5986c6`](./contracts/arbitrum-42161/0x0aa196a803a1866ec51522ef0e762bf0aa5986c6/); arbitrum `0x29126b...f680a4`; arbitrum `0x34cb5f...19db03`; arbitrum `0x394c6a...ba5783`; arbitrum `0x3b963b...066ac3`; arbitrum `0x641493...19f90a`; arbitrum `0x88f6f4...a5a67d`; arbitrum `0x8cb22e...c7009a`; arbitrum `0x91fa62...02de01`; arbitrum `0x941421...305c90`; arbitrum `0x9b80b7...dcf9ea`; arbitrum `0xa64a53...32043d`; arbitrum `0xaa50e9...4b317a`; arbitrum `0xb54804...aa9684`; arbitrum `0xbbf3d7...a8696c`; arbitrum `0xca7e2b...5925cf`; arbitrum `0xed01f3...f61ee0`; arbitrum `0xf45297...c5a30b`; avalanche `0x715a84...fede75` | ⚠️ Unaudited |
| PenpieFacet | unknown | arbitrum | 14 deployments: arbitrum [`0x130c97...ad0acf`](./contracts/arbitrum-42161/0x130c975a189024cdfe4a4b38706a431463ad0acf/); arbitrum `0x4dc5a4...6e07d7`; arbitrum `0x50c477...1d509b`; arbitrum `0x5550b2...7205bb`; arbitrum `0x7145c3...ec2db5`; arbitrum `0x753a67...2ac5bc`; arbitrum `0x9ca3f3...ab8eda`; arbitrum `0xa9b5f2...a6e255`; arbitrum `0xc0b6df...05f676`; arbitrum `0xcda8c6...72d60a`; arbitrum `0xd4185b...35e211`; arbitrum `0xf5ae41...91f739`; arbitrum `0xf8d96b...05fc09`; arbitrum `0xff1138...ae2b83` | ⚠️ Unaudited |
| Pool | core_logic | arbitrum | 6 deployments: arbitrum [`0x14c82c...fddd72`](./contracts/arbitrum-42161/0x14c82cfc2c651700a66abdd7dc375c9ceefddd72/); arbitrum `0x275cae...39675c`; arbitrum `0x2e2fe9...b883c5`; arbitrum `0x465a38...df3bcf`; arbitrum `0x5f3db5...3e4195`; arbitrum `0x7dcf90...fb63f0` | ⚠️ Unaudited |
| PoolFactory | registry | avalanche | [`0x38c8a2...526133`](./contracts/avalanche-43114/0x38c8a29fe32c6d95e6622944a953aaa29a526133/) | ⚠️ Unaudited |
| Prime_L2 | unknown | arbitrum | [`0x3de81c...a6d14e`](./contracts/arbitrum-42161/0x3de81ce90f5a27c5e6a5adb04b54aba488a6d14e/) | ⚠️ Unaudited |
| PrimeBuybackDistributor | operational_periphery | arbitrum | [`0x3d6021...b3ace3`](./contracts/arbitrum-42161/0x3d6021a1bfa4bc4f1538e22201425c2382b3ace3/) | ⚠️ Unaudited |
| PrimeLeverageFacet | unknown | arbitrum | 6 deployments: arbitrum [`0x1899f6...f1fa91`](./contracts/arbitrum-42161/0x1899f6d524637808f2d53125b6ccfe6d2df1fa91/); arbitrum `0x4d2946...9c7d96`; arbitrum `0x5cc04d...c4c3a0`; arbitrum `0x5d3301...938dcc`; arbitrum `0xabc210...d1127c`; arbitrum `0xb50853...a1411c` | ⚠️ Unaudited |
| PrimeRtknAirdropDistributor | operational_periphery | arbitrum | 14 deployments: arbitrum [`0x0b6b88...29117d`](./contracts/arbitrum-42161/0x0b6b8815e9d9c74437642a8ec5587f905d29117d/); arbitrum `0x0c0cbd...0ea45f`; arbitrum `0x314497...3e991f`; arbitrum `0x5f2d3d...388258`; arbitrum `0x6ed885...fbe37a`; arbitrum `0x6eff91...2fea8c`; arbitrum `0x708c95...49366d`; arbitrum `0x7ccd64...c3d52a`; arbitrum `0x8b5306...08640b`; arbitrum `0x99ab80...bb1ac7`; arbitrum `0x9c4fbb...fc462d`; arbitrum `0xe3553b...afdfd1`; arbitrum `0xf02908...46acf4`; arbitrum `0xfda763...f7cdb2` | ⚠️ Unaudited |
| RecoveryFacet | unknown | arbitrum | [`0x8b912b...f912f3`](./contracts/arbitrum-42161/0x8b912ba433efba3ac0000241b558f3aa05f912f3/) | ⚠️ Unaudited |
| RemoveArbiAssetFacet | unknown | arbitrum | 2 deployments: arbitrum [`0x8d74f3...0dabfb`](./contracts/arbitrum-42161/0x8d74f3944674b2610abfcb58190d60c7190dabfb/); arbitrum `0x9e4de5...b80651` | ⚠️ Unaudited |
| RemoveOwnedAssetsFacet | unknown | avalanche | 3 deployments: avalanche [`0x4a8034...662655`](./contracts/avalanche-43114/0x4a8034b99ba5bb5a0530ab8d695ce8365b662655/); avalanche `0xba1eba...e43e42`; avalanche `0xd8d295...a9061e` | ⚠️ Unaudited |
| RemoveWstEthAssetFacet | unknown | arbitrum | [`0x8fe7d8...71dc6e`](./contracts/arbitrum-42161/0x8fe7d80de1e4ef8f35f21b3dd5bdf82e6171dc6e/) | ⚠️ Unaudited |
| ReusablePrimeDistributor | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x90ab08...cc2620`](./contracts/arbitrum-42161/0x90ab083de7b2d658652ffd7da9481d768acc2620/); arbitrum `0xdce1e5...885f3e` | ⚠️ Unaudited |
| RTKNConverter | unknown | arbitrum | 16 deployments: arbitrum [`0x0ff4c4...fffe25`](./contracts/arbitrum-42161/0x0ff4c49ea601a5ddb6bd0a836e55fcd72dfffe25/); arbitrum `0x129d8f...dc2525`; arbitrum `0x1bf15c...a59e73`; arbitrum `0x42fbae...c9c981`; arbitrum `0x487598...572211`; arbitrum `0x64933d...cd9349`; arbitrum `0x853b35...75a7e3`; arbitrum `0x85b3e2...58bbaa`; arbitrum `0x8a1ac9...a4525c`; arbitrum `0x92b548...7a2aa0`; arbitrum `0xa9535e...1e93b6`; arbitrum `0xab6919...e7d93c`; arbitrum `0xb50ada...4f51c6`; arbitrum `0xb97a31...4079dc`; arbitrum `0xc8f573...a096e4`; arbitrum `0xd603c2...801706` | ⚠️ Unaudited |
| RTKNDP | unknown | arbitrum | 6 deployments: arbitrum [`0x10972f...326da3`](./contracts/arbitrum-42161/0x10972f94fd36d0bbc5b5437da26feda7db326da3/); arbitrum `0x47f655...388af7`; arbitrum `0x8eb3ce...bf03dc`; arbitrum `0xd1a131...6377ef`; arbitrum `0xf27f8b...dd2af2`; arbitrum `0xf3eaa6...ed6c76` | ⚠️ Unaudited |
| RTKNDP2 | unknown | arbitrum | [`0xca4dbd...ce160d`](./contracts/arbitrum-42161/0xca4dbd9a813235f09e734513a86cb7291cce160d/) | ⚠️ Unaudited |
| RTKNMock1 | unknown | arbitrum | [`0x77811b...daa85e`](./contracts/arbitrum-42161/0x77811b9a74a714f5e996cee65e97dfbfa5daa85e/) | ⚠️ Unaudited |
| RTKNMock2 | unknown | arbitrum | [`0x3310bc...815a71`](./contracts/arbitrum-42161/0x3310bc003329c2e75226b62c1396ef94cf815a71/) | ⚠️ Unaudited |
| RtknToPrimeConverter | unknown | arbitrum | 6 deployments: arbitrum [`0x14d199...d4dd0b`](./contracts/arbitrum-42161/0x14d199303eb846f19efa40b2e5d2581f94d4dd0b/); arbitrum `0x85ff7e...47a7bd`; arbitrum `0xaa9cea...51ba78`; arbitrum `0xad2e37...3c98b4`; arbitrum `0xc1e3ef...3f75e5`; arbitrum `0xf2adb0...243ec2` | ⚠️ Unaudited |
| SimpleFactory | registry | avalanche | [`0x274ae5...bc7054`](./contracts/avalanche-43114/0x274ae5a0dab6a0e059e7a45a5227b1a947bc7054/) | ⚠️ Unaudited |
| SmartLoan | unknown | avalanche | [`0x03ecc7...eff127`](./contracts/avalanche-43114/0x03ecc7868d203593889b640a015c1c9f93eff127/) | ⚠️ Unaudited |
| SmartLoanDiamondBeacon | registry | avalanche | 9 deployments: arbitrum `0x62cf82...dc0c6c`; arbitrum `0x968f94...6e2651`; arbitrum `0xb3a1e0...ea6f9e`; avalanche [`0x023da3...e76ccb`](./contracts/avalanche-43114/0x023da3e0d49ee05704773271b11484c6d1e76ccb/); avalanche `0x26f868...fbcd10`; avalanche `0x2916b3...94e56d`; avalanche `0x5f8f0c...1a6a7d`; avalanche `0x7dbcb7...b7f2d1`; avalanche `0x952361...1530b2` | ⚠️ Unaudited |
| SmartLoanLimitedCollateral | unknown | avalanche | 10 deployments: avalanche [`0x02efc4...d07cc2`](./contracts/avalanche-43114/0x02efc4f1c6b5c70cdb45a7d6000734e084d07cc2/); avalanche `0x182f2c...03d5ba`; avalanche `0x379c40...e50f35`; avalanche `0x4a5fcd...58e51b`; avalanche `0x56f671...b8fd43`; avalanche `0x7789bf...2fcaf7`; avalanche `0x8903cc...152cb1`; avalanche `0x962dfc...72fa55`; avalanche `0xa42be1...e43f16`; avalanche `0xf7844a...e262cd` | ⚠️ Unaudited |
| SmartLoanLiquidationFacet | unknown | arbitrum | 24 deployments: arbitrum [`0x10cc67...68a859`](./contracts/arbitrum-42161/0x10cc67f62d7869ee3d48da50e0945e48ad68a859/); arbitrum `0x16fbaa...deb6b8`; arbitrum `0x2ac333...5e8d2a`; arbitrum `0x2e4cf9...58d207`; arbitrum `0x337d2d...9bfb06`; arbitrum `0x33eb03...2dab34`; arbitrum `0x349c3b...e11667`; arbitrum `0x43c4d0...9f4201`; arbitrum `0x65cb4f...85eada`; arbitrum `0x686e83...2893a0`; arbitrum `0x84db4e...c89d7f`; arbitrum `0x954467...e72c15`; arbitrum `0x97bf6e...04fdea`; arbitrum `0xa99572...f0c2b2`; arbitrum `0xc7144e...538467`; arbitrum `0xe3a10f...fbe95d`; arbitrum `0xf5481a...7a94a7`; arbitrum `0xf6ea93...6a9935`; avalanche `0x1396d8...c9a21e`; avalanche `0x2643c5...f37082`; avalanche `0x365854...2e3702`; avalanche `0x3a5c3d...579e45`; avalanche `0x9049e7...085e77`; avalanche `0xbf98e0...5be421` | ⚠️ Unaudited |
| SmartLoansFactory | registry | arbitrum | 16 deployments: arbitrum [`0x04f88d...ec5c0f`](./contracts/arbitrum-42161/0x04f88dcb30c7e51b908758472f242abf8fec5c0f/); arbitrum `0x1a942d...c350b9`; arbitrum `0x4c11e3...e7f31d`; arbitrum `0x4f8712...34cbea`; arbitrum `0x8b5c03...9eb22d`; arbitrum `0x97f4c8...7f6e4e`; arbitrum `0x9c3032...51122a`; arbitrum `0xe5b625...7c150e`; arbitrum `0xe5b735...5b98c0`; arbitrum `0xfe1406...67a347`; arbitrum `0xff5e3d...265c20`; avalanche `0x3b3d28...6145fd`; avalanche `0x63d138...ac18e7`; avalanche `0x6715e7...7acb39`; avalanche `0x7bd921...eff1cd`; avalanche `0xa1eddb...1315b4` | ⚠️ Unaudited |
| SmartLoansFactoryRestrictedAccess | registry | avalanche | 2 deployments: avalanche [`0x12318f...0728b6`](./contracts/avalanche-43114/0x12318fbf995503439f411a8288a0ddd77a0728b6/); avalanche `0xc80e2d...199ba9` | ⚠️ Unaudited |
| SmartLoansFactoryTUP | registry | avalanche | [`0x3ea9d4...21b03d`](./contracts/avalanche-43114/0x3ea9d480295a73fd2af95b4d96c2aff88b21b03d/) | ⚠️ Unaudited |
| SmartLoansFactoryWithAccessNFT | registry | avalanche | 6 deployments: avalanche [`0x5a3899...89ed7f`](./contracts/avalanche-43114/0x5a3899fb27183c115ffbe22a58321bc85d89ed7f/); avalanche `0x86de3b...23862d`; avalanche `0x911fd4...9094e3`; avalanche `0xc46167...ebced9`; avalanche `0xcdf738...362560`; avalanche `0xf3cdfa...6fee1e` | ⚠️ Unaudited |
| SmartLoanViewFacet | unknown | arbitrum | 27 deployments: arbitrum [`0x049393...cc94fc`](./contracts/arbitrum-42161/0x049393d11cf754ad6778748972ad9098becc94fc/); arbitrum `0x13ff76...23fe64`; arbitrum `0x28a7ca...62f674`; arbitrum `0x2c2bf8...cee8a8`; arbitrum `0x376314...c2b3ad`; arbitrum `0x37fc55...821686`; arbitrum `0x39ca77...5d0cd9`; arbitrum `0x4659db...c437f2`; arbitrum `0x5429c8...f36b54`; arbitrum `0x998092...df5558`; arbitrum `0xae2029...6ef055`; arbitrum `0xb32014...1b01a6`; arbitrum `0xc6eb2e...16c1af`; arbitrum `0xcc7c4c...d40829`; arbitrum `0xd9eb3d...364512`; arbitrum `0xdad16b...63d1e1`; arbitrum `0xe4b97f...95ab5b`; arbitrum `0xe5cbab...2ee51d`; arbitrum `0xe849cb...447f59`; arbitrum `0xeed177...8d9c98`; arbitrum `0xf33ca4...ccfa51`; arbitrum `0xf44472...ebeba0`; arbitrum `0xfc4f39...4c201d`; avalanche `0x7a9de4...426ef0`; avalanche `0x8e2bd8...cef70a`; avalanche `0xa31316...12d39b`; avalanche `0xd406bb...89894f` | ⚠️ Unaudited |
| SmartLoanWrappedNativeTokenFacet | token | arbitrum | 14 deployments: arbitrum [`0x05ced7...046a62`](./contracts/arbitrum-42161/0x05ced72e1d0eb003ded18e8f3ab32133f9046a62/); arbitrum `0x10d3dc...e5ad3f`; arbitrum `0x121b59...af97fa`; arbitrum `0x226603...717ad6`; arbitrum `0x388f7c...492d54`; arbitrum `0x8a3cda...cb5fa6`; arbitrum `0x8d784a...994d95`; arbitrum `0xe372fa...7d64a3`; arbitrum `0xe43a65...e820f8`; avalanche `0x076460...a46c4f`; avalanche `0x2d7ade...05239b`; avalanche `0x3f06f8...d270ee`; avalanche `0x42f642...1aba7a`; avalanche `0x871a44...0f1dc1` | ⚠️ Unaudited |
| SolvencyFacetProd | unknown | avalanche | 6 deployments: arbitrum `0xe4f747...d9dbc8`; avalanche [`0x05ff7c...f7a5dc`](./contracts/avalanche-43114/0x05ff7ca3ae0f6b8f110069ad31425e173df7a5dc/); avalanche `0x1fbe7d...b9fc64`; avalanche `0x27898d...14736c`; avalanche `0x5550b2...7205bb`; avalanche `0xfebedc...a83bc1` | ⚠️ Unaudited |
| SolvencyFacetProdArbitrum | unknown | arbitrum | 36 deployments: arbitrum [`0x0412b8...48f25c`](./contracts/arbitrum-42161/0x0412b84ed38440de599b926ae0d6332e3148f25c/); arbitrum `0x044e5f...a6e303`; arbitrum `0x0d10d3...ece007`; arbitrum `0x12f43e...1e6a88`; arbitrum `0x1d7ec7...1b9be0`; arbitrum `0x2a43c8...bf2a8f`; arbitrum `0x2a47f5...8282d6`; arbitrum `0x2f3005...79fe40`; arbitrum `0x3149a5...65cccd`; arbitrum `0x318533...26c395`; arbitrum `0x3cb6aa...f134b3`; arbitrum `0x46de55...6f2ff6`; arbitrum `0x579d0b...15c467`; arbitrum `0x5a3899...89ed7f`; arbitrum `0x6e4153...6d2aa4`; arbitrum `0x79f221...afebee`; arbitrum `0x7ec901...2c8590`; arbitrum `0x8f27fc...5d3641`; arbitrum `0x901ff7...39a8d8`; arbitrum `0x92a7b9...a8ec1f`; arbitrum `0x988cf5...2881e9`; arbitrum `0xa334e8...707770`; arbitrum `0xac3a92...804aba`; arbitrum `0xc938bd...cb66a7`; arbitrum `0xca605c...dc916c`; arbitrum `0xce49cc...d49e1a`; arbitrum `0xd3cd21...30e248`; arbitrum `0xd7eae5...23cadc`; arbitrum `0xda0de5...8a2e54`; arbitrum `0xda1c1b...8cfba2`; arbitrum `0xdc8488...1e7910`; arbitrum `0xddff57...4e891e`; arbitrum `0xe3b642...376d9c`; arbitrum `0xe91ddd...fa506a`; arbitrum `0xf102c7...427681`; arbitrum `0xfff988...e1db14` | ⚠️ Unaudited |
| SolvencyFacetProdAvalanche | unknown | avalanche | 6 deployments: avalanche [`0x3ee41e...2508d0`](./contracts/avalanche-43114/0x3ee41ee2812cd65d907c046ea453e365f62508d0/); avalanche `0x66d589...023164`; avalanche `0x8ddbaf...8bd6a3`; avalanche `0xb40da8...85804e`; avalanche `0xd1cd5d...7ba405`; avalanche `0xef2d87...6941b6` | ⚠️ Unaudited |
| sPrimeRevenueTokenChoices | token | arbitrum | [`0xedbe47...8f4434`](./contracts/arbitrum-42161/0xedbe47785c5ac7429b2240bd2466a93a1e8f4434/) | ⚠️ Unaudited |
| SteakHutFinanceFacet | unknown | avalanche | 5 deployments: avalanche [`0x26e238...a6dbd6`](./contracts/avalanche-43114/0x26e2380b3df76ee922b82a632529301aa4a6dbd6/); avalanche `0x37e0ed...46cca7`; avalanche `0x857376...f0d808`; avalanche `0xd173e6...a4bcda`; avalanche `0xe8eab8...0c0a82` | ⚠️ Unaudited |
| SushiSwapDEXFacet | unknown | arbitrum | [`0x952361...1530b2`](./contracts/arbitrum-42161/0x9523615c15d3743cb3198b4464048b064f1530b2/) | ⚠️ Unaudited |
| SushiSwapIntermediary | unknown | arbitrum | 2 deployments: arbitrum [`0xbadc83...4a52e1`](./contracts/arbitrum-42161/0xbadc83c88d486fb919e5e4360f96954c1b4a52e1/); arbitrum `0xfd5665...3a7b79` | ⚠️ Unaudited |
| SwapDebtFacet | unknown | arbitrum | 6 deployments: arbitrum [`0x0867d8...24a863`](./contracts/arbitrum-42161/0x0867d8c79a5692922181105b217fe5c64c24a863/); arbitrum `0x1b3909...22957f`; arbitrum `0x1f53c3...618b9e`; arbitrum `0x81c96f...dca388`; arbitrum `0xac5194...d19187`; arbitrum `0xdc168a...0bc576` | ⚠️ Unaudited |
| TestGmxV2 | unknown | arbitrum | [`0x89f85f...c2ad86`](./contracts/arbitrum-42161/0x89f85f9ec26c6bbcc102e2cb5a3c67652cc2ad86/) | ⚠️ Unaudited |
| TokenManager | governance | arbitrum | 31 deployments: arbitrum [`0x005613...9c7ff9`](./contracts/arbitrum-42161/0x0056137622530596aa9d880edb744fc9169c7ff9/); arbitrum `0x04aec3...b9539c`; arbitrum `0x0a0d95...74e255`; arbitrum `0x18b95c...27a26c`; arbitrum `0x35ca24...a0b3cd`; arbitrum `0x365854...2e3702`; arbitrum `0x38f4f6...a18d30`; arbitrum `0x462b7e...e506c3`; arbitrum `0x4f032c...92d8d9`; arbitrum `0x7ba466...0fa7c3`; arbitrum `0x81db28...bc5b7f`; arbitrum `0x8463b7...a823de`; arbitrum `0x9c122b...02cd36`; arbitrum `0x9c1876...6cfe3d`; arbitrum `0xa6f394...73b423`; arbitrum `0xb70286...bcc132`; arbitrum `0xb80670...3a4304`; arbitrum `0xc29afe...022967`; arbitrum `0xe182e5...c5ed84`; arbitrum `0xe24e0a...42ed18`; arbitrum `0xf3608e...ca077e`; arbitrum `0xfe36a0...822937`; avalanche `0x28739d...ccfabc`; avalanche `0x34cb5f...19db03`; avalanche `0x656024...a6e5f6`; avalanche `0x6e4153...6d2aa4`; avalanche `0x76cc6e...944d3e`; avalanche `0x7c4e79...a8456c`; avalanche `0x938a0c...bc8518`; avalanche `0x9e02b7...3ead39`; avalanche `0xdc1649...6dadf3` | ⚠️ Unaudited |
| TokenManagerTUP | governance | avalanche | 2 deployments: avalanche [`0xcfc3a0...8ebef8`](./contracts/avalanche-43114/0xcfc3a08878e104b017a51296cf26343c038ebef8/); avalanche `0xf39782...8ed58e` | ⚠️ Unaudited |
| TraderJoeDEXFacet | unknown | avalanche | 5 deployments: avalanche [`0x09fa9b...77e1f4`](./contracts/avalanche-43114/0x09fa9beb9f2055fedd914d8dc0fa0f5d1077e1f4/); avalanche `0x46fad5...dfb60b`; avalanche `0x6d7c12...dcc59d`; avalanche `0x99983b...15ae61`; avalanche `0xae7e1d...97ae51` | ⚠️ Unaudited |
| TraderJoeIntermediary | unknown | avalanche | 6 deployments: avalanche [`0x03efc1...971c61`](./contracts/avalanche-43114/0x03efc13d0e7dd03167e03b2a56f7994655971c61/); avalanche `0x3de81c...a6d14e`; avalanche `0x4eecb7...3bb1af`; avalanche `0x7eb474...c598f2`; avalanche `0x83cd0a...e1c3ed`; avalanche `0xe849cb...447f59` | ⚠️ Unaudited |
| TraderJoeIntermediaryTUP | proxy | avalanche | 2 deployments: avalanche [`0x636f2e...60e0c0`](./contracts/avalanche-43114/0x636f2e0c9f4a99fb91febb45c6682ce5db60e0c0/); avalanche `0xa493b6...dfc643` | ⚠️ Unaudited |
| TraderJoeV2ArbitrumFacet | unknown | arbitrum | 28 deployments: arbitrum [`0x099702...2397a2`](./contracts/arbitrum-42161/0x099702595b16f34f6c7192150fcbfcab882397a2/); arbitrum `0x1b077f...2f3098`; arbitrum `0x21d719...9f34f2`; arbitrum `0x285026...f1252d`; arbitrum `0x33e63f...dc2200`; arbitrum `0x3490d6...77c764`; arbitrum `0x34e5e0...51a261`; arbitrum `0x364d3f...0c50a8`; arbitrum `0x445b88...975a0a`; arbitrum `0x4afd12...0c57a5`; arbitrum `0x4c6f5a...31b776`; arbitrum `0x4fcc3d...7175bc`; arbitrum `0x572d7f...8e8e77`; arbitrum `0x76483b...9e8432`; arbitrum `0x78dfaa...60ae2f`; arbitrum `0x85db28...997fae`; arbitrum `0x8629eb...33ad9c`; arbitrum `0x88ddad...c25991`; arbitrum `0x89dfd4...4f394a`; arbitrum `0x8e9dea...e4322e`; arbitrum `0x9db801...e0afe4`; arbitrum `0x9ea05b...9eb880`; arbitrum `0xb18599...768e38`; arbitrum `0xb4554d...65751c`; arbitrum `0xcdf738...362560`; arbitrum `0xd6002c...18cb5d`; arbitrum `0xeff02c...ef4268`; arbitrum `0xfc9ad6...cdbbbe` | ⚠️ Unaudited |
| TraderJoeV2AvalancheFacet | unknown | avalanche | 6 deployments: avalanche [`0x3e22d7...f50c20`](./contracts/avalanche-43114/0x3e22d7d9897030f4b0f388c79424666b46f50c20/); avalanche `0x494740...b79817`; avalanche `0x588606...39cca7`; avalanche `0x5eaa7c...013db0`; avalanche `0x76e2cb...75ad83`; avalanche `0xb2b0c5...eebb52` | ⚠️ Unaudited |
| TraderJoeV2Facet | unknown | avalanche | 6 deployments: avalanche [`0x066f86...890895`](./contracts/avalanche-43114/0x066f8649e38ad55d37799a9248509faa0d890895/); avalanche `0x0815af...154a22`; avalanche `0x686a06...84d0d2`; avalanche `0x7865fa...6f690e`; avalanche `0xaf9739...40e84a`; avalanche `0xbbb1f0...05e62f` | ⚠️ Unaudited |
| UniBorrowIndex | core_logic | arbitrum | 2 deployments: arbitrum [`0x6aa046...c7cede`](./contracts/arbitrum-42161/0x6aa046437e0d055fc0206ef305a63d9b91c7cede/); arbitrum `0xd73a65...472e45` | ⚠️ Unaudited |
| UniDepositIndex | unknown | arbitrum | 2 deployments: arbitrum [`0xd86104...b01e92`](./contracts/arbitrum-42161/0xd86104a937d2c3e4175c80017339d94ca0b01e92/); arbitrum `0xf70fdb...6dc627` | ⚠️ Unaudited |
| UniPool | core_logic | arbitrum | [`0xf9a12a...2a2967`](./contracts/arbitrum-42161/0xf9a12a4759500df05983fd3ebd7f8a8f262a2967/) | ⚠️ Unaudited |
| UniPoolFactory | registry | arbitrum | [`0x252cba...47566c`](./contracts/arbitrum-42161/0x252cba65dcea20dea4c97257107a20b80147566c/) | ⚠️ Unaudited |
| UniVariableUtilisationRatesCalculator | unknown | arbitrum | [`0xa0a4c3...f3e4ae`](./contracts/arbitrum-42161/0xa0a4c3bb42232875551794ca8608ac88a7f3e4ae/) | ⚠️ Unaudited |
| UsdcBorrowIndex | core_logic | arbitrum | 12 deployments: arbitrum [`0x01e113...4774b8`](./contracts/arbitrum-42161/0x01e113641c0785d4bff8947e0e7ea6d8074774b8/); arbitrum `0x0f61ae...0e2bf7`; arbitrum `0x526a9c...0bab35`; arbitrum `0x867f2a...472994`; arbitrum `0x9f35b2...d3063d`; arbitrum `0xb13c47...db8799`; arbitrum `0xb86e7d...4f669f`; arbitrum `0xbf1841...074c2a`; avalanche `0x5c94e2...998845`; avalanche `0x700c8c...d657f8`; avalanche `0x93a0f1...830e80`; avalanche `0xc8e375...9c8711` | ⚠️ Unaudited |
| UsdcBorrowIndexTUP | core_logic | avalanche | [`0x7feebf...c13cfa`](./contracts/avalanche-43114/0x7feebfa556281f2803abf8cae7727d4f18c13cfa/) | ⚠️ Unaudited |
| UsdcDepositIndex | unknown | arbitrum | 12 deployments: arbitrum [`0x097317...ba33a3`](./contracts/arbitrum-42161/0x097317eb45eefe2b789d9dbd58086497e0ba33a3/); arbitrum `0x3c4f8a...d3471c`; arbitrum `0x476156...1531c8`; arbitrum `0x50e063...2e01c4`; arbitrum `0x56f671...b8fd43`; arbitrum `0x87812e...9a769c`; arbitrum `0xa22a30...91d77f`; arbitrum `0xebabef...533d06`; avalanche `0x5429c8...f36b54`; avalanche `0x58570d...3b971e`; avalanche `0x58da82...c446a6`; avalanche `0xaa3a31...dd49e2` | ⚠️ Unaudited |
| UsdcDepositIndexTUP | proxy | avalanche | [`0x476df0...e313cb`](./contracts/avalanche-43114/0x476df001a8c6058c4c809930c5d441e6bbe313cb/) | ⚠️ Unaudited |
| UsdcPool | core_logic | avalanche | 33 deployments: arbitrum `0x2a1384...7f1d51`; arbitrum `0x3b3d28...6145fd`; arbitrum `0x4db8ba...514978`; arbitrum `0x546f24...f3dcc5`; arbitrum `0x591fa3...889a79`; arbitrum `0x6e1bad...748f3a`; arbitrum `0x70c5e4...7f2aaf`; arbitrum `0x784451...16d676`; arbitrum `0x78d927...5d0031`; arbitrum `0x7cc8a9...cdf6f8`; arbitrum `0x8a3b51...93f973`; arbitrum `0x8ac9dc...b965cc`; arbitrum `0x8fe384...7a1de0`; arbitrum `0x936fea...8a7f47`; arbitrum `0x93b9d0...4b2556`; arbitrum `0x94aaa8...437bae`; arbitrum `0xacf6d8...5d7b72`; arbitrum `0xb4dc91...43bfac`; arbitrum `0xc6ed4f...53b523`; arbitrum `0xd90772...8a285b`; arbitrum `0xdd3802...9ad3e9`; arbitrum `0xeaf5a4...ef340f`; arbitrum `0xf62b62...c7da92`; arbitrum `0xfb8320...889042`; avalanche [`0x034db1...97673d`](./contracts/avalanche-43114/0x034db1042fe58e795cf3f89c391443b2af97673d/); avalanche `0x121b59...af97fa`; avalanche `0x1b254c...a97875`; avalanche `0x278b32...739998`; avalanche `0x6f8e87...61450e`; avalanche `0x731a27...37729a`; avalanche `0x88f6f4...a5a67d`; avalanche `0x988414...9a9d12`; avalanche `0xbff35b...a9bd44` | ⚠️ Unaudited |
| UsdcPoolTUP | core_logic | avalanche | [`0x2323da...32d12b`](./contracts/avalanche-43114/0x2323dac85c6ab9bd6a8b5fb75b0581e31232d12b/) | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculator | unknown | arbitrum | 15 deployments: arbitrum [`0x23873d...26a329`](./contracts/arbitrum-42161/0x23873dc819554167ce7f133080978c7b0926a329/); arbitrum `0x373248...7cba9a`; arbitrum `0x38c8a2...526133`; arbitrum `0x6715e7...7acb39`; arbitrum `0xa24e8b...391dce`; arbitrum `0xb03b33...7343a1`; arbitrum `0xd4970a...95760d`; arbitrum `0xd9f6df...0bca8f`; avalanche `0x371b61...0bc482`; avalanche `0x451377...341bc5`; avalanche `0x5f2a84...74662d`; avalanche `0x60d930...9de490`; avalanche `0xa0f699...eb5a51`; avalanche `0xc83d3b...6ff10d`; avalanche `0xe1ac18...e26ace` | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculatorFixedRate | unknown | arbitrum | 4 deployments: arbitrum [`0x341fc5...c4d243`](./contracts/arbitrum-42161/0x341fc5557a5c71527518f6c231ade49659c4d243/); arbitrum `0x4c52cf...5a03b2`; arbitrum `0x9a3502...956528`; arbitrum `0xb218db...3bae74` | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculatorZeroRate | unknown | arbitrum | [`0x97886a...0b35d5`](./contracts/arbitrum-42161/0x97886abb2bdbea0e49a86ea1bcd2c4a7120b35d5/) | ⚠️ Unaudited |
| UsdtBorrowIndex | core_logic | arbitrum | 4 deployments: arbitrum [`0x42d8b0...d89202`](./contracts/arbitrum-42161/0x42d8b0131eb247098a33bba9f6446ee13dd89202/); arbitrum `0xf3915c...58595e`; avalanche `0x646afd...8ff9fe`; avalanche `0xc295bb...2c6c4a` | ⚠️ Unaudited |
| UsdtBorrowIndexTUP | core_logic | avalanche | [`0x4fb135...03aba2`](./contracts/avalanche-43114/0x4fb135e7fa11d3f4abd6d115dc23f60c9903aba2/) | ⚠️ Unaudited |
| UsdtDepositIndex | token | avalanche | 4 deployments: arbitrum `0x36df23...cf7a23`; arbitrum `0xe86ec4...4c90a7`; avalanche [`0x02f802...777118`](./contracts/avalanche-43114/0x02f802e38d22405fa4e1993858e7bb5378777118/); avalanche `0x5f6847...9e1e9f` | ⚠️ Unaudited |
| UsdtDepositIndexTUP | token | avalanche | [`0x6642dc...d975d6`](./contracts/avalanche-43114/0x6642dc3d4e5039056e0111cf67b13419f6d975d6/) | ⚠️ Unaudited |
| UsdtPool | core_logic | avalanche | 3 deployments: arbitrum `0x5fae0e...eece74`; avalanche [`0x340e98...5815e0`](./contracts/avalanche-43114/0x340e9809a7c6d65b7a231fd4fac36e743b5815e0/); avalanche `0xb02c43...e22cf7` | ⚠️ Unaudited |
| UsdtPoolFactory | registry | avalanche | [`0x4fc4f0...a4853e`](./contracts/avalanche-43114/0x4fc4f084c700de35a77890552aeed58aefa4853e/) | ⚠️ Unaudited |
| UsdtPoolTUP | core_logic | avalanche | 2 deployments: avalanche [`0xa4ae33...3d2b32`](./contracts/avalanche-43114/0xa4ae33d16096553a3fb3eee2c06a1d1ca43d2b32/); avalanche `0xd222e1...efbca1` | ⚠️ Unaudited |
| UsdtVariableUtilisationRatesCalculator | token | avalanche | 3 deployments: arbitrum `0xddc0b0...c5ae9f`; avalanche [`0x97a7dc...46102b`](./contracts/avalanche-43114/0x97a7dc7cf90df8f71a194b2db8e5c3404846102b/); avalanche `0x9a249b...a4569d` | ⚠️ Unaudited |
| VariableUtilisationRatesCalculator | unknown | avalanche | 10 deployments: avalanche [`0x0d184a...bc5a72`](./contracts/avalanche-43114/0x0d184adf34065598311233a1d37765f76fbc5a72/); avalanche `0x2b3342...bc4a28`; avalanche `0x3cb980...362ef2`; avalanche `0x4353c7...94c069`; avalanche `0x4614fa...39cfbd`; avalanche `0x749781...2c601e`; avalanche `0x87ab14...c70bc0`; avalanche `0xadc48e...fb69d1`; avalanche `0xb4307a...39e8bc`; avalanche `0xc0b6df...05f676` | ⚠️ Unaudited |
| VectorFinanceFacet | unknown | avalanche | 18 deployments: avalanche [`0x2a7676...f804b3`](./contracts/avalanche-43114/0x2a767602ac7c0e8f1d7732fa113293b5f7f804b3/); avalanche `0x2d155c...14a6bd`; avalanche `0x35eaaa...78b047`; avalanche `0x46ef42...801afc`; avalanche `0x609a91...46091f`; avalanche `0x7ab065...c4fac8`; avalanche `0x81a9c2...80fc4f`; avalanche `0x85bac7...bb1d55`; avalanche `0x87ed42...3cfaa8`; avalanche `0xa22eba...07db8e`; avalanche `0xa23d76...146716`; avalanche `0xa99572...f0c2b2`; avalanche `0xaec837...292899`; avalanche `0xbfb77d...18281b`; avalanche `0xd803da...b60f1a`; avalanche `0xecbdae...74566d`; avalanche `0xf74c44...3ccea1`; avalanche `0xf82ad9...7d7e56` | ⚠️ Unaudited |
| VectorFinanceFacetOld | unknown | avalanche | 4 deployments: avalanche [`0x244e3f...1ccba1`](./contracts/avalanche-43114/0x244e3fd22b2f0bdb2b59f4d781a9762f641ccba1/); avalanche `0xb2996e...19a885`; avalanche `0xc041e7...941705`; avalanche `0xd653ad...f6abfb` | ⚠️ Unaudited |
| vPrime | unknown | arbitrum | [`0x28739d...ccfabc`](./contracts/arbitrum-42161/0x28739d2a05d754b51f3441cbf64d4d2635ccfabc/) | ⚠️ Unaudited |
| vPrimeControllerArbitrum | governance | arbitrum | [`0x2323da...32d12b`](./contracts/arbitrum-42161/0x2323dac85c6ab9bd6a8b5fb75b0581e31232d12b/) | ⚠️ Unaudited |
| WavaxBorrowIndex | core_logic | avalanche | 4 deployments: avalanche [`0x7201e8...f7dbb1`](./contracts/avalanche-43114/0x7201e8cb96ff5bdfa69377f2f29a21027ff7dbb1/); avalanche `0x8cfb12...3e9815`; avalanche `0x8e25d1...358450`; avalanche `0xc3c881...654818` | ⚠️ Unaudited |
| WavaxBorrowIndexTUP | core_logic | avalanche | [`0xf5952b...d1e5fe`](./contracts/avalanche-43114/0xf5952b41c1ed1b2aff3e5bf3411a620951d1e5fe/) | ⚠️ Unaudited |
| WavaxDepositIndex | unknown | avalanche | 4 deployments: avalanche [`0x0b5a12...fa9492`](./contracts/avalanche-43114/0x0b5a12707249173ceae9331e3e45563d24fa9492/); avalanche `0x6eb321...5774c4`; avalanche `0xab764b...782ad2`; avalanche `0xcd5779...39420d` | ⚠️ Unaudited |
| WavaxDepositIndexTUP | proxy | avalanche | [`0xe5b625...7c150e`](./contracts/avalanche-43114/0xe5b625dc76c42d5fa96d66c5f8115fa5357c150e/) | ⚠️ Unaudited |
| WavaxPool | core_logic | avalanche | 8 deployments: avalanche [`0x02deb6...f02bfb`](./contracts/avalanche-43114/0x02deb6ea462cd896a07c23e141e0e17a01f02bfb/); avalanche `0x175451...255521`; avalanche `0x241196...88e4ce`; avalanche `0x44f6ae...3c50d4`; avalanche `0x8d4e53...348108`; avalanche `0x8f93c9...d13d23`; avalanche `0x93df59...68d91e`; avalanche `0xe7e35b...04f563` | ⚠️ Unaudited |
| WavaxPoolFactory | registry | avalanche | 2 deployments: avalanche [`0xe8fdda...74ab8e`](./contracts/avalanche-43114/0xe8fdda0cec5f3d3d3cefbcf081f9946c2b74ab8e/); avalanche `0xe91ddd...fa506a` | ⚠️ Unaudited |
| WavaxVariableUtilisationRatesCalculator | unknown | avalanche | 4 deployments: avalanche [`0x1ce026...c2add9`](./contracts/avalanche-43114/0x1ce02661c435b8dfa6572d68fb6a3c85d2c2add9/); avalanche `0x3f13aa...d4e303`; avalanche `0x4162f7...542bb0`; avalanche `0xea7bd6...c5479e` | ⚠️ Unaudited |
| WethBorrowIndex | core_logic | arbitrum | 10 deployments: arbitrum [`0x025fae...18f05d`](./contracts/arbitrum-42161/0x025faeba8a2a25293f43f079e2caa099d018f05d/); arbitrum `0x2c0ed5...570f04`; arbitrum `0x2fcd23...3b58f2`; arbitrum `0x663240...9b7716`; arbitrum `0x792a31...a32de6`; arbitrum `0x7eb84e...7a9c93`; arbitrum `0x8f0a04...ca7890`; arbitrum `0x9d0ac6...cd51c1`; arbitrum `0xb2b7ed...c22983`; arbitrum `0xb83264...3282af` | ⚠️ Unaudited |
| WethDepositIndex | token | arbitrum | 10 deployments: arbitrum [`0x1f185d...c64078`](./contracts/arbitrum-42161/0x1f185d271f14ed52ad2922ddebdf999a4ec64078/); arbitrum `0x2b67d1...158324`; arbitrum `0x2fe9a1...df415f`; arbitrum `0x406758...2a330e`; arbitrum `0x5c671d...3e497c`; arbitrum `0x6d641b...7bc335`; arbitrum `0xc4644c...9c4ae3`; arbitrum `0xcdd264...840944`; arbitrum `0xdcb1f8...a7ef6e`; arbitrum `0xe47a87...24d051` | ⚠️ Unaudited |
| WethPool | core_logic | arbitrum | 30 deployments: arbitrum [`0x028e1f...1327e9`](./contracts/arbitrum-42161/0x028e1f5dc60317043ad78793e4bd3b77131327e9/); arbitrum `0x03dbff...8e389a`; arbitrum `0x03ecc7...eff127`; arbitrum `0x0b4c71...761a5a`; arbitrum `0x0bebeb...3d46b3`; arbitrum `0x1400b8...05a3b2`; arbitrum `0x18166a...ba9cb9`; arbitrum `0x1904b2...e2e771`; arbitrum `0x22e97b...c56856`; arbitrum `0x35dc8f...dd8081`; arbitrum `0x402f80...ce8c2b`; arbitrum `0x46a2cf...81cd9d`; arbitrum `0x4816a7...3fe6fa`; arbitrum `0x483ea7...a331bb`; arbitrum `0x48dcd4...09c9f4`; arbitrum `0x494735...4a78bc`; arbitrum `0x53fda4...6ae03e`; arbitrum `0x5bfebc...8bfdbd`; arbitrum `0x5de1bc...7f72e1`; arbitrum `0x5fc2be...501110`; arbitrum `0x61ac1d...e84ebe`; arbitrum `0x788a83...7ed360`; arbitrum `0x8027e0...779ce8`; arbitrum `0xa1f7ff...609fd5`; arbitrum `0xa47adc...b78852`; arbitrum `0xb52124...1a91f2`; arbitrum `0xbe6719...1dbed8`; arbitrum `0xcde74b...4ef63d`; arbitrum `0xd334bf...58e571`; arbitrum `0xee8f1b...780b92` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculator | token | arbitrum | 6 deployments: arbitrum [`0x02a4b9...c5ae5f`](./contracts/arbitrum-42161/0x02a4b9e27911513cfe62e5763f6a37f577c5ae5f/); arbitrum `0x0d184a...bc5a72`; arbitrum `0x4d14da...24969f`; arbitrum `0x94ab21...689ffb`; arbitrum `0xd00d2b...f09ced`; arbitrum `0xe49801...897a49` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculatorFixedRate | token | arbitrum | 6 deployments: arbitrum [`0x0b11a1...b8664e`](./contracts/arbitrum-42161/0x0b11a1f29febc32cc831e80b6b0c9db330b8664e/); arbitrum `0x3acd0a...16c474`; arbitrum `0x4a0f31...987cd6`; arbitrum `0x8d4c79...fc6ede`; arbitrum `0xa17467...bbfc72`; arbitrum `0xd987b2...d7998c` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculatorZeroRate | token | arbitrum | 3 deployments: arbitrum [`0x8a80f1...b7222c`](./contracts/arbitrum-42161/0x8a80f1bc957e09bd5b06501c95b4c68c00b7222c/); arbitrum `0xcf5473...5979d7`; arbitrum `0xe59408...872ba6` | ⚠️ Unaudited |
| WithdrawalIntentFacet | operational_periphery | arbitrum | 34 deployments: arbitrum [`0x030b1b...12a2f7`](./contracts/arbitrum-42161/0x030b1bb800aa5a9da52b8e4e21d82464d712a2f7/); arbitrum `0x044cb8...e50998`; arbitrum `0x09885a...e31f32`; arbitrum `0x0b5fab...c6139f`; arbitrum `0x139f9c...4cfb52`; arbitrum `0x293768...3310d9`; arbitrum `0x4b5081...a79443`; arbitrum `0x4fd6ae...170e59`; arbitrum `0x52d572...113143`; arbitrum `0x56133d...48320a`; arbitrum `0x5c09b2...53cc6d`; arbitrum `0x5c1526...fbea69`; arbitrum `0x5e1a1b...f18b80`; arbitrum `0x6bfbb2...07d04d`; arbitrum `0x6ffea6...8b4d8e`; arbitrum `0x7b054a...8e96c7`; arbitrum `0x7b9076...b3028c`; arbitrum `0x86d200...ac4963`; arbitrum `0x8ad902...92cc75`; arbitrum `0x8fd264...297888`; arbitrum `0x92336b...5ee67b`; arbitrum `0x9eb10a...aaa6e0`; arbitrum `0xa5263d...a2382c`; arbitrum `0xa6a866...fe1a22`; arbitrum `0xa8df1c...e9c52a`; arbitrum `0xb2487e...1824e8`; arbitrum `0xb4e461...9c9c4b`; arbitrum `0xc4f726...35b05e`; arbitrum `0xd0ea7f...65edc3`; arbitrum `0xd562d0...eca489`; arbitrum `0xd6d37e...174d83`; arbitrum `0xdb443e...fe34e2`; arbitrum `0xefeb67...ab194c`; arbitrum `0xff3685...157360` | ⚠️ Unaudited |
| WithdrawUnsupportedPositionsFacet | operational_periphery | arbitrum | [`0xe5b3c1...15989c`](./contracts/arbitrum-42161/0xe5b3c10705c1fb2230aa0ff520fa2d66a015989c/) | ⚠️ Unaudited |
| WolfOfDeFiWinners | unknown | avalanche | [`0xf9a12a...2a2967`](./contracts/avalanche-43114/0xf9a12a4759500df05983fd3ebd7f8a8f262a2967/) | ⚠️ Unaudited |
| YieldYakFacet | unknown | avalanche | 14 deployments: avalanche [`0x099702...2397a2`](./contracts/avalanche-43114/0x099702595b16f34f6c7192150fcbfcab882397a2/); avalanche `0x0bf3c4...84ce22`; avalanche `0x0f31c3...a01b31`; avalanche `0x12e209...7f3ab4`; avalanche `0x267078...9cfde7`; avalanche `0x30f75f...794e3b`; avalanche `0x65567a...396d71`; avalanche `0x76ccae...0cccab`; avalanche `0x97a9a2...15c755`; avalanche `0xad35f9...5daa9b`; avalanche `0xd356cd...e223b7`; avalanche `0xdc7932...f62cae`; avalanche `0xe06e2e...f89f78`; avalanche `0xe5e104...0c040c` | ⚠️ Unaudited |
| YieldYakFacetArbi | unknown | arbitrum | 8 deployments: arbitrum [`0x17d832...7f9aee`](./contracts/arbitrum-42161/0x17d83238e851dae5bae2389876ab860ee17f9aee/); arbitrum `0x30e50a...021558`; arbitrum `0x3b642a...1faf61`; arbitrum `0x408db5...d2c1d7`; arbitrum `0xe1e983...acaa6a`; arbitrum `0xe71427...d783a6`; arbitrum `0xf5b4a2...532acc`; arbitrum `0xf9471f...ebfd73` | ⚠️ Unaudited |
| YieldYakRouter | adapter | avalanche | 3 deployments: avalanche [`0x1f818e...65da02`](./contracts/avalanche-43114/0x1f818e87bd18471c6c2ddf83245b8b39d265da02/); avalanche `0x70952a...b91f21`; avalanche `0xf81533...bf8503` | ⚠️ Unaudited |
| YieldYakSwapArbitrumFacet | unknown | arbitrum | 13 deployments: arbitrum [`0x096170...ec1715`](./contracts/arbitrum-42161/0x09617024c8a82b55a99aa72e881154a1b5ec1715/); arbitrum `0x11803b...b1e29f`; arbitrum `0x39c575...fbd44d`; arbitrum `0x437bc7...fe394e`; arbitrum `0x47b278...f7d4b0`; arbitrum `0x4d9965...19b9de`; arbitrum `0x65752f...04f6e5`; arbitrum `0x8ce5da...e0a361`; arbitrum `0xa60cd8...8ec6b3`; arbitrum `0xb03959...82f4a0`; arbitrum `0xbee8b0...2946a7`; arbitrum `0xcff6e0...bf67d6`; arbitrum `0xdb6a88...92b6a8` | ⚠️ Unaudited |
| YieldYakSwapFacet | unknown | avalanche | 4 deployments: avalanche [`0x038ef8...cb1143`](./contracts/avalanche-43114/0x038ef81897e0dea59b426c827b5d38cac0cb1143/); avalanche `0x8034e0...ddee88`; avalanche `0xc58d8d...bcb88d`; avalanche `0xcbcf4c...12b58b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Timelock | unknown | avalanche | 14 deployments: arbitrum `0x19a2e8...b841ba`; arbitrum `0x1fa4de...ff15e7`; arbitrum `0x2642a3...f7ba95`; arbitrum `0x43d9a2...c9aa93`; avalanche [`0x021e11...5f1b35`](./contracts/avalanche-43114/0x021e11cd7cf8c10c1e7cb1883122a7e7ed5f1b35/); avalanche `0x25f9e3...7860b0`; avalanche `0x2fea1f...4ab9a5`; avalanche `0x322a76...b94c28`; avalanche `0x3cf61b...49f1d4`; avalanche `0x57aa5e...2f7f12`; avalanche `0x5c31bf...8ff358`; avalanche `0xada4d4...a491cc`; avalanche `0xc85730...b5722c`; avalanche `0xd082bf...a77221` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (308)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x184dcec1fb778d22132c757f9da6f949d9b8874b) | proxy | avalanche | `0x9289d0...2764b8` | ❓ Unverified |
| Proxy (impl: 0x2550f26afa9781942a9f1ce29a6d4330dd1c11eb) | proxy | avalanche | `0x65997c...23ae2b` | ❓ Unverified |
| Proxy (impl: 0x26ae24911b1e39adec18b52aaff76efc1f5bef80) | proxy | avalanche | `0x9fdb39...a43c42` | ❓ Unverified |
| Proxy (impl: 0x3165edb27d667d8782d3d3ff09c8df3a552a102b) | proxy | avalanche | `0x3f06cf...830360` | ❓ Unverified |
| Proxy (impl: 0x3efbc6f66cdae2ef92a34141fda7d6f94e963a93) | proxy | avalanche | `0xa43824...00b4f7` | ❓ Unverified |
| Proxy (impl: 0x79cebea06ed3edeec43256c7f8ce96febbb084e4) | proxy | avalanche | `0x228a19...e5a197` | ❓ Unverified |
| Proxy (impl: 0xbadc83c88d486fb919e5e4360f96954c1b4a52e1) | proxy | avalanche | `0xb79184...ee2ba1` | ❓ Unverified |
| Proxy (impl: 0xc62f409592341fbe4953cf54e2bf6e1839024fbe) | proxy | avalanche | `0x31ee3c...68c3fa` | ❓ Unverified |
| Proxy (impl: 0xdcb1f88f89b78330d83d16fc65419ad088a7ef6e) | proxy | avalanche | `0xd38c5c...7e730e` | ❓ Unverified |
| Proxy (impl: 0xdfa06035792489f12ceb0a48fd7fd1aa2a008ec9) | proxy | avalanche | `0xd7eae5...23cadc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x00c0b3...1cb9ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x15ece4...d3b2bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1db708...f99ce1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2dfe26...98f6e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x38ec7c...823528` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x568947...120976` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x569ab1...5c0993` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6ba540...fa67bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6c4cc8...72a1ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7392da...297bf7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x838fc9...c8127d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x85ccd7...de62a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9083e0...dfedf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x970939...f3a854` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa322e7...a4399b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa5984c...1a5b48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa6b4d0...cbfb09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa9c8e3...662576` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaa36d9...2ad6ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbc6ff4...0d2edd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xce3efe...9180d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdaf78e...970d9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdb5323...c62c7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdec722...aa18dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeb1e38...50e94f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeb9cee...8cb1f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf73511...637e18` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x015fdc...6163d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x02bfca...6e0611` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x02e806...e42033` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x036f83...b65c77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x044558...aed778` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x04f88d...ec5c0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0728d6...6dcb4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0809c2...0e5ce9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x09254b...808bd2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0c6a9d...b1e50b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0ff6cd...b2d818` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x127587...a8e275` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x12a049...5dc589` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x13652f...af4c58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x160aef...9666ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x16f437...920c76` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x184dce...b8874b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1874fc...91cac0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x187ae5...213161` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x18fd7f...b0548f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1a65e1...0eec3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1a942d...c350b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1c9776...62c69b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1d18d5...be0487` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1d84e2...056c0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1efb45...8c9895` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1f6798...912538` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1f6e3e...8e9d58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x22b1b2...bc3e20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2382a0...2b2406` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x23ae8a...7b23a0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x250867...ec0e0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x26ae24...5bef80` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x26d21d...ef4721` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x27e933...ac9400` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x29a823...a201e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x29acc7...320a5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2a634b...b26a30` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2c6153...60834e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2e0c30...be7415` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2e5f11...afcce8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2eb1fa...3718b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2ec219...e8bd40` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x30be56...04f6f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x315c55...7b4870` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3165ed...2a102b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x31691e...c2a9d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x32570b...ee34d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x328651...d66d68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x33c803...c7f298` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x34b925...c8275b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x356437...206a20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3572a7...7ac62b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x35c89a...1d1547` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3750f8...37005d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3a19ec...e2526a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3b963b...066ac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3c6edb...9ec308` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3cb6aa...f134b3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3d0cc9...ae6887` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3d23f5...6b9278` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3d85b5...d5a630` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3e273b...7e7d04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3ed989...0b97be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3efbc6...963a93` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3fe9be...6af4ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x408dd6...7df0b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4109d3...53d640` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x438961...98ab59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x44bb6c...511e18` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x44e7de...c3f428` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x45e457...ae699c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x477068...a987d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x483ea7...a331bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x492579...a23428` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x49a90b...86bf39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4afc67...e4299a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4cfa2d...fd24c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x50b0b5...7a94a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x514fce...4adf17` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5236b7...216db6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x52f459...e9944d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5349d2...ccf17d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x53adce...179ae9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x53dd72...5abda8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x546bed...61ee3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x547092...aa8f77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x55c2b0...f69670` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x561f60...b7e5e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x565fd8...16c00a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x569da6...c147e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x57dcf6...64621a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x583ddf...8bd748` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x58b30d...f4181b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x58e44c...b04ec7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x591fa3...889a79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x596f6e...e7e875` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x598ff8...d4c21b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5c8dc4...67459f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5def32...42eef9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5f914e...bddf09` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x618ce9...f5c8a0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x627a40...59d7ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x62cf82...dc0c6c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x637312...dc1af3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6588ef...609ef8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x65d2ae...a68a9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x66a9b2...7da7cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x66b00a...7c3a1d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x66f3d4...7b52ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x677ed8...9bc12d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x67b3fe...6e474a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x67f000...2cdbf4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x68541a...8e9a64` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6a78ba...aefb99` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6afaf6...a56d25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6b5dc7...53e319` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6ccc94...e294b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6d149f...db1ded` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x720c05...0c5d33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x73429b...21a5bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x74c8b0...d1ea27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7582b6...44163d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x77cebb...d6167f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x784451...16d676` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x79cebe...b084e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7a4336...8937e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7a612c...71b7d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7acf6f...02bf15` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7b8fd6...14c009` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7f61ae...930bfc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x80a695...8c685b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x80e982...dacbf2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x811777...82de79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x83bc67...655819` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x85d3c8...0314e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x881fa1...e4688c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x88ddad...c25991` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x891882...2658ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x897350...d4e0c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8ac992...931666` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8b912b...f912f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8c0278...11fd1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8cf6ba...ead439` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8d40b3...21eec2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8d6e15...e4cece` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8edc9c...25baf2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8fc176...83cfcf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8ffa4c...612e32` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x906cf1...d10341` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x908444...8d9942` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x911fad...76ebb8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x912751...1b8865` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9208c8...f08dc1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x926455...f6cb10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9479fb...c9d708` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x95301e...c742f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x95c24c...80026f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x96312a...5cd1c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x97564e...88979d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9a6875...65186f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9aa920...1ca705` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9ab319...ddbc2e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9ab33e...d5e007` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9b670c...009c07` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9c1876...6cfe3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9cd7ec...9d57bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9d7c62...13b6c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9e3a4c...a74f18` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9eb889...37898d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9fd0ba...cc05fd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9ff80e...3f3607` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa0170e...0fdb71` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa0c263...818639` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa1a3c7...e5f1b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa361df...2e32a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa384b0...59d812` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa4d395...3cc5f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa4f485...03e2ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa5b79c...f5bd77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa5bcab...d287e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa68a12...9c0c7f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa75f9a...825f7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa8571f...c7f8b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa8f94e...e6ad12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaa99fc...73cacf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xab91f4...49b7a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xac0035...e5dbc9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xac6b05...2312a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xacf923...1b84d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xae0010...4eee41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf293e...e05d8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf343d...8ebdc2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xafec1b...c79650` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb04af2...d6e9c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb2343b...fecaf4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb2a70c...ac4368` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb36f67...25a829` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb49453...abac1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb5aab4...1424e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb6af79...4ef22b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb913ac...16b227` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xba1347...406745` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbadc83...4a52e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbc1aad...06ea2e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbc6ef3...72d965` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbe3278...052d7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbe4e41...2d2618` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbe79d0...97b43a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc004a7...75a096` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc4a23b...b63c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc51122...5be16c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc54c72...fb2728` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc6d91c...d1770f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc76f00...0e72ad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc7eeb6...28b235` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc8b2ab...20001b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc9b7e4...a79e9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xca60c5...91b5f5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce003b...16007b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcf1795...4dec8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcf90b3...9979e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd0e644...441c6e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd296c1...685e93` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd2a2bc...c0abd7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd33fcb...29f8bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd4412a...750375` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd44a97...0d6a40` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd55e05...352426` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xda1c1b...8cfba2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdbe8a2...e890a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdc39cc...3ab493` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xde0c5e...be4fb2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdec722...aa18dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdfa060...008ec9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe1ceab...8841b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe2c255...a09e3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe36dde...122cbf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe67b11...d6ded1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe71427...d783a6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe8043e...e1abe4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe84714...81af39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe8d7ba...69e545` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe9c7ea...885eaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xea1093...f4512d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xea7cab...9b2fd9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeaf5a4...ef340f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeb1e90...3232cb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xed6c91...9d908e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xed7ab4...eedafa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xee54f0...3ff95f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xef52a6...498187` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xefaf1a...04b20a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeff02c...ef4268` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf06fb2...d1bb44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf1bd22...185ea8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf39424...a31fee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf469c4...3640a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf62f31...e52316` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf652b8...6f5035` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf6ad3c...9fba44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf73511...637e18` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf80096...b00125` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf825b4...b2e31f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfc1643...9eb85a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfd5665...3a7b79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfdbb20...5578c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfdc928...93c9bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfde54f...c41550` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfeff07...39d1eb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfff91e...c67104` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xd26e50...6542f5`](./contracts/avalanche-43114/0xd26e504fc642b96751fd55d3e68af295806542f5/) | WavaxPoolTUP | core_logic | $0.09 | Verified native implementation with $0.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6aa0fe...8f3982`](./contracts/arbitrum-42161/0x6aa0fe94731add419897f5783712ebc13e8f3982/) | AddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f9c98...5558be`](./contracts/arbitrum-42161/0x0f9c986e9fe3d7c9de6e018ccb4e83dc555558be/) | ArbBorrowIndex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x315c55...7b4870`](./contracts/arbitrum-42161/0x315c55f5da4db2b516f1331dfa344da47c7b4870/) | ArbPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d776f...12b34f`](./contracts/arbitrum-42161/0x5d776f18289c1cadbb11d77723c3d0605912b34f/) | ArbVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x034702...c849e2`](./contracts/arbitrum-42161/0x0347025482c9f8ec6c8323e87b81eb11dcc849e2/) | ArbVariableUtilisationRatesCalculatorFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x52b952...ee8d89`](./contracts/arbitrum-42161/0x52b95237c3c1803518f52c648f3c5a7593ee8d89/) | AssetsExposureController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x040e6a...1d12e2`](./contracts/arbitrum-42161/0x040e6a4b92f00c876ab2e047dee5a9087f1d12e2/) | AssetsOperationsArbitrumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10aaef...104c71`](./contracts/arbitrum-42161/0x10aaefc8787a41f7ee44cb032859d1f412104c71/) | BeefyFinanceArbitrumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x05f08c...fad5c7`](./contracts/avalanche-43114/0x05f08c14c430a1210678d322bf9b5deb5afad5c7/) | BtcBorrowIndex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2acf4b...8a0aa8`](./contracts/arbitrum-42161/0x2acf4b820d1436d4c7f10589ae03c61a5a8a0aa8/) | BtcDepositIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x08245f...99be79`](./contracts/arbitrum-42161/0x08245f89bf4712fdf9fe3b25b85ac332da99be79/) | BtcPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa42be1...e43f16`](./contracts/arbitrum-42161/0xa42be11a62509ebf70133d5a7dd27be5e6e43f16/) | BtcPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x475589...bb63d0`](./contracts/avalanche-43114/0x475589b0ed87591a893df42ec6076d2499bb63d0/) | BtcPoolTUP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00fe52...69d2cc`](./contracts/arbitrum-42161/0x00fe526a4ff5446b98e20b5490e2e65f5b69d2cc/) | BtcVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x257757...6b46bc`](./contracts/arbitrum-42161/0x257757c91bbfd46f571b16ab70e2cf05ac6b46bc/) | BtcVariableUtilisationRatesCalculatorFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x54ef8c...d4d6ee`](./contracts/arbitrum-42161/0x54ef8c794e1375a43e657f63e9470e657bd4d6ee/) | ContractPausedEmptyImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x032d8e...b66c43`](./contracts/arbitrum-42161/0x032d8ea2e6855e898fd177eb2d7916d8fab66c43/) | CTKN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x55ca74...881826`](./contracts/arbitrum-42161/0x55ca7409da9cc35908c54a2ae9c605bf3c881826/) | CTKNMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x147e2e...1bfda0`](./contracts/arbitrum-42161/0x147e2e39a419f3641b0f9464998d197bbd1bfda0/) | DaiBorrowIndex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8894df...609bc8`](./contracts/arbitrum-42161/0x8894df0686b38d85d431f52660107b6f57609bc8/) | DaiDepositIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0444f5...85dd4d`](./contracts/arbitrum-42161/0x0444f5a0df5199b267e85a02cf044b9b8985dd4d/) | DaiPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb50349...a4c3da`](./contracts/arbitrum-42161/0xb5034979baf764aa944ca1050cf39283aba4c3da/) | DaiPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x44761e...db5c1f`](./contracts/arbitrum-42161/0x44761ea5a4b92adbbe8c17212c97e3de4bdb5c1f/) | DaiVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d33b4...81859e`](./contracts/arbitrum-42161/0x5d33b4b48f2d8842d306923077868123c981859e/) | DaiVariableUtilisationRatesCalculatorFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x255700...d557f9`](./contracts/arbitrum-42161/0x255700194f34162405eed34549b678d0e4d557f9/) | DaiVariableUtilisationRatesCalculatorZeroRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b420f...0bccea`](./contracts/arbitrum-42161/0x0b420f7002375543d04471bf84ead6fb0f0bccea/) | DepositSwapArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e273b...7e7d04`](./contracts/arbitrum-42161/0x3e273bcc448d22b9329a56da3a91ace1b57e7d04/) | DiamondInit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9add42...d94860`](./contracts/arbitrum-42161/0x9add42075a0fa68fb9891779f20e7e8074d94860/) | ERC20Mock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x23c691...dd7b93`](./contracts/avalanche-43114/0x23c69155bd7cc8f63cac203b364edb0e96dd7b93/) | EthBorrowIndex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x796dbe...32132f`](./contracts/avalanche-43114/0x796dbe7adc72158f08b0b79e20caa4293d32132f/) | EthDepositIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x58ee09...f4b166`](./contracts/arbitrum-42161/0x58ee09b419fb027315c7ca5390298a7355f4b166/) | EthPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd7feb2...359148`](./contracts/avalanche-43114/0xd7feb276ba254cd9b34804a986ce9a8c3e359148/) | EthPoolTUP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b8c6e...f0cbd0`](./contracts/arbitrum-42161/0x1b8c6ece5588d21369935a91d3f2459f66f0cbd0/) | GLPFacetArbi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11847e...1d22f3`](./contracts/arbitrum-42161/0x11847ee581f524c29a54541a9d91587b941d22f3/) | GlvFacetArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02ca12...75ca4f`](./contracts/arbitrum-42161/0x02ca120518601adbc97d603ab44e5b990d75ca4f/) | GmxBenchmarkMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02c55a...948edd`](./contracts/arbitrum-42161/0x02c55abdad2d35cd7c3358ada129c682b1948edd/) | GmxV2CallbacksFacetArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x009bfb...d77202`](./contracts/arbitrum-42161/0x009bfb7e9c76d08fb776a2d7f09b5447c3d77202/) | GmxV2FacetArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2160d2...a2a1ea`](./contracts/arbitrum-42161/0x2160d2a4c733d40b00e37be8b96affd579a2a1ea/) | GmxV2PlusFacetArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f386e...0ad704`](./contracts/arbitrum-42161/0x0f386e8c205c75fe00a144be0be576490b0ad704/) | HealthMeterFacetProd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e2cfe...6eea1d`](./contracts/arbitrum-42161/0x0e2cfe411e1f3e3aeedb06af3e5e42fd976eea1d/) | LevelFinanceFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x627efa...5a71c8`](./contracts/arbitrum-42161/0x627efaaab9b63e8d1bd6aee676b8f68f9f5a71c8/) | LinkBorrowIndex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10859b...4b5cd1`](./contracts/arbitrum-42161/0x10859b97e0c0b736c783a9a0f7a08e1e7a4b5cd1/) | LinkDepositIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2d99ee...f42a03`](./contracts/arbitrum-42161/0x2d99ee2fed53b0ec85fe32abb8135df44ff42a03/) | LinkPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x37b4a5...26dae1`](./contracts/arbitrum-42161/0x37b4a5fc1ece6d1f182549ec596821a81f26dae1/) | LinkPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x317dbf...8071cc`](./contracts/arbitrum-42161/0x317dbf309d8eb41ad036b6bcc85f411e298071cc/) | LinkVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3a7de0...345b95`](./contracts/avalanche-43114/0x3a7de0b05a0a7ed9c692e3523ca82bf6db345b95/) | LiquidationFlashloan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d45a3...f6e375`](./contracts/arbitrum-42161/0x0d45a30f878895af7510f7a23e82eca253f6e375/) | LiquidationFlashloanArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x427f21...18522e`](./contracts/arbitrum-42161/0x427f2121f1a2ccaac508412bcef4e68b0418522e/) | LTIPFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0fdbb2...031e8f`](./contracts/arbitrum-42161/0x0fdbb2018f98aa8b0d2d91bd7a0336766d031e8f/) | MockDepositIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5ce6ee...e872af`](./contracts/arbitrum-42161/0x5ce6ee56619d3ea3e54d5e9c7d92bec266e872af/) | MockERC20OpenMint | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e3113...ed70a7`](./contracts/arbitrum-42161/0x0e31136cd6742b4656ed46e28306080620ed70a7/) | MockPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x22205e...c6d2b7`](./contracts/arbitrum-42161/0x22205e4722a99f83434c555dbae6849e0bc6d2b7/) | MockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x019aba...eab533`](./contracts/arbitrum-42161/0x019aba434a6dc067aa7267488e5e763360eab533/) | MockToken6Decimals | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x10cc67...68a859`](./contracts/avalanche-43114/0x10cc67f62d7869ee3d48da50e0945e48ad68a859/) | OwnershipFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0aa196...5986c6`](./contracts/arbitrum-42161/0x0aa196a803a1866ec51522ef0e762bf0aa5986c6/) | ParaSwapFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x130c97...ad0acf`](./contracts/arbitrum-42161/0x130c975a189024cdfe4a4b38706a431463ad0acf/) | PenpieFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14c82c...fddd72`](./contracts/arbitrum-42161/0x14c82cfc2c651700a66abdd7dc375c9ceefddd72/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d6021...b3ace3`](./contracts/arbitrum-42161/0x3d6021a1bfa4bc4f1538e22201425c2382b3ace3/) | PrimeBuybackDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1899f6...f1fa91`](./contracts/arbitrum-42161/0x1899f6d524637808f2d53125b6ccfe6d2df1fa91/) | PrimeLeverageFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b6b88...29117d`](./contracts/arbitrum-42161/0x0b6b8815e9d9c74437642a8ec5587f905d29117d/) | PrimeRtknAirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b912b...f912f3`](./contracts/arbitrum-42161/0x8b912ba433efba3ac0000241b558f3aa05f912f3/) | RecoveryFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8d74f3...0dabfb`](./contracts/arbitrum-42161/0x8d74f3944674b2610abfcb58190d60c7190dabfb/) | RemoveArbiAssetFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8fe7d8...71dc6e`](./contracts/arbitrum-42161/0x8fe7d80de1e4ef8f35f21b3dd5bdf82e6171dc6e/) | RemoveWstEthAssetFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x90ab08...cc2620`](./contracts/arbitrum-42161/0x90ab083de7b2d658652ffd7da9481d768acc2620/) | ReusablePrimeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ff4c4...fffe25`](./contracts/arbitrum-42161/0x0ff4c49ea601a5ddb6bd0a836e55fcd72dfffe25/) | RTKNConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10972f...326da3`](./contracts/arbitrum-42161/0x10972f94fd36d0bbc5b5437da26feda7db326da3/) | RTKNDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xca4dbd...ce160d`](./contracts/arbitrum-42161/0xca4dbd9a813235f09e734513a86cb7291cce160d/) | RTKNDP2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x77811b...daa85e`](./contracts/arbitrum-42161/0x77811b9a74a714f5e996cee65e97dfbfa5daa85e/) | RTKNMock1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3310bc...815a71`](./contracts/arbitrum-42161/0x3310bc003329c2e75226b62c1396ef94cf815a71/) | RTKNMock2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14d199...d4dd0b`](./contracts/arbitrum-42161/0x14d199303eb846f19efa40b2e5d2581f94d4dd0b/) | RtknToPrimeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10cc67...68a859`](./contracts/arbitrum-42161/0x10cc67f62d7869ee3d48da50e0945e48ad68a859/) | SmartLoanLiquidationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3ea9d4...21b03d`](./contracts/avalanche-43114/0x3ea9d480295a73fd2af95b4d96c2aff88b21b03d/) | SmartLoansFactoryTUP | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x049393...cc94fc`](./contracts/arbitrum-42161/0x049393d11cf754ad6778748972ad9098becc94fc/) | SmartLoanViewFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05ced7...046a62`](./contracts/arbitrum-42161/0x05ced72e1d0eb003ded18e8f3ab32133f9046a62/) | SmartLoanWrappedNativeTokenFacet | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x05ff7c...f7a5dc`](./contracts/avalanche-43114/0x05ff7ca3ae0f6b8f110069ad31425e173df7a5dc/) | SolvencyFacetProd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0412b8...48f25c`](./contracts/arbitrum-42161/0x0412b84ed38440de599b926ae0d6332e3148f25c/) | SolvencyFacetProdArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0867d8...24a863`](./contracts/arbitrum-42161/0x0867d8c79a5692922181105b217fe5c64c24a863/) | SwapDebtFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x89f85f...c2ad86`](./contracts/arbitrum-42161/0x89f85f9ec26c6bbcc102e2cb5a3c67652cc2ad86/) | TestGmxV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x005613...9c7ff9`](./contracts/arbitrum-42161/0x0056137622530596aa9d880edb744fc9169c7ff9/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcfc3a0...8ebef8`](./contracts/avalanche-43114/0xcfc3a08878e104b017a51296cf26343c038ebef8/) | TokenManagerTUP | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x099702...2397a2`](./contracts/arbitrum-42161/0x099702595b16f34f6c7192150fcbfcab882397a2/) | TraderJoeV2ArbitrumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6aa046...c7cede`](./contracts/arbitrum-42161/0x6aa046437e0d055fc0206ef305a63d9b91c7cede/) | UniBorrowIndex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd86104...b01e92`](./contracts/arbitrum-42161/0xd86104a937d2c3e4175c80017339d94ca0b01e92/) | UniDepositIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x252cba...47566c`](./contracts/arbitrum-42161/0x252cba65dcea20dea4c97257107a20b80147566c/) | UniPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa0a4c3...f3e4ae`](./contracts/arbitrum-42161/0xa0a4c3bb42232875551794ca8608ac88a7f3e4ae/) | UniVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01e113...4774b8`](./contracts/arbitrum-42161/0x01e113641c0785d4bff8947e0e7ea6d8074774b8/) | UsdcBorrowIndex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7feebf...c13cfa`](./contracts/avalanche-43114/0x7feebfa556281f2803abf8cae7727d4f18c13cfa/) | UsdcBorrowIndexTUP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x097317...ba33a3`](./contracts/arbitrum-42161/0x097317eb45eefe2b789d9dbd58086497e0ba33a3/) | UsdcDepositIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x476df0...e313cb`](./contracts/avalanche-43114/0x476df001a8c6058c4c809930c5d441e6bbe313cb/) | UsdcDepositIndexTUP | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2323da...32d12b`](./contracts/avalanche-43114/0x2323dac85c6ab9bd6a8b5fb75b0581e31232d12b/) | UsdcPoolTUP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x23873d...26a329`](./contracts/arbitrum-42161/0x23873dc819554167ce7f133080978c7b0926a329/) | UsdcVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x341fc5...c4d243`](./contracts/arbitrum-42161/0x341fc5557a5c71527518f6c231ade49659c4d243/) | UsdcVariableUtilisationRatesCalculatorFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x97886a...0b35d5`](./contracts/arbitrum-42161/0x97886abb2bdbea0e49a86ea1bcd2c4a7120b35d5/) | UsdcVariableUtilisationRatesCalculatorZeroRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x42d8b0...d89202`](./contracts/arbitrum-42161/0x42d8b0131eb247098a33bba9f6446ee13dd89202/) | UsdtBorrowIndex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4fb135...03aba2`](./contracts/avalanche-43114/0x4fb135e7fa11d3f4abd6d115dc23f60c9903aba2/) | UsdtBorrowIndexTUP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x02f802...777118`](./contracts/avalanche-43114/0x02f802e38d22405fa4e1993858e7bb5378777118/) | UsdtDepositIndex | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6642dc...d975d6`](./contracts/avalanche-43114/0x6642dc3d4e5039056e0111cf67b13419f6d975d6/) | UsdtDepositIndexTUP | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28739d...ccfabc`](./contracts/arbitrum-42161/0x28739d2a05d754b51f3441cbf64d4d2635ccfabc/) | vPrime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2323da...32d12b`](./contracts/arbitrum-42161/0x2323dac85c6ab9bd6a8b5fb75b0581e31232d12b/) | vPrimeControllerArbitrum | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7201e8...f7dbb1`](./contracts/avalanche-43114/0x7201e8cb96ff5bdfa69377f2f29a21027ff7dbb1/) | WavaxBorrowIndex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf5952b...d1e5fe`](./contracts/avalanche-43114/0xf5952b41c1ed1b2aff3e5bf3411a620951d1e5fe/) | WavaxBorrowIndexTUP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0b5a12...fa9492`](./contracts/avalanche-43114/0x0b5a12707249173ceae9331e3e45563d24fa9492/) | WavaxDepositIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe5b625...7c150e`](./contracts/avalanche-43114/0xe5b625dc76c42d5fa96d66c5f8115fa5357c150e/) | WavaxDepositIndexTUP | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x025fae...18f05d`](./contracts/arbitrum-42161/0x025faeba8a2a25293f43f079e2caa099d018f05d/) | WethBorrowIndex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f185d...c64078`](./contracts/arbitrum-42161/0x1f185d271f14ed52ad2922ddebdf999a4ec64078/) | WethDepositIndex | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x028e1f...1327e9`](./contracts/arbitrum-42161/0x028e1f5dc60317043ad78793e4bd3b77131327e9/) | WethPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02a4b9...c5ae5f`](./contracts/arbitrum-42161/0x02a4b9e27911513cfe62e5763f6a37f577c5ae5f/) | WethVariableUtilisationRatesCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b11a1...b8664e`](./contracts/arbitrum-42161/0x0b11a1f29febc32cc831e80b6b0c9db330b8664e/) | WethVariableUtilisationRatesCalculatorFixedRate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8a80f1...b7222c`](./contracts/arbitrum-42161/0x8a80f1bc957e09bd5b06501c95b4c68c00b7222c/) | WethVariableUtilisationRatesCalculatorZeroRate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x030b1b...12a2f7`](./contracts/arbitrum-42161/0x030b1bb800aa5a9da52b8e4e21d82464d712a2f7/) | WithdrawalIntentFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe5b3c1...15989c`](./contracts/arbitrum-42161/0xe5b3c10705c1fb2230aa0ff520fa2d66a015989c/) | WithdrawUnsupportedPositionsFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17d832...7f9aee`](./contracts/arbitrum-42161/0x17d83238e851dae5bae2389876ab860ee17f9aee/) | YieldYakFacetArbi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x096170...ec1715`](./contracts/arbitrum-42161/0x09617024c8a82b55a99aa72e881154a1b5ec1715/) | YieldYakSwapArbitrumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 133 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 345 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
