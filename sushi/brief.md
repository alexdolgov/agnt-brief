# Agentic Audit Brief: Sushi

## Project Overview

- Project: Sushi (`sushi`)
- Website: [https://sushi.com/](https://sushi.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.138Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, arbitrum-nova, avalanche, base, blast, bsc, ethereum, fantom, gnosis, harmony, heco, kava, linea, metis, moonriver, optimism, polygon, polygon-zkevm, scroll, sonic
- Contract surface: 210 unique implementations (326 raw deployments)
- DeFi Llama TVL: $84,599,022.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 207 project-authored contract(s) across 14 chain(s); 12 ERC20 tokens, 15 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 37 common project-authored base contract(s) (bentoadapter, immutablestate, tokenadapter). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 490; live-surface contracts included: 326 (128 live, 198 unknown).
- Excluded by liveness: 164 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/34 (2.9%)
- Deployed-live implementations: 39 of 210 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/57
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 153
- Unique implementations: 210
- Raw deployments: 326
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 1.8% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SushiBar | unknown | ethereum | n/a | [`0x8798249c2e607446efb7ad49ec89dd1865ff4272`](./contracts/ethereum-1/0x8798249c2e607446efb7ad49ec89dd1865ff4272/) | ✅ Audited |

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV5ERC20 | token | avalanche | n/a | 2 deployments: arbitrum `0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a`; avalanche [`0x130966628846bfd36ff31a822705796e8cb8c18d`](./contracts/avalanche-43114/0x130966628846bfd36ff31a822705796e8cb8c18d/) | ⚠️ Unaudited |
| AuctionCreation | unknown | polygon | n/a | [`0xc040f84cf7046409f92d578ef9040fe45e6ef4be`](./contracts/polygon-137/0xc040f84cf7046409f92d578ef9040fe45e6ef4be/) | ⚠️ Unaudited |
| BentoBox | unknown | optimism | n/a | [`0xc35dadb65012ec5796536bd9864ed8773abc74c4`](./contracts/optimism-10/0xc35dadb65012ec5796536bd9864ed8773abc74c4/) | ⚠️ Unaudited |
| BentoBoxV1 | unknown | ethereum | n/a | [`0xf5bce5077908a1b7370b9ae04adc565ebd643966`](./contracts/ethereum-1/0xf5bce5077908a1b7370b9ae04adc565ebd643966/) | ⚠️ Unaudited |
| BentoBoxV1 | unknown | polygon | n/a | 6 deployments: bsc `0xf5bce5077908a1b7370b9ae04adc565ebd643966`; gnosis `0xe2d7f5dd869fc7c126d21b13a9080e75a4bdb324`; polygon [`0x0319000133d3ada02600f0875d2cf03d442c3367`](./contracts/polygon-137/0x0319000133d3ada02600f0875d2cf03d442c3367/); metis `0xc35dadb65012ec5796536bd9864ed8773abc74c4`; arbitrum `0x74c764d41b77dbbb4fe771dab1939b00b146894a`; avalanche `0x0711b6026068f736bae6b213031fce978d48e026` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | avalanche | n/a | [`0xd18ca07a599bf5ebb9b7327871ad682f0b660748`](./contracts/avalanche-43114/0xd18ca07a599bf5ebb9b7327871ad682f0b660748/) | ⚠️ Unaudited |
| ChainlinkOracleV1 | unknown | avalanche | n/a | [`0x8f2cc3376078568a04ebc600ae5f0a036dbfd812`](./contracts/avalanche-43114/0x8f2cc3376078568a04ebc600ae5f0a036dbfd812/) | ⚠️ Unaudited |
| ChainlinkOracleV2 | unknown | avalanche | n/a | [`0x43198b6fa5d89b88d2e072fa4841724571de5a59`](./contracts/avalanche-43114/0x43198b6fa5d89b88d2e072fa4841724571de5a59/) | ⚠️ Unaudited |
| ConstantProductPoolFactory | unknown | polygon | n/a | 10 deployments: optimism `0x0769fd68dfb93167989c6f7254cd0d766fb2841f`; optimism `0x93395129bd3fcf49d95730d3c2737c17990ff328`; polygon [`0x05689fcfee31fce4a67fbc7cab13e74f80a4e288`](./contracts/polygon-137/0x05689fcfee31fce4a67fbc7cab13e74f80a4e288/); polygon `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c`; polygon `0x28890e3c0aa9b4b48b1a716f46c9abc9b12abfab`; polygon `0x7603a35af5cf10b113f167d424eb75bb7062c8ce`; polygon `0xefacaff817572913738ffc530e83e56cccf78953`; metis `0x0769fd68dfb93167989c6f7254cd0d766fb2841f`; arbitrum `0xc79ae87e9f55761c08e346b98dddf070c9872787`; avalanche `0xb84a043bc4fca97b7a74ed7daab1bf12a8df929f` | ⚠️ Unaudited |
| ConstantProductPoolFactoryHelper | unknown | polygon | n/a | 6 deployments: optimism `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3`; polygon [`0x1c5771e96c9d5524fb6e606f5b356d08c40eb194`](./contracts/polygon-137/0x1c5771e96c9d5524fb6e606f5b356d08c40eb194/); polygon `0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c`; polygon `0xdcd6a4b673b1c409e4b67f787935865b161232d3`; metis `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3`; arbitrum `0x827179dd56d07a7eea32e3873493835da2866976` | ⚠️ Unaudited |
| Crowdsale | unknown | avalanche | n/a | [`0x8dacffa7f69ce572992132697252e16254225d38`](./contracts/avalanche-43114/0x8dacffa7f69ce572992132697252e16254225d38/) | ⚠️ Unaudited |
| DegenBox | unknown | ethereum | n/a | [`0xd96f48665a1410c0cd669a88898eca36b9fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | ⚠️ Unaudited |
| InchSpellSwapper | adapter | ethereum | n/a | [`0xdfe1a5b757523ca6f7f049ac02151808e6a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| KashiPairMediumRiskV1 | unknown | avalanche | n/a | [`0x513037395fa0c9c35e41f89189cedfe3bd42fadb`](./contracts/avalanche-43114/0x513037395fa0c9c35e41f89189cedfe3bd42fadb/) | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| MasterDeployer | unknown | optimism | n/a | 2 deployments: optimism [`0x1b02da8cb0d097eb8d57a175b88c7d8b47997506`](./contracts/optimism-10/0x1b02da8cb0d097eb8d57a175b88c7d8b47997506/); metis [`0x1b02da8cb0d097eb8d57a175b88c7d8b47997506`](./contracts/metis-1088/0x1b02da8cb0d097eb8d57a175b88c7d8b47997506/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | polygon | n/a | 3 deployments: gnosis `0xddcbf776df3de60163066a5dddf2277cb445e0f3`; polygon [`0x0769fd68dfb93167989c6f7254cd0d766fb2841f`](./contracts/polygon-137/0x0769fd68dfb93167989c6f7254cd0d766fb2841f/); arbitrum `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3` | ⚠️ Unaudited |
| MISOFarmFactory | unknown | avalanche | n/a | [`0x351447fc9bd20a917783e159e61e86edda0b0187`](./contracts/avalanche-43114/0x351447fc9bd20a917783e159e61e86edda0b0187/) | ⚠️ Unaudited |
| MISOMarket | unknown | avalanche | n/a | [`0x7603a35af5cf10b113f167d424eb75bb7062c8ce`](./contracts/avalanche-43114/0x7603a35af5cf10b113f167d424eb75bb7062c8ce/) | ⚠️ Unaudited |
| MISOTokenFactory | unknown | avalanche | n/a | [`0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c`](./contracts/avalanche-43114/0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c/) | ⚠️ Unaudited |
| mSpellStaking | token | ethereum | n/a | [`0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | ⚠️ Unaudited |
| Multicall2 | periphery | arbitrum | n/a | [`0x80c7dd17b01855a6d2347444a0fcc36136a314de`](./contracts/arbitrum-42161/0x80c7dd17b01855a6d2347444a0fcc36136a314de/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | arbitrum | n/a | 11 deployments: ethereum `0x67468e6c4418d58b1b41bc0a795bacb824f70792`; optimism `0xb3115b68e69886dc9dbcc674db35e73cd91e9053`; bsc `0x7770978eed668a3ba661d51a773d3a992fc9ddcb`; gnosis `0x2f686751b19a9d91cc3d57d90150bc767f050066`; polygon `0x5a2b5d1bb4c2c460a6d748c202e7fede016812c7`; sonic `0xcdbcd51a5e8728e0af4895ce5771b7d17ff71959`; metis `0xd5607d184b1d6ecba94a07c217497fe9346010d9`; moonriver `0xbbde1d67297329148fe1ed5e6b00114842728e65`; arbitrum [`0x0367a647a68f304f2a6e453c25033a4249d7f2c6`](./contracts/arbitrum-42161/0x0367a647a68f304f2a6e453c25033a4249d7f2c6/); avalanche `0x7d222c52983690678e847cd063535f328875f463`; blast `0x1f2fcf1d036b375b384012e61d3aa33f8c256bbe` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | n/a | [`0x2214a42d8e2a1d20635c2cb0664422c528b6a432`](./contracts/ethereum-1/0x2214a42d8e2a1d20635c2cb0664422c528b6a432/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0xf70c086618dcf2b1a461311275e00d6b722ef914`](./contracts/bsc-56/0xf70c086618dcf2b1a461311275e00d6b722ef914/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | polygon | n/a | [`0xb7402ee99f0a008e461098ac3a27f4957df89a40`](./contracts/polygon-137/0xb7402ee99f0a008e461098ac3a27f4957df89a40/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | 7 deployments: optimism `0x1af415a1eba07a4986a52b6f2e7de7003d82231e`; gnosis `0xab235da7f52d35fb4551afba11bfb56e18774a65`; sonic [`0x0389879e0156033202c44bf784ac18fc02edee4f`](./contracts/sonic-146/0x0389879e0156033202c44bf784ac18fc02edee4f/); metis `0x630be2985674d31920babb4f96657960f131e7b1`; moonriver `0xd045d27c1f7e7f770a807b0a85d8e3f852e0f2be`; avalanche `0x18350b048ab366ed601ffdbc669110ecb36016f3`; blast `0x51edb3e5bce8618b77b60215f84ad3db14709051` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0x80c7dd17b01855a6d2347444a0fcc36136a314de`](./contracts/base-8453/0x80c7dd17b01855a6d2347444a0fcc36136a314de/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | n/a | [`0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49`](./contracts/arbitrum-42161/0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | ethereum | n/a | 12 deployments: ethereum [`0x1c4369df5732ccf317fef479b26a56e176b18abb`](./contracts/ethereum-1/0x1c4369df5732ccf317fef479b26a56e176b18abb/); optimism `0x54ea633385c52263846b37409649b5b8fa5ed402`; bsc `0x7af71799c40f952237eaa4d81a77c1af49125113`; gnosis `0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6`; polygon `0x8c990a53e3fc5e4db1404bab33c6dfaceabffecc`; sonic `0x57bffa72db682f7eb6c132dae03ff36bbeb0c459`; metis `0x90dab18856331a85dc64203ce39aab01447dc134`; moonriver `0x7a4af156379f512de147ed3b96393047226d923f`; arbitrum `0x96e04591579f298681361c6122dc4ef405c19385`; avalanche `0xc040f84cf7046409f92d578ef9040fe45e6ef4be`; blast `0x734583f62bb6ace3c9ba9bd5a53143ca2ce8c55a`; blast `0xb46e319390de313b8cc95ea5aa30c7bbfd79da94` | ⚠️ Unaudited |
| PointList | unknown | avalanche | n/a | [`0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6`](./contracts/avalanche-43114/0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6/) | ⚠️ Unaudited |
| PostAuctionLauncher | unknown | avalanche | n/a | [`0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a`](./contracts/avalanche-43114/0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a/) | ⚠️ Unaudited |
| QuoterV2 | periphery | metis | n/a | [`0xfbc12984689e5f15626bad03ad60160fe98b303c`](./contracts/metis-1088/0xfbc12984689e5f15626bad03ad60160fe98b303c/) | ⚠️ Unaudited |
| RouteProcessor | unknown | metis | n/a | [`0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a`](./contracts/metis-1088/0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a/) | ⚠️ Unaudited |
| RouteProcessor3 | unknown | base | n/a | 5 deployments: ethereum `0x827179dd56d07a7eea32e3873493835da2866976`; optimism `0x4c5d5234f232bd2d76b96aa33f5ae4fcf0e4bfab`; metis `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788`; base [`0x0be808376ecb75a5cf9bb6d237d16cd37893d904`](./contracts/base-8453/0x0be808376ecb75a5cf9bb6d237d16cd37893d904/); arbitrum `0xfc506aaa1340b4dedffd88be278bee058952d674` | ⚠️ Unaudited |
| RouteProcessor3_2 | unknown | arbitrum | n/a | 4 deployments: ethereum `0x5550d13389bb70f45fcef58f19f6b6e87f6e747d`; polygon `0xe7eb31f23a5befeeff76dbd2ed6adc822568a5d2`; base `0x83ec81ae54dd8dca17c3dd4703141599090751d1`; arbitrum [`0x09bd2a33c47746ff03b86bce4e885d03c74a8e8c`](./contracts/arbitrum-42161/0x09bd2a33c47746ff03b86bce4e885d03c74a8e8c/) | ⚠️ Unaudited |
| RouteProcessor4 | unknown | polygon | n/a | 3 deployments: polygon [`0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e`](./contracts/polygon-137/0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e/); metis `0xb45e53277a7e0f1d35f2a77160e91e25507f1763`; metis `0xd408a20f1213286fb3158a2bfbf5bffaca8bf269` | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| StablePoolFactory | registry | metis | n/a | 4 deployments: metis [`0x2f686751b19a9d91cc3d57d90150bc767f050066`](./contracts/metis-1088/0x2f686751b19a9d91cc3d57d90150bc767f050066/); metis `0x93395129bd3fcf49d95730d3c2737c17990ff328`; metis `0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c`; avalanche `0x7770978eed668a3ba661d51a773d3a992fc9ddcb` | ⚠️ Unaudited |
| StargateAdapter | adapter | metis | n/a | [`0xdf1cfec0dcf05bf647fbfbe12ea550baa102e195`](./contracts/metis-1088/0xdf1cfec0dcf05bf647fbfbe12ea550baa102e195/) | ⚠️ Unaudited |
| SubscribeToJunionOnYoutube | unknown | avalanche | n/a | [`0x1b02da8cb0d097eb8d57a175b88c7d8b47997506`](./contracts/avalanche-43114/0x1b02da8cb0d097eb8d57a175b88c7d8b47997506/) | ⚠️ Unaudited |
| SushiSwapSwapperV1 | unknown | avalanche | n/a | [`0x062eee8b38ab5e8ee3bc58ce505939db53e63785`](./contracts/avalanche-43114/0x062eee8b38ab5e8ee3bc58ce505939db53e63785/) | ⚠️ Unaudited |
| SushiXSwap | unknown | ethereum | n/a | 29 deployments: ethereum [`0x011e52e4e40cf9498c79273329e8827b21e2e581`](./contracts/ethereum-1/0x011e52e4e40cf9498c79273329e8827b21e2e581/); optimism `0x044b75f554b886a065b9567891e45c79542d7357`; optimism `0x1838b053e0223f05fb768fa79aa07df3f0f27480`; optimism `0x2214a42d8e2a1d20635c2cb0664422c528b6a432`; optimism `0x2c8c987c4777ab740d20cb581f5d381be95a4a4a`; optimism `0x3d2f8ae0344d38525d2ae96ab750b83480c0844f`; optimism `0x67468e6c4418d58b1b41bc0a795bacb824f70792`; optimism `0x6c5a9e667297b409b5dd9850b38889ab84110c2a`; optimism `0x7cf167390e2526bc03f3cf6852a7af1cec3e243d`; optimism `0x843d0aad40295f2198ef528ad747cdf6ab9000e4`; optimism `0x8b396ddf906d552b2f98a8e7d743dd58cd0d920f`; optimism `0x8f54301f315c56c112d492d9443047d4745dbe9e`; optimism `0x97a32b4f8486735075f2cbecff64208fbf2e610a`; optimism `0xd045d27c1f7e7f770a807b0a85d8e3f852e0f2be`; optimism `0xd08b5f3e89f1e2d6b067e0a0cbdb094e6e41e77c`; bsc `0x7a4af156379f512de147ed3b96393047226d923f`; polygon `0x2214a42d8e2a1d20635c2cb0664422c528b6a432`; polygon `0xd08b5f3e89f1e2d6b067e0a0cbdb094e6e41e77c`; arbitrum `0x1c4369df5732ccf317fef479b26a56e176b18abb`; arbitrum `0x3d2f8ae0344d38525d2ae96ab750b83480c0844f`; arbitrum `0x53b08dbd70327b7ba3b7886fc9987bc985d27262`; arbitrum `0x7a4af156379f512de147ed3b96393047226d923f`; arbitrum `0x843d0aad40295f2198ef528ad747cdf6ab9000e4`; arbitrum `0x8fcad570a448d350bbb04ff204ca1f0ca85075cf`; arbitrum `0xd08b5f3e89f1e2d6b067e0a0cbdb094e6e41e77c`; avalanche `0x2c8c987c4777ab740d20cb581f5d381be95a4a4a`; avalanche `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9`; avalanche `0x9e4791ad13f14783c7b2a6a7bd8d6ddd1dc95847`; avalanche `0xbbde1d67297329148fe1ed5e6b00114842728e65` | ⚠️ Unaudited |
| SushiXSwapV2 | unknown | metis | n/a | [`0x804b526e5bf4349819fe2db65349d0825870f8ee`](./contracts/metis-1088/0x804b526e5bf4349819fe2db65349d0825870f8ee/) | ⚠️ Unaudited |
| SwapRouter | adapter | metis | n/a | [`0x2abf469074dc0b54d793850807e6eb5faf2625b1`](./contracts/metis-1088/0x2abf469074dc0b54d793850807e6eb5faf2625b1/) | ⚠️ Unaudited |
| TickLens | periphery | metis | n/a | 2 deployments: polygon `0x9fdea1412e50d78b25ace4f96d35801647fdf7da`; metis [`0x078047150f8efa223b3d407f00e462e38f4b1b9c`](./contracts/metis-1088/0x078047150f8efa223b3d407f00e462e38f4b1b9c/) | ⚠️ Unaudited |
| TridentRouter | adapter | optimism | n/a | [`0xe52180815c81d7711b83412e53259bed6a3ab70a`](./contracts/optimism-10/0xe52180815c81d7711b83412e53259bed6a3ab70a/) | ⚠️ Unaudited |
| TridentRouter | adapter | polygon | n/a | [`0x7a250c60cde7a5ca7b667209beab5ea4e16eed67`](./contracts/polygon-137/0x7a250c60cde7a5ca7b667209beab5ea4e16eed67/) | ⚠️ Unaudited |
| TridentRouter | adapter | polygon | n/a | [`0xc5017be80b4446988e8686168396289a9a62668e`](./contracts/polygon-137/0xc5017be80b4446988e8686168396289a9a62668e/) | ⚠️ Unaudited |
| TridentRouter | adapter | metis | n/a | 6 deployments: optimism `0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6`; bsc `0x97a32b4f8486735075f2cbecff64208fbf2e610a`; metis [`0x0be808376ecb75a5cf9bb6d237d16cd37893d904`](./contracts/metis-1088/0x0be808376ecb75a5cf9bb6d237d16cd37893d904/); metis `0xab235da7f52d35fb4551afba11bfb56e18774a65`; arbitrum `0xd9988b4b5bbc53a794240496cfa9bf5b1f8e0523`; avalanche `0xf70c086618dcf2b1a461311275e00d6b722ef914` | ⚠️ Unaudited |
| TridentSushiRollCP | unknown | metis | n/a | [`0x1be211d8da40bc0ae8719c6663307bfc987b1d6c`](./contracts/metis-1088/0x1be211d8da40bc0ae8719c6663307bfc987b1d6c/) | ⚠️ Unaudited |
| UniswapV2Factory | registry | metis | n/a | 6 deployments: optimism `0xfbc12984689e5f15626bad03ad60160fe98b303c`; gnosis `0xc35dadb65012ec5796536bd9864ed8773abc74c4`; polygon `0xc35dadb65012ec5796536bd9864ed8773abc74c4`; metis [`0x580ed43f3bba06555785c81c2957efcca71f7483`](./contracts/metis-1088/0x580ed43f3bba06555785c81c2957efcca71f7483/); base `0x71524b4f93c58fcbf659783284e38825f0622859`; linea `0xfbc12984689e5f15626bad03ad60160fe98b303c` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | sonic | n/a | [`0x9b3336186a38e1b6c21955d112dbb0343ee061ee`](./contracts/sonic-146/0x9b3336186a38e1b6c21955d112dbb0343ee061ee/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | metis | n/a | 7 deployments: optimism `0x9c6522117e2ed1fe5bdb72bb0ed5e3f2bde7dbe0`; gnosis `0xf78031cbca409f2fb6876bdfdbc1b2df24cf9bef`; polygon `0x917933899c6a5f8e37f31e19f92cdbff7e8ff0e2`; sonic `0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e`; metis [`0x145d82bca93cca2ae057d1c6f26245d1b9522e6f`](./contracts/metis-1088/0x145d82bca93cca2ae057d1c6f26245d1b9522e6f/); arbitrum `0x1af415a1eba07a4986a52b6f2e7de7003d82231e`; scroll `0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e` | ⚠️ Unaudited |
| V3Migrator | periphery | metis | n/a | [`0x454714482ca38fbbce7fc76d96ba1ce2028a4ff6`](./contracts/metis-1088/0x454714482ca38fbbce7fc76d96ba1ce2028a4ff6/) | ⚠️ Unaudited |
| WethMaker | token | blast | n/a | 2 deployments: metis `0xb46e319390de313b8cc95ea5aa30c7bbfd79da94`; blast [`0x2538263e13467b7759c6419270f29d890881a119`](./contracts/blast-81457/0x2538263e13467b7759c6419270f29d890881a119/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (153)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x10c19390e1ac2fd6d0c3643a2320b0aba38e5baa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19dba5df5383168f760617aadd23322bc5f9ff7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x400d75dab26bbc18d163aea3e83d9ea68f6c1804` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d222c52983690678e847cd063535f328875f463` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc040f84cf7046409f92d578ef9040fe45e6ef4be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5017be80b4446988e8686168396289a9a62668e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd75f5369724b513b497101fb15211160c1d96550` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddc1b5920723f774d2ec2c3c9355251a20819776` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x011e52e4e40cf9498c79273329e8827b21e2e581` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x05689fcfee31fce4a67fbc7cab13e74f80a4e288` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2f255d3f3c0a3726c6c99e74566c4b18e36e3ce6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2f686751b19a9d91cc3d57d90150bc767f050066` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6b2a3ff504798886862ca5ce501e080947a506a2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x827179dd56d07a7eea32e3873493835da2866976` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xaa26771d497814e81d305c511efbb3ced90bf5bd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbd87bef520f8cec45d73b0413b6cbb8b061736d9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf60e5f4a44a510742457d8064ffd360b12d8d9af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0be808376ecb75a5cf9bb6d237d16cd37893d904` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x281bd3a3f96ae7c96049493a7ba9449df2c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c8c987c4777ab740d20cb581f5d381be95a4a4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x351447fc9bd20a917783e159e61e86edda0b0187` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d2f8ae0344d38525d2ae96ab750b83480c0844f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b2a3ff504798886862ca5ce501e080947a506a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x752dc00aba9c930c84ac81d288db5e2a02afe633` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e4791ad13f14783c7b2a6a7bd8d6ddd1dc95847` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4c0363edd74f55ac8f316a3bf447f8aa09607d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb84a043bc4fca97b7a74ed7daab1bf12a8df929f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd87bef520f8cec45d73b0413b6cbb8b061736d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5017be80b4446988e8686168396289a9a62668e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcd6a4b673b1c409e4b67f787935865b161232d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x07b6e34eecf38b02e83b6b4702699717e298967e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3ca3380a0807384c2fdda0566071f824d7d4c29e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x48a824db3ed23ca6b5b0eff03f04609d568b6036` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x735f0fbeb3b6389986bcaaf073af07d2f8be2b93` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x80c7dd17b01855a6d2347444a0fcc36136a314de` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x93395129bd3fcf49d95730d3c2737c17990ff328` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x97e4a0fb71243a83a6fbaef7cf73617594e4cf2f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe02bdb31c353ce95a1d74f81c93eea70bf7371b9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfdc8f1c8b63baa129fde505cf950d2019774009d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x232def8d1577597d80e0c2f97f10c062bbc59e4a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x281bd3a3f96ae7c96049493a7ba9449df2c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a0caa28331bc6a18ff195f06694f90671de70f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2f686751b19a9d91cc3d57d90150bc767f050066` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x67468e6c4418d58b1b41bc0a795bacb824f70792` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8fcad570a448d350bbb04ff204ca1f0ca85075cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaa26771d497814e81d305c511efbb3ced90bf5bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb4dcbcd4a8b6b0c393fb54df8d041bda1f149d59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb6c4edd9545d3b815da85e6429b699c418886f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe05af9c352fc18cf2d19edbfb3c77dcd7df7e222` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe5e38d6b37b3785293395c3f7842c782a0c6d429` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf33c6dc341eb673cc9181c9fb2acdefb933b1aff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa3d4e29b4a62138965a6c5248bddf8c7dd97de8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1400fefd6f9b897970f00df6237ff2b8b27dc82c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x33d91116e0370970444b0281ab117e161febfcdd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9b3336186a38e1b6c21955d112dbb0343ee061ee` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbbde1d67297329148fe1ed5e6b00114842728e65` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | 9 deployments: heco `0x8798249c2e607446efb7ad49ec89dd1865ff4272`; fantom `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa`; fantom `0x7770978eed668a3ba661d51a773d3a992fc9ddcb`; fantom `0xf5bce5077908a1b7370b9ae04adc565ebd643966`; polygon-zkevm `0x1b02da8cb0d097eb8d57a175b88c7d8b47997506`; kava `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a`; kava `0xd408a20f1213286fb3158a2bfbf5bffaca8bf269`; arbitrum-nova `0xaa26771d497814e81d305c511efbb3ced90bf5bd`; harmony `0xa28cff72b04f83a7e3f912e6ad34d5537708a2c2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x05689fcfee31fce4a67fbc7cab13e74f80a4e288` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0be808376ecb75a5cf9bb6d237d16cd37893d904` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x120140d0c1ebc938befc84840575ecdc5fe55afe` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x281bd3a3f96ae7c96049493a7ba9449df2c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x351447fc9bd20a917783e159e61e86edda0b0187` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3d2f8ae0344d38525d2ae96ab750b83480c0844f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6b2a3ff504798886862ca5ce501e080947a506a2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x752dc00aba9c930c84ac81d288db5e2a02afe633` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc5017be80b4446988e8686168396289a9a62668e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b02da8cb0d097eb8d57a175b88c7d8b47997506` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x011e52e4e40cf9498c79273329e8827b21e2e581` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0bfcd5dd76218bf9e3be8a1055f9e6d27e5745eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f686751b19a9d91cc3d57d90150bc767f050066` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x351447fc9bd20a917783e159e61e86edda0b0187` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67468e6c4418d58b1b41bc0a795bacb824f70792` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e9aed2c4cf5ed7e8ab851435225fe1601a1bc56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x860d841bfd1cfef72a14b2b734005799f07dc7ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93395129bd3fcf49d95730d3c2737c17990ff328` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd87bef520f8cec45d73b0413b6cbb8b061736d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe7d5968296843756109d42946d01195320922ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdcd6a4b673b1c409e4b67f787935865b161232d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf78031cbca409f2fb6876bdfdbc1b2df24cf9bef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0be808376ecb75a5cf9bb6d237d16cd37893d904` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10c19390e1ac2fd6d0c3643a2320b0aba38e5baa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x126555dd55a39328f69400d6ae4f782bd4c34abb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x281bd3a3f96ae7c96049493a7ba9449df2c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x752dc00aba9c930c84ac81d288db5e2a02afe633` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97a32b4f8486735075f2cbecff64208fbf2e610a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5017be80b4446988e8686168396289a9a62668e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcd6a4b673b1c409e4b67f787935865b161232d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x15a6368682c0da4367e312148e4a750b0e2e769d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x52e20ae3762bd73d8f0f539f2f6c895edf8e2eaf` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x57bffa72db682f7eb6c132dae03ff36bbeb0c459` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb45e53277a7e0f1d35f2a77160e91e25507f1763` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe43ca1dee3f0fc1e2df73a0745674545f11a59f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SushiSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SushiSwap-v1.0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xc040f84cf7046409f92d578ef9040fe45e6ef4be`](./contracts/polygon-137/0xc040f84cf7046409f92d578ef9040fe45e6ef4be/) | AuctionCreation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc35dadb65012ec5796536bd9864ed8773abc74c4`](./contracts/optimism-10/0xc35dadb65012ec5796536bd9864ed8773abc74c4/) | BentoBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5bce5077908a1b7370b9ae04adc565ebd643966`](./contracts/ethereum-1/0xf5bce5077908a1b7370b9ae04adc565ebd643966/) | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0319000133d3ada02600f0875d2cf03d442c3367`](./contracts/polygon-137/0x0319000133d3ada02600f0875d2cf03d442c3367/) | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd18ca07a599bf5ebb9b7327871ad682f0b660748`](./contracts/avalanche-43114/0xd18ca07a599bf5ebb9b7327871ad682f0b660748/) | BoringHelperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05689fcfee31fce4a67fbc7cab13e74f80a4e288`](./contracts/polygon-137/0x05689fcfee31fce4a67fbc7cab13e74f80a4e288/) | ConstantProductPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1c5771e96c9d5524fb6e606f5b356d08c40eb194`](./contracts/polygon-137/0x1c5771e96c9d5524fb6e606f5b356d08c40eb194/) | ConstantProductPoolFactoryHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8dacffa7f69ce572992132697252e16254225d38`](./contracts/avalanche-43114/0x8dacffa7f69ce572992132697252e16254225d38/) | Crowdsale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd96f48665a1410c0cd669a88898eca36b9fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | DegenBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe1a5b757523ca6f7f049ac02151808e6a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | InchSpellSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x513037395fa0c9c35e41f89189cedfe3bd42fadb`](./contracts/avalanche-43114/0x513037395fa0c9c35e41f89189cedfe3bd42fadb/) | KashiPairMediumRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1b02da8cb0d097eb8d57a175b88c7d8b47997506`](./contracts/optimism-10/0x1b02da8cb0d097eb8d57a175b88c7d8b47997506/) | MasterDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0769fd68dfb93167989c6f7254cd0d766fb2841f`](./contracts/polygon-137/0x0769fd68dfb93167989c6f7254cd0d766fb2841f/) | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x351447fc9bd20a917783e159e61e86edda0b0187`](./contracts/avalanche-43114/0x351447fc9bd20a917783e159e61e86edda0b0187/) | MISOFarmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7603a35af5cf10b113f167d424eb75bb7062c8ce`](./contracts/avalanche-43114/0x7603a35af5cf10b113f167d424eb75bb7062c8ce/) | MISOMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c`](./contracts/avalanche-43114/0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c/) | MISOTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | mSpellStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0367a647a68f304f2a6e453c25033a4249d7f2c6`](./contracts/arbitrum-42161/0x0367a647a68f304f2a6e453c25033a4249d7f2c6/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2214a42d8e2a1d20635c2cb0664422c528b6a432`](./contracts/ethereum-1/0x2214a42d8e2a1d20635c2cb0664422c528b6a432/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf70c086618dcf2b1a461311275e00d6b722ef914`](./contracts/bsc-56/0xf70c086618dcf2b1a461311275e00d6b722ef914/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb7402ee99f0a008e461098ac3a27f4957df89a40`](./contracts/polygon-137/0xb7402ee99f0a008e461098ac3a27f4957df89a40/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0389879e0156033202c44bf784ac18fc02edee4f`](./contracts/sonic-146/0x0389879e0156033202c44bf784ac18fc02edee4f/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x80c7dd17b01855a6d2347444a0fcc36136a314de`](./contracts/base-8453/0x80c7dd17b01855a6d2347444a0fcc36136a314de/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49`](./contracts/arbitrum-42161/0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c4369df5732ccf317fef479b26a56e176b18abb`](./contracts/ethereum-1/0x1c4369df5732ccf317fef479b26a56e176b18abb/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6`](./contracts/avalanche-43114/0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6/) | PointList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a`](./contracts/avalanche-43114/0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a/) | PostAuctionLauncher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xfbc12984689e5f15626bad03ad60160fe98b303c`](./contracts/metis-1088/0xfbc12984689e5f15626bad03ad60160fe98b303c/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a`](./contracts/metis-1088/0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a/) | RouteProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0be808376ecb75a5cf9bb6d237d16cd37893d904`](./contracts/base-8453/0x0be808376ecb75a5cf9bb6d237d16cd37893d904/) | RouteProcessor3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09bd2a33c47746ff03b86bce4e885d03c74a8e8c`](./contracts/arbitrum-42161/0x09bd2a33c47746ff03b86bce4e885d03c74a8e8c/) | RouteProcessor3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e`](./contracts/polygon-137/0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e/) | RouteProcessor4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2f686751b19a9d91cc3d57d90150bc767f050066`](./contracts/metis-1088/0x2f686751b19a9d91cc3d57d90150bc767f050066/) | StablePoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xdf1cfec0dcf05bf647fbfbe12ea550baa102e195`](./contracts/metis-1088/0xdf1cfec0dcf05bf647fbfbe12ea550baa102e195/) | StargateAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1b02da8cb0d097eb8d57a175b88c7d8b47997506`](./contracts/avalanche-43114/0x1b02da8cb0d097eb8d57a175b88c7d8b47997506/) | SubscribeToJunionOnYoutube | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x062eee8b38ab5e8ee3bc58ce505939db53e63785`](./contracts/avalanche-43114/0x062eee8b38ab5e8ee3bc58ce505939db53e63785/) | SushiSwapSwapperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011e52e4e40cf9498c79273329e8827b21e2e581`](./contracts/ethereum-1/0x011e52e4e40cf9498c79273329e8827b21e2e581/) | SushiXSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x804b526e5bf4349819fe2db65349d0825870f8ee`](./contracts/metis-1088/0x804b526e5bf4349819fe2db65349d0825870f8ee/) | SushiXSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2abf469074dc0b54d793850807e6eb5faf2625b1`](./contracts/metis-1088/0x2abf469074dc0b54d793850807e6eb5faf2625b1/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x078047150f8efa223b3d407f00e462e38f4b1b9c`](./contracts/metis-1088/0x078047150f8efa223b3d407f00e462e38f4b1b9c/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe52180815c81d7711b83412e53259bed6a3ab70a`](./contracts/optimism-10/0xe52180815c81d7711b83412e53259bed6a3ab70a/) | TridentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7a250c60cde7a5ca7b667209beab5ea4e16eed67`](./contracts/polygon-137/0x7a250c60cde7a5ca7b667209beab5ea4e16eed67/) | TridentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc5017be80b4446988e8686168396289a9a62668e`](./contracts/polygon-137/0xc5017be80b4446988e8686168396289a9a62668e/) | TridentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0be808376ecb75a5cf9bb6d237d16cd37893d904`](./contracts/metis-1088/0x0be808376ecb75a5cf9bb6d237d16cd37893d904/) | TridentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1be211d8da40bc0ae8719c6663307bfc987b1d6c`](./contracts/metis-1088/0x1be211d8da40bc0ae8719c6663307bfc987b1d6c/) | TridentSushiRollCP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x454714482ca38fbbce7fc76d96ba1ce2028a4ff6`](./contracts/metis-1088/0x454714482ca38fbbce7fc76d96ba1ce2028a4ff6/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2538263e13467b7759c6419270f29d890881a119`](./contracts/blast-81457/0x2538263e13467b7759c6419270f29d890881a119/) | WethMaker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 6 |
| standard_library | 1 |
| needs_review | 153 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
