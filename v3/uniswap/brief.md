# Agentic Audit Brief: Uniswap

## Project Overview

- Project: Uniswap (`uniswap`)
- Website: [https://app.uniswap.org/](https://app.uniswap.org/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:31.974Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, gnosis, linea, manta, mantle, moonbeam, optimism, polygon, sei, sonic, unichain
- Contract surface: 340 unique implementations (340 raw deployments)
- DeFi Llama TVL: $2,839,201,157.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 331 project-authored contract(s) across 17 chain(s); 6 ERC4626 vaults, 87 ERC20 tokens, 8 ERC721 NFTs, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 52 common project-authored base contract(s) (protocolfees, nodelegatecall, eip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 340; live-surface contracts included: 340 (331 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 13/331 (3.9%)
- Deployed-live implementations: 331 of 340 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/340
- Verified + Unaudited implementations: 327
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 340
- Raw deployments: 340
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 12 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 3.0% (Certora, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 10 | 2.9% | 2024-09 |
| OpenZeppelin | Tier 1 | 7 | 2.1% | 2024-09 |
| Spearbit | Tier 1 | 6 | 1.8% | 2024-09 |
| Trail of Bits | Tier 1 | 4 | 1.2% | 2024-09 |
| Certora | Tier 1 | 1 | 0.3% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdvancedLBPStrategyFactory | unknown | ethereum | n/a | [`0x982dc1...6129c5`](./contracts/ethereum-1/0x982dc187cbeb4e21431c735b01ecbd8a606129c5/) | ✅ Audited |
| FullRangeLBPStrategyFactory | unknown | base | n/a | [`0x39e5eb...b04252`](./contracts/base-8453/0x39e5eb34dd2c8082ee1e556351ae660f33b04252/) | ✅ Audited |
| NFTDescriptor | unknown | moonbeam | n/a | [`0x041b81...ed4514`](./contracts/moonbeam-1284/0x041b81cb4d223d8e70ac96c0d103f8a956ed4514/) | ✅ Audited |
| NonfungiblePositionManager | unknown | base | n/a | [`0x03a520...ed34f1`](./contracts/base-8453/0x03a520b32c04bf3beef7beb72e919cf822ed34f1/) | ✅ Audited |
| Oracle | unknown | base | n/a | [`0x5b6318...dd065d`](./contracts/base-8453/0x5b631863df1b20afb2715ee1f1381d6dc1dd065d/) | ✅ Audited |
| PoolManager | unknown | ethereum | n/a | [`0x000000...e08a90`](./contracts/ethereum-1/0x000000000004444c5dc75cb358380d2e3de08a90/) | ✅ Audited |
| PositionManager | unknown | arbitrum | n/a | [`0x170732...7d7a9f`](./contracts/arbitrum-42161/0x1707327f626496a7b5b3872e7e4d2879df7d7a9f/) | ✅ Audited |
| Quoter | unknown | polygon | n/a | [`0x4a7b5d...c962c2`](./contracts/polygon-137/0x4a7b5da61326a6379179b40d00f57e5bbdc962c2/) | ✅ Audited |
| StateView | unknown | blast | n/a | [`0x12a88a...85df30`](./contracts/blast-81457/0x12a88ae16f46dce4e8b15368008ab3380885df30/) | ✅ Audited |
| SwapRouter | unknown | ethereum | n/a | [`0xe59242...861564`](./contracts/ethereum-1/0xe592427a0aece92de3edee1f18e0157c05861564/) | ✅ Audited |
| UniswapV3Factory | unknown | manta | n/a | [`0x06d830...4e4e23`](./contracts/manta-169/0x06d830e15081f65923674268121ff57cc54e4e23/) | ✅ Audited |
| UniswapV3Pool | unknown | ethereum | n/a | [`0x055284...86669d`](./contracts/ethereum-1/0x055284a4ca6532ecc219ac06b577d540c686669d/) | ✅ Audited |
| UniversalRouter | unknown | polygon | n/a | [`0x109569...c49223`](./contracts/polygon-137/0x1095692a6237d83c6a72f3f5efedb9a670c49223/) | ✅ Audited |

### ⚠️ Verified + Unaudited (327)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Accounts | unknown | celo | n/a | [`0x7d2168...d0aab7`](./contracts/celo-42220/0x7d21685c17607338b313a7174bab6620bad0aab7/) | ⚠️ Unaudited |
| Address | unknown | ethereum | n/a | [`0x1ed976...ea0aab`](./contracts/ethereum-1/0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab/) | ⚠️ Unaudited |
| AHv2Repayment | unknown | ethereum | n/a | [`0x141e05...2f629e`](./contracts/ethereum-1/0x141e0541d87c6cbdbf2a6a8104248b4b922f629e/) | ⚠️ Unaudited |
| AIP1Point1Target | unknown | arbitrum | n/a | [`0x4b075f...430184`](./contracts/arbitrum-42161/0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184/) | ⚠️ Unaudited |
| AIP1Point2Action | unknown | arbitrum | n/a | [`0x627410...5ed516`](./contracts/arbitrum-42161/0x6274106eedd4848371d2c09e0352d67b795ed516/) | ⚠️ Unaudited |
| Airdrop | unknown | avalanche | n/a | [`0x0c58c2...3902d9`](./contracts/avalanche-43114/0x0c58c2041da4cfccf5818bbe3b66dbc23b3902d9/) | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | optimism | n/a | [`0x1f9841...61f984`](./contracts/optimism-10/0x1f98415757620b543a52e61c46b32eb19261f984/) | ⚠️ Unaudited |
| APROracle | unknown | ethereum | n/a | [`0x4ddc33...919361`](./contracts/ethereum-1/0x4ddc33689380e6b56783a5442999b75a5b919361/) | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | ethereum | n/a | [`0x044dad...47ca14`](./contracts/ethereum-1/0x044dad5c0da888c93d8244261b67bd431b47ca14/) | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | arbitrum | n/a | [`0xbd0dd2...2de79a`](./contracts/arbitrum-42161/0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a/) | ⚠️ Unaudited |
| ArbGovToken | unknown | arbitrum | n/a | [`0xd4d2f4...46161a`](./contracts/arbitrum-42161/0xd4d2f4110878a33ea5b97f0665e518253446161a/) | ⚠️ Unaudited |
| ArbUXRNFT | unknown | arbitrum | n/a | [`0x2fa063...6ff61a`](./contracts/arbitrum-42161/0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a/) | ⚠️ Unaudited |
| Attestations | unknown | celo | n/a | [`0xdc5538...d88d20`](./contracts/celo-42220/0xdc553892cdeeed9f575aa0fba099e5847fd88d20/) | ⚠️ Unaudited |
| BalanceChecker | unknown | bsc | n/a | [`0x91688f...10b20a`](./contracts/bsc-56/0x91688f449478a47256990e4c609e000b5810b20a/) | ⚠️ Unaudited |
| BatchVote | unknown | ethereum | n/a | [`0x5e44c7...741e1c`](./contracts/ethereum-1/0x5e44c7addc64cdbc7472324c00f940a419741e1c/) | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | arbitrum | n/a | [`0x863491...a1bda9`](./contracts/arbitrum-42161/0x863491cc6c7275bcc15a386093e92390e2a1bda9/) | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | bsc | n/a | [`0xad6cae...6c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | bsc | n/a | [`0x22fbfb...d270e3`](./contracts/bsc-56/0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3/) | ⚠️ Unaudited |
| BEP20Cardano | unknown | bsc | n/a | [`0x3ee220...435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | ⚠️ Unaudited |
| BEP20Cosmos | unknown | bsc | n/a | [`0x0eb3a7...62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | ⚠️ Unaudited |
| BEP20DAI | unknown | bsc | n/a | [`0x1af3f3...b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | ⚠️ Unaudited |
| BEP20EOS | unknown | bsc | n/a | [`0x56b6fb...dccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | ⚠️ Unaudited |
| BEP20Ethereum | unknown | bsc | n/a | [`0x2170ed...f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | ⚠️ Unaudited |
| BEP20Ontology | unknown | bsc | n/a | [`0xfd7b3a...850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | ⚠️ Unaudited |
| BEP20Polkadot | unknown | bsc | n/a | [`0x708360...873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | ⚠️ Unaudited |
| BEP20Tezos | unknown | bsc | n/a | [`0x16939e...12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | ⚠️ Unaudited |
| BEP20XRP | unknown | bsc | n/a | [`0x1d2f0d...c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | ⚠️ Unaudited |
| BEP20YFII | unknown | bsc | n/a | [`0x7f7064...53eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | ⚠️ Unaudited |
| BEP20Zcash | unknown | bsc | n/a | [`0x1ba42e...ef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | ⚠️ Unaudited |
| BestToken | unknown | polygon | n/a | [`0x8d52c2...1cd318`](./contracts/polygon-137/0x8d52c2d70a7c28a9daac2ff12ad9bfbf041cd318/) | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | ethereum | n/a | [`0x8b4fd0...5da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | ⚠️ Unaudited |
| BlockchainParameters | unknown | celo | n/a | [`0x6e10a8...9d5bfa`](./contracts/celo-42220/0x6e10a8864c65434a721d82e424d727326f9d5bfa/) | ⚠️ Unaudited |
| BOBO | unknown | ethereum | n/a | [`0x588864...d3be38`](./contracts/ethereum-1/0x5888641e3e6cbea6d84ba81edb217bd691d3be38/) | ⚠️ Unaudited |
| BridgeVault | unknown | base | n/a | [`0x03b2fb...8f7d5c`](./contracts/base-8453/0x03b2fb2363b0a33d41022c3e3a2c8130a78f7d5c/) | ⚠️ Unaudited |
| CaliburEntry | unknown | ethereum | n/a | [`0x000000...9b8f00`](./contracts/ethereum-1/0x000000009b1d0af20d8c6d0a44e162d11f9b8f00/) | ⚠️ Unaudited |
| CATERC20 | unknown | ethereum | n/a | [`0xb43570...090343`](./contracts/ethereum-1/0xb4357054c3da8d46ed642383f03139ac7f090343/) | ⚠️ Unaudited |
| CoinToken | unknown | bsc | n/a | [`0x8145eb...1d8f5c`](./contracts/bsc-56/0x8145eb83744aac883b68ae34060bebb5031d8f5c/) | ⚠️ Unaudited |
| CollateralMaximizer | unknown | ethereum | n/a | [`0x494ba8...1b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/) | ⚠️ Unaudited |
| CommunityTreasury | unknown | avalanche | n/a | [`0x650f58...a72358`](./contracts/avalanche-43114/0x650f5865541f6d68bddfe977db933c293ea72358/) | ⚠️ Unaudited |
| CompensationEscrow | unknown | ethereum | n/a | [`0xda7b94...4b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | ⚠️ Unaudited |
| COMPfarming | unknown | ethereum | n/a | [`0x1532eb...6aa870`](./contracts/ethereum-1/0x1532eb6c6d134903a0dedfc840128007b36aa870/) | ⚠️ Unaudited |
| ContinuousClearingAuctionFactory | unknown | ethereum | n/a | [`0x0000cc...6faa1d`](./contracts/ethereum-1/0x0000ccadf55c911a2fbc0bb9d2942aa77c6faa1d/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0x2e6556...1dc4c8`](./contracts/ethereum-1/0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8/) | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | ethereum | n/a | [`0x98158e...8039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ⚠️ Unaudited |
| CRON | unknown | ethereum | n/a | [`0x8e14d0...5d322e`](./contracts/ethereum-1/0x8e14d03061705eb48fda6bc6e244c5eabe5d322e/) | ⚠️ Unaudited |
| CrossChainAccount | unknown | blast | n/a | [`0x2339c0...a26c77`](./contracts/blast-81457/0x2339c0d23b60739b3e5abf201f05903d24a26c77/) | ⚠️ Unaudited |
| CrosschainAccountLinea | unknown | linea | n/a | [`0x581f86...2201a8`](./contracts/linea-59144/0x581f86da293a1d5cd087a10e7227a75d2d2201a8/) | ⚠️ Unaudited |
| DAAORacle | unknown | ethereum | n/a | [`0x4f5030...2723fe`](./contracts/ethereum-1/0x4f5030e80268323761e0551cdea722fd5c2723fe/) | ⚠️ Unaudited |
| DackieInterfaceMulticall | unknown | blast | n/a | [`0xdc7f37...cf4705`](./contracts/blast-81457/0xdc7f370de7631ce9e2c2e1dcda6b3b5744cf4705/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DistributeYFI | unknown | ethereum | n/a | [`0x812ac0...cfa017`](./contracts/ethereum-1/0x812ac0eaeb422efa44eac670aa2246a25ecfa017/) | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | ethereum | n/a | [`0x4b1b08...368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | ⚠️ Unaudited |
| DoubleSigningSlasher | unknown | celo | n/a | [`0x50c100...6772ec`](./contracts/celo-42220/0x50c100bacde7e2b546371eb0be1eaccf0a6772ec/) | ⚠️ Unaudited |
| DragonLair | unknown | polygon | n/a | [`0xf28164...8a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSSLeverage | unknown | ethereum | n/a | [`0x050cd4...92640e`](./contracts/ethereum-1/0x050cd4835b08babfc6ff92187971b3253e92640e/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083...cc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| DynamicSwap | unknown | ethereum | n/a | [`0x035fb9...4b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/) | ⚠️ Unaudited |
| ElectionProxy | unknown | celo | n/a | [`0x8d6677...5a7ff6`](./contracts/celo-42220/0x8d6677192144292870907e3fa8a5527fe55a7ff6/) | ⚠️ Unaudited |
| ElkDexInterfaceMulticall | unknown | mantle | n/a | [`0xe3dbcd...68f1fa`](./contracts/mantle-5000/0xe3dbcd53f4ce1b06ab200f4912bd35672e68f1fa/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | [`0x4ccea6...559ad4`](./contracts/ethereum-1/0x4ccea6503e8e5525d3de0c60855b6332af559ad4/) | ⚠️ Unaudited |
| EmojiGuess | unknown | celo | n/a | [`0xecd580...b7c8c7`](./contracts/celo-42220/0xecd580ddf0f13e2591d79068bf617fe865b7c8c7/) | ⚠️ Unaudited |
| EpochRewardsProxy | unknown | celo | n/a | [`0x07f007...28d8b7`](./contracts/celo-42220/0x07f007d389883622ef8d4d347b3f78007f28d8b7/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xcdf144...36b999`](./contracts/ethereum-1/0xcdf14446f78ea7ebcaa62fdb0584e4d2e536b999/) | ⚠️ Unaudited |
| ERC20Manageable | unknown | polygon | n/a | [`0x07f1dc...405a35`](./contracts/polygon-137/0x07f1dc544136bcd253f9cfd3369cb5f7cf405a35/) | ⚠️ Unaudited |
| ERC6160Ext20 | unknown | ethereum | n/a | [`0x8d010b...8f90b8`](./contracts/ethereum-1/0x8d010bf9c26881788b4e6bf5fd1bdc358c8f90b8/) | ⚠️ Unaudited |
| Escrow | unknown | celo | n/a | [`0xf4fa51...e7ada5`](./contracts/celo-42220/0xf4fa51472ca8d72af678975d9f8795a504e7ada5/) | ⚠️ Unaudited |
| ExchangeProxy | unknown | celo | n/a | [`0x673163...c66275`](./contracts/celo-42220/0x67316300f17f063085ca8bca4bd3f7a5a3c66275/) | ⚠️ Unaudited |
| ExclusiveDutchOrderReactor | unknown | ethereum | n/a | [`0x6000da...b645c4`](./contracts/ethereum-1/0x6000da47483062a0d734ba3dc7576ce6a0b645c4/) | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | ethereum | n/a | [`0x3a2d0e...c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | ⚠️ Unaudited |
| Faketroller | unknown | ethereum | n/a | [`0x6257e3...9fef3f`](./contracts/ethereum-1/0x6257e36efc9c7c6057c119ea2af40907159fef3f/) | ⚠️ Unaudited |
| FeeCurrencyWhitelist | unknown | celo | n/a | [`0xbb024e...381b3c`](./contracts/celo-42220/0xbb024e9cdcb2f9e34d893630d19611b8a5381b3c/) | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | unichain | n/a | [`0x55e74a...d25826`](./contracts/unichain-130/0x55e74a5c3310bbccdd0b655ade2309e0d0d25826/) | ⚠️ Unaudited |
| FeeTo | unknown | ethereum | n/a | [`0xdaf819...7f0970`](./contracts/ethereum-1/0xdaf819c2437a82f9e01f6586207ebf961a7f0970/) | ⚠️ Unaudited |
| FeeToSetter | unknown | ethereum | n/a | [`0x18e433...771360`](./contracts/ethereum-1/0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| Firepit | unknown | ethereum | n/a | [`0x0d5cd3...6d6721`](./contracts/ethereum-1/0x0d5cd355e2abeb8fb1552f56c965b867346d6721/) | ⚠️ Unaudited |
| FixidityLib | unknown | celo | n/a | [`0xd9ce42...72284d`](./contracts/celo-42220/0xd9ce4209888cfdfeb7c3d6e2ca34eeb06272284d/) | ⚠️ Unaudited |
| fKRW | unknown | ethereum | n/a | [`0x5c08b5...f2893a`](./contracts/ethereum-1/0x5c08b51ddbe8ba76e07be79975906c39aef2893a/) | ⚠️ Unaudited |
| FreezerProxy | unknown | celo | n/a | [`0x47a472...f4ff5a`](./contracts/celo-42220/0x47a472f45057a9d79d62c6427367016409f4ff5a/) | ⚠️ Unaudited |
| fUSD | unknown | ethereum | n/a | [`0x3d7f09...6dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/) | ⚠️ Unaudited |
| GasPriceMinimum | unknown | celo | n/a | [`0xdfca3a...270ecc`](./contracts/celo-42220/0xdfca3a8d7699d8bafe656823ad60c17cb8270ecc/) | ⚠️ Unaudited |
| GaugeProxy | unknown | ethereum | n/a | [`0x823fd2...61081c`](./contracts/ethereum-1/0x823fd217dcc5ce36ca6bc1489586ecb42b61081c/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| GoldToken | unknown | celo | n/a | [`0x471ece...78a438`](./contracts/celo-42220/0x471ece3750da237f93b8e339c536989b8978a438/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0xc7212f...0cb735`](./contracts/ethereum-1/0xc7212fc959bbb606f97036e8ac3da7aabf0cb735/) | ⚠️ Unaudited |
| GovernanceSlasher | unknown | celo | n/a | [`0x68f04a...5294d5`](./contracts/celo-42220/0x68f04ab73b93f5175207296528454999475294d5/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x2e1fb7...8b6143`](./contracts/ethereum-1/0x2e1fb79129b3d44881bd56a82bb7cbb7328b6143/) | ⚠️ Unaudited |
| HegicERCPool | unknown | ethereum | n/a | [`0x7224f2...a1345a`](./contracts/ethereum-1/0x7224f2e96061a1e3f51d152e32ccfab79ca1345a/) | ⚠️ Unaudited |
| HegicOptions | unknown | ethereum | n/a | [`0x30a086...e4ae70`](./contracts/ethereum-1/0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70/) | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | ethereum | n/a | [`0x061940...082f23`](./contracts/ethereum-1/0x06194062288575f35c0af45d5e7013b65e082f23/) | ⚠️ Unaudited |
| HToken | unknown | ethereum | n/a | [`0x761c06...5829be`](./contracts/ethereum-1/0x761c06a46d3c85ecd87cf6917b3de329b95829be/) | ⚠️ Unaudited |
| iCollateral | unknown | ethereum | n/a | [`0x78705d...f4e025`](./contracts/ethereum-1/0x78705df56477ff301b71b176a2bd3151b9f4e025/) | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | ethereum | n/a | [`0xb10e11...3b0f69`](./contracts/ethereum-1/0xb10e11f3e38dc35e06397689e45fa939eb3b0f69/) | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | ethereum | n/a | [`0x06a8fe...3ddcc1`](./contracts/ethereum-1/0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1/) | ⚠️ Unaudited |
| iDAI | unknown | ethereum | n/a | [`0x6c5f9d...ca35a0`](./contracts/ethereum-1/0x6c5f9d1d115862ca99253e5738590f6d31ca35a0/) | ⚠️ Unaudited |
| iDAIZapSwap | unknown | ethereum | n/a | [`0x260fbb...a867fa`](./contracts/ethereum-1/0x260fbb4855b2a4a719097131016b573f95a867fa/) | ⚠️ Unaudited |
| IEarnAPR | unknown | ethereum | n/a | [`0x9cad8a...268eec`](./contracts/ethereum-1/0x9cad8ab10daa9af1a9d2b878541f41b697268eec/) | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | ethereum | n/a | [`0x029fea...44c9bb`](./contracts/ethereum-1/0x029feae8d773a3fe25f1a3e35a526bb54744c9bb/) | ⚠️ Unaudited |
| IEarnManager | unknown | ethereum | n/a | [`0x318135...50edfb`](./contracts/ethereum-1/0x318135fbd0b40d48fcef431ccdf6c7926450edfb/) | ⚠️ Unaudited |
| IEarnProvider | unknown | ethereum | n/a | [`0x7b3680...884bb4`](./contracts/ethereum-1/0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4/) | ⚠️ Unaudited |
| IEther | unknown | ethereum | n/a | [`0x75a4d0...cd25eb`](./contracts/ethereum-1/0x75a4d0b18e98674199829ddd2a6477ea25cd25eb/) | ⚠️ Unaudited |
| Implementation | unknown | sonic | n/a | [`0x346239...d6e8a4`](./contracts/sonic-146/0x346239972d1fa486fc4a521031bc81bfb7d6e8a4/) | ⚠️ Unaudited |
| IndicesPayment | unknown | ethereum | n/a | [`0x56ff7e...37d73c`](./contracts/ethereum-1/0x56ff7e476688f4924cb777ae22adfa192337d73c/) | ⚠️ Unaudited |
| IndicesSplit | unknown | ethereum | n/a | [`0x0d994b...3f34b0`](./contracts/ethereum-1/0x0d994bcf071f060e477136a6fadd51a3163f34b0/) | ⚠️ Unaudited |
| insuredVault | unknown | ethereum | n/a | [`0xa53e9e...2863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | ⚠️ Unaudited |
| insurerVault | unknown | ethereum | n/a | [`0xb8813d...457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | ⚠️ Unaudited |
| itokendeployer | unknown | ethereum | n/a | [`0x050a97...f78844`](./contracts/ethereum-1/0x050a9798fb9dff67b78479a543b3f680d2f78844/) | ⚠️ Unaudited |
| ItokenStaking | unknown | ethereum | n/a | [`0x2ddb30...8c7bf5`](./contracts/ethereum-1/0x2ddb30f677ad9de63c6d96b2b066fd801f8c7bf5/) | ⚠️ Unaudited |
| iTrade | unknown | ethereum | n/a | [`0x14a5ca...104e3e`](./contracts/ethereum-1/0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e/) | ⚠️ Unaudited |
| Keep3r | unknown | ethereum | n/a | [`0x30f358...2f57f1`](./contracts/ethereum-1/0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1/) | ⚠️ Unaudited |
| Keep3rHelper | unknown | ethereum | n/a | [`0xb41772...af955e`](./contracts/ethereum-1/0xb41772890c8b1564c5015a12c0dc6f18b0af955e/) | ⚠️ Unaudited |
| Keep3rJob | unknown | ethereum | n/a | [`0xb68e7d...02d10d`](./contracts/ethereum-1/0xb68e7deb279eaa11f234dff4931458d2c002d10d/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | ethereum | n/a | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | ethereum | n/a | [`0x1530a2...5a5df9`](./contracts/ethereum-1/0x1530a2924805aed2385f8b91849cab7fe95a5df9/) | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | ethereum | n/a | [`0x739689...ab620c`](./contracts/ethereum-1/0x7396899638410094b3690f8bd2b56f07fdab620c/) | ⚠️ Unaudited |
| Keep3rV1Library | unknown | ethereum | n/a | [`0xdaef20...924c93`](./contracts/ethereum-1/0xdaef201ba1ba0354d71848893dd6d56905924c93/) | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | ethereum | n/a | [`0x733538...70282c`](./contracts/ethereum-1/0x73353801921417f465377c8d898c6f4c0270282c/) | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | ethereum | n/a | [`0x0a03b4...f5c080`](./contracts/ethereum-1/0x0a03b4f6d5314bb257540dc7702c326f97f5c080/) | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | ethereum | n/a | [`0x173ed6...132dc9`](./contracts/ethereum-1/0x173ed6531818456f29fc74011a3b1fb4b6132dc9/) | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | ethereum | n/a | [`0x1bf162...c8f6c0`](./contracts/ethereum-1/0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0/) | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | ethereum | n/a | [`0x2266be...7880cb`](./contracts/ethereum-1/0x2266be1ee5d345914976fd4ce9f4be65737880cb/) | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | ethereum | n/a | [`0x1542ec...ba0f82`](./contracts/ethereum-1/0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82/) | ⚠️ Unaudited |
| L1NetRecipient | unknown | unichain | n/a | [`0xab88c8...916b83`](./contracts/unichain-130/0xab88c8cf70a3bbb2ca3b2aed808963ab4c916b83/) | ⚠️ Unaudited |
| L2AddressRegistry | unknown | arbitrum | n/a | [`0x3e84af...d901e8`](./contracts/arbitrum-42161/0x3e84af3743cc4e7f516570b341ced56530d901e8/) | ⚠️ Unaudited |
| LazyHarvest | unknown | ethereum | n/a | [`0x9ea775...c5d0f3`](./contracts/ethereum-1/0x9ea775672e4424c403f048ab08c7f56015c5d0f3/) | ⚠️ Unaudited |
| LimitOrderRegistry | unknown | blast | n/a | [`0x0337d3...f6636f`](./contracts/blast-81457/0x0337d36a3df76d882369e3cbf984a2ea40f6636f/) | ⚠️ Unaudited |
| LiquidationOracle | unknown | ethereum | n/a | [`0xd82f6d...a3e8ce`](./contracts/ethereum-1/0xd82f6d42356e225bf79b870a05aac79062a3e8ce/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| LiquidityLauncher | unknown | ethereum | n/a | [`0x000000...40637c`](./contracts/ethereum-1/0x00000008412db3394c91a5cbd01635c6d140637c/) | ⚠️ Unaudited |
| LiquidityPoolManagerV2 | unknown | avalanche | n/a | [`0x912b5d...397994`](./contracts/avalanche-43114/0x912b5d41656048ef681efa9d32488a3ffe397994/) | ⚠️ Unaudited |
| LmPool | unknown | ethereum | n/a | [`0x65df3e...00532f`](./contracts/ethereum-1/0x65df3e4e542827b3adbd5de6fc610fa42000532f/) | ⚠️ Unaudited |
| LmPoolV3 | unknown | ethereum | n/a | [`0x1e3453...8fb249`](./contracts/ethereum-1/0x1e3453a39a9e96213a36009f49f38d60df8fb249/) | ⚠️ Unaudited |
| LockedGoldProxy | unknown | celo | n/a | [`0x6cc083...03349e`](./contracts/celo-42220/0x6cc083aed9e3ebe302a6336dbc7c921c9f03349e/) | ⚠️ Unaudited |
| MainnetDeployer | unknown | ethereum | n/a | [`0xd3aa12...038c0c`](./contracts/ethereum-1/0xd3aa12b99892b7d95bbaa27aef222a8e2a038c0c/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0x0dc3ed...3bca2c`](./contracts/ethereum-1/0x0dc3ed36bb3bee1101de030e43550cb8733bca2c/) | ⚠️ Unaudited |
| MasterChefV2 | unknown | ethereum | n/a | [`0x327339...e0d1d0`](./contracts/ethereum-1/0x327339416778181799262780d1a4d28c46e0d1d0/) | ⚠️ Unaudited |
| MasterKeeper | unknown | gnosis | n/a | [`0x0d922f...b74df9`](./contracts/gnosis-100/0x0d922fb1bc191f64970ac40376643808b4b74df9/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x090d46...1d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | ⚠️ Unaudited |
| MetaKeep3r | unknown | ethereum | n/a | [`0x93dfa8...0a9372`](./contracts/ethereum-1/0x93dfa873b15ad496ba8116ce6cfec52ef30a9372/) | ⚠️ Unaudited |
| Migrations | unknown | celo | n/a | [`0xe8882d...faf4b7`](./contracts/celo-42220/0xe8882d0f80bd82a618251093124f56fdd8faf4b7/) | ⚠️ Unaudited |
| Minter | unknown | ethereum | n/a | [`0x708f45...82fb7b`](./contracts/ethereum-1/0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | arbitrum | n/a | [`0x003aa1...8690ce`](./contracts/arbitrum-42161/0x003aa18c6e682db80cf4aa17261ccbffd28690ce/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| Multicall2 | unknown | manta | n/a | [`0x52dfc0...446a60`](./contracts/manta-169/0x52dfc0d9960f11a9ca9ff616e791b91188446a60/) | ⚠️ Unaudited |
| Multicall3 | unknown | sei | n/a | [`0xcb2436...f27a9d`](./contracts/sei-1329/0xcb2436774c3e191c85056d248ef4260ce5f27a9d/) | ⚠️ Unaudited |
| MXTK | unknown | arbitrum | n/a | [`0x3e4ffe...70d9ba`](./contracts/arbitrum-42161/0x3e4ffeb394b371aaaa0998488046ca19d870d9ba/) | ⚠️ Unaudited |
| NexusMutualCover | unknown | ethereum | n/a | [`0x93a288...de7a28`](./contracts/ethereum-1/0x93a2880f657793a1d839653c8f8cef52f3de7a28/) | ⚠️ Unaudited |
| Normalizer | unknown | ethereum | n/a | [`0x9214a6...f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/) | ⚠️ Unaudited |
| OptimismBridgedResourceFirepit | unknown | unichain | n/a | [`0xe0a780...a77eeb`](./contracts/unichain-130/0xe0a780e9105ac10ee304448224eb4a2b11a77eeb/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | base | n/a | [`0x570b15...b83947`](./contracts/base-8453/0x570b1533f6daa82814b25b62b5c7c4c55eb83947/) | ⚠️ Unaudited |
| OptionsV1Library | unknown | ethereum | n/a | [`0x48bc6d...76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | ethereum | n/a | [`0x00fbd1...d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/) | ⚠️ Unaudited |
| OrderQuoter | unknown | bsc | n/a | [`0x000000...5a7f58`](./contracts/bsc-56/0x00000000a3db63df9078cbf3df88b4cadd5a7f58/) | ⚠️ Unaudited |
| OSMedianizer | unknown | ethereum | n/a | [`0xcf6308...1ed0f1`](./contracts/ethereum-1/0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1/) | ⚠️ Unaudited |
| PancakeInterfaceMulticall | unknown | sei | n/a | [`0x0d922f...b74df9`](./contracts/sei-1329/0x0d922fb1bc191f64970ac40376643808b4b74df9/) | ⚠️ Unaudited |
| PangolinFactory | unknown | avalanche | n/a | [`0xcdeea3...959737`](./contracts/avalanche-43114/0xcdeea31e087f0cf463043d246a45b87f4e959737/) | ⚠️ Unaudited |
| PangolinRouter | unknown | avalanche | n/a | [`0xe54ca8...c89106`](./contracts/avalanche-43114/0xe54ca86531e17ef3616d22ca28b0d458b6c89106/) | ⚠️ Unaudited |
| PEAKDEFI_V1 | unknown | ethereum | n/a | [`0x5b103d...403a45`](./contracts/ethereum-1/0x5b103d2125d83d2521815f62304b67b2c2403a45/) | ⚠️ Unaudited |
| PEAKDEFI_V2 | unknown | ethereum | n/a | [`0x630d98...eaad78`](./contracts/ethereum-1/0x630d98424efe0ea27fb1b3ab7741907dffeaad78/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| Png | unknown | avalanche | n/a | [`0x60781c...aca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ⚠️ Unaudited |
| PoolConfiguration | unknown | ethereum | n/a | [`0x3212e3...b962e4`](./contracts/ethereum-1/0x3212e307a17dce648c1e1498454cd86a35b962e4/) | ⚠️ Unaudited |
| PoolV2 | unknown | ethereum | n/a | [`0x1df7f8...6b7109`](./contracts/ethereum-1/0x1df7f822d4d53228f41c90d42bd02c76fb6b7109/) | ⚠️ Unaudited |
| PriceProxy | unknown | ethereum | n/a | [`0x3e94fa...3be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | ⚠️ Unaudited |
| PriorityOrderReactor | unknown | base | n/a | [`0x000000...8de729`](./contracts/base-8453/0x000000001ec5656dcdb24d90dfa42742738de729/) | ⚠️ Unaudited |
| Proposals | unknown | celo | n/a | [`0xd4b9fd...79cbc4`](./contracts/celo-42220/0xd4b9fd4f900fdbb58ce284f82730653f9379cbc4/) | ⚠️ Unaudited |
| Proxy | unknown | celo | n/a | [`0x41822d...e933d3`](./contracts/celo-42220/0x41822d8a191fcfb1cfca5f7048818acd8ee933d3/) | ⚠️ Unaudited |
| Proxy | unknown | blast | n/a | [`0x430000...000004`](./contracts/blast-81457/0x4300000000000000000000000000000000000004/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | gnosis | n/a | [`0x0cb49b...2aa355`](./contracts/gnosis-100/0x0cb49b5b72abc23426e6ce2141349b34a12aa355/) | ⚠️ Unaudited |
| Quick | unknown | polygon | n/a | [`0x831753...33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| QuickConverter | unknown | polygon | n/a | [`0x38e8d7...5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | ⚠️ Unaudited |
| QuoterMath | unknown | polygon | n/a | [`0x4752ba...72ad24`](./contracts/polygon-137/0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24/) | ⚠️ Unaudited |
| QuoterV2 | unknown | moonbeam | n/a | [`0x276bfe...6e200c`](./contracts/moonbeam-1284/0x276bfef3d539cded7719b2cad25bea8ae46e200c/) | ⚠️ Unaudited |
| Random | unknown | celo | n/a | [`0x22a4aa...c93dfe`](./contracts/celo-42220/0x22a4aaf42a50bfa7238182460e32f15859c93dfe/) | ⚠️ Unaudited |
| Recover | unknown | unichain | n/a | [`0x075b36...aa8a60`](./contracts/unichain-130/0x075b36de1bd11cb361c5b3b1e80a9ab0e7aa8a60/) | ⚠️ Unaudited |
| Registry | unknown | celo | n/a | [`0x203fdf...74cb66`](./contracts/celo-42220/0x203fdf86a00999107df531fa00b4ba81d674cb66/) | ⚠️ Unaudited |
| Reserve | unknown | celo | n/a | [`0x9380fa...ed4eb9`](./contracts/celo-42220/0x9380fa34fd9e4fd14c06305fd7b6199089ed4eb9/) | ⚠️ Unaudited |
| ReserveSpenderMultiSigProxy | unknown | celo | n/a | [`0x554fca...4d2a19`](./contracts/celo-42220/0x554fca0f7c465cd2f8c305a10bf907a2034d2a19/) | ⚠️ Unaudited |
| RiskOracle | unknown | ethereum | n/a | [`0x073931...e8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/) | ⚠️ Unaudited |
| SafetyRedundancy | unknown | ethereum | n/a | [`0x6bdfea...fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/) | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | arbitrum | n/a | [`0x2f8577...dfd713`](./contracts/arbitrum-42161/0x2f8577f68d8306aeb48f9015ac61744bbadfd713/) | ⚠️ Unaudited |
| Signatures | unknown | celo | n/a | [`0x926a9e...792b7d`](./contracts/celo-42220/0x926a9e7c1a9cb608b6f3068f3ca3811dde792b7d/) | ⚠️ Unaudited |
| Signer | unknown | ethereum | n/a | [`0x10d7cb...7081fc`](./contracts/ethereum-1/0x10d7cb15642d540a4521a7b2840dab01287081fc/) | ⚠️ Unaudited |
| SingleSidedAMM | unknown | ethereum | n/a | [`0x82bfdd...bf4b8a`](./contracts/ethereum-1/0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x173f5f...9f3b27`](./contracts/ethereum-1/0x173f5f648b18cf1c7f6aac66a35bf462539f3b27/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0x5268ba...b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/) | ⚠️ Unaudited |
| SortedOracles | unknown | celo | n/a | [`0xefb849...7b7b33`](./contracts/celo-42220/0xefb84935239dacdecf7c5ba76d8de40b077b7b33/) | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x0670e2...9eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/) | ⚠️ Unaudited |
| StableCreditHelper | unknown | ethereum | n/a | [`0x404f9e...ca0acb`](./contracts/ethereum-1/0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb/) | ⚠️ Unaudited |
| StableCreditProtocol | unknown | ethereum | n/a | [`0x15fe17...26f5f9`](./contracts/ethereum-1/0x15fe17da18288d1799643be1bb07fb939626f5f9/) | ⚠️ Unaudited |
| StableTokenV3 | unknown | celo | n/a | [`0x765de8...b1282a`](./contracts/celo-42220/0x765de816845861e75a25fca122bb6898b8b1282a/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | polygon | n/a | [`0x02a2d8...537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | ⚠️ Unaudited |
| StarLLMDepositVault | unknown | polygon | n/a | [`0x718448...d4f4e1`](./contracts/polygon-137/0x7184487e9fd1eaf75e20be5fe1301db9f2d4f4e1/) | ⚠️ Unaudited |
| StarToken | unknown | polygon | n/a | [`0x67e1a3...a93d8c`](./contracts/polygon-137/0x67e1a362f6f72f064ffb088825d3c2f1c9a93d8c/) | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | ethereum | n/a | [`0x2be5d9...f9e88b`](./contracts/ethereum-1/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b/) | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | ethereum | n/a | [`0x40bd98...549afb`](./contracts/ethereum-1/0x40bd98e3cce4f34c087a73dd3d05558733549afb/) | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | ethereum | n/a | [`0xd643cf...d47ede`](./contracts/ethereum-1/0xd643cf07344428770b84973e049a1c18b5d47ede/) | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | ethereum | n/a | [`0x01b354...11ab5c`](./contracts/ethereum-1/0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c/) | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | ethereum | n/a | [`0x787c77...a64bd8`](./contracts/ethereum-1/0x787c771035bde631391ced5c083db424a4a64bd8/) | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | ethereum | n/a | [`0x28e5a4...e083a5`](./contracts/ethereum-1/0x28e5a47820313da9c74b8f2295795da6e6e083a5/) | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | ethereum | n/a | [`0x31641a...69156f`](./contracts/ethereum-1/0x31641a4836c172640fa1c02999b09c5d1069156f/) | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | ethereum | n/a | [`0x442510...e0b81c`](./contracts/ethereum-1/0x442510ba285d5390cb5385a91a380d4268e0b81c/) | ⚠️ Unaudited |
| StrategyProxy | unknown | ethereum | n/a | [`0x16c20c...597c7a`](./contracts/ethereum-1/0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a/) | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | ethereum | n/a | [`0x2288c4...4ec989`](./contracts/ethereum-1/0x2288c409e67b6ce52180f97a8cddf7abc24ec989/) | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | ethereum | n/a | [`0x35cee4...ba817a`](./contracts/ethereum-1/0x35cee4c61b7619956e0b2015b5411f93cbba817a/) | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | ethereum | n/a | [`0x25faca...20d8d6`](./contracts/ethereum-1/0x25faca21dd2ad7edb3a027d543e617496820d8d6/) | ⚠️ Unaudited |
| StrategyYffi | unknown | ethereum | n/a | [`0xbe197e...da0b73`](./contracts/ethereum-1/0xbe197e668d13746bb92e675dea2868ff14da0b73/) | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | ethereum | n/a | [`0x395f93...88797c`](./contracts/ethereum-1/0x395f93350d5102b6139abfc84a7d6ee70488797c/) | ⚠️ Unaudited |
| StrategyYfii | unknown | ethereum | n/a | [`0x2de055...edfa70`](./contracts/ethereum-1/0x2de055fec2b826ed4a7478ceddbeff82c1edfa70/) | ⚠️ Unaudited |
| SupplyFactory | unknown | ethereum | n/a | [`0xf2eb91...41978f`](./contracts/ethereum-1/0xf2eb916605402e5c7e81f7d609d0e2204841978f/) | ⚠️ Unaudited |
| Swap | unknown | ethereum | n/a | [`0x849bae...e9f44d`](./contracts/ethereum-1/0x849baee7e35f032cb07fa3887f5184a157e9f44d/) | ⚠️ Unaudited |
| SwapProxy | unknown | ethereum | n/a | [`0x02e5be...6db2a9`](./contracts/ethereum-1/0x02e5be68d46dac0b524905bff209cf47ee6db2a9/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | ethereum | n/a | [`0x075b36...aa8a60`](./contracts/ethereum-1/0x075b36de1bd11cb361c5b3b1e80a9ab0e7aa8a60/) | ⚠️ Unaudited |
| SwapV2 | unknown | ethereum | n/a | [`0x73e883...9471ea`](./contracts/ethereum-1/0x73e883b8924e1ebc0299faab828c3198489471ea/) | ⚠️ Unaudited |
| Synthetic | unknown | ethereum | n/a | [`0x0485a4...e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | ethereum | n/a | [`0xaa90d9...38ffdc`](./contracts/ethereum-1/0xaa90d9cc2f41a150489da5fffba2060a2938ffdc/) | ⚠️ Unaudited |
| SynthetixAMM | unknown | ethereum | n/a | [`0x5ed4a4...f8c8be`](./contracts/ethereum-1/0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be/) | ⚠️ Unaudited |
| SynthetixExchange | unknown | ethereum | n/a | [`0x0691cf...04c2cf`](./contracts/ethereum-1/0x0691cf9d171d6c9c3876598b14732248b204c2cf/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| TaraClient | unknown | ethereum | n/a | [`0x973204...18bca6`](./contracts/ethereum-1/0x9732044c8af3c96382ba5d4252ae2f99ad18bca6/) | ⚠️ Unaudited |
| TendiesFarm | unknown | ethereum | n/a | [`0x101dd6...e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | ⚠️ Unaudited |
| TestERC20 | unknown | ethereum | n/a | [`0x2f42b7...7b4d6e`](./contracts/ethereum-1/0x2f42b7d686ca3effc69778b6ed8493a7787b4d6e/) | ⚠️ Unaudited |
| TickLens | unknown | gnosis | n/a | [`0x0281e9...44c55c`](./contracts/gnosis-100/0x0281e98322e4e8e53491d576ee6a2bfce644c55c/) | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | ethereum | n/a | [`0x2df934...60da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x1994b5...929b81`](./contracts/ethereum-1/0x1994b59e02cd0d09d839b03660c205e88a929b81/) | ⚠️ Unaudited |
| TimelockGovernance | unknown | ethereum | n/a | [`0x026d4b...1dfb61`](./contracts/ethereum-1/0x026d4b8d693f6c446782c2c61ee357ec561dfb61/) | ⚠️ Unaudited |
| Token | unknown | ethereum | n/a | [`0x057b1f...aa8e83`](./contracts/ethereum-1/0x057b1fb91a5fccb6c4aefd0ec55f79ce60aa8e83/) | ⚠️ Unaudited |
| TokenJar | unknown | unichain | n/a | [`0xd576bd...9140b5`](./contracts/unichain-130/0xd576bdf6b560079a4c204f7644e556dbb19140b5/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x2b915f...3bbb34`](./contracts/ethereum-1/0x2b915f8c704dfb2d16d6fe46a2f1b433723bbb34/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| TransferWhitelist | unknown | celo | n/a | [`0xb49e4d...178bcf`](./contracts/celo-42220/0xb49e4d6f0b7f8d0440f75697e6c8b37e09178bcf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x672035...4a7427`](./contracts/bsc-56/0x6720350f7e3323418c05645cd5d6bb055f4a7427/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | gnosis | n/a | [`0x070b84...8d1896`](./contracts/gnosis-100/0x070b849e8f2704bec603a1dd5de26acfe48d1896/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | unichain | n/a | [`0x0dfa04...6a2004`](./contracts/unichain-130/0x0dfa04b28ab68ffd0e6e17fac6ec16d4846a2004/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x15533b...5d6844`](./contracts/arbitrum-42161/0x15533b77981cda0f85c4f9a485237df4285d6844/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | [`0x0747ad...676f97`](./contracts/blast-81457/0x0747ad2b2e1f5761b1dcf0d8672bd1ffc3676f97/) | ⚠️ Unaudited |
| TreasuryVault | unknown | ethereum | n/a | [`0x93a62d...a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x3d30b1...3f1e94`](./contracts/ethereum-1/0x3d30b1ab88d487b0f3061f40de76845bec3f1e94/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| UERC20Factory | unknown | ethereum | n/a | [`0x0cde87...9bd1b5`](./contracts/ethereum-1/0x0cde87c11b959e5eb0924c1abf5250ee3f9bd1b5/) | ⚠️ Unaudited |
| Uni | unknown | ethereum | n/a | [`0x1f9840...01f984`](./contracts/ethereum-1/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984/) | ⚠️ Unaudited |
| UnichainDeployer | unknown | unichain | n/a | [`0xd16c47...f18dea`](./contracts/unichain-130/0xd16c47bf3ae22e0b2bac5925d990b81416f18dea/) | ⚠️ Unaudited |
| UniOracleFactory | unknown | ethereum | n/a | [`0x61da8b...61d136`](./contracts/ethereum-1/0x61da8b0808cea5281a912cd85421a6d12261d136/) | ⚠️ Unaudited |
| UniSwap_ETH_CDAIZap | unknown | ethereum | n/a | [`0x05a3c1...9af165`](./contracts/ethereum-1/0x05a3c16c454262254c63b4dda9ef4007799af165/) | ⚠️ Unaudited |
| UniswapAPR | unknown | ethereum | n/a | [`0x4c70d8...ce3d95`](./contracts/ethereum-1/0x4c70d89a4681b2151f56dc2c3fd751abb9ce3d95/) | ⚠️ Unaudited |
| UniswapInsuranceQuote | unknown | ethereum | n/a | [`0x5071b1...c03e60`](./contracts/ethereum-1/0x5071b17384d5cfc2a82855f19cdd377dd1c03e60/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | avalanche | n/a | [`0x013914...1ef0c2`](./contracts/avalanche-43114/0x0139141cd4ee88df3cdb65881d411bae271ef0c2/) | ⚠️ Unaudited |
| UniswapOracleFactory | unknown | ethereum | n/a | [`0x0b5a6b...75d02f`](./contracts/ethereum-1/0x0b5a6b318c39b60e7d8462f888e7fba89f75d02f/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | linea | n/a | [`0x056588...752633`](./contracts/linea-59144/0x056588f18869a626b0ae9e89f077efe6ba752633/) | ⚠️ Unaudited |
| UniswapV2Migrator | unknown | ethereum | n/a | [`0x16d4f2...a2996b`](./contracts/ethereum-1/0x16d4f26c15f3658ec65b1126ff27dd3df2a2996b/) | ⚠️ Unaudited |
| UniswapV2Oracle | unknown | ethereum | n/a | [`0x0e4940...30b19a`](./contracts/ethereum-1/0x0e494045d79e2e2e9b30c303925142c60430b19a/) | ⚠️ Unaudited |
| UniswapV2Router01 | unknown | ethereum | n/a | [`0xf164fc...97b92a`](./contracts/ethereum-1/0xf164fc0ec4e93095b804a4795bbe1e041497b92a/) | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | unichain | n/a | [`0x284f11...0063ff`](./contracts/unichain-130/0x284f11109359a7e1306c3e447ef14d38400063ff/) | ⚠️ Unaudited |
| UniswapV3PositionUtility | unknown | ethereum | n/a | [`0x1df154...3df6c0`](./contracts/ethereum-1/0x1df154042d0a7f1cd093d907094a8ba5d83df6c0/) | ⚠️ Unaudited |
| UniswapV3Staker | unknown | ethereum | n/a | [`0x1f9840...b0f00d`](./contracts/ethereum-1/0x1f98407aab862cddef78ed252d6f557aa5b0f00d/) | ⚠️ Unaudited |
| UniswapYieldV2Factory | unknown | ethereum | n/a | [`0x25407d...794508`](./contracts/ethereum-1/0x25407d3f1868d09d6d09202d81fde4abca794508/) | ⚠️ Unaudited |
| UniswapYieldV2Router02 | unknown | ethereum | n/a | [`0x48fe62...4a3a8a`](./contracts/ethereum-1/0x48fe6259a971b243cc16f16f4c22e55fd94a3a8a/) | ⚠️ Unaudited |
| UniversalERC20 | unknown | ethereum | n/a | [`0xca27a2...e2334c`](./contracts/ethereum-1/0xca27a2e847c9ba0c23fa7d831dd0a5ef94e2334c/) | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | sei | n/a | [`0x352a86...b67155`](./contracts/sei-1329/0x352a86168e6988a1adf9a15cb00017aad3b67155/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0xded882...626341`](./contracts/arbitrum-42161/0xded8823234e28f18a824abe4f64fa7863b626341/) | ⚠️ Unaudited |
| USUPERC20Factory | unknown | unichain | n/a | [`0x24016e...b7ac6a`](./contracts/unichain-130/0x24016ed99a69e9b86d16d84351e1661266b7ac6a/) | ⚠️ Unaudited |
| UXLINKToken | unknown | arbitrum | n/a | [`0x1a6b3a...c8cff1`](./contracts/arbitrum-42161/0x1a6b3a62391eccaaa992ade44cd4afe6bec8cff1/) | ⚠️ Unaudited |
| V2DutchOrderReactor | unknown | ethereum | n/a | [`0x000000...6289be`](./contracts/ethereum-1/0x00000011f84b9aa48e5f8aa8b9897600006289be/) | ⚠️ Unaudited |
| V3DutchOrderReactor | unknown | avalanche | n/a | [`0x000000...7385ef`](./contracts/avalanche-43114/0x00000000862ccf095823fc7576fa6c7e6b7385ef/) | ⚠️ Unaudited |
| V3FeeAdapter | unknown | ethereum | n/a | [`0x5e74c9...40867d`](./contracts/ethereum-1/0x5e74c9f42eed283bff3744fbd1889d398d40867d/) | ⚠️ Unaudited |
| V3Migrator | unknown | linea | n/a | [`0x03a520...ed34f1`](./contracts/linea-59144/0x03a520b32c04bf3beef7beb72e919cf822ed34f1/) | ⚠️ Unaudited |
| V4Quoter | unknown | base | n/a | [`0x0d5e0f...32048d`](./contracts/base-8453/0x0d5e0f971ed27fbff6c2837bf31316121532048d/) | ⚠️ Unaudited |
| Validators | unknown | celo | n/a | [`0xaeb865...4d0c58`](./contracts/celo-42220/0xaeb865bca93ddc8f47b8e29f40c5399ce34d0c58/) | ⚠️ Unaudited |
| VamToken | unknown | polygon | n/a | [`0x1512d2...9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | ⚠️ Unaudited |
| vASTR | unknown | base | n/a | [`0x36fab2...be1a42`](./contracts/base-8453/0x36fab2071c7668d9b755b3ff45b21f7d86be1a42/) | ⚠️ Unaudited |
| vBNC | unknown | base | n/a | [`0xa64cf1...878c05`](./contracts/base-8453/0xa64cf1b7cbd5e6470f8a885612cefc4a60878c05/) | ⚠️ Unaudited |
| vDOT | unknown | base | n/a | [`0xa2681a...2c8e37`](./contracts/base-8453/0xa2681a890e7fa09842c32365c7becec5652c8e37/) | ⚠️ Unaudited |
| VenomNetworkToken | unknown | ethereum | n/a | [`0x777777...84c4b7`](./contracts/ethereum-1/0x77777777b79f2fa437bf526169f98aa0c884c4b7/) | ⚠️ Unaudited |
| Vesting | unknown | ethereum | n/a | [`0xa44557...a66a2b`](./contracts/ethereum-1/0xa445570a6a156c4a5e564b0d4075c3cc02a66a2b/) | ⚠️ Unaudited |
| VestingVault | unknown | ethereum | n/a | [`0x4f5981...a7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/) | ⚠️ Unaudited |
| VETH | unknown | base | n/a | [`0x9bafc3...0950d3`](./contracts/base-8453/0x9bafc3ef55d27361edd6d1e727c627a13c0950d3/) | ⚠️ Unaudited |
| vGLMR | unknown | base | n/a | [`0x026479...432be9`](./contracts/base-8453/0x02647942b07222fc1185297bb511034565432be9/) | ⚠️ Unaudited |
| VirtualLBPStrategyFactory | unknown | ethereum | n/a | [`0x000000...bbc487`](./contracts/ethereum-1/0x00000010f37b6524617b17e66796058412bbc487/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| VToken | unknown | base | n/a | [`0x0b5dfd...f54271`](./contracts/base-8453/0x0b5dfdce7e5080eda88d5e84acd9c20acff54271/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x2157a7...e0f708`](./contracts/ethereum-1/0x2157a7894439191e520825fe9399ab8655e0f708/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0x7fc6d4...1d51d4`](./contracts/avalanche-43114/0x7fc6d48e6e8e8b9505c171325539c651bf1d51d4/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | optimism | n/a | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | n/a | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| WrappedYFI | unknown | ethereum | n/a | [`0x017e71...231981`](./contracts/ethereum-1/0x017e71e96f2ae777c679740d2d8dc15ed4231981/) | ⚠️ Unaudited |
| X1NetworkToken | unknown | ethereum | n/a | [`0x111111...0b8dce`](./contracts/ethereum-1/0x1111111becab3c8866712ebf23fc4741010b8dce/) | ⚠️ Unaudited |
| xVault | unknown | ethereum | n/a | [`0x0205ae...e419c5`](./contracts/ethereum-1/0x0205ae93e18aa23d31e3df53899547b986e419c5/) | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | ethereum | n/a | [`0x44ff2a...53b367`](./contracts/ethereum-1/0x44ff2af361e4b6a2892523d513df5245fc53b367/) | ⚠️ Unaudited |
| yBUSD | unknown | ethereum | n/a | [`0x04bc0a...bca9ae`](./contracts/ethereum-1/0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae/) | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | ethereum | n/a | [`0x24dd02...e82a5d`](./contracts/ethereum-1/0x24dd028bd027511482e701d08bae002cd6e82a5d/) | ⚠️ Unaudited |
| yCRV | unknown | ethereum | n/a | [`0x170411...2a221c`](./contracts/ethereum-1/0x170411a2d872945ee8c59e4ef5c3402ebe2a221c/) | ⚠️ Unaudited |
| ycUSDC | unknown | ethereum | n/a | [`0x0597ea...bc0f2c`](./contracts/ethereum-1/0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c/) | ⚠️ Unaudited |
| ycUSDT | unknown | ethereum | n/a | [`0x631d66...3931a4`](./contracts/ethereum-1/0x631d66f79191c86d7b7a7c0e2afae3ae943931a4/) | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/) | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | ethereum | n/a | [`0x56ab71...a6bd33`](./contracts/ethereum-1/0x56ab71990783442f68fb25e0b466196c7ca6bd33/) | ⚠️ Unaudited |
| yDelegate | unknown | ethereum | n/a | [`0x610258...a05f83`](./contracts/ethereum-1/0x61025859c349dfbe6ef0dfca202ef3e84ca05f83/) | ⚠️ Unaudited |
| yDelegatedVault | unknown | ethereum | n/a | [`0x2088ba...b73d99`](./contracts/ethereum-1/0x2088ba482f2097eb47896a2ec5f3925637b73d99/) | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | ethereum | n/a | [`0x41303e...343eeb`](./contracts/ethereum-1/0x41303e87db5be5b1c7a341440d04ec6a11343eeb/) | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| yInsureView | unknown | ethereum | n/a | [`0x6d2738...98340b`](./contracts/ethereum-1/0x6d2738fa41e83c5b5633f466f9aa11dae098340b/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | n/a | [`0x36324b...d41380`](./contracts/ethereum-1/0x36324b8168f960a12a8fd01406c9c78143d41380/) | ⚠️ Unaudited |
| yTokenProxy | unknown | ethereum | n/a | [`0x1d5ad9...54203a`](./contracts/ethereum-1/0x1d5ad987b743eb624662fe5c62b8f6015554203a/) | ⚠️ Unaudited |
| yTokenRebalance | unknown | ethereum | n/a | [`0x19b642...e9cc09`](./contracts/ethereum-1/0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09/) | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSD | unknown | ethereum | n/a | [`0x12c068...af3aff`](./contracts/ethereum-1/0x12c0681dca0deb095f2f192c3ab64bf320af3aff/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/) | ⚠️ Unaudited |
| yUSDT | unknown | ethereum | n/a | [`0x3118ee...b9aade`](./contracts/ethereum-1/0x3118eec34240620ffd044dfa3aaa0a0f78b9aade/) | ⚠️ Unaudited |
| yVault | unknown | ethereum | n/a | [`0x0fcda6...367889`](./contracts/ethereum-1/0x0fcda6f268d0c09cdfffe6bceac5233ac2367889/) | ⚠️ Unaudited |
| yVaultCheck | unknown | ethereum | n/a | [`0x1bbe0f...a6d1ad`](./contracts/ethereum-1/0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad/) | ⚠️ Unaudited |
| yVaultFactory | unknown | ethereum | n/a | [`0x044dea...f677b5`](./contracts/ethereum-1/0x044deaa1e5a8593adcead599e8d66fb5d3f677b5/) | ⚠️ Unaudited |
| yWBTC | unknown | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| yWrappedVault | unknown | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |

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
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-core/blob/main/audits/abdk/audit.pdf) | ABDK | Audit | 2021-03 | stale | Direct | contract_name | 3 | high |
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-core/blob/main/audits/tob/audit.pdf) | Trail of Bits | Audit | 2021-03 | stale | Direct | contract_name | 3 | high |
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-periphery/blob/main/audits/abdk/audit.pdf) | ABDK | Audit | 2021-04 | stale | Direct | contract_name | 3 | high |
| [Uniswap-final.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-final.md) | ConsenSys | Audit | 2019-01 | stale | Direct | n/a | 0 | n/a |
| [Uniswap-standalone-working.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-standalone-working.md) | ConsenSys | Audit | 2018-12 | stale | Direct | n/a | 0 | n/a |
| [Uniswap-working.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-working.md) | ConsenSys | Audit | 2019-01 | stale | Direct | n/a | 0 | n/a |
| [coverage_output.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/coverage-reports/coverage_output.md) | ConsenSys | Audit | 2018-12 | stale | Direct | n/a | 0 | n/a |
| [mythril_output_exchange.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/tool-output/mythril/mythril_output_exchange.md) | Mythril | Audit | 2018-12 | stale | Direct | n/a | 0 | n/a |
| [mythril_output_factory.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/tool-output/mythril/mythril_output_factory.md) | Mythril | Audit | 2018-12 | stale | Direct | n/a | 0 | n/a |
| [DRAFT_ABDK_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_ABDK_audit_core.pdf) | ABDK | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [DRAFT_Certora_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Certora_audit_core.pdf) | Certora | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [DRAFT_Spearbit_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Spearbit_audit_core.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [OpenZeppelin_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/OpenZeppelin_audit_core.pdf) | OpenZeppelin | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [TrailOfBits_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/TrailOfBits_audit_core.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [DRAFT_ABDK_audit_periphery_universal_router.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/DRAFT_ABDK_audit_periphery_universal_router.pdf) | ABDK | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [DRAFT_Spearbit_audit_periphery.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/DRAFT_Spearbit_audit_periphery.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 6 | high |
| [OpenZeppelin_audit_periphery_universal_router.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/OpenZeppelin_audit_periphery_universal_router.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | 6 | high |
| [- [Audits](): Learn about the audits for Uniswap v2](https://developers.uniswap.org/docs/protocols/v2/audits) | unknown | Audit | 2020-04 | stale | Direct | n/a | 0 | n/a |
| [- [Resources](): Explore audits, core contracts, and infrastructur…](https://developers.uniswap.org/docs/protocols/the-compact/resources) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [- [Audits](): Learn about the audits for Uniswap v3](https://developers.uniswap.org/docs/protocols/v3/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 340 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=11
- Match method counts: extraction_exact=29

Zero-match audit list:

- [18448] Uniswap-final.md
- [18449] Uniswap-standalone-working.md
- [18450] Uniswap-working.md
- [18451] coverage_output.md
- [18452] mythril_output_exchange.md
- [18453] mythril_output_factory.md
- [18462] - [Audits](): Learn about the audits for Uniswap v2
- [18463] - [Resources](): Explore audits, core contracts, and infrastructur…
- [18464] - [Audits](): Learn about the audits for Uniswap v3

Fork inheritance lineage and inherited audits are included when available.
