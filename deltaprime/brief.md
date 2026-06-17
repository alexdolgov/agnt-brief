# Agentic Audit Brief: DeltaPrime

## Project Overview

- Project: DeltaPrime (`deltaprime`)
- Website: [https://deltaprime.io](https://deltaprime.io)
- Lifecycle: active (Tier 0, 94.3% below peak)
- Generated: 2026-06-17T07:01:01.816Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche
- Contract surface: 142 unique implementations (756 raw deployments)
- DeFi Llama TVL: $3,659,171.81
- On-chain TVL (included contracts): $0.09
- TVL by chain: Avalanche $0.09

## Project Description

DeltaPrime is a leveraged farming protocol that enables users to borrow assets against their deposits to amplify yield farming positions. It operates across multiple chains, providing pools for various tokens and integrating with external DeFi protocols for yield generation and liquidation.

### Architecture

The Lending and Borrowing Pools provide the capital for leveraged positions, while the Smart Loan Management family uses diamond proxies to create and manage individual user loans that interact with these pools. Shared infrastructure includes governance contracts (TokenManager, AssetsExposureController) and intermediary contracts that connect the loan management system to external DEXs and yield protocols.

## Contract Surface Quality

- Indexed contracts: 1549; live-surface contracts included: 756 (19 live, 737 unknown).
- Excluded by liveness: 492 inactive, 301 singleton, 0 uninitialized.
- Deployment units: 4/169 live.
- Detected codebases: aave-v2, uniswap-v3
- Unverified dependencies: 20/144.

## Audit Coverage Summary

- Verified implementations audited: 0/104 (0.0%)
- Verified + Unaudited implementations: 104
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 142
- Raw deployments: 756
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.09
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (104)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UsdcPoolTUP | core_logic | avalanche | unit-32729 (4 proxies) | 4 deployments: avalanche [`0x2323da...32d12b`](./contracts/avalanche-43114/0x2323dac85c6ab9bd6a8b5fb75b0581e31232d12b/); avalanche `0x475589...bb63d0`; avalanche `0xd222e1...efbca1`; avalanche `0xd26e50...6542f5` | ⚠️ Unaudited |
| ArbDepositIndex | unknown | arbitrum | n/a | [`0x647c15...0d5863`](./contracts/arbitrum-42161/0x647c153727b8ee03a320640b8efac7e9080d5863/) | ⚠️ Unaudited |
| ArbPool | core_logic | arbitrum | n/a | 16 deployments: arbitrum [`0x200160...39f606`](./contracts/arbitrum-42161/0x200160c94b2b55dc36ef41ebc677722bd439f606/); arbitrum `0x419404...959fc5`; arbitrum `0x47f391...d623a6`; arbitrum `0x493d93...79b81c`; arbitrum `0x4cb8b0...d2e2dc`; arbitrum `0x5292af...236399`; arbitrum `0x57f2a8...3263ab`; arbitrum `0x587fe8...beaab7`; arbitrum `0x7bd921...eff1cd`; arbitrum `0x9a2cbb...2a4adf`; arbitrum `0x9b4efb...78a193`; arbitrum `0xa37a69...071e62`; arbitrum `0xc7cf98...f71503`; arbitrum `0xd65e7a...629d91`; arbitrum `0xf503bf...16f0f2`; arbitrum `0xfb2a62...5f108f` | ⚠️ Unaudited |
| ArbPool | core_logic | arbitrum | unit-32687 | [`0x91da06...a33ef9`](./contracts/arbitrum-42161/0x91da06b2b4c72563083091448282de1014a33ef9/) | ⚠️ Unaudited |
| ArbPool | core_logic | arbitrum | unit-32692 | [`0xa273ef...948e2b`](./contracts/arbitrum-42161/0xa273efd3bd9182c5b909fcd65242860d8d948e2b/) | ⚠️ Unaudited |
| ArbPoolFactory | registry | arbitrum | n/a | 2 deployments: arbitrum [`0x315c55...7b4870`](./contracts/arbitrum-42161/0x315c55f5da4db2b516f1331dfa344da47c7b4870/); arbitrum `0xd1f36c...819119` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculator | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x5d776f...12b34f`](./contracts/arbitrum-42161/0x5d776f18289c1cadbb11d77723c3d0605912b34f/); arbitrum `0x7b73b0...fc711d`; arbitrum `0xb9e770...6006b1`; arbitrum `0xd4a360...2cfc45`; arbitrum `0xffc157...f6dbb1` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculatorFixedRate | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x034702...c849e2`](./contracts/arbitrum-42161/0x0347025482c9f8ec6c8323e87b81eb11dcc849e2/); arbitrum `0x11daa8...066c26`; arbitrum `0x159cf7...4e69a7`; arbitrum `0x378bb4...5727e4`; arbitrum `0x41784e...13d71a`; arbitrum `0x519aee...eb67e2`; arbitrum `0x5820cb...74339c`; arbitrum `0x7db730...0631cf`; arbitrum `0xe77f03...fa5f23` | ⚠️ Unaudited |
| ArbVariableUtilisationRatesCalculatorZeroRate | unknown | arbitrum | n/a | [`0xf35884...af4f9c`](./contracts/arbitrum-42161/0xf35884ab6f38414827c1d543b57befb690af4f9c/) | ⚠️ Unaudited |
| AssetsExposureController | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x52b952...ee8d89`](./contracts/arbitrum-42161/0x52b95237c3c1803518f52c648f3c5a7593ee8d89/); arbitrum `0x565fd8...16c00a` | ⚠️ Unaudited |
| AssetsOperationsArbitrumFacet | unknown | arbitrum | n/a | 47 deployments: arbitrum [`0x040e6a...1d12e2`](./contracts/arbitrum-42161/0x040e6a4b92f00c876ab2e047dee5a9087f1d12e2/); arbitrum `0x05bb41...3d0ad9`; arbitrum `0x0b5a12...fa9492`; arbitrum `0x0ec0c6...aa0869`; arbitrum `0x109560...603865`; arbitrum `0x182f2c...03d5ba`; arbitrum `0x242d26...2afe07`; arbitrum `0x268607...626fc4`; arbitrum `0x26ae24...5bef80`; arbitrum `0x2a4fff...d15d21`; arbitrum `0x4074d6...3190ed`; arbitrum `0x4599e4...b5b94b`; arbitrum `0x4dbd37...781771`; arbitrum `0x5236b7...216db6`; arbitrum `0x53c1f7...64a567`; arbitrum `0x57ae63...44ec39`; arbitrum `0x5c5478...24d7d5`; arbitrum `0x632554...f07e21`; arbitrum `0x656024...a6e5f6`; arbitrum `0x6d00ec...0bb207`; arbitrum `0x6eb321...5774c4`; arbitrum `0x700c8c...d657f8`; arbitrum `0x71cdf7...498c48`; arbitrum `0x733149...2709b7`; arbitrum `0x771b82...bb4901`; arbitrum `0x803d63...e1e9aa`; arbitrum `0x86e39c...44c5fa`; arbitrum `0x884da1...8411b6`; arbitrum `0x89c896...7ed72b`; arbitrum `0x9826fa...0c5f6c`; arbitrum `0x988414...9a9d12`; arbitrum `0x98edaa...373187`; arbitrum `0x9cd052...8781ed`; arbitrum `0xa1ec5e...53b79f`; arbitrum `0xa2670d...7268e6`; arbitrum `0xa98402...79d6b3`; arbitrum `0xb27e01...458dae`; arbitrum `0xbf8b2d...a5d085`; arbitrum `0xc98915...96e473`; arbitrum `0xca60c5...91b5f5`; arbitrum `0xd43231...f94dcf`; arbitrum `0xd63fa0...350621`; arbitrum `0xe27372...63c23f`; arbitrum `0xe896cf...fe2b92`; arbitrum `0xe8f249...d82752`; arbitrum `0xf71eb1...85b4d0`; arbitrum `0xfeff07...39d1eb` | ⚠️ Unaudited |
| AssetsOperationsFacet | unknown | arbitrum | n/a | [`0x5e02c0...bd2ce4`](./contracts/arbitrum-42161/0x5e02c09ec77912fe2ad7301935e276e627bd2ce4/) | ⚠️ Unaudited |
| BeefyFinanceArbitrumFacet | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x10aaef...104c71`](./contracts/arbitrum-42161/0x10aaefc8787a41f7ee44cb032859d1f412104c71/); arbitrum `0xa26467...b026d6`; arbitrum `0xb79184...ee2ba1`; arbitrum `0xbfb452...15d59c`; arbitrum `0xd8659a...c22072`; arbitrum `0xf2e90d...dcf37a` | ⚠️ Unaudited |
| BorrowAccessNFT | core_logic | avalanche | n/a | [`0xf8d1b3...9fdea4`](./contracts/avalanche-43114/0xf8d1b34651f2c9230beb9b83b2260529769fdea4/) | ⚠️ Unaudited |
| BtcPool | core_logic | arbitrum | n/a | 15 deployments: arbitrum [`0x19a9ce...08a764`](./contracts/arbitrum-42161/0x19a9ce20a7a0b3069aeae1e48e0eb9143008a764/); arbitrum `0x2644e1...373012`; arbitrum `0x47b0f0...4a1ddc`; arbitrum `0x5b6c77...7ddbf5`; arbitrum `0x6a08fb...6c6f38`; arbitrum `0x74d06e...30fc9e`; arbitrum `0x82babb...645081`; arbitrum `0xae5ba1...4237c5`; arbitrum `0xb5119f...d46d43`; arbitrum `0xb99201...4aa3ab`; arbitrum `0xc89476...9a044c`; arbitrum `0xcc3144...46ef10`; arbitrum `0xd26e50...6542f5`; arbitrum `0xf2f89a...d5f672`; arbitrum `0xf8c3e8...e949f7` | ⚠️ Unaudited |
| BtcPoolFactory | registry | arbitrum | n/a | [`0xa42be1...e43f16`](./contracts/arbitrum-42161/0xa42be11a62509ebf70133d5a7dd27be5e6e43f16/) | ⚠️ Unaudited |
| BtcVariableUtilisationRatesCalculator | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x00fe52...69d2cc`](./contracts/arbitrum-42161/0x00fe526a4ff5446b98e20b5490e2e65f5b69d2cc/); arbitrum `0x2557c3...fe637e`; arbitrum `0x290ebe...2aa14a`; arbitrum `0x7cb9b8...0830e6` | ⚠️ Unaudited |
| BtcVariableUtilisationRatesCalculatorFixedRate | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x257757...6b46bc`](./contracts/arbitrum-42161/0x257757c91bbfd46f571b16ab70e2cf05ac6b46bc/); arbitrum `0x884b78...aadbc2`; arbitrum `0xa87458...6b7cb0`; arbitrum `0xad45f1...1daaf0`; arbitrum `0xecd58d...38ba66` | ⚠️ Unaudited |
| BtcVariableUtilisationRatesCalculatorZeroRate | unknown | arbitrum | n/a | [`0xfd9bab...bb9a1e`](./contracts/arbitrum-42161/0xfd9babc65434c32d4da596958fc46d89f8bb9a1e/) | ⚠️ Unaudited |
| ContractPausedEmptyImplementation | unknown | arbitrum | n/a | [`0x54ef8c...d4d6ee`](./contracts/arbitrum-42161/0x54ef8c794e1375a43e657f63e9470e657bd4d6ee/) | ⚠️ Unaudited |
| CTKN | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x032d8e...b66c43`](./contracts/arbitrum-42161/0x032d8ea2e6855e898fd177eb2d7916d8fab66c43/); arbitrum `0x2cf25d...34b975`; arbitrum `0x3f412f...f4e0bd`; arbitrum `0xa2ee2b...26b5ba`; arbitrum `0xa5a658...1836a4`; arbitrum `0xc71f9a...9a38ee` | ⚠️ Unaudited |
| CTKNMock | unknown | arbitrum | n/a | [`0x55ca74...881826`](./contracts/arbitrum-42161/0x55ca7409da9cc35908c54a2ae9c605bf3c881826/) | ⚠️ Unaudited |
| DaiPool | core_logic | arbitrum | n/a | 14 deployments: arbitrum [`0x0444f5...85dd4d`](./contracts/arbitrum-42161/0x0444f5a0df5199b267e85a02cf044b9b8985dd4d/); arbitrum `0x076460...a46c4f`; arbitrum `0x09952c...926064`; arbitrum `0x2a634b...b26a30`; arbitrum `0x31cc5a...c60da3`; arbitrum `0x5b8fff...db8919`; arbitrum `0x617f2e...16021d`; arbitrum `0x8259ad...32bb59`; arbitrum `0x8ff77b...e96d04`; arbitrum `0xa1eddb...1315b4`; arbitrum `0xd16b56...513168`; arbitrum `0xd74ef6...f19f9b`; arbitrum `0xdb5d94...7cf7fa`; arbitrum `0xf7c8bb...91b7d6` | ⚠️ Unaudited |
| DaiPoolFactory | registry | arbitrum | n/a | [`0xb50349...a4c3da`](./contracts/arbitrum-42161/0xb5034979baf764aa944ca1050cf39283aba4c3da/) | ⚠️ Unaudited |
| DaiVariableUtilisationRatesCalculator | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x44761e...db5c1f`](./contracts/arbitrum-42161/0x44761ea5a4b92adbbe8c17212c97e3de4bdb5c1f/); arbitrum `0x7eef8c...a49956`; arbitrum `0xa9ac9f...20fd69`; arbitrum `0xc876dc...784b74`; arbitrum `0xd480d9...4b5ebc` | ⚠️ Unaudited |
| DaiVariableUtilisationRatesCalculatorFixedRate | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x5d33b4...81859e`](./contracts/arbitrum-42161/0x5d33b4b48f2d8842d306923077868123c981859e/); arbitrum `0x765310...958ef6`; arbitrum `0xbf8a40...e51d00`; arbitrum `0xf52628...5277f9` | ⚠️ Unaudited |
| DaiVariableUtilisationRatesCalculatorZeroRate | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x255700...d557f9`](./contracts/arbitrum-42161/0x255700194f34162405eed34549b678d0e4d557f9/); arbitrum `0x6a89dd...67a3ea` | ⚠️ Unaudited |
| DepositSwapArbitrum | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0b420f...0bccea`](./contracts/arbitrum-42161/0x0b420f7002375543d04471bf84ead6fb0f0bccea/); arbitrum `0x1b314c...8af907`; arbitrum `0xaa3a31...dd49e2` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x3732ba...f3fbcc`](./contracts/arbitrum-42161/0x3732ba82d54568609b2e63cb64487af0d7f3fbcc/); arbitrum `0x44ac7f...03cc77`; arbitrum `0x81252d...51c8c1`; arbitrum `0xfccf6c...fa97ee` | ⚠️ Unaudited |
| DiamondInit | unknown | arbitrum | n/a | [`0x3e273b...7e7d04`](./contracts/arbitrum-42161/0x3e273bcc448d22b9329a56da3a91ace1b57e7d04/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5a501b...1e3763`](./contracts/arbitrum-42161/0x5a501b5698eade321b3553ea633046c6a91e3763/); arbitrum `0x69bec7...72b23f` | ⚠️ Unaudited |
| EarlyAccessNFT | token | avalanche | n/a | [`0xe31b51...237281`](./contracts/avalanche-43114/0xe31b515f77c84d8e35faf831ef69bea3ac237281/) | ⚠️ Unaudited |
| ERC20Mock | token | arbitrum | n/a | 2 deployments: arbitrum [`0x9add42...d94860`](./contracts/arbitrum-42161/0x9add42075a0fa68fb9891779f20e7e8074d94860/); arbitrum `0xd7c136...0812cf` | ⚠️ Unaudited |
| EthPool | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x58ee09...f4b166`](./contracts/arbitrum-42161/0x58ee09b419fb027315c7ca5390298a7355f4b166/); arbitrum `0xa2827f...a121e5` | ⚠️ Unaudited |
| GLPFacetArbi | unknown | arbitrum | n/a | 10 deployments: arbitrum [`0x1b8c6e...f0cbd0`](./contracts/arbitrum-42161/0x1b8c6ece5588d21369935a91d3f2459f66f0cbd0/); arbitrum `0x4a9b37...5170e7`; arbitrum `0x793fab...518b0b`; arbitrum `0x82e218...4f80bc`; arbitrum `0x92f037...c88dfa`; arbitrum `0xad7ef2...5295d1`; arbitrum `0xb544e1...36e29d`; arbitrum `0xbb94ff...1e2f67`; arbitrum `0xc10b6f...75751e`; arbitrum `0xe98776...b74e3a` | ⚠️ Unaudited |
| GlvFacetArbitrum | unknown | arbitrum | n/a | 10 deployments: arbitrum [`0x11847e...1d22f3`](./contracts/arbitrum-42161/0x11847ee581f524c29a54541a9d91587b941d22f3/); arbitrum `0x284416...f272f7`; arbitrum `0x326556...b7920d`; arbitrum `0x46566f...eb6c1c`; arbitrum `0x509e48...45ff8c`; arbitrum `0xca9676...0ce1ab`; arbitrum `0xcb8071...09ad6b`; arbitrum `0xd85641...244b25`; arbitrum `0xdba4cd...d4c8e3`; arbitrum `0xfa637f...ff70fc` | ⚠️ Unaudited |
| GmxBenchmarkMath | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x02ca12...75ca4f`](./contracts/arbitrum-42161/0x02ca120518601adbc97d603ab44e5b990d75ca4f/); arbitrum `0x528ca2...ea567d` | ⚠️ Unaudited |
| GmxV2CallbacksFacetArbitrum | unknown | arbitrum | n/a | 37 deployments: arbitrum [`0x02c55a...948edd`](./contracts/arbitrum-42161/0x02c55abdad2d35cd7c3358ada129c682b1948edd/); arbitrum `0x09c107...9e51a0`; arbitrum `0x0b05ae...84f046`; arbitrum `0x0ce396...adac8e`; arbitrum `0x181624...672507`; arbitrum `0x18409b...6464f7`; arbitrum `0x1d74fc...6a636f`; arbitrum `0x28f86f...f9bf40`; arbitrum `0x2a82ad...ac8feb`; arbitrum `0x31a50a...91e3ac`; arbitrum `0x3ba10a...6a6edc`; arbitrum `0x4e2fb6...2ee54f`; arbitrum `0x4f3354...926906`; arbitrum `0x587d68...b05645`; arbitrum `0x6027b7...a7a55e`; arbitrum `0x6a828f...1bd655`; arbitrum `0x78885c...c01f7d`; arbitrum `0x838436...106e6b`; arbitrum `0x874a3c...6dc51f`; arbitrum `0x8e25d1...358450`; arbitrum `0x934250...dd1738`; arbitrum `0xa09a93...70b7a3`; arbitrum `0xa0ad3f...605357`; arbitrum `0xa0c32b...48b37a`; arbitrum `0xa4b4dc...80e68c`; arbitrum `0xb1d680...9b443b`; arbitrum `0xb2728f...9992b3`; arbitrum `0xb2ca32...9ade5b`; arbitrum `0xbb178e...42e333`; arbitrum `0xc53662...2df1ab`; arbitrum `0xd9a0f6...8ad9b2`; arbitrum `0xda39c4...76b07a`; arbitrum `0xdad1df...7388b4`; arbitrum `0xe15a59...b0805e`; arbitrum `0xe5138c...ce1d95`; arbitrum `0xeca1da...bc2da8`; arbitrum `0xf6c2e4...bb2032` | ⚠️ Unaudited |
| GmxV2FacetArbitrum | unknown | arbitrum | n/a | 52 deployments: arbitrum [`0x009bfb...d77202`](./contracts/arbitrum-42161/0x009bfb7e9c76d08fb776a2d7f09b5447c3d77202/); arbitrum `0x03efc1...971c61`; arbitrum `0x07cce3...b0bf80`; arbitrum `0x101644...f7b22b`; arbitrum `0x1a0183...5ace77`; arbitrum `0x25de87...53f74a`; arbitrum `0x2e0138...417db2`; arbitrum `0x34440c...61e784`; arbitrum `0x3b8430...9d81a3`; arbitrum `0x3e597c...5d29dd`; arbitrum `0x3f4aad...a1c421`; arbitrum `0x4575a7...a0fe09`; arbitrum `0x4c07bf...aac8f1`; arbitrum `0x514897...b08b58`; arbitrum `0x55436a...1723e8`; arbitrum `0x5f52e3...22cb82`; arbitrum `0x61f67d...6e0a6f`; arbitrum `0x6c2df7...921ac8`; arbitrum `0x6f9c5d...d3a96a`; arbitrum `0x73c647...903071`; arbitrum `0x8f93c9...d13d23`; arbitrum `0x93df59...68d91e`; arbitrum `0x980779...aab03f`; arbitrum `0x997b79...290732`; arbitrum `0x9a7972...5eb738`; arbitrum `0xa480cf...dd7c0b`; arbitrum `0xa8fe94...809540`; arbitrum `0xae7e1d...97ae51`; arbitrum `0xb3f00b...8881f0`; arbitrum `0xb4073f...d12ad3`; arbitrum `0xb6af79...4ef22b`; arbitrum `0xbbf79d...8d5be4`; arbitrum `0xbcc297...201ed9`; arbitrum `0xbe4e41...2d2618`; arbitrum `0xc1e215...376211`; arbitrum `0xc3c881...654818`; arbitrum `0xc5dcd6...6c0ded`; arbitrum `0xca1467...79b8e0`; arbitrum `0xd1fee1...19dfb2`; arbitrum `0xd406bb...89894f`; arbitrum `0xd846fc...5353a8`; arbitrum `0xdb5380...f1e4a5`; arbitrum `0xdc1649...6dadf3`; arbitrum `0xdcb272...b06505`; arbitrum `0xe11b17...d5c42a`; arbitrum `0xe1b56c...617b5f`; arbitrum `0xe36472...c4f42f`; arbitrum `0xe5ff4d...52288b`; arbitrum `0xe923fb...be6376`; arbitrum `0xf71e04...2bfdab`; arbitrum `0xf8b2d3...f68166`; arbitrum `0xfa994c...f19cb9` | ⚠️ Unaudited |
| GmxV2PlusFacetArbitrum | unknown | arbitrum | n/a | 30 deployments: arbitrum [`0x2160d2...a2a1ea`](./contracts/arbitrum-42161/0x2160d2a4c733d40b00e37be8b96affd579a2a1ea/); arbitrum `0x2cf576...e40606`; arbitrum `0x3226ea...b46790`; arbitrum `0x3a766c...bf20f6`; arbitrum `0x3cf6cf...580843`; arbitrum `0x46c69a...9351b8`; arbitrum `0x4820bb...25043b`; arbitrum `0x52c4fb...d8ba02`; arbitrum `0x5728a7...ba3b80`; arbitrum `0x736d70...241a11`; arbitrum `0x7eb560...73580e`; arbitrum `0x7f942f...3cd0e1`; arbitrum `0x86883b...11d211`; arbitrum `0x872952...f26fd2`; arbitrum `0x88de44...84a69c`; arbitrum `0x8dab20...ff1f7e`; arbitrum `0x9aa7da...a305b8`; arbitrum `0xa4f6ca...247214`; arbitrum `0xb06360...c3c0ee`; arbitrum `0xb885fa...a684b2`; arbitrum `0xbcfbeb...b76173`; arbitrum `0xbea87f...849bfb`; arbitrum `0xc7368b...37e25b`; arbitrum `0xcfb93a...f5d5d4`; arbitrum `0xd36da1...df6c03`; arbitrum `0xe1e0bd...cb2dd5`; arbitrum `0xe202c0...0e3bfe`; arbitrum `0xea9583...b842c6`; arbitrum `0xeb071f...5a8902`; arbitrum `0xffde77...76b06d` | ⚠️ Unaudited |
| HealthMeterFacetProd | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x0f386e...0ad704`](./contracts/arbitrum-42161/0x0f386e8c205c75fe00a144be0be576490b0ad704/); arbitrum `0x124b02...33f17f`; arbitrum `0x16238e...aac8f9`; arbitrum `0x386662...25dfc9`; arbitrum `0x438da2...0d8196`; arbitrum `0x5ccf13...a91dd6`; arbitrum `0x6ddb93...c6b34e`; arbitrum `0x8edb1a...31a56b`; arbitrum `0x99983b...15ae61`; arbitrum `0xc3eefd...a13bac`; arbitrum `0xf946fe...e56233` | ⚠️ Unaudited |
| LevelFinanceFacet | unknown | arbitrum | n/a | 13 deployments: arbitrum [`0x0e2cfe...6eea1d`](./contracts/arbitrum-42161/0x0e2cfe411e1f3e3aeedb06af3e5e42fd976eea1d/); arbitrum `0x17fa27...92f66c`; arbitrum `0x27898d...14736c`; arbitrum `0x326ebe...9790ad`; arbitrum `0x37a5e0...87bf0b`; arbitrum `0x619ed4...3d4749`; arbitrum `0x6e68c0...65dac3`; arbitrum `0x7304bc...423658`; arbitrum `0x7a4336...8937e2`; arbitrum `0xc663aa...5faffd`; arbitrum `0xd49ced...acd225`; arbitrum `0xdd4032...b95c4a`; arbitrum `0xe7e35b...04f563` | ⚠️ Unaudited |
| LinkPool | core_logic | arbitrum | unit-32640 | [`0x2d99ee...f42a03`](./contracts/arbitrum-42161/0x2d99ee2fed53b0ec85fe32abb8135df44ff42a03/) | ⚠️ Unaudited |
| LinkPoolFactory | registry | arbitrum | n/a | [`0x37b4a5...26dae1`](./contracts/arbitrum-42161/0x37b4a5fc1ece6d1f182549ec596821a81f26dae1/) | ⚠️ Unaudited |
| LinkVariableUtilisationRatesCalculator | unknown | arbitrum | n/a | [`0x317dbf...8071cc`](./contracts/arbitrum-42161/0x317dbf309d8eb41ad036b6bcc85f411e298071cc/) | ⚠️ Unaudited |
| LiquidationFlashloanArbitrum | unknown | arbitrum | n/a | 10 deployments: arbitrum [`0x0d45a3...f6e375`](./contracts/arbitrum-42161/0x0d45a30f878895af7510f7a23e82eca253f6e375/); arbitrum `0x2eb9db...a22026`; arbitrum `0x5a8053...52a788`; arbitrum `0x66eb3b...5e0649`; arbitrum `0x71bdf0...704c28`; arbitrum `0x7c4e79...a8456c`; arbitrum `0x83cd0a...e1c3ed`; arbitrum `0x97a9a2...15c755`; arbitrum `0xc4f546...6f9c25`; arbitrum `0xd171b9...f907cc` | ⚠️ Unaudited |
| LTIPFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x427f21...18522e`](./contracts/arbitrum-42161/0x427f2121f1a2ccaac508412bcef4e68b0418522e/); arbitrum `0xb605a0...20775a` | ⚠️ Unaudited |
| MockERC20OpenMint | token | arbitrum | n/a | [`0x5ce6ee...e872af`](./contracts/arbitrum-42161/0x5ce6ee56619d3ea3e54d5e9c7d92bec266e872af/) | ⚠️ Unaudited |
| MockToken | token | arbitrum | n/a | 3 deployments: arbitrum [`0x22205e...c6d2b7`](./contracts/arbitrum-42161/0x22205e4722a99f83434c555dbae6849e0bc6d2b7/); arbitrum `0x63a657...1f32b4`; arbitrum `0xa93930...1ba234` | ⚠️ Unaudited |
| MockToken6Decimals | token | arbitrum | n/a | 4 deployments: arbitrum [`0x019aba...eab533`](./contracts/arbitrum-42161/0x019aba434a6dc067aa7267488e5e763360eab533/); arbitrum `0x7a4a53...81dd3b`; arbitrum `0xb3efdb...5c009d`; arbitrum `0xcc318d...5d2f6f` | ⚠️ Unaudited |
| OwnershipFacet | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x13b4ee...893932`](./contracts/arbitrum-42161/0x13b4eed7ffddd2e235e627ad746c98bfde893932/); arbitrum `0x1e34d7...01a7f6`; arbitrum `0x88efcc...8f9300`; arbitrum `0x8f1374...0770b2`; arbitrum `0x966ac0...414384`; arbitrum `0x9e8451...c36dc7` | ⚠️ Unaudited |
| ParaSwapFacet | unknown | arbitrum | n/a | 18 deployments: arbitrum [`0x0aa196...5986c6`](./contracts/arbitrum-42161/0x0aa196a803a1866ec51522ef0e762bf0aa5986c6/); arbitrum `0x29126b...f680a4`; arbitrum `0x34cb5f...19db03`; arbitrum `0x394c6a...ba5783`; arbitrum `0x3b963b...066ac3`; arbitrum `0x641493...19f90a`; arbitrum `0x88f6f4...a5a67d`; arbitrum `0x8cb22e...c7009a`; arbitrum `0x91fa62...02de01`; arbitrum `0x941421...305c90`; arbitrum `0x9b80b7...dcf9ea`; arbitrum `0xa64a53...32043d`; arbitrum `0xaa50e9...4b317a`; arbitrum `0xb54804...aa9684`; arbitrum `0xbbf3d7...a8696c`; arbitrum `0xca7e2b...5925cf`; arbitrum `0xed01f3...f61ee0`; arbitrum `0xf45297...c5a30b` | ⚠️ Unaudited |
| PenpieFacet | unknown | arbitrum | n/a | 14 deployments: arbitrum [`0x130c97...ad0acf`](./contracts/arbitrum-42161/0x130c975a189024cdfe4a4b38706a431463ad0acf/); arbitrum `0x4dc5a4...6e07d7`; arbitrum `0x50c477...1d509b`; arbitrum `0x5550b2...7205bb`; arbitrum `0x7145c3...ec2db5`; arbitrum `0x753a67...2ac5bc`; arbitrum `0x9ca3f3...ab8eda`; arbitrum `0xa9b5f2...a6e255`; arbitrum `0xc0b6df...05f676`; arbitrum `0xcda8c6...72d60a`; arbitrum `0xd4185b...35e211`; arbitrum `0xf5ae41...91f739`; arbitrum `0xf8d96b...05fc09`; arbitrum `0xff1138...ae2b83` | ⚠️ Unaudited |
| Prime_L2 | unknown | arbitrum | n/a | [`0x3de81c...a6d14e`](./contracts/arbitrum-42161/0x3de81ce90f5a27c5e6a5adb04b54aba488a6d14e/) | ⚠️ Unaudited |
| PrimeBuybackDistributor | operational_periphery | arbitrum | n/a | [`0x3d6021...b3ace3`](./contracts/arbitrum-42161/0x3d6021a1bfa4bc4f1538e22201425c2382b3ace3/) | ⚠️ Unaudited |
| PrimeLeverageFacet | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x1899f6...f1fa91`](./contracts/arbitrum-42161/0x1899f6d524637808f2d53125b6ccfe6d2df1fa91/); arbitrum `0x4d2946...9c7d96`; arbitrum `0x5cc04d...c4c3a0`; arbitrum `0x5d3301...938dcc`; arbitrum `0xabc210...d1127c`; arbitrum `0xb50853...a1411c` | ⚠️ Unaudited |
| PrimeRtknAirdropDistributor | operational_periphery | arbitrum | n/a | 14 deployments: arbitrum [`0x0b6b88...29117d`](./contracts/arbitrum-42161/0x0b6b8815e9d9c74437642a8ec5587f905d29117d/); arbitrum `0x0c0cbd...0ea45f`; arbitrum `0x314497...3e991f`; arbitrum `0x5f2d3d...388258`; arbitrum `0x6ed885...fbe37a`; arbitrum `0x6eff91...2fea8c`; arbitrum `0x708c95...49366d`; arbitrum `0x7ccd64...c3d52a`; arbitrum `0x8b5306...08640b`; arbitrum `0x99ab80...bb1ac7`; arbitrum `0x9c4fbb...fc462d`; arbitrum `0xe3553b...afdfd1`; arbitrum `0xf02908...46acf4`; arbitrum `0xfda763...f7cdb2` | ⚠️ Unaudited |
| RecoveryFacet | unknown | arbitrum | n/a | [`0x8b912b...f912f3`](./contracts/arbitrum-42161/0x8b912ba433efba3ac0000241b558f3aa05f912f3/) | ⚠️ Unaudited |
| RemoveArbiAssetFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8d74f3...0dabfb`](./contracts/arbitrum-42161/0x8d74f3944674b2610abfcb58190d60c7190dabfb/); arbitrum `0x9e4de5...b80651` | ⚠️ Unaudited |
| RemoveWstEthAssetFacet | unknown | arbitrum | n/a | [`0x8fe7d8...71dc6e`](./contracts/arbitrum-42161/0x8fe7d80de1e4ef8f35f21b3dd5bdf82e6171dc6e/) | ⚠️ Unaudited |
| ReusablePrimeDistributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x90ab08...cc2620`](./contracts/arbitrum-42161/0x90ab083de7b2d658652ffd7da9481d768acc2620/); arbitrum `0xdce1e5...885f3e` | ⚠️ Unaudited |
| RTKNConverter | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0ff4c4...fffe25`](./contracts/arbitrum-42161/0x0ff4c49ea601a5ddb6bd0a836e55fcd72dfffe25/); arbitrum `0x129d8f...dc2525`; arbitrum `0x1bf15c...a59e73` | ⚠️ Unaudited |
| RTKNDP | unknown | arbitrum | n/a | [`0x8eb3ce...bf03dc`](./contracts/arbitrum-42161/0x8eb3cec7c8f6942d99d57164b9fdce88e5bf03dc/) | ⚠️ Unaudited |
| RTKNDP2 | unknown | arbitrum | n/a | [`0xca4dbd...ce160d`](./contracts/arbitrum-42161/0xca4dbd9a813235f09e734513a86cb7291cce160d/) | ⚠️ Unaudited |
| RTKNMock1 | unknown | arbitrum | n/a | [`0x77811b...daa85e`](./contracts/arbitrum-42161/0x77811b9a74a714f5e996cee65e97dfbfa5daa85e/) | ⚠️ Unaudited |
| RTKNMock2 | unknown | arbitrum | n/a | [`0x3310bc...815a71`](./contracts/arbitrum-42161/0x3310bc003329c2e75226b62c1396ef94cf815a71/) | ⚠️ Unaudited |
| RtknToPrimeConverter | unknown | arbitrum | n/a | [`0x85ff7e...47a7bd`](./contracts/arbitrum-42161/0x85ff7ee82c6b65e483db10609f004b1ab347a7bd/) | ⚠️ Unaudited |
| SmartLoanDiamondBeacon | registry | arbitrum | unit-32665 | [`0x62cf82...dc0c6c`](./contracts/arbitrum-42161/0x62cf82fb0484af382714cd09296260edc1dc0c6c/) | ⚠️ Unaudited |
| SmartLoanDiamondBeacon | registry | arbitrum | n/a | 2 deployments: arbitrum [`0x968f94...6e2651`](./contracts/arbitrum-42161/0x968f944e9c43fc8ad80f6c1629f10570a46e2651/); arbitrum `0xb3a1e0...ea6f9e` | ⚠️ Unaudited |
| SmartLoanDiamondBeacon | registry | avalanche | unit-32731 | [`0x2916b3...94e56d`](./contracts/avalanche-43114/0x2916b3bf7c35bd21e63d01c93c62fb0d4994e56d/) | ⚠️ Unaudited |
| SmartLoanLiquidationFacet | unknown | arbitrum | n/a | 18 deployments: arbitrum [`0x10cc67...68a859`](./contracts/arbitrum-42161/0x10cc67f62d7869ee3d48da50e0945e48ad68a859/); arbitrum `0x16fbaa...deb6b8`; arbitrum `0x2ac333...5e8d2a`; arbitrum `0x2e4cf9...58d207`; arbitrum `0x337d2d...9bfb06`; arbitrum `0x33eb03...2dab34`; arbitrum `0x349c3b...e11667`; arbitrum `0x43c4d0...9f4201`; arbitrum `0x65cb4f...85eada`; arbitrum `0x686e83...2893a0`; arbitrum `0x84db4e...c89d7f`; arbitrum `0x954467...e72c15`; arbitrum `0x97bf6e...04fdea`; arbitrum `0xa99572...f0c2b2`; arbitrum `0xc7144e...538467`; arbitrum `0xe3a10f...fbe95d`; arbitrum `0xf5481a...7a94a7`; arbitrum `0xf6ea93...6a9935` | ⚠️ Unaudited |
| SmartLoansFactory | registry | arbitrum | n/a | 5 deployments: arbitrum [`0x1a942d...c350b9`](./contracts/arbitrum-42161/0x1a942d071c5025bcfca262c0e197c8c785c350b9/); arbitrum `0x8b5c03...9eb22d`; arbitrum `0x9c3032...51122a`; arbitrum `0xe5b625...7c150e`; arbitrum `0xfe1406...67a347` | ⚠️ Unaudited |
| SmartLoansFactoryTUP | registry | avalanche | unit-32734 | [`0x3ea9d4...21b03d`](./contracts/avalanche-43114/0x3ea9d480295a73fd2af95b4d96c2aff88b21b03d/) | ⚠️ Unaudited |
| SmartLoanViewFacet | unknown | arbitrum | n/a | 23 deployments: arbitrum [`0x049393...cc94fc`](./contracts/arbitrum-42161/0x049393d11cf754ad6778748972ad9098becc94fc/); arbitrum `0x13ff76...23fe64`; arbitrum `0x28a7ca...62f674`; arbitrum `0x2c2bf8...cee8a8`; arbitrum `0x376314...c2b3ad`; arbitrum `0x37fc55...821686`; arbitrum `0x39ca77...5d0cd9`; arbitrum `0x4659db...c437f2`; arbitrum `0x5429c8...f36b54`; arbitrum `0x998092...df5558`; arbitrum `0xae2029...6ef055`; arbitrum `0xb32014...1b01a6`; arbitrum `0xc6eb2e...16c1af`; arbitrum `0xcc7c4c...d40829`; arbitrum `0xd9eb3d...364512`; arbitrum `0xdad16b...63d1e1`; arbitrum `0xe4b97f...95ab5b`; arbitrum `0xe5cbab...2ee51d`; arbitrum `0xe849cb...447f59`; arbitrum `0xeed177...8d9c98`; arbitrum `0xf33ca4...ccfa51`; arbitrum `0xf44472...ebeba0`; arbitrum `0xfc4f39...4c201d` | ⚠️ Unaudited |
| SmartLoanWrappedNativeTokenFacet | token | arbitrum | n/a | 9 deployments: arbitrum [`0x05ced7...046a62`](./contracts/arbitrum-42161/0x05ced72e1d0eb003ded18e8f3ab32133f9046a62/); arbitrum `0x10d3dc...e5ad3f`; arbitrum `0x121b59...af97fa`; arbitrum `0x226603...717ad6`; arbitrum `0x388f7c...492d54`; arbitrum `0x8a3cda...cb5fa6`; arbitrum `0x8d784a...994d95`; arbitrum `0xe372fa...7d64a3`; arbitrum `0xe43a65...e820f8` | ⚠️ Unaudited |
| SolvencyFacetProd | unknown | arbitrum | n/a | [`0xe4f747...d9dbc8`](./contracts/arbitrum-42161/0xe4f74717fba81709439493daf6dad9a355d9dbc8/) | ⚠️ Unaudited |
| SolvencyFacetProdArbitrum | unknown | arbitrum | n/a | 36 deployments: arbitrum [`0x0412b8...48f25c`](./contracts/arbitrum-42161/0x0412b84ed38440de599b926ae0d6332e3148f25c/); arbitrum `0x044e5f...a6e303`; arbitrum `0x0d10d3...ece007`; arbitrum `0x12f43e...1e6a88`; arbitrum `0x1d7ec7...1b9be0`; arbitrum `0x2a43c8...bf2a8f`; arbitrum `0x2a47f5...8282d6`; arbitrum `0x2f3005...79fe40`; arbitrum `0x3149a5...65cccd`; arbitrum `0x318533...26c395`; arbitrum `0x3cb6aa...f134b3`; arbitrum `0x46de55...6f2ff6`; arbitrum `0x579d0b...15c467`; arbitrum `0x5a3899...89ed7f`; arbitrum `0x6e4153...6d2aa4`; arbitrum `0x79f221...afebee`; arbitrum `0x7ec901...2c8590`; arbitrum `0x8f27fc...5d3641`; arbitrum `0x901ff7...39a8d8`; arbitrum `0x92a7b9...a8ec1f`; arbitrum `0x988cf5...2881e9`; arbitrum `0xa334e8...707770`; arbitrum `0xac3a92...804aba`; arbitrum `0xc938bd...cb66a7`; arbitrum `0xca605c...dc916c`; arbitrum `0xce49cc...d49e1a`; arbitrum `0xd3cd21...30e248`; arbitrum `0xd7eae5...23cadc`; arbitrum `0xda0de5...8a2e54`; arbitrum `0xda1c1b...8cfba2`; arbitrum `0xdc8488...1e7910`; arbitrum `0xddff57...4e891e`; arbitrum `0xe3b642...376d9c`; arbitrum `0xe91ddd...fa506a`; arbitrum `0xf102c7...427681`; arbitrum `0xfff988...e1db14` | ⚠️ Unaudited |
| sPrimeRevenueTokenChoices | token | arbitrum | n/a | [`0xedbe47...8f4434`](./contracts/arbitrum-42161/0xedbe47785c5ac7429b2240bd2466a93a1e8f4434/) | ⚠️ Unaudited |
| SushiSwapDEXFacet | unknown | arbitrum | n/a | [`0x952361...1530b2`](./contracts/arbitrum-42161/0x9523615c15d3743cb3198b4464048b064f1530b2/) | ⚠️ Unaudited |
| SwapDebtFacet | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x0867d8...24a863`](./contracts/arbitrum-42161/0x0867d8c79a5692922181105b217fe5c64c24a863/); arbitrum `0x1b3909...22957f`; arbitrum `0x1f53c3...618b9e`; arbitrum `0x81c96f...dca388`; arbitrum `0xac5194...d19187`; arbitrum `0xdc168a...0bc576` | ⚠️ Unaudited |
| TestGmxV2 | unknown | arbitrum | n/a | [`0x89f85f...c2ad86`](./contracts/arbitrum-42161/0x89f85f9ec26c6bbcc102e2cb5a3c67652cc2ad86/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | n/a | 4 deployments: arbitrum [`0x19a2e8...b841ba`](./contracts/arbitrum-42161/0x19a2e808bb716e20b7cea28bc11930ef89b841ba/); arbitrum `0x1fa4de...ff15e7`; arbitrum `0x2642a3...f7ba95`; arbitrum `0x43d9a2...c9aa93` | ⚠️ Unaudited |
| TokenManager | governance | arbitrum | n/a | 16 deployments: arbitrum [`0x005613...9c7ff9`](./contracts/arbitrum-42161/0x0056137622530596aa9d880edb744fc9169c7ff9/); arbitrum `0x04aec3...b9539c`; arbitrum `0x35ca24...a0b3cd`; arbitrum `0x365854...2e3702`; arbitrum `0x38f4f6...a18d30`; arbitrum `0x462b7e...e506c3`; arbitrum `0x7ba466...0fa7c3`; arbitrum `0x81db28...bc5b7f`; arbitrum `0x8463b7...a823de`; arbitrum `0x9c122b...02cd36`; arbitrum `0x9c1876...6cfe3d`; arbitrum `0xb70286...bcc132`; arbitrum `0xb80670...3a4304`; arbitrum `0xc29afe...022967`; arbitrum `0xe182e5...c5ed84`; arbitrum `0xe24e0a...42ed18` | ⚠️ Unaudited |
| TraderJoeV2ArbitrumFacet | unknown | arbitrum | n/a | 28 deployments: arbitrum [`0x099702...2397a2`](./contracts/arbitrum-42161/0x099702595b16f34f6c7192150fcbfcab882397a2/); arbitrum `0x1b077f...2f3098`; arbitrum `0x21d719...9f34f2`; arbitrum `0x285026...f1252d`; arbitrum `0x33e63f...dc2200`; arbitrum `0x3490d6...77c764`; arbitrum `0x34e5e0...51a261`; arbitrum `0x364d3f...0c50a8`; arbitrum `0x445b88...975a0a`; arbitrum `0x4afd12...0c57a5`; arbitrum `0x4c6f5a...31b776`; arbitrum `0x4fcc3d...7175bc`; arbitrum `0x572d7f...8e8e77`; arbitrum `0x76483b...9e8432`; arbitrum `0x78dfaa...60ae2f`; arbitrum `0x85db28...997fae`; arbitrum `0x8629eb...33ad9c`; arbitrum `0x88ddad...c25991`; arbitrum `0x89dfd4...4f394a`; arbitrum `0x8e9dea...e4322e`; arbitrum `0x9db801...e0afe4`; arbitrum `0x9ea05b...9eb880`; arbitrum `0xb18599...768e38`; arbitrum `0xb4554d...65751c`; arbitrum `0xcdf738...362560`; arbitrum `0xd6002c...18cb5d`; arbitrum `0xeff02c...ef4268`; arbitrum `0xfc9ad6...cdbbbe` | ⚠️ Unaudited |
| UniPool | core_logic | arbitrum | unit-32717 | [`0xf9a12a...2a2967`](./contracts/arbitrum-42161/0xf9a12a4759500df05983fd3ebd7f8a8f262a2967/) | ⚠️ Unaudited |
| UniPoolFactory | registry | arbitrum | n/a | [`0x252cba...47566c`](./contracts/arbitrum-42161/0x252cba65dcea20dea4c97257107a20b80147566c/) | ⚠️ Unaudited |
| UniVariableUtilisationRatesCalculator | unknown | arbitrum | n/a | [`0xa0a4c3...f3e4ae`](./contracts/arbitrum-42161/0xa0a4c3bb42232875551794ca8608ac88a7f3e4ae/) | ⚠️ Unaudited |
| UsdcPool | core_logic | arbitrum | n/a | 18 deployments: arbitrum [`0x2a1384...7f1d51`](./contracts/arbitrum-42161/0x2a1384b1bcad3a8ecf0d4e4b2a3f92250f7f1d51/); arbitrum `0x3b3d28...6145fd`; arbitrum `0x4db8ba...514978`; arbitrum `0x546f24...f3dcc5`; arbitrum `0x591fa3...889a79`; arbitrum `0x6e1bad...748f3a`; arbitrum `0x70c5e4...7f2aaf`; arbitrum `0x784451...16d676`; arbitrum `0x78d927...5d0031`; arbitrum `0x7cc8a9...cdf6f8`; arbitrum `0x8a3b51...93f973`; arbitrum `0x94aaa8...437bae`; arbitrum `0xacf6d8...5d7b72`; arbitrum `0xb4dc91...43bfac`; arbitrum `0xd90772...8a285b`; arbitrum `0xeaf5a4...ef340f`; arbitrum `0xf62b62...c7da92`; arbitrum `0xfb8320...889042` | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculator | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x23873d...26a329`](./contracts/arbitrum-42161/0x23873dc819554167ce7f133080978c7b0926a329/); arbitrum `0x373248...7cba9a`; arbitrum `0x38c8a2...526133`; arbitrum `0x6715e7...7acb39`; arbitrum `0xa24e8b...391dce`; arbitrum `0xb03b33...7343a1`; arbitrum `0xd4970a...95760d`; arbitrum `0xd9f6df...0bca8f` | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculatorFixedRate | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x341fc5...c4d243`](./contracts/arbitrum-42161/0x341fc5557a5c71527518f6c231ade49659c4d243/); arbitrum `0x4c52cf...5a03b2`; arbitrum `0x9a3502...956528`; arbitrum `0xb218db...3bae74` | ⚠️ Unaudited |
| UsdcVariableUtilisationRatesCalculatorZeroRate | unknown | arbitrum | n/a | [`0x97886a...0b35d5`](./contracts/arbitrum-42161/0x97886abb2bdbea0e49a86ea1bcd2c4a7120b35d5/) | ⚠️ Unaudited |
| UsdtPool | core_logic | arbitrum | unit-32664 | [`0x5fae0e...eece74`](./contracts/arbitrum-42161/0x5fae0ebe49a920fa8350c0396683244824eece74/) | ⚠️ Unaudited |
| UsdtPool | core_logic | avalanche | n/a | [`0xb02c43...e22cf7`](./contracts/avalanche-43114/0xb02c43bfe00d03ecae72bbb6960b23fc0be22cf7/) | ⚠️ Unaudited |
| UsdtVariableUtilisationRatesCalculator | token | arbitrum | n/a | [`0xddc0b0...c5ae9f`](./contracts/arbitrum-42161/0xddc0b0319984ce1ff36192dc90ae0a7167c5ae9f/) | ⚠️ Unaudited |
| vPrime | unknown | arbitrum | n/a | [`0x28739d...ccfabc`](./contracts/arbitrum-42161/0x28739d2a05d754b51f3441cbf64d4d2635ccfabc/) | ⚠️ Unaudited |
| vPrimeControllerArbitrum | governance | arbitrum | n/a | [`0x2323da...32d12b`](./contracts/arbitrum-42161/0x2323dac85c6ab9bd6a8b5fb75b0581e31232d12b/) | ⚠️ Unaudited |
| WethPool | core_logic | arbitrum | n/a | 20 deployments: arbitrum [`0x03dbff...8e389a`](./contracts/arbitrum-42161/0x03dbffa1c257c64b9faf254cffb0ababbf8e389a/); arbitrum `0x03ecc7...eff127`; arbitrum `0x0b4c71...761a5a`; arbitrum `0x1400b8...05a3b2`; arbitrum `0x22e97b...c56856`; arbitrum `0x46a2cf...81cd9d`; arbitrum `0x4816a7...3fe6fa`; arbitrum `0x483ea7...a331bb`; arbitrum `0x494735...4a78bc`; arbitrum `0x53fda4...6ae03e`; arbitrum `0x5fc2be...501110`; arbitrum `0x61ac1d...e84ebe`; arbitrum `0x8027e0...779ce8`; arbitrum `0xa1f7ff...609fd5`; arbitrum `0xa47adc...b78852`; arbitrum `0xb52124...1a91f2`; arbitrum `0xbe6719...1dbed8`; arbitrum `0xcde74b...4ef63d`; arbitrum `0xd334bf...58e571`; arbitrum `0xee8f1b...780b92` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculator | token | arbitrum | n/a | 6 deployments: arbitrum [`0x02a4b9...c5ae5f`](./contracts/arbitrum-42161/0x02a4b9e27911513cfe62e5763f6a37f577c5ae5f/); arbitrum `0x0d184a...bc5a72`; arbitrum `0x4d14da...24969f`; arbitrum `0x94ab21...689ffb`; arbitrum `0xd00d2b...f09ced`; arbitrum `0xe49801...897a49` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculatorFixedRate | token | arbitrum | n/a | 6 deployments: arbitrum [`0x0b11a1...b8664e`](./contracts/arbitrum-42161/0x0b11a1f29febc32cc831e80b6b0c9db330b8664e/); arbitrum `0x3acd0a...16c474`; arbitrum `0x4a0f31...987cd6`; arbitrum `0x8d4c79...fc6ede`; arbitrum `0xa17467...bbfc72`; arbitrum `0xd987b2...d7998c` | ⚠️ Unaudited |
| WethVariableUtilisationRatesCalculatorZeroRate | token | arbitrum | n/a | 3 deployments: arbitrum [`0x8a80f1...b7222c`](./contracts/arbitrum-42161/0x8a80f1bc957e09bd5b06501c95b4c68c00b7222c/); arbitrum `0xcf5473...5979d7`; arbitrum `0xe59408...872ba6` | ⚠️ Unaudited |
| WithdrawalIntentFacet | operational_periphery | arbitrum | n/a | 34 deployments: arbitrum [`0x030b1b...12a2f7`](./contracts/arbitrum-42161/0x030b1bb800aa5a9da52b8e4e21d82464d712a2f7/); arbitrum `0x044cb8...e50998`; arbitrum `0x09885a...e31f32`; arbitrum `0x0b5fab...c6139f`; arbitrum `0x139f9c...4cfb52`; arbitrum `0x293768...3310d9`; arbitrum `0x4b5081...a79443`; arbitrum `0x4fd6ae...170e59`; arbitrum `0x52d572...113143`; arbitrum `0x56133d...48320a`; arbitrum `0x5c09b2...53cc6d`; arbitrum `0x5c1526...fbea69`; arbitrum `0x5e1a1b...f18b80`; arbitrum `0x6bfbb2...07d04d`; arbitrum `0x6ffea6...8b4d8e`; arbitrum `0x7b054a...8e96c7`; arbitrum `0x7b9076...b3028c`; arbitrum `0x86d200...ac4963`; arbitrum `0x8ad902...92cc75`; arbitrum `0x8fd264...297888`; arbitrum `0x92336b...5ee67b`; arbitrum `0x9eb10a...aaa6e0`; arbitrum `0xa5263d...a2382c`; arbitrum `0xa6a866...fe1a22`; arbitrum `0xa8df1c...e9c52a`; arbitrum `0xb2487e...1824e8`; arbitrum `0xb4e461...9c9c4b`; arbitrum `0xc4f726...35b05e`; arbitrum `0xd0ea7f...65edc3`; arbitrum `0xd562d0...eca489`; arbitrum `0xd6d37e...174d83`; arbitrum `0xdb443e...fe34e2`; arbitrum `0xefeb67...ab194c`; arbitrum `0xff3685...157360` | ⚠️ Unaudited |
| WithdrawUnsupportedPositionsFacet | operational_periphery | arbitrum | n/a | [`0xe5b3c1...15989c`](./contracts/arbitrum-42161/0xe5b3c10705c1fb2230aa0ff520fa2d66a015989c/) | ⚠️ Unaudited |
| YieldYakFacetArbi | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x17d832...7f9aee`](./contracts/arbitrum-42161/0x17d83238e851dae5bae2389876ab860ee17f9aee/); arbitrum `0x30e50a...021558`; arbitrum `0x3b642a...1faf61`; arbitrum `0x408db5...d2c1d7`; arbitrum `0xe1e983...acaa6a`; arbitrum `0xe71427...d783a6`; arbitrum `0xf5b4a2...532acc`; arbitrum `0xf9471f...ebfd73` | ⚠️ Unaudited |
| YieldYakSwapArbitrumFacet | unknown | arbitrum | n/a | 13 deployments: arbitrum [`0x096170...ec1715`](./contracts/arbitrum-42161/0x09617024c8a82b55a99aa72e881154a1b5ec1715/); arbitrum `0x11803b...b1e29f`; arbitrum `0x39c575...fbd44d`; arbitrum `0x437bc7...fe394e`; arbitrum `0x47b278...f7d4b0`; arbitrum `0x4d9965...19b9de`; arbitrum `0x65752f...04f6e5`; arbitrum `0x8ce5da...e0a361`; arbitrum `0xa60cd8...8ec6b3`; arbitrum `0xb03959...82f4a0`; arbitrum `0xbee8b0...2946a7`; arbitrum `0xcff6e0...bf67d6`; arbitrum `0xdb6a88...92b6a8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xdcb1f88f89b78330d83d16fc65419ad088a7ef6e) | proxy | avalanche | unit-32778 | `0xd38c5c...7e730e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00c0b3...1cb9ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15ece4...d3b2bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1db708...f99ce1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2dfe26...98f6e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38ec7c...823528` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x568947...120976` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x569ab1...5c0993` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ba540...fa67bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c4cc8...72a1ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7392da...297bf7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x838fc9...c8127d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85ccd7...de62a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9083e0...dfedf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x970939...f3a854` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa322e7...a4399b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5984c...1a5b48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6b4d0...cbfb09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9c8e3...662576` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa36d9...2ad6ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc6ff4...0d2edd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce3efe...9180d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdaf78e...970d9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb5323...c62c7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdec722...aa18dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb1e38...50e94f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb9cee...8cb1f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf73511...637e18` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x13652f...af4c58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33c803...c7f298` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x356437...206a20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3750f8...37005d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x596f6e...e7e875` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x637312...dc1af3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6d149f...db1ded` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x881fa1...e4688c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb913ac...16b227` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc6ef3...72d965` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x2323da...32d12b`](./contracts/avalanche-43114/0x2323dac85c6ab9bd6a8b5fb75b0581e31232d12b/) | UsdcPoolTUP | core_logic | $0.09 | Verified native implementation with $0.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x647c15...0d5863`](./contracts/arbitrum-42161/0x647c153727b8ee03a320640b8efac7e9080d5863/) | ArbDepositIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x91da06...a33ef9`](./contracts/arbitrum-42161/0x91da06b2b4c72563083091448282de1014a33ef9/) | ArbPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa273ef...948e2b`](./contracts/arbitrum-42161/0xa273efd3bd9182c5b909fcd65242860d8d948e2b/) | ArbPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x315c55...7b4870`](./contracts/arbitrum-42161/0x315c55f5da4db2b516f1331dfa344da47c7b4870/) | ArbPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d776f...12b34f`](./contracts/arbitrum-42161/0x5d776f18289c1cadbb11d77723c3d0605912b34f/) | ArbVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x034702...c849e2`](./contracts/arbitrum-42161/0x0347025482c9f8ec6c8323e87b81eb11dcc849e2/) | ArbVariableUtilisationRatesCalculatorFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x52b952...ee8d89`](./contracts/arbitrum-42161/0x52b95237c3c1803518f52c648f3c5a7593ee8d89/) | AssetsExposureController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x040e6a...1d12e2`](./contracts/arbitrum-42161/0x040e6a4b92f00c876ab2e047dee5a9087f1d12e2/) | AssetsOperationsArbitrumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5e02c0...bd2ce4`](./contracts/arbitrum-42161/0x5e02c09ec77912fe2ad7301935e276e627bd2ce4/) | AssetsOperationsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10aaef...104c71`](./contracts/arbitrum-42161/0x10aaefc8787a41f7ee44cb032859d1f412104c71/) | BeefyFinanceArbitrumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19a9ce...08a764`](./contracts/arbitrum-42161/0x19a9ce20a7a0b3069aeae1e48e0eb9143008a764/) | BtcPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa42be1...e43f16`](./contracts/arbitrum-42161/0xa42be11a62509ebf70133d5a7dd27be5e6e43f16/) | BtcPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00fe52...69d2cc`](./contracts/arbitrum-42161/0x00fe526a4ff5446b98e20b5490e2e65f5b69d2cc/) | BtcVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x257757...6b46bc`](./contracts/arbitrum-42161/0x257757c91bbfd46f571b16ab70e2cf05ac6b46bc/) | BtcVariableUtilisationRatesCalculatorFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x54ef8c...d4d6ee`](./contracts/arbitrum-42161/0x54ef8c794e1375a43e657f63e9470e657bd4d6ee/) | ContractPausedEmptyImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x032d8e...b66c43`](./contracts/arbitrum-42161/0x032d8ea2e6855e898fd177eb2d7916d8fab66c43/) | CTKN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x55ca74...881826`](./contracts/arbitrum-42161/0x55ca7409da9cc35908c54a2ae9c605bf3c881826/) | CTKNMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0444f5...85dd4d`](./contracts/arbitrum-42161/0x0444f5a0df5199b267e85a02cf044b9b8985dd4d/) | DaiPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb50349...a4c3da`](./contracts/arbitrum-42161/0xb5034979baf764aa944ca1050cf39283aba4c3da/) | DaiPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x44761e...db5c1f`](./contracts/arbitrum-42161/0x44761ea5a4b92adbbe8c17212c97e3de4bdb5c1f/) | DaiVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d33b4...81859e`](./contracts/arbitrum-42161/0x5d33b4b48f2d8842d306923077868123c981859e/) | DaiVariableUtilisationRatesCalculatorFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x255700...d557f9`](./contracts/arbitrum-42161/0x255700194f34162405eed34549b678d0e4d557f9/) | DaiVariableUtilisationRatesCalculatorZeroRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b420f...0bccea`](./contracts/arbitrum-42161/0x0b420f7002375543d04471bf84ead6fb0f0bccea/) | DepositSwapArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e273b...7e7d04`](./contracts/arbitrum-42161/0x3e273bcc448d22b9329a56da3a91ace1b57e7d04/) | DiamondInit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9add42...d94860`](./contracts/arbitrum-42161/0x9add42075a0fa68fb9891779f20e7e8074d94860/) | ERC20Mock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x58ee09...f4b166`](./contracts/arbitrum-42161/0x58ee09b419fb027315c7ca5390298a7355f4b166/) | EthPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b8c6e...f0cbd0`](./contracts/arbitrum-42161/0x1b8c6ece5588d21369935a91d3f2459f66f0cbd0/) | GLPFacetArbi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11847e...1d22f3`](./contracts/arbitrum-42161/0x11847ee581f524c29a54541a9d91587b941d22f3/) | GlvFacetArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02ca12...75ca4f`](./contracts/arbitrum-42161/0x02ca120518601adbc97d603ab44e5b990d75ca4f/) | GmxBenchmarkMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02c55a...948edd`](./contracts/arbitrum-42161/0x02c55abdad2d35cd7c3358ada129c682b1948edd/) | GmxV2CallbacksFacetArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x009bfb...d77202`](./contracts/arbitrum-42161/0x009bfb7e9c76d08fb776a2d7f09b5447c3d77202/) | GmxV2FacetArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2160d2...a2a1ea`](./contracts/arbitrum-42161/0x2160d2a4c733d40b00e37be8b96affd579a2a1ea/) | GmxV2PlusFacetArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f386e...0ad704`](./contracts/arbitrum-42161/0x0f386e8c205c75fe00a144be0be576490b0ad704/) | HealthMeterFacetProd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e2cfe...6eea1d`](./contracts/arbitrum-42161/0x0e2cfe411e1f3e3aeedb06af3e5e42fd976eea1d/) | LevelFinanceFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2d99ee...f42a03`](./contracts/arbitrum-42161/0x2d99ee2fed53b0ec85fe32abb8135df44ff42a03/) | LinkPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x37b4a5...26dae1`](./contracts/arbitrum-42161/0x37b4a5fc1ece6d1f182549ec596821a81f26dae1/) | LinkPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x317dbf...8071cc`](./contracts/arbitrum-42161/0x317dbf309d8eb41ad036b6bcc85f411e298071cc/) | LinkVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d45a3...f6e375`](./contracts/arbitrum-42161/0x0d45a30f878895af7510f7a23e82eca253f6e375/) | LiquidationFlashloanArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x427f21...18522e`](./contracts/arbitrum-42161/0x427f2121f1a2ccaac508412bcef4e68b0418522e/) | LTIPFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5ce6ee...e872af`](./contracts/arbitrum-42161/0x5ce6ee56619d3ea3e54d5e9c7d92bec266e872af/) | MockERC20OpenMint | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x22205e...c6d2b7`](./contracts/arbitrum-42161/0x22205e4722a99f83434c555dbae6849e0bc6d2b7/) | MockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x019aba...eab533`](./contracts/arbitrum-42161/0x019aba434a6dc067aa7267488e5e763360eab533/) | MockToken6Decimals | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13b4ee...893932`](./contracts/arbitrum-42161/0x13b4eed7ffddd2e235e627ad746c98bfde893932/) | OwnershipFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0aa196...5986c6`](./contracts/arbitrum-42161/0x0aa196a803a1866ec51522ef0e762bf0aa5986c6/) | ParaSwapFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x130c97...ad0acf`](./contracts/arbitrum-42161/0x130c975a189024cdfe4a4b38706a431463ad0acf/) | PenpieFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d6021...b3ace3`](./contracts/arbitrum-42161/0x3d6021a1bfa4bc4f1538e22201425c2382b3ace3/) | PrimeBuybackDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1899f6...f1fa91`](./contracts/arbitrum-42161/0x1899f6d524637808f2d53125b6ccfe6d2df1fa91/) | PrimeLeverageFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b6b88...29117d`](./contracts/arbitrum-42161/0x0b6b8815e9d9c74437642a8ec5587f905d29117d/) | PrimeRtknAirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b912b...f912f3`](./contracts/arbitrum-42161/0x8b912ba433efba3ac0000241b558f3aa05f912f3/) | RecoveryFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8d74f3...0dabfb`](./contracts/arbitrum-42161/0x8d74f3944674b2610abfcb58190d60c7190dabfb/) | RemoveArbiAssetFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8fe7d8...71dc6e`](./contracts/arbitrum-42161/0x8fe7d80de1e4ef8f35f21b3dd5bdf82e6171dc6e/) | RemoveWstEthAssetFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x90ab08...cc2620`](./contracts/arbitrum-42161/0x90ab083de7b2d658652ffd7da9481d768acc2620/) | ReusablePrimeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ff4c4...fffe25`](./contracts/arbitrum-42161/0x0ff4c49ea601a5ddb6bd0a836e55fcd72dfffe25/) | RTKNConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8eb3ce...bf03dc`](./contracts/arbitrum-42161/0x8eb3cec7c8f6942d99d57164b9fdce88e5bf03dc/) | RTKNDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xca4dbd...ce160d`](./contracts/arbitrum-42161/0xca4dbd9a813235f09e734513a86cb7291cce160d/) | RTKNDP2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x77811b...daa85e`](./contracts/arbitrum-42161/0x77811b9a74a714f5e996cee65e97dfbfa5daa85e/) | RTKNMock1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3310bc...815a71`](./contracts/arbitrum-42161/0x3310bc003329c2e75226b62c1396ef94cf815a71/) | RTKNMock2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x85ff7e...47a7bd`](./contracts/arbitrum-42161/0x85ff7ee82c6b65e483db10609f004b1ab347a7bd/) | RtknToPrimeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x62cf82...dc0c6c`](./contracts/arbitrum-42161/0x62cf82fb0484af382714cd09296260edc1dc0c6c/) | SmartLoanDiamondBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x968f94...6e2651`](./contracts/arbitrum-42161/0x968f944e9c43fc8ad80f6c1629f10570a46e2651/) | SmartLoanDiamondBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2916b3...94e56d`](./contracts/avalanche-43114/0x2916b3bf7c35bd21e63d01c93c62fb0d4994e56d/) | SmartLoanDiamondBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10cc67...68a859`](./contracts/arbitrum-42161/0x10cc67f62d7869ee3d48da50e0945e48ad68a859/) | SmartLoanLiquidationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a942d...c350b9`](./contracts/arbitrum-42161/0x1a942d071c5025bcfca262c0e197c8c785c350b9/) | SmartLoansFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3ea9d4...21b03d`](./contracts/avalanche-43114/0x3ea9d480295a73fd2af95b4d96c2aff88b21b03d/) | SmartLoansFactoryTUP | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x049393...cc94fc`](./contracts/arbitrum-42161/0x049393d11cf754ad6778748972ad9098becc94fc/) | SmartLoanViewFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05ced7...046a62`](./contracts/arbitrum-42161/0x05ced72e1d0eb003ded18e8f3ab32133f9046a62/) | SmartLoanWrappedNativeTokenFacet | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe4f747...d9dbc8`](./contracts/arbitrum-42161/0xe4f74717fba81709439493daf6dad9a355d9dbc8/) | SolvencyFacetProd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0412b8...48f25c`](./contracts/arbitrum-42161/0x0412b84ed38440de599b926ae0d6332e3148f25c/) | SolvencyFacetProdArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0867d8...24a863`](./contracts/arbitrum-42161/0x0867d8c79a5692922181105b217fe5c64c24a863/) | SwapDebtFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x89f85f...c2ad86`](./contracts/arbitrum-42161/0x89f85f9ec26c6bbcc102e2cb5a3c67652cc2ad86/) | TestGmxV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19a2e8...b841ba`](./contracts/arbitrum-42161/0x19a2e808bb716e20b7cea28bc11930ef89b841ba/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x005613...9c7ff9`](./contracts/arbitrum-42161/0x0056137622530596aa9d880edb744fc9169c7ff9/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x099702...2397a2`](./contracts/arbitrum-42161/0x099702595b16f34f6c7192150fcbfcab882397a2/) | TraderJoeV2ArbitrumFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x252cba...47566c`](./contracts/arbitrum-42161/0x252cba65dcea20dea4c97257107a20b80147566c/) | UniPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa0a4c3...f3e4ae`](./contracts/arbitrum-42161/0xa0a4c3bb42232875551794ca8608ac88a7f3e4ae/) | UniVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a1384...7f1d51`](./contracts/arbitrum-42161/0x2a1384b1bcad3a8ecf0d4e4b2a3f92250f7f1d51/) | UsdcPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x23873d...26a329`](./contracts/arbitrum-42161/0x23873dc819554167ce7f133080978c7b0926a329/) | UsdcVariableUtilisationRatesCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x341fc5...c4d243`](./contracts/arbitrum-42161/0x341fc5557a5c71527518f6c231ade49659c4d243/) | UsdcVariableUtilisationRatesCalculatorFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x97886a...0b35d5`](./contracts/arbitrum-42161/0x97886abb2bdbea0e49a86ea1bcd2c4a7120b35d5/) | UsdcVariableUtilisationRatesCalculatorZeroRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5fae0e...eece74`](./contracts/arbitrum-42161/0x5fae0ebe49a920fa8350c0396683244824eece74/) | UsdtPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb02c43...e22cf7`](./contracts/avalanche-43114/0xb02c43bfe00d03ecae72bbb6960b23fc0be22cf7/) | UsdtPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xddc0b0...c5ae9f`](./contracts/arbitrum-42161/0xddc0b0319984ce1ff36192dc90ae0a7167c5ae9f/) | UsdtVariableUtilisationRatesCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28739d...ccfabc`](./contracts/arbitrum-42161/0x28739d2a05d754b51f3441cbf64d4d2635ccfabc/) | vPrime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2323da...32d12b`](./contracts/arbitrum-42161/0x2323dac85c6ab9bd6a8b5fb75b0581e31232d12b/) | vPrimeControllerArbitrum | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03dbff...8e389a`](./contracts/arbitrum-42161/0x03dbffa1c257c64b9faf254cffb0ababbf8e389a/) | WethPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| native | 112 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
