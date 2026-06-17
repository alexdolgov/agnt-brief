# Agentic Audit Brief: Asymmetry

⚠️ Lifecycle status: DECLINING - TVL dropped 38.9% over 90 days

## Project Overview

- Project: Asymmetry (`asymmetry`)
- Website: [https://asymmetry.fi](https://asymmetry.fi)
- Lifecycle: declining (Tier 0, 88.7% below peak)
- Generated: 2026-06-17T07:00:49.041Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, ethereum
- Contract surface: 84 unique implementations (163 raw deployments)
- DeFi Llama TVL: $2,819,267.00
- On-chain TVL (included contracts): $39,672,305.42
- TVL by chain: Ethereum $37,144,404.19 | Base $2,527,901.22

## Project Description

Asymmetry Finance is a DeFi protocol offering liquid staking and index products such as safETH and afETH, a USDaf collateralized debt position stablecoin system, and yield-optimizing vault products. It supports diversified collateral and yield strategies across liquid staking and other crypto assets without assuming that Asymmetry LSD index tokens are the sole asset base for USDaf unless verified by current configuration.

### Architecture

The Asymmetry Finance family issues LSD index tokens (like afETH) that serve as collateral within the Asymmetry USDaf CDP system. Collateral registries in USDaf reference these index tokens, creating a direct dependency where the index products provide the asset base for stablecoin minting.

## Contract Surface Quality

- Indexed contracts: 619; live-surface contracts included: 163 (150 live, 13 unknown).
- Excluded by liveness: 401 inactive, 55 singleton, 0 uninitialized.
- Deployment units: 4/31 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 3/174.

## Audit Coverage Summary

- Verified implementations audited: 0/71 (0.0%)
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 84
- Raw deployments: 163
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $39,672,305.42
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $39,672,305.42 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| swETH | token | ethereum | unit-19041 | [`0xf951e3...7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| RETHToken | token | ethereum | n/a | [`0x9559aa...9a3593`](./contracts/ethereum-1/0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593/) | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0xaad3b9...35ec65`](./contracts/base-8453/0xaad3b9047dca4d5565471a3cce2767c56535ec65/) | ⚠️ Unaudited |
| AsfToken | token | ethereum | n/a | [`0x59a529...4cf8aa`](./contracts/ethereum-1/0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa/) | ⚠️ Unaudited |
| WrappedWbtc | token | ethereum | n/a | 3 deployments: ethereum [`0x99b36e...468752`](./contracts/ethereum-1/0x99b36ed441cd2936ae3742c9cba62d261a468752/); ethereum `0xe065bc...267c47`; ethereum `0xf53bb9...b58324` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | unit-19016 (6 proxies) | 6 deployments: ethereum [`0x1ee6db...7c53ea`](./contracts/ethereum-1/0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea/); ethereum `0x2637f3...b970ef`; ethereum `0x2ffff7...51ab9e`; ethereum `0x654973...19f912`; ethereum `0x69671a...3c7665`; ethereum `0x6dec37...7c4616` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | [`0x0abd93...519e94`](./contracts/ethereum-1/0x0abd93da8387b5ef0511a2859d85d84fe4519e94/) | ⚠️ Unaudited |
| StafiSuperNodeFeePool | core_logic | ethereum | n/a | [`0xdc5a28...8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | ⚠️ Unaudited |
| ActivePool | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x08eaaf...0c232d`](./contracts/ethereum-1/0x08eaafd8fbb12cf12d6765e80c5b0ff8490c232d/); ethereum `0x20f295...a93774`; ethereum `0x244c42...7d046e`; ethereum `0xb00d1d...9a7f44`; ethereum `0xb87e1e...77fb63`; ethereum `0xf507e2...8fc48a` | ⚠️ Unaudited |
| AddressesRegistry | registry | ethereum | n/a | 6 deployments: ethereum [`0x0ad1c3...82377c`](./contracts/ethereum-1/0x0ad1c302203f0fbb6ca34641bdfef0bf4182377c/); ethereum `0x0c7b6c...719c82`; ethereum `0x2c5a85...0ead6d`; ethereum `0x330a0f...6dc6d1`; ethereum `0x3414bd...8fa1ce`; ethereum `0xbd9f75...85e999` | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | unit-19038 | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| ASFOFTAdapter | adapter | ethereum | n/a | [`0x4feb6c...b04408`](./contracts/ethereum-1/0x4feb6c50a69d0cb29f77e307249c767607b04408/) | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | [`0x6e988d...c8f945`](./contracts/ethereum-1/0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945/) | ⚠️ Unaudited |
| AuctionFactory | registry | ethereum | n/a | [`0xa3a370...c976c5`](./contracts/ethereum-1/0xa3a3702d81fd317fa1b8735227e29dc756c976c5/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2538cd...e4554e`](./contracts/ethereum-1/0x2538cd346429ea59902e02448bb7a7c098e4554e/); ethereum `0x336d9c...69b41d`; ethereum `0x57bd20...b48469`; ethereum `0x664507...71f411`; ethereum `0x9e6010...c13830`; ethereum `0xda9af1...2556e0` | ⚠️ Unaudited |
| BTCPriceFeed | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4b74d0...bc3bb1`](./contracts/ethereum-1/0x4b74d043336678d2f62dae6595bc42dccabc3bb1/); ethereum `0xeaf3b3...745094` | ⚠️ Unaudited |
| CbbtcZapper | adapter | ethereum | n/a | [`0x1666ee...d9b1e5`](./contracts/ethereum-1/0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5/) | ⚠️ Unaudited |
| CollateralRegistry | registry | ethereum | n/a | 5 deployments: ethereum [`0x33d680...4d60fe`](./contracts/ethereum-1/0x33d68055cd54061991b2e98b9ab326ffce4d60fe/); ethereum `0x447fd8...caeff4`; ethereum `0xa70d14...096650`; ethereum `0xcff0dc...67d791`; ethereum `0xd5d9c0...366a35` | ⚠️ Unaudited |
| CrvUsdFallbackOracle | operational_periphery | ethereum | n/a | [`0x2b36d8...0eeb35`](./contracts/ethereum-1/0x2b36d82bfb9ea09bbed084be34df942aad0eeb35/) | ⚠️ Unaudited |
| dASF | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7fe24f...fb632d`](./contracts/ethereum-1/0x7fe24f1a024d33506966cb7ca48bab8c65fb632d/); ethereum `0x9e1eda...241d97`; ethereum `0xf94189...10dffa` | ⚠️ Unaudited |
| dASF Redemptions | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5b9a4b...d4b680`](./contracts/ethereum-1/0x5b9a4b5a377e2377f6f5873e95d9274caed4b680/); ethereum `0x8f1477...98dc28`; ethereum `0xdc59d2...afdd27` | ⚠️ Unaudited |
| Dutch Desk | unknown | ethereum | n/a | [`0x04d258...56f60e`](./contracts/ethereum-1/0x04d258d3ee00ef9840985afd373037d91c56f60e/) | ⚠️ Unaudited |
| HintHelpers | periphery | ethereum | n/a | [`0x838a1f...4e865a`](./contracts/ethereum-1/0x838a1f38c361ffa1b23201640752149adb4e865a/) | ⚠️ Unaudited |
| InterestRouter | adapter | ethereum | n/a | [`0x1771f4...f6673c`](./contracts/ethereum-1/0x1771f4de6836b10b59dd66990b0190985df6673c/) | ⚠️ Unaudited |
| Multisig | governance | ethereum | n/a | 2 deployments: ethereum [`0x003aac...ee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/); ethereum `0x6aacff...999aa6` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | n/a | [`0xb3683a...fd7e80`](./contracts/ethereum-1/0xb3683a407bddddfb126cf06fb52d974a08fd7e80/) | ⚠️ Unaudited |
| OnLossDepositLimit | unknown | ethereum | n/a | [`0x746c23...898f62`](./contracts/ethereum-1/0x746c238e34a6dbfe1d35d50471467bd7bf898f62/) | ⚠️ Unaudited |
| PirexMigrator | periphery | ethereum | n/a | [`0x552f4b...68d3b8`](./contracts/ethereum-1/0x552f4b850d4963d914e6b2c011b5fe475468d3b8/) | ⚠️ Unaudited |
| Price Oracle | operational_periphery | ethereum | n/a | [`0xb1d07f...39cad4`](./contracts/ethereum-1/0xb1d07f500393b768c64b9ceeba85c58dc639cad4/) | ⚠️ Unaudited |
| RETHPriceFeed | operational_periphery | ethereum | n/a | [`0x6c3774...898c56`](./contracts/ethereum-1/0x6c3774c30cb609e13ffdbae7c5ecd189b0898c56/) | ⚠️ Unaudited |
| RETHToBOLDExchange | unknown | ethereum | n/a | [`0x6aed7c...4fab76`](./contracts/ethereum-1/0x6aed7c8e57f905863caaab59fc10b5d95a4fab76/) | ⚠️ Unaudited |
| ScrvUsdOracle | operational_periphery | ethereum | n/a | [`0x5a0605...aa4ec9`](./contracts/ethereum-1/0x5a0605efb3a50adc9f81dd456812953655aa4ec9/) | ⚠️ Unaudited |
| SfrxUsdOracle | operational_periphery | ethereum | n/a | [`0x48ba7b...e5b433`](./contracts/ethereum-1/0x48ba7b711a8d5dadc6690de2e86533f70ee5b433/) | ⚠️ Unaudited |
| Sorted Troves | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b1096...a1e7d5`](./contracts/ethereum-1/0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5/); ethereum `0xff1ce6...afafb6` | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x446f35...4e18f0`](./contracts/ethereum-1/0x446f358e3a927cc68f342141d78aa2d1c54e18f0/); ethereum `0x545a7d...85f75e`; ethereum `0x83e5bd...675536`; ethereum `0x922faa...32ad5c`; ethereum `0xb57178...0ded97`; ethereum `0xd48dc7...d4ea87` | ⚠️ Unaudited |
| StafiDistributor | operational_periphery | ethereum | n/a | [`0x5db09e...6dba3d`](./contracts/ethereum-1/0x5db09e020d94f923408661f94704073dc86dba3d/) | ⚠️ Unaudited |
| StafiLightNode | unknown | ethereum | n/a | [`0x1c9066...d44f4b`](./contracts/ethereum-1/0x1c906685384df71e3fafa6f3b21bd884e9d44f4b/) | ⚠️ Unaudited |
| StafiNodeManager | governance | ethereum | n/a | [`0xd8575c...2307a8`](./contracts/ethereum-1/0xd8575c32bbc1ea9d33856a6de74be258712307a8/) | ⚠️ Unaudited |
| StafiSuperNode | unknown | ethereum | n/a | [`0x588e85...aa9ff1`](./contracts/ethereum-1/0x588e859cb38fecf2d56925c0512471ab47aa9ff1/) | ⚠️ Unaudited |
| StafiUserDeposit | unknown | ethereum | n/a | [`0xc12dfb...355058`](./contracts/ethereum-1/0xc12dfb80d80d564db9b180abf61a252ee6355058/) | ⚠️ Unaudited |
| StakeManager | governance | ethereum | unit-19019 | [`0x3aee3e...9f3899`](./contracts/ethereum-1/0x3aee3e96c9e340cbe0fffc5224db9e97949f3899/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x412330...c25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | ⚠️ Unaudited |
| StrategyAprOracle | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x0e40eb...561e65`](./contracts/ethereum-1/0x0e40eb56626cfd0f41ca7a72618209d958561e65/); ethereum `0x716ee5...10a899`; ethereum `0x8d26d5...bec807`; ethereum `0xe29963...fba79e`; ethereum `0xe9015a...f85786` | ⚠️ Unaudited |
| StrategyFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x73dfcc...3dba58`](./contracts/ethereum-1/0x73dfcc4fb90e6e252e5d41f6588534a8043dba58/); ethereum `0xbf7a38...c547d1` | ⚠️ Unaudited |
| StrategyFixedReportTrigger | core_logic | ethereum | n/a | [`0x600d6a...01007c`](./contracts/ethereum-1/0x600d6aebd8eacfcfbb8eedff139408200d01007c/) | ⚠️ Unaudited |
| StyBoldOracle | operational_periphery | ethereum | n/a | [`0xc1ed37...182d03`](./contracts/ethereum-1/0xc1ed3729cfcf9f93a7dbe1e4669bc67793182d03/) | ⚠️ Unaudited |
| SusdsOracle | operational_periphery | ethereum | n/a | [`0x9d09d5...082d10`](./contracts/ethereum-1/0x9d09d5175783f0caa56d6d1e7590c2b935082d10/) | ⚠️ Unaudited |
| TbtcFallbackOracle | operational_periphery | ethereum | n/a | [`0x193b7d...54aba5`](./contracts/ethereum-1/0x193b7da0f8036709774054dfd7539ca36654aba5/) | ⚠️ Unaudited |
| TbtcOracle | operational_periphery | ethereum | n/a | [`0x39fca0...a3a775`](./contracts/ethereum-1/0x39fca0f77ba22926e8e5ec5df68271eb49a3a775/) | ⚠️ Unaudited |
| tBTCToUSDafExchange | unknown | ethereum | n/a | [`0x1a173e...98134f`](./contracts/ethereum-1/0x1a173e7223dbd1e66bbe654a0b8c4c1ebd98134f/) | ⚠️ Unaudited |
| TokenLocker | token | ethereum | n/a | [`0xf119b5...329034`](./contracts/ethereum-1/0xf119b5aa93a7755b09952b3a88d04cdaf5329034/) | ⚠️ Unaudited |
| Trove Manager | governance | ethereum | n/a | 2 deployments: ethereum [`0x36e9ee...b41c1f`](./contracts/ethereum-1/0x36e9ee7a0ce154cc1e379a7c0231fa19c0b41c1f/); ethereum `0xc1296a...dabaec` | ⚠️ Unaudited |
| TroveManager | unknown | ethereum | n/a | 6 deployments: ethereum [`0x478e7c...7630b0`](./contracts/ethereum-1/0x478e7c27193aca052964c3306d193446027630b0/); ethereum `0x53ce82...33d505`; ethereum `0x7aff01...68220d`; ethereum `0x7bd47e...9320a3`; ethereum `0xf8a25a...f11718`; ethereum `0xfb17d0...b63bce` | ⚠️ Unaudited |
| USDaf Flash Zapper | adapter | ethereum | n/a | 6 deployments: ethereum [`0x0502db...91b072`](./contracts/ethereum-1/0x0502dbe106d80577b156b0679342a11dca91b072/); ethereum `0x07b152...aead67`; ethereum `0x1a3f5e...ca4baa`; ethereum `0x8b2754...6ae07f`; ethereum `0x982e60...8b6fe2`; ethereum `0xf97f41...c96c8c` | ⚠️ Unaudited |
| USDaf Leverage Zapper | adapter | ethereum | n/a | [`0x90318f...542ee4`](./contracts/ethereum-1/0x90318f8028da3a985e9d2f777369c961a8542ee4/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 10 deployments: ethereum [`0x188384...345919`](./contracts/ethereum-1/0x188384c7ec63da76a39ec1ec1c6cc7a2ed345919/); ethereum `0x3470a0...c2cbde`; ethereum `0x49c87b...0c9be0`; ethereum `0x693e74...964d93`; ethereum `0x78ebd6...0bfd99`; ethereum `0x82cbd5...e631b3`; ethereum `0x8828c6...fe0100`; ethereum `0x920f99...14aa30`; ethereum `0xd76b14...889bf2`; ethereum `0xec1f93...141352` | ⚠️ Unaudited |
| WbtcFallbackOracle | operational_periphery | ethereum | n/a | [`0x66871d...661b4b`](./contracts/ethereum-1/0x66871db0ca840ac3e9cb2dbbfcff8ec060661b4b/) | ⚠️ Unaudited |
| WbtcOracle | operational_periphery | ethereum | n/a | [`0x1919de...1b7205`](./contracts/ethereum-1/0x1919de21635276a80aa3384a852df8189e1b7205/) | ⚠️ Unaudited |
| WBTCToCRVUSDExchange | token | ethereum | n/a | [`0x5602eb...e58815`](./contracts/ethereum-1/0x5602eb937b25f783a4b7b522b7c0baf28be58815/) | ⚠️ Unaudited |
| WBTCToUSDCExchange | token | ethereum | n/a | [`0x6cd733...1063b4`](./contracts/ethereum-1/0x6cd733c283ef09a760e330acb7d8c7e9961063b4/) | ⚠️ Unaudited |
| WbtcZapper | adapter | ethereum | n/a | 2 deployments: ethereum [`0x2ae509...46ba65`](./contracts/ethereum-1/0x2ae50916b4467c681689069bb54e94fd0246ba65/); ethereum `0xf8853a...c2aa1c` | ⚠️ Unaudited |
| WETHPriceFeed | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x0daafd...c95b94`](./contracts/ethereum-1/0x0daafddcf74451caec724bcd2f0d7e4025c95b94/); ethereum `0x211346...f46911`; ethereum `0x629b6c...390e28`; ethereum `0x653df7...07f7c7`; ethereum `0x7f5753...49520b`; ethereum `0xf125c7...06cbb8` | ⚠️ Unaudited |
| WETHToBOLDExchange | token | ethereum | n/a | [`0x4c59ee...99caed`](./contracts/ethereum-1/0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed/) | ⚠️ Unaudited |
| WETHToCRVUSDExchange | token | ethereum | n/a | [`0xf00850...e3caac`](./contracts/ethereum-1/0xf00850a4384878c66c54fde0bdc29aa825e3caac/) | ⚠️ Unaudited |
| WrappedCbbtc | unknown | ethereum | n/a | [`0x7fd713...b27d15`](./contracts/ethereum-1/0x7fd713fe57fcd0a7636c152faba6bdc2d3b27d15/) | ⚠️ Unaudited |
| WrappedSpot | unknown | ethereum | n/a | [`0x253da8...1df194`](./contracts/ethereum-1/0x253da8f1f6cd0fb33aadc13999df9b124f1df194/) | ⚠️ Unaudited |
| WSTETHPriceFeed | operational_periphery | ethereum | n/a | [`0xa94a6c...09cef3`](./contracts/ethereum-1/0xa94a6cb1796a6404683786d3b56c3102a709cef3/) | ⚠️ Unaudited |
| WSTETHToBOLDExchange | unknown | ethereum | n/a | [`0xdfe9ac...c5ca9a`](./contracts/ethereum-1/0xdfe9ace42684879ee17620bcce218711f1c5ca9a/) | ⚠️ Unaudited |
| WSTETHToCRVUSDExchange | unknown | ethereum | n/a | [`0x63bf36...ee881f`](./contracts/ethereum-1/0x63bf3669a8784d279165a80ea877c74f92ee881f/) | ⚠️ Unaudited |
| Zapper | adapter | ethereum | n/a | [`0xe70990...d83c58`](./contracts/ethereum-1/0xe7099092533a3fb693bb123cd96b8e53b4d83c58/) | ⚠️ Unaudited |
| ZapperAsFuck | adapter | ethereum | n/a | 11 deployments: ethereum [`0x07011c...ca598a`](./contracts/ethereum-1/0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a/); ethereum `0x14300f...f90374`; ethereum `0x1f18af...f0bba4`; ethereum `0x1f4f32...cc2949`; ethereum `0x547d14...5d0920`; ethereum `0x54867d...33f010`; ethereum `0x58d1a6...78f961`; ethereum `0x9f6996...6642d2`; ethereum `0xb6e58f...b32dae`; ethereum `0xe1dde1...43d68d`; ethereum `0xff2736...a0e5ae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x2231e6...386cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25290c...d9eddf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad9a9...93353f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56372b...c26c2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73f972...45b580` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x934414...056d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa21c50...ea8d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0da55...f2b389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc30fd0...a950f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8ce0b...7e336c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf61a0...4daac0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda9726...91698d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf03039...51fb60` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x59a529...4cf8aa`](./contracts/ethereum-1/0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa/) | AsfToken | token | $1,096,728.36 | Verified native implementation with $1,096,728.36 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99b36e...468752`](./contracts/ethereum-1/0x99b36ed441cd2936ae3742c9cba62d261a468752/) | WrappedWbtc | token | $17,631.70 | Verified native implementation with $17,631.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ee6db...7c53ea`](./contracts/ethereum-1/0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea/) | TokenizedStrategy | core_logic | $10,053.16 | Verified native implementation with $10,053.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc5a28...8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | StafiSuperNodeFeePool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08eaaf...0c232d`](./contracts/ethereum-1/0x08eaafd8fbb12cf12d6765e80c5b0ff8490c232d/) | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ad1c3...82377c`](./contracts/ethereum-1/0x0ad1c302203f0fbb6ca34641bdfef0bf4182377c/) | AddressesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4feb6c...b04408`](./contracts/ethereum-1/0x4feb6c50a69d0cb29f77e307249c767607b04408/) | ASFOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e988d...c8f945`](./contracts/ethereum-1/0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3a370...c976c5`](./contracts/ethereum-1/0xa3a3702d81fd317fa1b8735227e29dc756c976c5/) | AuctionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2538cd...e4554e`](./contracts/ethereum-1/0x2538cd346429ea59902e02448bb7a7c098e4554e/) | BorrowerOperations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b74d0...bc3bb1`](./contracts/ethereum-1/0x4b74d043336678d2f62dae6595bc42dccabc3bb1/) | BTCPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1666ee...d9b1e5`](./contracts/ethereum-1/0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5/) | CbbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33d680...4d60fe`](./contracts/ethereum-1/0x33d68055cd54061991b2e98b9ab326ffce4d60fe/) | CollateralRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b36d8...0eeb35`](./contracts/ethereum-1/0x2b36d82bfb9ea09bbed084be34df942aad0eeb35/) | CrvUsdFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fe24f...fb632d`](./contracts/ethereum-1/0x7fe24f1a024d33506966cb7ca48bab8c65fb632d/) | dASF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b9a4b...d4b680`](./contracts/ethereum-1/0x5b9a4b5a377e2377f6f5873e95d9274caed4b680/) | dASF Redemptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d258...56f60e`](./contracts/ethereum-1/0x04d258d3ee00ef9840985afd373037d91c56f60e/) | Dutch Desk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x838a1f...4e865a`](./contracts/ethereum-1/0x838a1f38c361ffa1b23201640752149adb4e865a/) | HintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1771f4...f6673c`](./contracts/ethereum-1/0x1771f4de6836b10b59dd66990b0190985df6673c/) | InterestRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003aac...ee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/) | Multisig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3683a...fd7e80`](./contracts/ethereum-1/0xb3683a407bddddfb126cf06fb52d974a08fd7e80/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x746c23...898f62`](./contracts/ethereum-1/0x746c238e34a6dbfe1d35d50471467bd7bf898f62/) | OnLossDepositLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1d07f...39cad4`](./contracts/ethereum-1/0xb1d07f500393b768c64b9ceeba85c58dc639cad4/) | Price Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c3774...898c56`](./contracts/ethereum-1/0x6c3774c30cb609e13ffdbae7c5ecd189b0898c56/) | RETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6aed7c...4fab76`](./contracts/ethereum-1/0x6aed7c8e57f905863caaab59fc10b5d95a4fab76/) | RETHToBOLDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48ba7b...e5b433`](./contracts/ethereum-1/0x48ba7b711a8d5dadc6690de2e86533f70ee5b433/) | SfrxUsdOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b1096...a1e7d5`](./contracts/ethereum-1/0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5/) | Sorted Troves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x446f35...4e18f0`](./contracts/ethereum-1/0x446f358e3a927cc68f342141d78aa2d1c54e18f0/) | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8575c...2307a8`](./contracts/ethereum-1/0xd8575c32bbc1ea9d33856a6de74be258712307a8/) | StafiNodeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x412330...c25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e40eb...561e65`](./contracts/ethereum-1/0x0e40eb56626cfd0f41ca7a72618209d958561e65/) | StrategyAprOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73dfcc...3dba58`](./contracts/ethereum-1/0x73dfcc4fb90e6e252e5d41f6588534a8043dba58/) | StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x600d6a...01007c`](./contracts/ethereum-1/0x600d6aebd8eacfcfbb8eedff139408200d01007c/) | StrategyFixedReportTrigger | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1ed37...182d03`](./contracts/ethereum-1/0xc1ed3729cfcf9f93a7dbe1e4669bc67793182d03/) | StyBoldOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d09d5...082d10`](./contracts/ethereum-1/0x9d09d5175783f0caa56d6d1e7590c2b935082d10/) | SusdsOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x193b7d...54aba5`](./contracts/ethereum-1/0x193b7da0f8036709774054dfd7539ca36654aba5/) | TbtcFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a173e...98134f`](./contracts/ethereum-1/0x1a173e7223dbd1e66bbe654a0b8c4c1ebd98134f/) | tBTCToUSDafExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf119b5...329034`](./contracts/ethereum-1/0xf119b5aa93a7755b09952b3a88d04cdaf5329034/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36e9ee...b41c1f`](./contracts/ethereum-1/0x36e9ee7a0ce154cc1e379a7c0231fa19c0b41c1f/) | Trove Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x478e7c...7630b0`](./contracts/ethereum-1/0x478e7c27193aca052964c3306d193446027630b0/) | TroveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0502db...91b072`](./contracts/ethereum-1/0x0502dbe106d80577b156b0679342a11dca91b072/) | USDaf Flash Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90318f...542ee4`](./contracts/ethereum-1/0x90318f8028da3a985e9d2f777369c961a8542ee4/) | USDaf Leverage Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x188384...345919`](./contracts/ethereum-1/0x188384c7ec63da76a39ec1ec1c6cc7a2ed345919/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66871d...661b4b`](./contracts/ethereum-1/0x66871db0ca840ac3e9cb2dbbfcff8ec060661b4b/) | WbtcFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1919de...1b7205`](./contracts/ethereum-1/0x1919de21635276a80aa3384a852df8189e1b7205/) | WbtcOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cd733...1063b4`](./contracts/ethereum-1/0x6cd733c283ef09a760e330acb7d8c7e9961063b4/) | WBTCToUSDCExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ae509...46ba65`](./contracts/ethereum-1/0x2ae50916b4467c681689069bb54e94fd0246ba65/) | WbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0daafd...c95b94`](./contracts/ethereum-1/0x0daafddcf74451caec724bcd2f0d7e4025c95b94/) | WETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c59ee...99caed`](./contracts/ethereum-1/0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed/) | WETHToBOLDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf00850...e3caac`](./contracts/ethereum-1/0xf00850a4384878c66c54fde0bdc29aa825e3caac/) | WETHToCRVUSDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x253da8...1df194`](./contracts/ethereum-1/0x253da8f1f6cd0fb33aadc13999df9b124f1df194/) | WrappedSpot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa94a6c...09cef3`](./contracts/ethereum-1/0xa94a6cb1796a6404683786d3b56c3102a709cef3/) | WSTETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe9ac...c5ca9a`](./contracts/ethereum-1/0xdfe9ace42684879ee17620bcce218711f1c5ca9a/) | WSTETHToBOLDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63bf36...ee881f`](./contracts/ethereum-1/0x63bf3669a8784d279165a80ea877c74f92ee881f/) | WSTETHToCRVUSDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe70990...d83c58`](./contracts/ethereum-1/0xe7099092533a3fb693bb123cd96b8e53b4d83c58/) | Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07011c...ca598a`](./contracts/ethereum-1/0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a/) | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 59 |
| upstream | 5 |
| standard_library | 3 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
