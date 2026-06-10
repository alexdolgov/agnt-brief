# Agentic Audit Brief: Asymmetry

⚠️ Lifecycle status: DECLINING - TVL dropped 38.9% over 90 days

## Project Overview

- Project: Asymmetry (`asymmetry`)
- Website: [https://asymmetry.fi](https://asymmetry.fi)
- Lifecycle: declining (Tier 0, 88.7% below peak)
- Generated: 2026-06-10T20:58:57.806Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 203 unique implementations (576 raw deployments)
- DeFi Llama TVL: $3,559,259.00
- On-chain TVL (included contracts): $37,147,849.35
- TVL by chain: Ethereum $37,147,849.35

## Project Description

Asymmetry Finance is a DeFi protocol offering liquid staking and index products such as safETH and afETH, a USDaf collateralized debt position stablecoin system, and yield-optimizing vault products. It supports diversified collateral and yield strategies across liquid staking and other crypto assets without assuming that Asymmetry LSD index tokens are the sole asset base for USDaf unless verified by current configuration.

### Architecture

The Asymmetry Finance family issues LSD index tokens (like afETH) that serve as collateral within the Asymmetry USDaf CDP system. Collateral registries in USDaf reference these index tokens, creating a direct dependency where the index products provide the asset base for stablecoin minting.

## Audit Coverage Summary

- Verified implementations audited: 0/120 (0.0%)
- Verified + Unaudited implementations: 120
- Verified by bytecode match: 0
- Unverified implementations: 83
- Unique implementations: 203
- Raw deployments: 576
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $37,147,849.35
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $37,147,849.35 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (120)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| swETH | token | ethereum | [`0xf951e3...7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| RETHToken | token | ethereum | [`0x9559aa...9a3593`](./contracts/ethereum-1/0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593/) | ⚠️ Unaudited |
| AsfToken | token | ethereum | 6 deployments: ethereum [`0x0808bd...4b2419`](./contracts/ethereum-1/0x0808bd8406df35ff5806293359acc543bb4b2419/); ethereum `0x17969a...14600a`; ethereum `0x59a529...4cf8aa`; ethereum `0x876f12...29e7f7`; ethereum `0x89a65d...79e03a`; ethereum `0xdb0f0f...552082` | ⚠️ Unaudited |
| WrappedWbtc | token | ethereum | 7 deployments: ethereum [`0x7fcd77...7a2783`](./contracts/ethereum-1/0x7fcd772fc9363b6233d5caefba43fcaf157a2783/); ethereum `0x83c20d...b5e4b2`; ethereum `0x99b36e...468752`; ethereum `0xb1525d...067170`; ethereum `0xbe87b9...8248b5`; ethereum `0xe065bc...267c47`; ethereum `0xf53bb9...b58324` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | 6 deployments: ethereum [`0x1ee6db...7c53ea`](./contracts/ethereum-1/0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea/); ethereum `0x2637f3...b970ef`; ethereum `0x2ffff7...51ab9e`; ethereum `0x654973...19f912`; ethereum `0x69671a...3c7665`; ethereum `0x6dec37...7c4616` | ⚠️ Unaudited |
| VotiumStrategy | core_logic | ethereum | 5 deployments: ethereum [`0x000000...18a0bf`](./contracts/ethereum-1/0x00000069abbb0b1ad6975bcf753eee15d318a0bf/); ethereum `0x12fc2b...b92aad`; ethereum `0x5aed12...3f8cd4`; ethereum `0x8794f7...a1fae4`; ethereum `0xb628b1...84e8d3` | ⚠️ Unaudited |
| StafiSuperNodeFeePool | core_logic | ethereum | [`0xdc5a28...8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | ⚠️ Unaudited |
| StafiFeePool | core_logic | ethereum | [`0x6fb2aa...22df45`](./contracts/ethereum-1/0x6fb2aa2443564d9430b9483b1a5eea13a522df45/) | ⚠️ Unaudited |
| AccountantFactory | operational_periphery | ethereum | [`0xdecafb...717d55`](./contracts/ethereum-1/0xdecafb666ee4f9c5e9f5b26dc02e443035717d55/) | ⚠️ Unaudited |
| AddressesRegistry | registry | ethereum | 52 deployments: ethereum [`0x0ad1c3...82377c`](./contracts/ethereum-1/0x0ad1c302203f0fbb6ca34641bdfef0bf4182377c/); ethereum `0x0c7b6c...719c82`; ethereum `0x0f7eb9...a8ec6a`; ethereum `0x136dac...eef5a4`; ethereum `0x16b811...9837dd`; ethereum `0x1e3231...1d131e`; ethereum `0x20e363...4709df`; ethereum `0x2421d3...f26679`; ethereum `0x2aff30...b80561`; ethereum `0x2c5a85...0ead6d`; ethereum `0x2d598c...09c705`; ethereum `0x3249b3...c7836e`; ethereum `0x330a0f...6dc6d1`; ethereum `0x3414bd...8fa1ce`; ethereum `0x37c47d...f83004`; ethereum `0x3a3850...18ea16`; ethereum `0x452eb8...d96007`; ethereum `0x4995a3...983c0c`; ethereum `0x4b3eb2...9481cd`; ethereum `0x4fc2cb...941bf6`; ethereum `0x5c1fa7...ac64ad`; ethereum `0x65799d...7ca1ba`; ethereum `0x681c63...ef526d`; ethereum `0x6b284e...360e81`; ethereum `0x7e6900...458586`; ethereum `0x7e901c...0a19f2`; ethereum `0x7f3232...72d568`; ethereum `0x7f5cf9...ee214f`; ethereum `0x809501...2d39f8`; ethereum `0x84f899...92cbc1`; ethereum `0x89ce31...b35ca5`; ethereum `0x901ea6...4bfb4f`; ethereum `0x90e5e4...8b69ab`; ethereum `0x911858...62f27b`; ethereum `0x91a30a...5fc0ee`; ethereum `0x951530...2df669`; ethereum `0x9df5e7...ba8bdc`; ethereum `0xa42a10...9fa7ef`; ethereum `0xa7bada...018a8b`; ethereum `0xb3d111...c759e1`; ethereum `0xb91297...078930`; ethereum `0xb9b7db...7eb9c7`; ethereum `0xbd9f75...85e999`; ethereum `0xbe4a0c...6e2a6e`; ethereum `0xc693c9...2f0f98`; ethereum `0xc8d81c...335c8f`; ethereum `0xd1da8a...b51f12`; ethereum `0xd3b7bc...2af240`; ethereum `0xe28516...7cdc34`; ethereum `0xe9b4fc...7a1021`; ethereum `0xec500f...0c8510`; ethereum `0xf81298...84464e` | ⚠️ Unaudited |
| AddressSetStorage | unknown | ethereum | [`0x86d14d...e81506`](./contracts/ethereum-1/0x86d14d8bb0e094c35583091ee346a4ca99e81506/) | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| AfCvx | unknown | ethereum | 5 deployments: ethereum [`0x108d8d...ac488c`](./contracts/ethereum-1/0x108d8d8d89b3459ec37c0e71a51c8a6771ac488c/); ethereum `0x47d122...1694f8`; ethereum `0x56664f...e1f799`; ethereum `0x8668a1...5257cf`; ethereum `0xcca908...335319` | ⚠️ Unaudited |
| AfEth | unknown | ethereum | 6 deployments: ethereum [`0x000000...af7a11`](./contracts/ethereum-1/0x0000000016e6cb3038203c1129c8b4aee7af7a11/); ethereum `0x5281cc...c7288f`; ethereum `0x8896ef...91a61c`; ethereum `0x90a607...56778a`; ethereum `0xae4131...f63256`; ethereum `0xdf124a...c832c6` | ⚠️ Unaudited |
| AfEthRelayer | unknown | ethereum | 2 deployments: ethereum [`0x18d492...bfdc67`](./contracts/ethereum-1/0x18d49239edc031fec1747200cd315eca4fbfdc67/); ethereum `0x7df87c...c288ad` | ⚠️ Unaudited |
| Ankr | unknown | ethereum | 2 deployments: ethereum [`0xf4a173...2ea981`](./contracts/ethereum-1/0xf4a1735505188daf0872312dd1a6182d342ea981/); ethereum `0xfa2d4c...d7082f` | ⚠️ Unaudited |
| ASFOFTAdapter | adapter | ethereum | [`0x4feb6c...b04408`](./contracts/ethereum-1/0x4feb6c50a69d0cb29f77e307249c767607b04408/) | ⚠️ Unaudited |
| Auction | unknown | ethereum | [`0x6e988d...c8f945`](./contracts/ethereum-1/0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945/) | ⚠️ Unaudited |
| AuctionFactory | registry | ethereum | [`0xa3a370...c976c5`](./contracts/ethereum-1/0xa3a3702d81fd317fa1b8735227e29dc756c976c5/) | ⚠️ Unaudited |
| BTCPriceFeed | operational_periphery | ethereum | 11 deployments: ethereum [`0x2735aa...3eefb4`](./contracts/ethereum-1/0x2735aae1a56a5dbac1a951b92bd9fad0f33eefb4/); ethereum `0x2efd16...6dcacf`; ethereum `0x3c6897...3fa421`; ethereum `0x4b74d0...bc3bb1`; ethereum `0x4d3499...aaba49`; ethereum `0x7bca4c...e56ce5`; ethereum `0x9e425b...719d48`; ethereum `0xac42fd...fc9ab0`; ethereum `0xaf99e6...f2953f`; ethereum `0xce1ca2...c0517e`; ethereum `0xeaf3b3...745094` | ⚠️ Unaudited |
| CbbtcFallbackOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x95480d...8fe2fb`](./contracts/ethereum-1/0x95480dd073c2e47e4166fe2ce6da79662d8fe2fb/); ethereum `0xb00aad...788f87`; ethereum `0xf7f96d...46bed4` | ⚠️ Unaudited |
| CbbtcOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x235710...8593d7`](./contracts/ethereum-1/0x2357105b6b16034ee2fea32e23edf403b18593d7/); ethereum `0x50ec46...1b99ff`; ethereum `0x5be73b...55b604` | ⚠️ Unaudited |
| CbbtcZapper | adapter | ethereum | 3 deployments: ethereum [`0x1666ee...d9b1e5`](./contracts/ethereum-1/0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5/); ethereum `0xaf2636...a9aa19`; ethereum `0xe247ab...a16a93` | ⚠️ Unaudited |
| CleverCvxStrategy | core_logic | ethereum | 6 deployments: ethereum [`0x11830f...1c95fa`](./contracts/ethereum-1/0x11830ff94221f2ef34176ad85a6ccaa2f41c95fa/); ethereum `0xa71021...86426e`; ethereum `0xb510d2...eaa7fe`; ethereum `0xc7fb90...b29840`; ethereum `0xd0f774...739ab0`; ethereum `0xe55e68...02d8d9` | ⚠️ Unaudited |
| CollateralRegistry | registry | ethereum | 9 deployments: ethereum [`0x2632d6...a52276`](./contracts/ethereum-1/0x2632d629dd93e541f22c4c572101857f3ba52276/); ethereum `0x33d680...4d60fe`; ethereum `0x447fd8...caeff4`; ethereum `0x5fe520...116979`; ethereum `0xa70d14...096650`; ethereum `0xcff0dc...67d791`; ethereum `0xd1e96d...a29d4d`; ethereum `0xd5d9c0...366a35`; ethereum `0xfb5507...7053b3` | ⚠️ Unaudited |
| CrvUsdFallbackOracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x2b36d8...0eeb35`](./contracts/ethereum-1/0x2b36d82bfb9ea09bbed084be34df942aad0eeb35/); ethereum `0x4f9fe2...492fb2`; ethereum `0xba22bc...2ea7f8`; ethereum `0xddc5f0...f82212`; ethereum `0xed2fbc...ec33b7`; ethereum `0xeee151...87d8d0` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | core_logic | ethereum | 2 deployments: ethereum [`0x63f01b...c5102b`](./contracts/ethereum-1/0x63f01b695c67b764e823f972bc61fcafbac5102b/); ethereum `0xd06b5b...d01312` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | core_logic | ethereum | 3 deployments: ethereum [`0x8109a8...afb7c3`](./contracts/ethereum-1/0x8109a89d1c779724de794fa34f5cd4b5ebafb7c3/); ethereum `0x95d720...9e81fe`; ethereum `0xdd427e...9abb7b` | ⚠️ Unaudited |
| dASF | unknown | ethereum | 5 deployments: ethereum [`0x38927d...561752`](./contracts/ethereum-1/0x38927df780aeedaa2d9706dc5d62763841561752/); ethereum `0x460562...cc88f5`; ethereum `0x7fe24f...fb632d`; ethereum `0x9e1eda...241d97`; ethereum `0xf94189...10dffa` | ⚠️ Unaudited |
| dASF Flash Dump | unknown | ethereum | 3 deployments: ethereum [`0xbc362f...a8c55b`](./contracts/ethereum-1/0xbc362f57dfd6d3522ab66b45ce3aa33335a8c55b/); ethereum `0xc49427...4f4037`; ethereum `0xd48523...187bac` | ⚠️ Unaudited |
| dASF Redemptions | unknown | ethereum | 5 deployments: ethereum [`0x1d13a5...16c27f`](./contracts/ethereum-1/0x1d13a5a7bb98bb363dfeb6f6f82d2b93b816c27f/); ethereum `0x5b9a4b...d4b680`; ethereum `0x8f1477...98dc28`; ethereum `0xdc59d2...afdd27`; ethereum `0xff31f9...8e86b1` | ⚠️ Unaudited |
| DummyOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0xa100e8...87d298`](./contracts/ethereum-1/0xa100e806ac9b351f7edd14745616622c9b87d298/); ethereum `0xbe8b20...e7db05`; ethereum `0xea7de9...d92c5d` | ⚠️ Unaudited |
| Dutch Desk | unknown | ethereum | [`0x04d258...56f60e`](./contracts/ethereum-1/0x04d258d3ee00ef9840985afd373037d91c56f60e/) | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | ethereum | 3 deployments: ethereum [`0x1d775c...260e34`](./contracts/ethereum-1/0x1d775cac4752ad141dcc6c38b388fc9e69260e34/); ethereum `0x9007c7...eca68a`; ethereum `0xaf12bb...f66b4f` | ⚠️ Unaudited |
| HintHelpers | periphery | ethereum | 9 deployments: ethereum [`0x3fabb1...d18a1f`](./contracts/ethereum-1/0x3fabb13195599bef352157a2c6c6937aead18a1f/); ethereum `0x6d8cfe...a2418b`; ethereum `0x838a1f...4e865a`; ethereum `0x94d67c...e7b91b`; ethereum `0x94f931...2f3540`; ethereum `0x9e6906...02ed8f`; ethereum `0xa2796e...cfe3ce`; ethereum `0xb57e0a...022ce9`; ethereum `0xdf2a04...b61421` | ⚠️ Unaudited |
| InterestRouter | adapter | ethereum | 11 deployments: ethereum [`0x0e493f...d25bc2`](./contracts/ethereum-1/0x0e493f67f568b01c79f6b167ab0ffd3645d25bc2/); ethereum `0x1771f4...f6673c`; ethereum `0x322407...c52409`; ethereum `0x54dd13...bf150b`; ethereum `0x724371...482e29`; ethereum `0x895479...eab819`; ethereum `0x8ae164...6c6c86`; ethereum `0xb841ef...23b910`; ethereum `0xd46fca...e348b7`; ethereum `0xd8828e...9e0b1e`; ethereum `0xf9e241...015705` | ⚠️ Unaudited |
| LiquidLocker | unknown | ethereum | [`0xeca746...e5ccb7`](./contracts/ethereum-1/0xeca746232f297bbd968b4ef240fb28c40be5ccb7/) | ⚠️ Unaudited |
| Locker | unknown | ethereum | [`0xcadc2a...cc20db`](./contracts/ethereum-1/0xcadc2a8ccf396088f8d7520ae8fd249ccfcc20db/) | ⚠️ Unaudited |
| MetadataNFT | token | ethereum | 2 deployments: ethereum [`0x6501bd...a57113`](./contracts/ethereum-1/0x6501bd8cb63e13d61f14ed5094d8f11d57a57113/); ethereum `0xa6862c...18e8d6` | ⚠️ Unaudited |
| MockInterestRouter | adapter | ethereum | 2 deployments: ethereum [`0xe18547...8a80f9`](./contracts/ethereum-1/0xe18547f5e5e30f991371bee3d9245986468a80f9/); ethereum `0xeaec29...861dc9` | ⚠️ Unaudited |
| Multisig | governance | ethereum | 2 deployments: ethereum [`0x003aac...ee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/); ethereum `0x6aacff...999aa6` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | 9 deployments: ethereum [`0x24c62e...b17ee7`](./contracts/ethereum-1/0x24c62ec7f0d0275934ef6fc9432921df87b17ee7/); ethereum `0x416bb5...b6b4b0`; ethereum `0x483df4...0ea3d7`; ethereum `0x5e1df4...d924fc`; ethereum `0x77e492...b66380`; ethereum `0xb3683a...fd7e80`; ethereum `0xb7d29c...d8404d`; ethereum `0xc54b98...1166e0`; ethereum `0xec2302...1edca5` | ⚠️ Unaudited |
| OnLossDepositLimit | unknown | ethereum | [`0x746c23...898f62`](./contracts/ethereum-1/0x746c238e34a6dbfe1d35d50471467bd7bf898f62/) | ⚠️ Unaudited |
| PirexMigrator | periphery | ethereum | 2 deployments: ethereum [`0x552f4b...68d3b8`](./contracts/ethereum-1/0x552f4b850d4963d914e6b2c011b5fe475468d3b8/); ethereum `0xdd737d...000092` | ⚠️ Unaudited |
| Price Oracle | operational_periphery | ethereum | [`0xb1d07f...39cad4`](./contracts/ethereum-1/0xb1d07f500393b768c64b9ceeba85c58dc639cad4/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 6 deployments: ethereum [`0x12a14d...878d40`](./contracts/ethereum-1/0x12a14d3e78a2b0368ea784e04457af2bb6878d40/); ethereum `0x2b408d...66809e`; ethereum `0x3777c5...d262cb`; ethereum `0xa30e67...ad1ed3`; ethereum `0xc6798b...8a6c11`; ethereum `0xdf9f1f...88aeac` | ⚠️ Unaudited |
| RateSender | unknown | ethereum | 2 deployments: ethereum [`0x655603...219665`](./contracts/ethereum-1/0x655603c5c034f89d8e0c25c7bb22cae091219665/); ethereum `0xc9e039...1e795d` | ⚠️ Unaudited |
| Reth | token | ethereum | 3 deployments: ethereum [`0x7b6633...1f5ca3`](./contracts/ethereum-1/0x7b6633c0cd81dc338688a528c0a3f346561f5ca3/); ethereum `0x8d5dd2...d890d0`; ethereum `0xd8ed29...8c4908` | ⚠️ Unaudited |
| RETHPriceFeed | operational_periphery | ethereum | [`0x6c3774...898c56`](./contracts/ethereum-1/0x6c3774c30cb609e13ffdbae7c5ecd189b0898c56/) | ⚠️ Unaudited |
| RETHRateProvider | unknown | ethereum | [`0x3d40f9...c1f1ac`](./contracts/ethereum-1/0x3d40f9dd83bd404fa4047c15da494e58c3c1f1ac/) | ⚠️ Unaudited |
| RETHToBOLDExchange | unknown | ethereum | [`0x6aed7c...4fab76`](./contracts/ethereum-1/0x6aed7c8e57f905863caaab59fc10b5d95a4fab76/) | ⚠️ Unaudited |
| SafEth | unknown | ethereum | 10 deployments: ethereum [`0x013c06...0bbcfb`](./contracts/ethereum-1/0x013c0652f5d700c875d45f1608e5089ed80bbcfb/); ethereum `0x28baa2...515c41`; ethereum `0x591c4a...1fe970`; ethereum `0x6732ef...c4f3e5`; ethereum `0x7c8fb4...6fd23e`; ethereum `0xba9d68...04c0df`; ethereum `0xbbf865...26931e`; ethereum `0xc57319...d4478d`; ethereum `0xce2b86...8fd03c`; ethereum `0xe7ebef...7a38ac` | ⚠️ Unaudited |
| sanity | unknown | ethereum | 5 deployments: ethereum [`0x1ef013...137801`](./contracts/ethereum-1/0x1ef01391c3fe1723dc32717b7112c54da3137801/); ethereum `0x2f7d25...dcbd2d`; ethereum `0x2f8b4c...385574`; ethereum `0x3387be...c7eebb`; ethereum `0xf285b4...4c2d03` | ⚠️ Unaudited |
| ScrvUsdOracle | operational_periphery | ethereum | 7 deployments: ethereum [`0x1130ac...255a8c`](./contracts/ethereum-1/0x1130ac286b1b4cf1569ebca21d93c71f86255a8c/); ethereum `0x299196...9250c0`; ethereum `0x36193d...1236d8`; ethereum `0x5a0605...aa4ec9`; ethereum `0x5d5dcb...1d177c`; ethereum `0xb63d2e...bc3076`; ethereum `0xf121b5...ae55b8` | ⚠️ Unaudited |
| SdaiOracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x08e16c...8680e7`](./contracts/ethereum-1/0x08e16cb013e06f9c7b1f915ccd560263398680e7/); ethereum `0x29f525...c9c1d7`; ethereum `0x5f466c...8c8043`; ethereum `0x6b3884...9359a1`; ethereum `0x9181b9...7a9bb0`; ethereum `0xdbbd33...ae5dd2` | ⚠️ Unaudited |
| SfrxEth | unknown | ethereum | 12 deployments: ethereum [`0x0e14dc...650e5f`](./contracts/ethereum-1/0x0e14dcfcf4c7eab1d7031835a38db1828b650e5f/); ethereum `0x1ed84a...5bba37`; ethereum `0x217e24...d199d8`; ethereum `0x27137a...113b11`; ethereum `0x36ce17...f6b20a`; ethereum `0x410eda...8797cf`; ethereum `0x4fb6c0...884fe6`; ethereum `0x636f16...4e49e8`; ethereum `0x909210...2a60b6`; ethereum `0xa2f35a...7f920c`; ethereum `0xbc4718...1cf86a`; ethereum `0xdf7205...c0c0cd` | ⚠️ Unaudited |
| SfrxEthFallbackOracle | operational_periphery | ethereum | [`0x612127...a6a8a9`](./contracts/ethereum-1/0x61212793a7c67cc6584a6b8e84bf55ca9fa6a8a9/) | ⚠️ Unaudited |
| SfrxEthOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x1d27f8...fba54a`](./contracts/ethereum-1/0x1d27f835b6201572b65dca622aea185b01fba54a/); ethereum `0x5f5fb8...ef8ff4` | ⚠️ Unaudited |
| SfrxUsdOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x48ba7b...e5b433`](./contracts/ethereum-1/0x48ba7b711a8d5dadc6690de2e86533f70ee5b433/); ethereum `0x57816b...e0331d`; ethereum `0x8aacce...a2786e`; ethereum `0xc51203...c4c937` | ⚠️ Unaudited |
| SiloLenderAprOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x4486c9...ff75c6`](./contracts/ethereum-1/0x4486c96883ee436525e11cfb1b0f589c11ff75c6/); ethereum `0xd38b16...b0c5c8` | ⚠️ Unaudited |
| SiloStrategyFactory | registry | ethereum | 6 deployments: ethereum [`0x3e1435...74f7b9`](./contracts/ethereum-1/0x3e1435cd3e13423de06c0ce4f9b8deb19a74f7b9/); ethereum `0xba230f...a0c17a`; ethereum `0xbaf4cb...8b588c`; ethereum `0xbc23c3...b4c1fd`; ethereum `0xbf1035...e1d186`; ethereum `0xcffeb2...a9c8a1` | ⚠️ Unaudited |
| SiloUsdcLenderAprOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x365f90...e000b2`](./contracts/ethereum-1/0x365f901dfd546d7b9a4a8c3cca4a826a3ee000b2/); ethereum `0x8fd057...01f89d` | ⚠️ Unaudited |
| SingleTokenRewardDistributor | operational_periphery | ethereum | [`0xa16ba3...96d611`](./contracts/ethereum-1/0xa16ba309a934d84fb72952bec1bd54e0ce96d611/) | ⚠️ Unaudited |
| Sorted Troves | unknown | ethereum | 2 deployments: ethereum [`0x5b1096...a1e7d5`](./contracts/ethereum-1/0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5/); ethereum `0xff1ce6...afafb6` | ⚠️ Unaudited |
| SpotUsdOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x7d8627...cff9b9`](./contracts/ethereum-1/0x7d8627d847039cd9ffe0ae87a2dea98677cff9b9/); ethereum `0xf471f9...143241` | ⚠️ Unaudited |
| Stafi | unknown | ethereum | 2 deployments: ethereum [`0xad0e8e...8797cc`](./contracts/ethereum-1/0xad0e8edbdabdc4dd204b49f73511c1a13a8797cc/); ethereum `0xc9bbcc...4822da` | ⚠️ Unaudited |
| StafiDistributor | operational_periphery | ethereum | 3 deployments: ethereum [`0x44da62...a16587`](./contracts/ethereum-1/0x44da6289a48f6af8e0917d8688b02b773ba16587/); ethereum `0x5a2ecb...cc689b`; ethereum `0x5db09e...6dba3d` | ⚠️ Unaudited |
| StafiEther | unknown | ethereum | [`0x54896f...d39fc1`](./contracts/ethereum-1/0x54896f542f044709807f0d79033934d661d39fc1/) | ⚠️ Unaudited |
| StafiLightNode | unknown | ethereum | [`0x1c9066...d44f4b`](./contracts/ethereum-1/0x1c906685384df71e3fafa6f3b21bd884e9d44f4b/) | ⚠️ Unaudited |
| StafiNetworkSettings | unknown | ethereum | [`0x1a5474...2dc3f1`](./contracts/ethereum-1/0x1a5474e63519bf47860856f03f414445382dc3f1/) | ⚠️ Unaudited |
| StafiNodeDeposit | unknown | ethereum | 2 deployments: ethereum [`0x50db2c...9496a0`](./contracts/ethereum-1/0x50db2ce93c8b1f6771c985b6b840b587349496a0/); ethereum `0xafcf0e...cef33d` | ⚠️ Unaudited |
| StafiNodeManager | governance | ethereum | 3 deployments: ethereum [`0x342702...fa0caf`](./contracts/ethereum-1/0x342702e87e8714c759a21299402d9ec99efa0caf/); ethereum `0x4fd35a...62d572`; ethereum `0xd8575c...2307a8` | ⚠️ Unaudited |
| StafiSuperNode | unknown | ethereum | [`0x588e85...aa9ff1`](./contracts/ethereum-1/0x588e859cb38fecf2d56925c0512471ab47aa9ff1/) | ⚠️ Unaudited |
| StafiUpgrade | unknown | ethereum | [`0xd8737c...1bad41`](./contracts/ethereum-1/0xd8737ca46aa6285de7b8777a8e3db232911bad41/) | ⚠️ Unaudited |
| StafiUserDeposit | unknown | ethereum | 3 deployments: ethereum [`0x430cf6...bb3f28`](./contracts/ethereum-1/0x430cf6dd3e289adae63b50ff661d6bba2dbb3f28/); ethereum `0x625b7f...d357be`; ethereum `0xc12dfb...355058` | ⚠️ Unaudited |
| StafiWithdraw | operational_periphery | ethereum | 2 deployments: ethereum [`0x27d64d...f174cc`](./contracts/ethereum-1/0x27d64dd9172e4b59a444817d30f7af8228f174cc/); ethereum `0x91630f...fddf9b` | ⚠️ Unaudited |
| StakeERC20Portal | token | ethereum | [`0xbebfd2...4b56e8`](./contracts/ethereum-1/0xbebfd22d3a628a62f3e2ef91c957ec6d304b56e8/) | ⚠️ Unaudited |
| StakeERC20PortalWithRate | token | ethereum | [`0xefd240...cedde2`](./contracts/ethereum-1/0xefd24026a958fff3870e624900cc21e6e9cedde2/) | ⚠️ Unaudited |
| StakeManager | governance | ethereum | 4 deployments: ethereum [`0x3aee3e...9f3899`](./contracts/ethereum-1/0x3aee3e96c9e340cbe0fffc5224db9e97949f3899/); ethereum `0x73822d...de957b`; ethereum `0xb804d7...065711`; ethereum `0xfd5a64...60c73c` | ⚠️ Unaudited |
| StakePool | core_logic | ethereum | 3 deployments: ethereum [`0x48b1b0...3816cc`](./contracts/ethereum-1/0x48b1b0ac3e5e7cdbfbb67b0d2917b9ad9c3816cc/); ethereum `0x818dd8...eb9d31`; ethereum `0xed9d38...4c8af5` | ⚠️ Unaudited |
| StakerFactory | registry | ethereum | [`0x4219a2...278869`](./contracts/ethereum-1/0x4219a2084e77865ed94607412a96f5e503278869/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | [`0x412330...c25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | ⚠️ Unaudited |
| StrategyAprOracle | operational_periphery | ethereum | 9 deployments: ethereum [`0x0e40eb...561e65`](./contracts/ethereum-1/0x0e40eb56626cfd0f41ca7a72618209d958561e65/); ethereum `0x133bfe...20f77c`; ethereum `0x555f3f...060b3d`; ethereum `0x716ee5...10a899`; ethereum `0x7a7f1c...b14409`; ethereum `0x8d26d5...bec807`; ethereum `0xddfb32...f4fbb0`; ethereum `0xe29963...fba79e`; ethereum `0xe9015a...f85786` | ⚠️ Unaudited |
| StrategyFactory | registry | ethereum | 2 deployments: ethereum [`0x73dfcc...3dba58`](./contracts/ethereum-1/0x73dfcc4fb90e6e252e5d41f6588534a8043dba58/); ethereum `0xbf7a38...c547d1` | ⚠️ Unaudited |
| StrategyFixedReportTrigger | core_logic | ethereum | 2 deployments: ethereum [`0x600d6a...01007c`](./contracts/ethereum-1/0x600d6aebd8eacfcfbb8eedff139408200d01007c/); ethereum `0xb9f57b...0ea871` | ⚠️ Unaudited |
| StyBoldOracle | operational_periphery | ethereum | [`0xc1ed37...182d03`](./contracts/ethereum-1/0xc1ed3729cfcf9f93a7dbe1e4669bc67793182d03/) | ⚠️ Unaudited |
| SusdeOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x4065a6...136985`](./contracts/ethereum-1/0x4065a67203c3d9307d121a093baa16eb11136985/); ethereum `0x6676ba...3f5cba`; ethereum `0x8dc802...7eda3a` | ⚠️ Unaudited |
| SusdsOracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x24bf59...06765c`](./contracts/ethereum-1/0x24bf596a4ccd5148fc816a7371cdf75d0706765c/); ethereum `0x489d51...c5d653`; ethereum `0x9d09d5...082d10`; ethereum `0xa8076d...e2aaba`; ethereum `0xe43919...da4b1c`; ethereum `0xec0af9...8306d3` | ⚠️ Unaudited |
| Swell | unknown | ethereum | 2 deployments: ethereum [`0xf5ccaf...df3d09`](./contracts/ethereum-1/0xf5ccaf2dbed6c7ae341df42a9a74e057e9df3d09/); ethereum `0xfb8725...8371b1` | ⚠️ Unaudited |
| TbtcFallbackOracle | operational_periphery | ethereum | 5 deployments: ethereum [`0x193b7d...54aba5`](./contracts/ethereum-1/0x193b7da0f8036709774054dfd7539ca36654aba5/); ethereum `0x25eafe...eb7843`; ethereum `0x29a1e4...8f6e8b`; ethereum `0xa202c7...7ebcef`; ethereum `0xa2b2e0...a1e666` | ⚠️ Unaudited |
| TbtcOracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x39fca0...a3a775`](./contracts/ethereum-1/0x39fca0f77ba22926e8e5ec5df68271eb49a3a775/); ethereum `0x5d62fd...77107d`; ethereum `0x815594...a0b652`; ethereum `0x83e800...ce94d3`; ethereum `0xdc4ad8...012832`; ethereum `0xf53a7e...c8e17d` | ⚠️ Unaudited |
| tBTCToUSDafExchange | unknown | ethereum | [`0x1a173e...98134f`](./contracts/ethereum-1/0x1a173e7223dbd1e66bbe654a0b8c4c1ebd98134f/) | ⚠️ Unaudited |
| TokenDropWithLock | token | ethereum | 2 deployments: ethereum [`0x630e78...42d460`](./contracts/ethereum-1/0x630e78c7ac331d89e2fedbbaa93fecade842d460/); ethereum `0x85449d...057cd3` | ⚠️ Unaudited |
| TokenLocker | token | ethereum | 3 deployments: ethereum [`0x0aed01...d26845`](./contracts/ethereum-1/0x0aed0129bb70a43480fa8b1a224597d919d26845/); ethereum `0xb6d67b...ad178e`; ethereum `0xf119b5...329034` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 2 deployments: ethereum [`0x5f10b1...a83590`](./contracts/ethereum-1/0x5f10b16f0959aac2e33bedc9b0a4229bb9a83590/); ethereum `0xb5d336...ab8d4b` | ⚠️ Unaudited |
| Trove Manager | governance | ethereum | 2 deployments: ethereum [`0x36e9ee...b41c1f`](./contracts/ethereum-1/0x36e9ee7a0ce154cc1e379a7c0231fa19c0b41c1f/); ethereum `0xc1296a...dabaec` | ⚠️ Unaudited |
| UnwrappedZapper | adapter | ethereum | [`0x140c32...166d37`](./contracts/ethereum-1/0x140c32b45bbf84310139a37da87eedf14b166d37/) | ⚠️ Unaudited |
| USAZapper | adapter | ethereum | 11 deployments: ethereum [`0x039f03...bae050`](./contracts/ethereum-1/0x039f0333692df867b23f15d749d16f20a7bae050/); ethereum `0x234134...4eb174`; ethereum `0x2fe5e0...3dec84`; ethereum `0x6967df...02dc1a`; ethereum `0x6ecf29...cb331d`; ethereum `0x8387e7...ad8fa9`; ethereum `0x90695d...b6273f`; ethereum `0xa38f7a...d5ceea`; ethereum `0xb4c6f0...ca7c76`; ethereum `0xdbd025...7815be`; ethereum `0xe9c32e...475557` | ⚠️ Unaudited |
| USDaf Flash Zapper | adapter | ethereum | 6 deployments: ethereum [`0x0502db...91b072`](./contracts/ethereum-1/0x0502dbe106d80577b156b0679342a11dca91b072/); ethereum `0x07b152...aead67`; ethereum `0x1a3f5e...ca4baa`; ethereum `0x8b2754...6ae07f`; ethereum `0x982e60...8b6fe2`; ethereum `0xf97f41...c96c8c` | ⚠️ Unaudited |
| USDaf Leverage Zapper | adapter | ethereum | [`0x90318f...542ee4`](./contracts/ethereum-1/0x90318f8028da3a985e9d2f777369c961a8542ee4/) | ⚠️ Unaudited |
| VaultFixedReportTrigger | core_logic | ethereum | [`0xfdfebe...4c9b3a`](./contracts/ethereum-1/0xfdfebee8ed1ae9fed6b5b23ffe6dfa14e84c9b3a/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 15 deployments: ethereum [`0x188384...345919`](./contracts/ethereum-1/0x188384c7ec63da76a39ec1ec1c6cc7a2ed345919/); ethereum `0x3470a0...c2cbde`; ethereum `0x3b44ab...e37a30`; ethereum `0x439cd7...9388a8`; ethereum `0x49c87b...0c9be0`; ethereum `0x5d64c3...28ab25`; ethereum `0x693e74...964d93`; ethereum `0x78ebd6...0bfd99`; ethereum `0x82cbd5...e631b3`; ethereum `0x840abd...31cac4`; ethereum `0x8828c6...fe0100`; ethereum `0x920f99...14aa30`; ethereum `0xd76b14...889bf2`; ethereum `0xe7f280...25ea98`; ethereum `0xec1f93...141352` | ⚠️ Unaudited |
| WbtcFallbackOracle | operational_periphery | ethereum | 5 deployments: ethereum [`0x0cce6c...e116e8`](./contracts/ethereum-1/0x0cce6cb8cc0d9ebd89c2275b11ca39e39be116e8/); ethereum `0x20239a...79c3d4`; ethereum `0x2b3825...800e9e`; ethereum `0x66871d...661b4b`; ethereum `0x8c5b58...3ceaa3` | ⚠️ Unaudited |
| WbtcOracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x1919de...1b7205`](./contracts/ethereum-1/0x1919de21635276a80aa3384a852df8189e1b7205/); ethereum `0x455666...26d902`; ethereum `0x71ff3c...552891`; ethereum `0x8bee58...82966b`; ethereum `0x9d4ceb...420376`; ethereum `0xd7d3cd...0cd587` | ⚠️ Unaudited |
| WBTCToCRVUSDExchange | token | ethereum | [`0x5602eb...e58815`](./contracts/ethereum-1/0x5602eb937b25f783a4b7b522b7c0baf28be58815/) | ⚠️ Unaudited |
| WBTCToUSDCExchange | token | ethereum | [`0x6cd733...1063b4`](./contracts/ethereum-1/0x6cd733c283ef09a760e330acb7d8c7e9961063b4/) | ⚠️ Unaudited |
| WbtcZapper | adapter | ethereum | 5 deployments: ethereum [`0x0b9655...f20bac`](./contracts/ethereum-1/0x0b9655f38dccabba0be6d1080bb9bd6694f20bac/); ethereum `0x13fa9c...edf131`; ethereum `0x2ae509...46ba65`; ethereum `0x323e6b...9a8179`; ethereum `0xf8853a...c2aa1c` | ⚠️ Unaudited |
| WETHPriceFeed | operational_periphery | ethereum | 35 deployments: ethereum [`0x041d53...6a545d`](./contracts/ethereum-1/0x041d537da301027a439460f6b86785898e6a545d/); ethereum `0x08f386...054402`; ethereum `0x0d8441...4ac6e3`; ethereum `0x0daafd...c95b94`; ethereum `0x10b940...132809`; ethereum `0x1f9a16...f5794c`; ethereum `0x211346...f46911`; ethereum `0x36e01f...89aa87`; ethereum `0x37b209...c86259`; ethereum `0x39d2ba...42b9b0`; ethereum `0x50f5cd...b4521f`; ethereum `0x56d63b...c0bb8f`; ethereum `0x5b601a...804b78`; ethereum `0x5bdee7...412908`; ethereum `0x5c6def...bd43bc`; ethereum `0x629b6c...390e28`; ethereum `0x62c2c3...7d4475`; ethereum `0x653df7...07f7c7`; ethereum `0x76d159...ec7572`; ethereum `0x774974...deb10b`; ethereum `0x779060...a6f7ef`; ethereum `0x7f0d75...d8329c`; ethereum `0x7f5753...49520b`; ethereum `0x806b29...c882c5`; ethereum `0x963a41...e7a25e`; ethereum `0xa3a83d...55c563`; ethereum `0xc470a1...c14dc9`; ethereum `0xc73655...ed7472`; ethereum `0xcd0bad...aed871`; ethereum `0xcda8cc...f7b387`; ethereum `0xed07b7...4d4ee0`; ethereum `0xf125c7...06cbb8`; ethereum `0xf9ea88...197355`; ethereum `0xfb8cb4...ee2571`; ethereum `0xfe8cf1...53a621` | ⚠️ Unaudited |
| WETHToBOLDExchange | token | ethereum | [`0x4c59ee...99caed`](./contracts/ethereum-1/0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed/) | ⚠️ Unaudited |
| WETHToCRVUSDExchange | token | ethereum | [`0xf00850...e3caac`](./contracts/ethereum-1/0xf00850a4384878c66c54fde0bdc29aa825e3caac/) | ⚠️ Unaudited |
| WrappedCbbtc | unknown | ethereum | 4 deployments: ethereum [`0x71d335...fd086c`](./contracts/ethereum-1/0x71d33511d53ee8a89724ec9cbbddf9cfd5fd086c/); ethereum `0x7fd713...b27d15`; ethereum `0x97f775...1e70b7`; ethereum `0xc2fdf0...1b4402` | ⚠️ Unaudited |
| WrappedSpot | unknown | ethereum | 2 deployments: ethereum [`0x253da8...1df194`](./contracts/ethereum-1/0x253da8f1f6cd0fb33aadc13999df9b124f1df194/); ethereum `0xfe097e...3150eb` | ⚠️ Unaudited |
| WstEth | token | ethereum | 4 deployments: ethereum [`0x1533ed...9b306f`](./contracts/ethereum-1/0x1533edbe274aa1b9fb5db2652d6d143e939b306f/); ethereum `0x972a53...f23fad`; ethereum `0xc56aef...e75a12`; ethereum `0xda8a4d...8458a9` | ⚠️ Unaudited |
| WSTETHPriceFeed | operational_periphery | ethereum | [`0xa94a6c...09cef3`](./contracts/ethereum-1/0xa94a6cb1796a6404683786d3b56c3102a709cef3/) | ⚠️ Unaudited |
| WSTETHToBOLDExchange | unknown | ethereum | [`0xdfe9ac...c5ca9a`](./contracts/ethereum-1/0xdfe9ace42684879ee17620bcce218711f1c5ca9a/) | ⚠️ Unaudited |
| WSTETHToCRVUSDExchange | unknown | ethereum | [`0x63bf36...ee881f`](./contracts/ethereum-1/0x63bf3669a8784d279165a80ea877c74f92ee881f/) | ⚠️ Unaudited |
| YBSUtilities | unknown | ethereum | [`0x345c63...cb6499`](./contracts/ethereum-1/0x345c63028f17d8da727595914fc64a4cc9cb6499/) | ⚠️ Unaudited |
| Zap | adapter | ethereum | 3 deployments: ethereum [`0x909554...928f67`](./contracts/ethereum-1/0x9095548dc8d67bac7ad15ea16c65040701928f67/); ethereum `0xeb3d79...e2f69e`; ethereum `0xeb8b1b...915856` | ⚠️ Unaudited |
| Zapper | adapter | ethereum | [`0xe70990...d83c58`](./contracts/ethereum-1/0xe7099092533a3fb693bb123cd96b8e53b4d83c58/) | ⚠️ Unaudited |
| ZapperAsFuck | adapter | ethereum | 24 deployments: ethereum [`0x07011c...ca598a`](./contracts/ethereum-1/0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a/); ethereum `0x14300f...f90374`; ethereum `0x18d207...692db3`; ethereum `0x1f18af...f0bba4`; ethereum `0x1f4f32...cc2949`; ethereum `0x27ae0b...3e336f`; ethereum `0x547d14...5d0920`; ethereum `0x54867d...33f010`; ethereum `0x58d1a6...78f961`; ethereum `0x5dd187...b09aa5`; ethereum `0x68f434...3fc592`; ethereum `0x7b86a8...487f14`; ethereum `0x7bf88f...357988`; ethereum `0x9b004d...ea0c6e`; ethereum `0x9f6996...6642d2`; ethereum `0xa2f1d8...660852`; ethereum `0xb6e58f...b32dae`; ethereum `0xd85a46...3dfa52`; ethereum `0xe1dde1...43d68d`; ethereum `0xe991a0...2e7b3e`; ethereum `0xf5f194...5ae82d`; ethereum `0xf7e4cf...c1f2d3`; ethereum `0xff2736...a0e5ae`; ethereum `0xff29c1...c835d4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (83)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x014b68...ceed90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x01b6a9...58d055` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0310a0...ea4669` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x071bee...c0cfa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1261a8...cba6e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x13e709...89c964` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x156e03...0b9eda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16aa5f...e4451c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x17207f...e93dd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19a832...65f0b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c9890...fbed5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f8ce7...8f804a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x204233...cacd92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2231e6...386cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25290c...d9eddf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x308a2f...b72c85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x31b598...327f5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x31fc48...d1bb8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3314e9...7fc7a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35dad8...971ce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ad9a9...93353f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ae636...581a3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b0567...cd8147` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c42b5...6c84fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ca31b...b44b0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x473d3f...4f80f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d3c3b...bab094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e2640...3e4269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x536d6e...13c92b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x548070...624ff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55f312...60df1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56372b...c26c2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56945f...3b12d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5af175...8490ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c93f8...d4dc64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5f72c3...892209` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6780c7...a4ddba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6845e8...e7d644` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x69bcfa...46d355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c2f7b...02e8b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ebb9d...49307e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x73f972...45b580` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x747176...0c1fa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7acd9b...e6420b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8320c2...71f5be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88c41d...10d10e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89d8d5...a542c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e5e15...6caa5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9305a1...dd2e7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x934414...056d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9606c2...a90898` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98bc63...f2df4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa179a4...834761` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa21c50...ea8d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa85064...2b524c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaaabc0...d5d17f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0da55...f2b389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1f612...fdcff5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb44f39...2ab40f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1d483...919662` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc30fd0...a950f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc43880...a26a85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4e2bc...b8a8cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc59ea6...c4fc96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc59ff0...7cea8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8ce0b...7e336c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf61a0...4daac0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd532d1...bae7a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd69fa4...3f783a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9c5a9...926d53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda9726...91698d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdcb363...450eb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe10df3...e64c0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe18dec...238fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe4534d...64d175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeba81e...26d1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed44b9...291b9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed9569...cebf04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf03039...51fb60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf58789...1e9173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9336c...a7f760` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd467a...369b57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfea91b...9767eb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0808bd...4b2419`](./contracts/ethereum-1/0x0808bd8406df35ff5806293359acc543bb4b2419/) | AsfToken | token | $1,096,728.36 | Verified native implementation with $1,096,728.36 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ee6db...7c53ea`](./contracts/ethereum-1/0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea/) | TokenizedStrategy | core_logic | $10,053.16 | Verified native implementation with $10,053.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc5a28...8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | StafiSuperNodeFeePool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdecafb...717d55`](./contracts/ethereum-1/0xdecafb666ee4f9c5e9f5b26dc02e443035717d55/) | AccountantFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ad1c3...82377c`](./contracts/ethereum-1/0x0ad1c302203f0fbb6ca34641bdfef0bf4182377c/) | AddressesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x108d8d...ac488c`](./contracts/ethereum-1/0x108d8d8d89b3459ec37c0e71a51c8a6771ac488c/) | AfCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18d492...bfdc67`](./contracts/ethereum-1/0x18d49239edc031fec1747200cd315eca4fbfdc67/) | AfEthRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4feb6c...b04408`](./contracts/ethereum-1/0x4feb6c50a69d0cb29f77e307249c767607b04408/) | ASFOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e988d...c8f945`](./contracts/ethereum-1/0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3a370...c976c5`](./contracts/ethereum-1/0xa3a3702d81fd317fa1b8735227e29dc756c976c5/) | AuctionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2735aa...3eefb4`](./contracts/ethereum-1/0x2735aae1a56a5dbac1a951b92bd9fad0f33eefb4/) | BTCPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95480d...8fe2fb`](./contracts/ethereum-1/0x95480dd073c2e47e4166fe2ce6da79662d8fe2fb/) | CbbtcFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x235710...8593d7`](./contracts/ethereum-1/0x2357105b6b16034ee2fea32e23edf403b18593d7/) | CbbtcOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1666ee...d9b1e5`](./contracts/ethereum-1/0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5/) | CbbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11830f...1c95fa`](./contracts/ethereum-1/0x11830ff94221f2ef34176ad85a6ccaa2f41c95fa/) | CleverCvxStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2632d6...a52276`](./contracts/ethereum-1/0x2632d629dd93e541f22c4c572101857f3ba52276/) | CollateralRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b36d8...0eeb35`](./contracts/ethereum-1/0x2b36d82bfb9ea09bbed084be34df942aad0eeb35/) | CrvUsdFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63f01b...c5102b`](./contracts/ethereum-1/0x63f01b695c67b764e823f972bc61fcafbac5102b/) | CryptoFromPoolsRateWAgg | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8109a8...afb7c3`](./contracts/ethereum-1/0x8109a89d1c779724de794fa34f5cd4b5ebafb7c3/) | CryptoFromPoolVaultWAgg | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38927d...561752`](./contracts/ethereum-1/0x38927df780aeedaa2d9706dc5d62763841561752/) | dASF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc362f...a8c55b`](./contracts/ethereum-1/0xbc362f57dfd6d3522ab66b45ce3aa33335a8c55b/) | dASF Flash Dump | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d13a5...16c27f`](./contracts/ethereum-1/0x1d13a5a7bb98bb363dfeb6f6f82d2b93b816c27f/) | dASF Redemptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa100e8...87d298`](./contracts/ethereum-1/0xa100e806ac9b351f7edd14745616622c9b87d298/) | DummyOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d258...56f60e`](./contracts/ethereum-1/0x04d258d3ee00ef9840985afd373037d91c56f60e/) | Dutch Desk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d775c...260e34`](./contracts/ethereum-1/0x1d775cac4752ad141dcc6c38b388fc9e69260e34/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fabb1...d18a1f`](./contracts/ethereum-1/0x3fabb13195599bef352157a2c6c6937aead18a1f/) | HintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e493f...d25bc2`](./contracts/ethereum-1/0x0e493f67f568b01c79f6b167ab0ffd3645d25bc2/) | InterestRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeca746...e5ccb7`](./contracts/ethereum-1/0xeca746232f297bbd968b4ef240fb28c40be5ccb7/) | LiquidLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcadc2a...cc20db`](./contracts/ethereum-1/0xcadc2a8ccf396088f8d7520ae8fd249ccfcc20db/) | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6501bd...a57113`](./contracts/ethereum-1/0x6501bd8cb63e13d61f14ed5094d8f11d57a57113/) | MetadataNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe18547...8a80f9`](./contracts/ethereum-1/0xe18547f5e5e30f991371bee3d9245986468a80f9/) | MockInterestRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c62e...b17ee7`](./contracts/ethereum-1/0x24c62ec7f0d0275934ef6fc9432921df87b17ee7/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x746c23...898f62`](./contracts/ethereum-1/0x746c238e34a6dbfe1d35d50471467bd7bf898f62/) | OnLossDepositLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1d07f...39cad4`](./contracts/ethereum-1/0xb1d07f500393b768c64b9ceeba85c58dc639cad4/) | Price Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x655603...219665`](./contracts/ethereum-1/0x655603c5c034f89d8e0c25c7bb22cae091219665/) | RateSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c3774...898c56`](./contracts/ethereum-1/0x6c3774c30cb609e13ffdbae7c5ecd189b0898c56/) | RETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x013c06...0bbcfb`](./contracts/ethereum-1/0x013c0652f5d700c875d45f1608e5089ed80bbcfb/) | SafEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef013...137801`](./contracts/ethereum-1/0x1ef01391c3fe1723dc32717b7112c54da3137801/) | sanity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1130ac...255a8c`](./contracts/ethereum-1/0x1130ac286b1b4cf1569ebca21d93c71f86255a8c/) | ScrvUsdOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08e16c...8680e7`](./contracts/ethereum-1/0x08e16cb013e06f9c7b1f915ccd560263398680e7/) | SdaiOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e14dc...650e5f`](./contracts/ethereum-1/0x0e14dcfcf4c7eab1d7031835a38db1828b650e5f/) | SfrxEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x612127...a6a8a9`](./contracts/ethereum-1/0x61212793a7c67cc6584a6b8e84bf55ca9fa6a8a9/) | SfrxEthFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d27f8...fba54a`](./contracts/ethereum-1/0x1d27f835b6201572b65dca622aea185b01fba54a/) | SfrxEthOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48ba7b...e5b433`](./contracts/ethereum-1/0x48ba7b711a8d5dadc6690de2e86533f70ee5b433/) | SfrxUsdOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4486c9...ff75c6`](./contracts/ethereum-1/0x4486c96883ee436525e11cfb1b0f589c11ff75c6/) | SiloLenderAprOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e1435...74f7b9`](./contracts/ethereum-1/0x3e1435cd3e13423de06c0ce4f9b8deb19a74f7b9/) | SiloStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x365f90...e000b2`](./contracts/ethereum-1/0x365f901dfd546d7b9a4a8c3cca4a826a3ee000b2/) | SiloUsdcLenderAprOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa16ba3...96d611`](./contracts/ethereum-1/0xa16ba309a934d84fb72952bec1bd54e0ce96d611/) | SingleTokenRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b1096...a1e7d5`](./contracts/ethereum-1/0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5/) | Sorted Troves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d8627...cff9b9`](./contracts/ethereum-1/0x7d8627d847039cd9ffe0ae87a2dea98677cff9b9/) | SpotUsdOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44da62...a16587`](./contracts/ethereum-1/0x44da6289a48f6af8e0917d8688b02b773ba16587/) | StafiDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50db2c...9496a0`](./contracts/ethereum-1/0x50db2ce93c8b1f6771c985b6b840b587349496a0/) | StafiNodeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27d64d...f174cc`](./contracts/ethereum-1/0x27d64dd9172e4b59a444817d30f7af8228f174cc/) | StafiWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbebfd2...4b56e8`](./contracts/ethereum-1/0xbebfd22d3a628a62f3e2ef91c957ec6d304b56e8/) | StakeERC20Portal | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefd240...cedde2`](./contracts/ethereum-1/0xefd24026a958fff3870e624900cc21e6e9cedde2/) | StakeERC20PortalWithRate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48b1b0...3816cc`](./contracts/ethereum-1/0x48b1b0ac3e5e7cdbfbb67b0d2917b9ad9c3816cc/) | StakePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4219a2...278869`](./contracts/ethereum-1/0x4219a2084e77865ed94607412a96f5e503278869/) | StakerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x412330...c25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e40eb...561e65`](./contracts/ethereum-1/0x0e40eb56626cfd0f41ca7a72618209d958561e65/) | StrategyAprOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73dfcc...3dba58`](./contracts/ethereum-1/0x73dfcc4fb90e6e252e5d41f6588534a8043dba58/) | StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x600d6a...01007c`](./contracts/ethereum-1/0x600d6aebd8eacfcfbb8eedff139408200d01007c/) | StrategyFixedReportTrigger | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24bf59...06765c`](./contracts/ethereum-1/0x24bf596a4ccd5148fc816a7371cdf75d0706765c/) | SusdsOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x193b7d...54aba5`](./contracts/ethereum-1/0x193b7da0f8036709774054dfd7539ca36654aba5/) | TbtcFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a173e...98134f`](./contracts/ethereum-1/0x1a173e7223dbd1e66bbe654a0b8c4c1ebd98134f/) | tBTCToUSDafExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x630e78...42d460`](./contracts/ethereum-1/0x630e78c7ac331d89e2fedbbaa93fecade842d460/) | TokenDropWithLock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aed01...d26845`](./contracts/ethereum-1/0x0aed0129bb70a43480fa8b1a224597d919d26845/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x140c32...166d37`](./contracts/ethereum-1/0x140c32b45bbf84310139a37da87eedf14b166d37/) | UnwrappedZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039f03...bae050`](./contracts/ethereum-1/0x039f0333692df867b23f15d749d16f20a7bae050/) | USAZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0502db...91b072`](./contracts/ethereum-1/0x0502dbe106d80577b156b0679342a11dca91b072/) | USDaf Flash Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90318f...542ee4`](./contracts/ethereum-1/0x90318f8028da3a985e9d2f777369c961a8542ee4/) | USDaf Leverage Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdfebe...4c9b3a`](./contracts/ethereum-1/0xfdfebee8ed1ae9fed6b5b23ffe6dfa14e84c9b3a/) | VaultFixedReportTrigger | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x188384...345919`](./contracts/ethereum-1/0x188384c7ec63da76a39ec1ec1c6cc7a2ed345919/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cce6c...e116e8`](./contracts/ethereum-1/0x0cce6cb8cc0d9ebd89c2275b11ca39e39be116e8/) | WbtcFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1919de...1b7205`](./contracts/ethereum-1/0x1919de21635276a80aa3384a852df8189e1b7205/) | WbtcOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5602eb...e58815`](./contracts/ethereum-1/0x5602eb937b25f783a4b7b522b7c0baf28be58815/) | WBTCToCRVUSDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9655...f20bac`](./contracts/ethereum-1/0x0b9655f38dccabba0be6d1080bb9bd6694f20bac/) | WbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x041d53...6a545d`](./contracts/ethereum-1/0x041d537da301027a439460f6b86785898e6a545d/) | WETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c59ee...99caed`](./contracts/ethereum-1/0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed/) | WETHToBOLDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf00850...e3caac`](./contracts/ethereum-1/0xf00850a4384878c66c54fde0bdc29aa825e3caac/) | WETHToCRVUSDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71d335...fd086c`](./contracts/ethereum-1/0x71d33511d53ee8a89724ec9cbbddf9cfd5fd086c/) | WrappedCbbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x253da8...1df194`](./contracts/ethereum-1/0x253da8f1f6cd0fb33aadc13999df9b124f1df194/) | WrappedSpot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa94a6c...09cef3`](./contracts/ethereum-1/0xa94a6cb1796a6404683786d3b56c3102a709cef3/) | WSTETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe9ac...c5ca9a`](./contracts/ethereum-1/0xdfe9ace42684879ee17620bcce218711f1c5ca9a/) | WSTETHToBOLDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x345c63...cb6499`](./contracts/ethereum-1/0x345c63028f17d8da727595914fc64a4cc9cb6499/) | YBSUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x909554...928f67`](./contracts/ethereum-1/0x9095548dc8d67bac7ad15ea16c65040701928f67/) | Zap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe70990...d83c58`](./contracts/ethereum-1/0xe7099092533a3fb693bb123cd96b8e53b4d83c58/) | Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07011c...ca598a`](./contracts/ethereum-1/0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a/) | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 115 |
| upstream | 3 |
| standard_library | 13 |
| needs_review | 72 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
