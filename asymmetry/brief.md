# Agentic Audit Brief: Asymmetry

⚠️ Lifecycle status: DECLINING - TVL dropped 61.8% over 90 days

## Project Overview

- Project: Asymmetry (`asymmetry`)
- Website: [https://asymmetry.fi](https://asymmetry.fi)
- Lifecycle: declining (Tier 0, 93.3% below peak)
- Generated: 2026-07-04T14:53:04.212Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: base, ethereum
- Contract surface: 493 unique implementations (610 raw deployments)
- DeFi Llama TVL: $2,108,098.00
- On-chain TVL (included contracts): $27,642,835.48
- TVL by chain: Ethereum $25,252,221.65 | Base $2,390,613.83

## Project Description

Indexes. Structurally: 72 project-authored contract(s) across 2 chain(s); 8 ERC20 tokens, 11 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 9 common project-authored base contract(s) (basezapper, addremovemanagers, leftoverssweep). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 611; live-surface contracts included: 610 (215 live, 395 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 32/83 (38.6%)
- Deployed-live implementations: 102 of 493 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 44/102
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 391
- Unique implementations: 493
- Raw deployments: 610
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): $24,695,549.53
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 7 aging, 7 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 44 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 27.7% (Certora, Code4rena, Spearbit)
- Note: This protocol is classified as [declining]. ASD of $24,695,549.53 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 23 | 22.5% | 2024-10 |
| Zellic | Tier 2 | 21 | 20.6% | 2023-07 |
| unknown | Tier 2 | 12 | 11.8% | n/a |
| GalloDaSballo | Tier 2 | 11 | 10.8% | n/a |
| Spearbit | Tier 1 | 10 | 9.8% | n/a |
| romeroadrian | Tier 2 | 8 | 7.8% | 2024-06 |
| Coinspect | Tier 2 | 7 | 6.9% | 2024-12 |
| Dedaub | Tier 2 | 6 | 5.9% | 2024-08 |
| Certora | Tier 1 | 4 | 3.9% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RETHToken | token | ethereum | n/a | [`0x9559aa...9a3593`](./contracts/ethereum-1/0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593/) | ✅ Audited |
| ActivePool | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x08eaaf...0c232d`](./contracts/ethereum-1/0x08eaafd8fbb12cf12d6765e80c5b0ff8490c232d/); ethereum `0x20f295...a93774`; ethereum `0x244c42...7d046e`; ethereum `0xb00d1d...9a7f44`; ethereum `0xb87e1e...77fb63`; ethereum `0xf507e2...8fc48a` | ✅ Audited |
| VotiumStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x000000...18a0bf`](./contracts/ethereum-1/0x00000069abbb0b1ad6975bcf753eee15d318a0bf/); ethereum `0xb628b1...84e8d3` | ✅ Audited |
| AddressesRegistry | registry | ethereum | n/a | 6 deployments: ethereum [`0x0ad1c3...82377c`](./contracts/ethereum-1/0x0ad1c302203f0fbb6ca34641bdfef0bf4182377c/); ethereum `0x0c7b6c...719c82`; ethereum `0x2c5a85...0ead6d`; ethereum `0x330a0f...6dc6d1`; ethereum `0x3414bd...8fa1ce`; ethereum `0xbd9f75...85e999` | ✅ Audited |
| AfCvx | unknown | ethereum | n/a | 2 deployments: ethereum [`0x56664f...e1f799`](./contracts/ethereum-1/0x56664ffccff6bb282cca96808af03d9042e1f799/); ethereum `0x8668a1...5257cf` | ✅ Audited |
| AfEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000...af7a11`](./contracts/ethereum-1/0x0000000016e6cb3038203c1129c8b4aee7af7a11/); ethereum `0xdf124a...c832c6` | ✅ Audited |
| AfEth | unknown | ethereum | n/a | 4 deployments: ethereum [`0x5281cc...c7288f`](./contracts/ethereum-1/0x5281cca5a757b1c8487be7e3368c62db32c7288f/); ethereum `0x8896ef...91a61c`; ethereum `0x90a607...56778a`; ethereum `0xae4131...f63256` | ✅ Audited |
| AfEthRelayer | unknown | ethereum | n/a | [`0x7df87c...c288ad`](./contracts/ethereum-1/0x7df87c1f23192803167106b76e730227e1c288ad/) | ✅ Audited |
| Ankr | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf4a173...2ea981`](./contracts/ethereum-1/0xf4a1735505188daf0872312dd1a6182d342ea981/); ethereum `0xfa2d4c...d7082f` | ✅ Audited |
| BorrowerOperations | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x2538cd...e4554e`](./contracts/ethereum-1/0x2538cd346429ea59902e02448bb7a7c098e4554e/); ethereum `0x336d9c...69b41d`; ethereum `0x57bd20...b48469`; ethereum `0x664507...71f411`; ethereum `0x9e6010...c13830`; ethereum `0xda9af1...2556e0` | ✅ Audited |
| BTCPriceFeed | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4b74d0...bc3bb1`](./contracts/ethereum-1/0x4b74d043336678d2f62dae6595bc42dccabc3bb1/); ethereum `0xeaf3b3...745094` | ✅ Audited |
| CollateralRegistry | registry | ethereum | n/a | 5 deployments: ethereum [`0x33d680...4d60fe`](./contracts/ethereum-1/0x33d68055cd54061991b2e98b9ab326ffce4d60fe/); ethereum `0x447fd8...caeff4`; ethereum `0xa70d14...096650`; ethereum `0xcff0dc...67d791`; ethereum `0xd5d9c0...366a35` | ✅ Audited |
| HintHelpers | periphery | ethereum | n/a | [`0x838a1f...4e865a`](./contracts/ethereum-1/0x838a1f38c361ffa1b23201640752149adb4e865a/) | ✅ Audited |
| InterestRouter | adapter | ethereum | n/a | [`0x1771f4...f6673c`](./contracts/ethereum-1/0x1771f4de6836b10b59dd66990b0190985df6673c/) | ✅ Audited |
| MultiTroveGetter | unknown | ethereum | n/a | [`0xb3683a...fd7e80`](./contracts/ethereum-1/0xb3683a407bddddfb126cf06fb52d974a08fd7e80/) | ✅ Audited |
| PirexMigrator | periphery | ethereum | n/a | [`0x552f4b...68d3b8`](./contracts/ethereum-1/0x552f4b850d4963d914e6b2c011b5fe475468d3b8/) | ✅ Audited |
| Reth | token | ethereum | n/a | 2 deployments: ethereum [`0x228f6a...c328d3`](./contracts/ethereum-1/0x228f6ae1c458929427253e14879711d303c328d3/); ethereum `0xd8ed29...8c4908` | ✅ Audited |
| Reth | token | ethereum | n/a | 2 deployments: ethereum [`0x50ea7b...c44cc4`](./contracts/ethereum-1/0x50ea7bca3088b04ff0cb69fe72d70d9daec44cc4/); ethereum `0xbcfed6...8a115e` | ✅ Audited |
| Reth | token | ethereum | n/a | 2 deployments: ethereum [`0x7b6633...1f5ca3`](./contracts/ethereum-1/0x7b6633c0cd81dc338688a528c0a3f346561f5ca3/); ethereum `0xb3e64c...905b8b` | ✅ Audited |
| Reth | token | ethereum | n/a | 2 deployments: ethereum [`0x8d5dd2...d890d0`](./contracts/ethereum-1/0x8d5dd29592bf3bd5dc98eb6c0e895fea4bd890d0/); ethereum `0xa5ad76...78c32b` | ✅ Audited |
| RETHPriceFeed | operational_periphery | ethereum | n/a | [`0x6c3774...898c56`](./contracts/ethereum-1/0x6c3774c30cb609e13ffdbae7c5ecd189b0898c56/) | ✅ Audited |
| SafEth | unknown | ethereum | n/a | 4 deployments: ethereum [`0x013c06...0bbcfb`](./contracts/ethereum-1/0x013c0652f5d700c875d45f1608e5089ed80bbcfb/); ethereum `0x28baa2...515c41`; ethereum `0x7c8fb4...6fd23e`; ethereum `0xce2b86...8fd03c` | ✅ Audited |
| SafEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x591c4a...1fe970`](./contracts/ethereum-1/0x591c4abf20f61a8b0ee06a5a2d2d2337241fe970/); ethereum `0x6732ef...c4f3e5` | ✅ Audited |
| SafEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0xba9d68...04c0df`](./contracts/ethereum-1/0xba9d683854209fa0f57ae0514fe281653f04c0df/); ethereum `0xe7ebef...7a38ac` | ✅ Audited |
| SafEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbbf865...26931e`](./contracts/ethereum-1/0xbbf865043beed9b73bcdf15b6c5f278e5626931e/); ethereum `0xc57319...d4478d` | ✅ Audited |
| SfrxEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0e14dc...650e5f`](./contracts/ethereum-1/0x0e14dcfcf4c7eab1d7031835a38db1828b650e5f/); ethereum `0xbc4718...1cf86a` | ✅ Audited |
| SfrxEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ed84a...5bba37`](./contracts/ethereum-1/0x1ed84a676f3ba626389cb131e7c1bc32935bba37/); ethereum `0x909210...2a60b6` | ✅ Audited |
| SfrxEth | unknown | ethereum | n/a | [`0x217e24...d199d8`](./contracts/ethereum-1/0x217e2487fd4323aa957730ebd24ce8f400d199d8/) | ✅ Audited |
| SfrxEth | unknown | ethereum | n/a | 3 deployments: ethereum [`0x27137a...113b11`](./contracts/ethereum-1/0x27137a49472fb741b671770fcfcc918489113b11/); ethereum `0x36ce17...f6b20a`; ethereum `0x636f16...4e49e8` | ✅ Audited |
| SfrxEth | unknown | ethereum | n/a | 4 deployments: ethereum [`0x410eda...8797cf`](./contracts/ethereum-1/0x410edaf016482c8d3a866f778c24bd872a8797cf/); ethereum `0x4fb6c0...884fe6`; ethereum `0xa2f35a...7f920c`; ethereum `0xdf7205...c0c0cd` | ✅ Audited |
| StabilityPool | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x446f35...4e18f0`](./contracts/ethereum-1/0x446f358e3a927cc68f342141d78aa2d1c54e18f0/); ethereum `0x545a7d...85f75e`; ethereum `0x83e5bd...675536`; ethereum `0x922faa...32ad5c`; ethereum `0xb57178...0ded97`; ethereum `0xd48dc7...d4ea87` | ✅ Audited |
| Stafi | unknown | ethereum | n/a | 2 deployments: ethereum [`0xad0e8e...8797cc`](./contracts/ethereum-1/0xad0e8edbdabdc4dd204b49f73511c1a13a8797cc/); ethereum `0xc9bbcc...4822da` | ✅ Audited |
| Swell | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf5ccaf...df3d09`](./contracts/ethereum-1/0xf5ccaf2dbed6c7ae341df42a9a74e057e9df3d09/); ethereum `0xfb8725...8371b1` | ✅ Audited |
| TroveManager | governance | ethereum | n/a | 6 deployments: ethereum [`0x478e7c...7630b0`](./contracts/ethereum-1/0x478e7c27193aca052964c3306d193446027630b0/); ethereum `0x53ce82...33d505`; ethereum `0x7aff01...68220d`; ethereum `0x7bd47e...9320a3`; ethereum `0xf8a25a...f11718`; ethereum `0xfb17d0...b63bce` | ✅ Audited |
| VotiumStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x12fc2b...b92aad`](./contracts/ethereum-1/0x12fc2bf0edea2437cd4fe17ec2b65dc45eb92aad/); ethereum `0x5aed12...3f8cd4` | ✅ Audited |
| VotiumStrategy | core_logic | ethereum | n/a | [`0x8794f7...a1fae4`](./contracts/ethereum-1/0x8794f7a0c53cf536ff50a9d7f736cd402fa1fae4/) | ✅ Audited |
| WETHPriceFeed | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x0daafd...c95b94`](./contracts/ethereum-1/0x0daafddcf74451caec724bcd2f0d7e4025c95b94/); ethereum `0x211346...f46911`; ethereum `0x629b6c...390e28`; ethereum `0x653df7...07f7c7`; ethereum `0x7f5753...49520b`; ethereum `0xf125c7...06cbb8` | ✅ Audited |
| WstEth | token | ethereum | n/a | 2 deployments: ethereum [`0x1533ed...9b306f`](./contracts/ethereum-1/0x1533edbe274aa1b9fb5db2652d6d143e939b306f/); ethereum `0xf430e4...92c915` | ✅ Audited |
| WstEth | token | ethereum | n/a | [`0x91d410...96ba17`](./contracts/ethereum-1/0x91d4109e2058c229bb96509e0254ed50ad96ba17/) | ✅ Audited |
| WstEth | token | ethereum | n/a | 2 deployments: ethereum [`0x972a53...f23fad`](./contracts/ethereum-1/0x972a53e3a9114f61b98921fb5b86c517e8f23fad/); ethereum `0xc57d67...d76208` | ✅ Audited |
| WstEth | token | ethereum | n/a | 2 deployments: ethereum [`0xc56aef...e75a12`](./contracts/ethereum-1/0xc56aef0e7dbf2868e4bfe9df184b2bbf1ae75a12/); ethereum `0xcac2c9...86ae74` | ✅ Audited |
| WstEth | token | ethereum | n/a | 2 deployments: ethereum [`0xda8a4d...8458a9`](./contracts/ethereum-1/0xda8a4d1cbdd5b78a89ef889e9fea082a138458a9/); ethereum `0xffd7da...6b9ca4` | ✅ Audited |
| WSTETHPriceFeed | operational_periphery | ethereum | n/a | [`0xa94a6c...09cef3`](./contracts/ethereum-1/0xa94a6cb1796a6404683786d3b56c3102a709cef3/) | ✅ Audited |
| Zapper | adapter | ethereum | n/a | [`0xe70990...d83c58`](./contracts/ethereum-1/0xe7099092533a3fb693bb123cd96b8e53b4d83c58/) | ✅ Audited |

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| swETH | token | ethereum | n/a | [`0xf951e3...7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0xaad3b9...35ec65`](./contracts/base-8453/0xaad3b9047dca4d5565471a3cce2767c56535ec65/) | ⚠️ Unaudited |
| AsfToken | token | ethereum | n/a | [`0x59a529...4cf8aa`](./contracts/ethereum-1/0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa/) | ⚠️ Unaudited |
| WrappedWbtc | token | ethereum | n/a | 3 deployments: ethereum [`0x99b36e...468752`](./contracts/ethereum-1/0x99b36ed441cd2936ae3742c9cba62d261a468752/); ethereum `0xe065bc...267c47`; ethereum `0xf53bb9...b58324` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x1ee6db...7c53ea`](./contracts/ethereum-1/0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea/); ethereum `0x2637f3...b970ef`; ethereum `0x2ffff7...51ab9e`; ethereum `0x654973...19f912`; ethereum `0x69671a...3c7665`; ethereum `0x6dec37...7c4616` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | [`0x0abd93...519e94`](./contracts/ethereum-1/0x0abd93da8387b5ef0511a2859d85d84fe4519e94/) | ⚠️ Unaudited |
| StafiSuperNodeFeePool | core_logic | ethereum | n/a | [`0xdc5a28...8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | n/a | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| ASFOFTAdapter | adapter | ethereum | n/a | [`0x4feb6c...b04408`](./contracts/ethereum-1/0x4feb6c50a69d0cb29f77e307249c767607b04408/) | ⚠️ Unaudited |
| AsfToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17969a...14600a`](./contracts/ethereum-1/0x17969afc774ec28802f1316cd4474c537114600a/); ethereum `0x876f12...29e7f7` | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | [`0x6e988d...c8f945`](./contracts/ethereum-1/0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945/) | ⚠️ Unaudited |
| AuctionFactory | registry | ethereum | n/a | [`0xa3a370...c976c5`](./contracts/ethereum-1/0xa3a3702d81fd317fa1b8735227e29dc756c976c5/) | ⚠️ Unaudited |
| CbbtcZapper | adapter | ethereum | n/a | [`0x1666ee...d9b1e5`](./contracts/ethereum-1/0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5/) | ⚠️ Unaudited |
| CrvUsdFallbackOracle | operational_periphery | ethereum | n/a | [`0x2b36d8...0eeb35`](./contracts/ethereum-1/0x2b36d82bfb9ea09bbed084be34df942aad0eeb35/) | ⚠️ Unaudited |
| dASF | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7fe24f...fb632d`](./contracts/ethereum-1/0x7fe24f1a024d33506966cb7ca48bab8c65fb632d/); ethereum `0x9e1eda...241d97`; ethereum `0xf94189...10dffa` | ⚠️ Unaudited |
| dASF Redemptions | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5b9a4b...d4b680`](./contracts/ethereum-1/0x5b9a4b5a377e2377f6f5873e95d9274caed4b680/); ethereum `0x8f1477...98dc28`; ethereum `0xdc59d2...afdd27` | ⚠️ Unaudited |
| Dutch Desk | unknown | ethereum | n/a | [`0x04d258...56f60e`](./contracts/ethereum-1/0x04d258d3ee00ef9840985afd373037d91c56f60e/) | ⚠️ Unaudited |
| Multisig | governance | ethereum | n/a | 2 deployments: ethereum [`0x003aac...ee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/); ethereum `0x6aacff...999aa6` | ⚠️ Unaudited |
| OnLossDepositLimit | unknown | ethereum | n/a | [`0x746c23...898f62`](./contracts/ethereum-1/0x746c238e34a6dbfe1d35d50471467bd7bf898f62/) | ⚠️ Unaudited |
| Price Oracle | operational_periphery | ethereum | n/a | [`0xb1d07f...39cad4`](./contracts/ethereum-1/0xb1d07f500393b768c64b9ceeba85c58dc639cad4/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 6 deployments: ethereum [`0x12a14d...878d40`](./contracts/ethereum-1/0x12a14d3e78a2b0368ea784e04457af2bb6878d40/); ethereum `0x2b408d...66809e`; ethereum `0x3777c5...d262cb`; ethereum `0xa30e67...ad1ed3`; ethereum `0xc6798b...8a6c11`; ethereum `0xdf9f1f...88aeac` | ⚠️ Unaudited |
| RETHToBOLDExchange | unknown | ethereum | n/a | [`0x6aed7c...4fab76`](./contracts/ethereum-1/0x6aed7c8e57f905863caaab59fc10b5d95a4fab76/) | ⚠️ Unaudited |
| ScrvUsdOracle | operational_periphery | ethereum | n/a | [`0x5a0605...aa4ec9`](./contracts/ethereum-1/0x5a0605efb3a50adc9f81dd456812953655aa4ec9/) | ⚠️ Unaudited |
| SfrxUsdOracle | operational_periphery | ethereum | n/a | [`0x48ba7b...e5b433`](./contracts/ethereum-1/0x48ba7b711a8d5dadc6690de2e86533f70ee5b433/) | ⚠️ Unaudited |
| Sorted Troves | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b1096...a1e7d5`](./contracts/ethereum-1/0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5/); ethereum `0xff1ce6...afafb6` | ⚠️ Unaudited |
| StafiDistributor | operational_periphery | ethereum | n/a | [`0x5db09e...6dba3d`](./contracts/ethereum-1/0x5db09e020d94f923408661f94704073dc86dba3d/) | ⚠️ Unaudited |
| StafiLightNode | unknown | ethereum | n/a | [`0x1c9066...d44f4b`](./contracts/ethereum-1/0x1c906685384df71e3fafa6f3b21bd884e9d44f4b/) | ⚠️ Unaudited |
| StafiNodeManager | governance | ethereum | n/a | [`0xd8575c...2307a8`](./contracts/ethereum-1/0xd8575c32bbc1ea9d33856a6de74be258712307a8/) | ⚠️ Unaudited |
| StafiSuperNode | unknown | ethereum | n/a | [`0x588e85...aa9ff1`](./contracts/ethereum-1/0x588e859cb38fecf2d56925c0512471ab47aa9ff1/) | ⚠️ Unaudited |
| StafiUserDeposit | unknown | ethereum | n/a | [`0xc12dfb...355058`](./contracts/ethereum-1/0xc12dfb80d80d564db9b180abf61a252ee6355058/) | ⚠️ Unaudited |
| StakeManager | governance | ethereum | n/a | [`0x3aee3e...9f3899`](./contracts/ethereum-1/0x3aee3e96c9e340cbe0fffc5224db9e97949f3899/) | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0x5f10b1...a83590`](./contracts/ethereum-1/0x5f10b16f0959aac2e33bedc9b0a4229bb9a83590/); ethereum `0xb5d336...ab8d4b` | ⚠️ Unaudited |
| Trove Manager | governance | ethereum | n/a | 2 deployments: ethereum [`0x36e9ee...b41c1f`](./contracts/ethereum-1/0x36e9ee7a0ce154cc1e379a7c0231fa19c0b41c1f/); ethereum `0xc1296a...dabaec` | ⚠️ Unaudited |
| USDaf Flash Zapper | adapter | ethereum | n/a | 6 deployments: ethereum [`0x0502db...91b072`](./contracts/ethereum-1/0x0502dbe106d80577b156b0679342a11dca91b072/); ethereum `0x07b152...aead67`; ethereum `0x1a3f5e...ca4baa`; ethereum `0x8b2754...6ae07f`; ethereum `0x982e60...8b6fe2`; ethereum `0xf97f41...c96c8c` | ⚠️ Unaudited |
| USDaf Leverage Zapper | adapter | ethereum | n/a | [`0x90318f...542ee4`](./contracts/ethereum-1/0x90318f8028da3a985e9d2f777369c961a8542ee4/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 10 deployments: ethereum [`0x188384...345919`](./contracts/ethereum-1/0x188384c7ec63da76a39ec1ec1c6cc7a2ed345919/); ethereum `0x3470a0...c2cbde`; ethereum `0x49c87b...0c9be0`; ethereum `0x693e74...964d93`; ethereum `0x78ebd6...0bfd99`; ethereum `0x82cbd5...e631b3`; ethereum `0x8828c6...fe0100`; ethereum `0x920f99...14aa30`; ethereum `0xd76b14...889bf2`; ethereum `0xec1f93...141352` | ⚠️ Unaudited |
| WbtcFallbackOracle | operational_periphery | ethereum | n/a | [`0x66871d...661b4b`](./contracts/ethereum-1/0x66871db0ca840ac3e9cb2dbbfcff8ec060661b4b/) | ⚠️ Unaudited |
| WbtcOracle | operational_periphery | ethereum | n/a | [`0x1919de...1b7205`](./contracts/ethereum-1/0x1919de21635276a80aa3384a852df8189e1b7205/) | ⚠️ Unaudited |
| WBTCToCRVUSDExchange | token | ethereum | n/a | [`0x5602eb...e58815`](./contracts/ethereum-1/0x5602eb937b25f783a4b7b522b7c0baf28be58815/) | ⚠️ Unaudited |
| WBTCToUSDCExchange | token | ethereum | n/a | [`0x6cd733...1063b4`](./contracts/ethereum-1/0x6cd733c283ef09a760e330acb7d8c7e9961063b4/) | ⚠️ Unaudited |
| WbtcZapper | adapter | ethereum | n/a | 2 deployments: ethereum [`0x2ae509...46ba65`](./contracts/ethereum-1/0x2ae50916b4467c681689069bb54e94fd0246ba65/); ethereum `0xf8853a...c2aa1c` | ⚠️ Unaudited |
| WETHToBOLDExchange | token | ethereum | n/a | [`0x4c59ee...99caed`](./contracts/ethereum-1/0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed/) | ⚠️ Unaudited |
| WETHToCRVUSDExchange | token | ethereum | n/a | [`0xf00850...e3caac`](./contracts/ethereum-1/0xf00850a4384878c66c54fde0bdc29aa825e3caac/) | ⚠️ Unaudited |
| WrappedCbbtc | unknown | ethereum | n/a | [`0x7fd713...b27d15`](./contracts/ethereum-1/0x7fd713fe57fcd0a7636c152faba6bdc2d3b27d15/) | ⚠️ Unaudited |
| WrappedSpot | unknown | ethereum | n/a | [`0x253da8...1df194`](./contracts/ethereum-1/0x253da8f1f6cd0fb33aadc13999df9b124f1df194/) | ⚠️ Unaudited |
| WSTETHToBOLDExchange | unknown | ethereum | n/a | [`0xdfe9ac...c5ca9a`](./contracts/ethereum-1/0xdfe9ace42684879ee17620bcce218711f1c5ca9a/) | ⚠️ Unaudited |
| WSTETHToCRVUSDExchange | unknown | ethereum | n/a | [`0x63bf36...ee881f`](./contracts/ethereum-1/0x63bf3669a8784d279165a80ea877c74f92ee881f/) | ⚠️ Unaudited |
| ZapperAsFuck | adapter | ethereum | n/a | 11 deployments: ethereum [`0x07011c...ca598a`](./contracts/ethereum-1/0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a/); ethereum `0x14300f...f90374`; ethereum `0x1f18af...f0bba4`; ethereum `0x1f4f32...cc2949`; ethereum `0x547d14...5d0920`; ethereum `0x54867d...33f010`; ethereum `0x58d1a6...78f961`; ethereum `0x9f6996...6642d2`; ethereum `0xb6e58f...b32dae`; ethereum `0xe1dde1...43d68d`; ethereum `0xff2736...a0e5ae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (391)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x014b68...ceed90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01b6a9...58d055` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0310a0...ea4669` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x039f03...bae050` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x041d53...6a545d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x071bee...c0cfa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0808bd...4b2419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08e16c...8680e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08f386...054402` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0aed01...d26845` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b9655...f20bac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cce6c...e116e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d8441...4ac6e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e493f...d25bc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f7eb9...a8ec6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x108d8d...ac488c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10b940...132809` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1130ac...255a8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11830f...1c95fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1261a8...cba6e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x133bfe...20f77c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x136dac...eef5a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13e709...89c964` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13fa9c...edf131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x140c32...166d37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x156e03...0b9eda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16aa5f...e4451c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16b811...9837dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17207f...e93dd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18d207...692db3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19a832...65f0b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a5474...2dc3f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c9890...fbed5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d13a5...16c27f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d27f8...fba54a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d775c...260e34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e3231...1d131e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ef013...137801` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f8ce7...8f804a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f9a16...f5794c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20239a...79c3d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x204233...cacd92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20e363...4709df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2231e6...386cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x234134...4eb174` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x235710...8593d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2421d3...f26679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24bf59...06765c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24c62e...b17ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25290c...d9eddf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25eafe...eb7843` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2632d6...a52276` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2735aa...3eefb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27ae0b...3e336f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d64d...f174cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x299196...9250c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29a1e4...8f6e8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29f525...c9c1d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2aff30...b80561` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b3825...800e9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d598c...09c705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2efd16...6dcacf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f7d25...dcbd2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f8b4c...385574` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fe5e0...3dec84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x308a2f...b72c85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31b598...327f5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31fc48...d1bb8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x322407...c52409` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x323e6b...9a8179` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3249b3...c7836e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3314e9...7fc7a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3387be...c7eebb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x342702...fa0caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x345c63...cb6499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35dad8...971ce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36193d...1236d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x365f90...e000b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36e01f...89aa87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37b209...c86259` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37c47d...f83004` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38927d...561752` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39d2ba...42b9b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3850...18ea16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad9a9...93353f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ae636...581a3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b0567...cd8147` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b44ab...e37a30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c42b5...6c84fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c6897...3fa421` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ca31b...b44b0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d40f9...c1f1ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e1435...74f7b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fabb1...d18a1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4065a6...136985` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x416bb5...b6b4b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4219a2...278869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x430cf6...bb3f28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x439cd7...9388a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4486c9...ff75c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44da62...a16587` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x452eb8...d96007` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x455666...26d902` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x460562...cc88f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x473d3f...4f80f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47d122...1694f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x483df4...0ea3d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x489d51...c5d653` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48b1b0...3816cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4995a3...983c0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b3eb2...9481cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d3499...aaba49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d3c3b...bab094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e2640...3e4269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f9fe2...492fb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fc2cb...941bf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fd35a...62d572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50db2c...9496a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50ec46...1b99ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50f5cd...b4521f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x536d6e...13c92b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x548070...624ff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54896f...d39fc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54dd13...bf150b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x555f3f...060b3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55f312...60df1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56372b...c26c2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56945f...3b12d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56d63b...c0bb8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57816b...e0331d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a2ecb...cc689b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5af175...8490ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b601a...804b78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5bdee7...412908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5be73b...55b604` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c1fa7...ac64ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c6def...bd43bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c93f8...d4dc64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d5dcb...1d177c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d62fd...77107d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d64c3...28ab25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dd187...b09aa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e1df4...d924fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f466c...8c8043` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f5fb8...ef8ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f72c3...892209` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fe520...116979` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x612127...a6a8a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x625b7f...d357be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62c2c3...7d4475` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x630e78...42d460` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63f01b...c5102b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6501bd...a57113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x655603...219665` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65799d...7ca1ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6676ba...3f5cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6780c7...a4ddba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x681c63...ef526d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6845e8...e7d644` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68f434...3fc592` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6967df...02dc1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69bcfa...46d355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b284e...360e81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b3884...9359a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c2f7b...02e8b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d8cfe...a2418b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ebb9d...49307e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ecf29...cb331d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fb2aa...22df45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71d335...fd086c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71ff3c...552891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x724371...482e29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73822d...de957b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73f972...45b580` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x747176...0c1fa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d159...ec7572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x774974...deb10b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779060...a6f7ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77e492...b66380` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a7f1c...b14409` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7acd9b...e6420b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b86a8...487f14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bca4c...e56ce5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf88f...357988` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d8627...cff9b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e6900...458586` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e901c...0a19f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f0d75...d8329c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f3232...72d568` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f5cf9...ee214f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fcd77...7a2783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x806b29...c882c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x809501...2d39f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8109a8...afb7c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x815594...a0b652` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x818dd8...eb9d31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8320c2...71f5be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8387e7...ad8fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83c20d...b5e4b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83e800...ce94d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x840abd...31cac4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f899...92cbc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85449d...057cd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86d14d...e81506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88c41d...10d10e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x895479...eab819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89a65d...79e03a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89ce31...b35ca5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89d8d5...a542c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aacce...a2786e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ae164...6c6c86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bee58...82966b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c5b58...3ceaa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dc802...7eda3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e5e15...6caa5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fd057...01f89d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9007c7...eca68a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x901ea6...4bfb4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90695d...b6273f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x909554...928f67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90e5e4...8b69ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x911858...62f27b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91630f...fddf9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9181b9...7a9bb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91a30a...5fc0ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9305a1...dd2e7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x934414...056d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94d67c...e7b91b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94f931...2f3540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x951530...2df669` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95480d...8fe2fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95d720...9e81fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9606c2...a90898` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x963a41...e7a25e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97f775...1e70b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bc63...f2df4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b004d...ea0c6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d4ceb...420376` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9df5e7...ba8bdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e425b...719d48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e6906...02ed8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa100e8...87d298` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa16ba3...96d611` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa179a4...834761` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa202c7...7ebcef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa21c50...ea8d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2796e...cfe3ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2b2e0...a1e666` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2f1d8...660852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa38f7a...d5ceea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3a83d...55c563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa42a10...9fa7ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6862c...18e8d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71021...86426e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7bada...018a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8076d...e2aaba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa85064...2b524c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaaabc0...d5d17f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac42fd...fc9ab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf12bb...f66b4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf2636...a9aa19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf99e6...f2953f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafcf0e...cef33d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb00aad...788f87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0da55...f2b389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1525d...067170` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1f612...fdcff5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3d111...c759e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb44f39...2ab40f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4c6f0...ca7c76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb510d2...eaa7fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb57e0a...022ce9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb63d2e...bc3076` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6d67b...ad178e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7d29c...d8404d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb804d7...065711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb841ef...23b910` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb91297...078930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9b7db...7eb9c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9f57b...0ea871` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba22bc...2ea7f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba230f...a0c17a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbaf4cb...8b588c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc23c3...b4c1fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc362f...a8c55b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe4a0c...6e2a6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe87b9...8248b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe8b20...e7db05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbebfd2...4b56e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf1035...e1d186` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1d483...919662` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2fdf0...1b4402` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc30fd0...a950f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc43880...a26a85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc470a1...c14dc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc49427...4f4037` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4e2bc...b8a8cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc51203...c4c937` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc54b98...1166e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc59ea6...c4fc96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc59ff0...7cea8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc693c9...2f0f98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc73655...ed7472` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7fb90...b29840` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8ce0b...7e336c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8d81c...335c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9e039...1e795d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcadc2a...cc20db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcca908...335319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd0bad...aed871` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcda8cc...f7b387` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce1ca2...c0517e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf61a0...4daac0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcffeb2...a9c8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd06b5b...d01312` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0f774...739ab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1da8a...b51f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1e96d...a29d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38b16...b0c5c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3b7bc...2af240` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd46fca...e348b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd48523...187bac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd532d1...bae7a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd69fa4...3f783a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7d3cd...0cd587` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd85a46...3dfa52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8737c...1bad41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8828e...9e0b1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9c5a9...926d53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda9726...91698d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbbd33...ae5dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbd025...7815be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc4ad8...012832` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcb363...450eb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd427e...9abb7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd737d...000092` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddc5f0...f82212` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddfb32...f4fbb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdecafb...717d55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf2a04...b61421` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe10df3...e64c0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe18547...8a80f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe18dec...238fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe247ab...a16a93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe28516...7cdc34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe43919...da4b1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4534d...64d175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe55e68...02d8d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7f280...25ea98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe991a0...2e7b3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9b4fc...7a1021` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9c32e...475557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea7de9...d92c5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeaec29...861dc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb3d79...e2f69e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb8b1b...915856` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeba81e...26d1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec0af9...8306d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec2302...1edca5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec500f...0c8510` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeca746...e5ccb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed07b7...4d4ee0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed2fbc...ec33b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed44b9...291b9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed9569...cebf04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed9d38...4c8af5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeee151...87d8d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefd240...cedde2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf03039...51fb60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf121b5...ae55b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf285b4...4c2d03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf471f9...143241` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf53a7e...c8e17d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf58789...1e9173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5f194...5ae82d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7e4cf...c1f2d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7f96d...46bed4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf81298...84464e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9336c...a7f760` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9e241...015705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9ea88...197355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb5507...7053b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb8cb4...ee2571` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd467a...369b57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd5a64...60c73c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfdfebe...4c9b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe097e...3150eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe8cf1...53a621` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfea91b...9767eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff29c1...c835d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff31f9...8e86b1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit 1](https://www.chainsecurity.com/security-audit/liquity-bold-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit 2](https://dedaub.com/audits/liquity/liquity-v2-aug-28-2024) | Dedaub | Audit | 2024-08 | aging | Direct | contract_name | 30 | high |
| [Audit 4](https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf) | Certora | Audit | 2024-12 | aging | Direct | contract_name | 19 | high |
| [Audit 5](https://www.coinspect.com/doc/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20-%20Bold%20-%20v241231.pdf) | Coinspect | Audit | 2024-12 | aging | Direct | contract_name | 31 | high |
| [Audit 7](https://reports.electisec.com/01-2025-Asymmetry-USA-d) | Electisec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Audit 10](https://reports.electisec.com/05-2025-Asymmetry-USDaf-V2) | Electisec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Audit 11](https://reports.electisec.com/2025-06-usdaf-2-pr2) | Electisec | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Audit 1](https://code4rena.com/reports/2023-09-asymmetry) | Code4rena | Contest | 2023-09 | stale | Direct | contract_name | 9 | high |
| [Audit 1](https://code4rena.com/audits/2023-03-asymmetry-contest) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Audit 2](https://code4rena.com/audits/2023-05-asymmetry-mitigation-review-contest) | Code4rena | Contest | 2023-05 | stale | Direct | contract_name | 39 | high |
| [Audit 3 (also discovered via alternate URL)](https://github.com/Zellic/publications/blob/1916cd0f6ef5e1fda0e44628d5eed902fd797883/Asymmetry%20Finanace%20safETH%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-07 | stale | Direct | contract_name | 45 | high |
| [Audit 2](https://gist.github.com/romeroadrian/3bf5506e1e4a0594cc722b0310b5e362) | romeroadrian | Audit | 2024-05 | stale | Direct | contract_name | 4 | high |
| [Audit 3](https://gist.github.com/romeroadrian/fe3fa83fe7ed0d42768c53e4209e7cdd) | romeroadrian | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [Audit 2](https://gist.github.com/romeroadrian/cea29ae49185dcc9096f49314a83f151) | romeroadrian | Audit | 2024-01 | stale | Direct | contract_name | 10 | high |
| [Audit 6](https://github.com/GalloDaSballo/bold-review) | GalloDaSballo | Audit | n/a | unknown | Direct | contract_name | 40 | medium |
| [$350k Cantina Open Audit Competition](https://cantina.xyz/competitions/d86632df-ab33-4448-8198-64955eae6712) | Spearbit | Contest | n/a | unknown | Direct | contract_name | 44 | high |
| [Chaos Labs USDaf/Bold Economic Modeling and Simulation Report](https://cdn.sanity.io/files/zmh9mnff/production/ca6a4815e62b05f33fb3ec56c5a4c42d6b7ddbec.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [bold-report.md](https://github.com/GalloDaSballo/bold-review/blob/main/bold-report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 34 | medium |
| [bold.pdf](https://github.com/GalloDaSballo/bold-review/blob/main/bold.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 35 | low |
| [- [Audits/Bug Bounties]()](https://docs.asymmetry.finance/security/audits-bug-bounties.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xaad3b9...35ec65`](./contracts/base-8453/0xaad3b9047dca4d5565471a3cce2767c56535ec65/) | Pool | core_logic | $2,390,613.83 | Verified native implementation with $2,390,613.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59a529...4cf8aa`](./contracts/ethereum-1/0x59a529070fbb61e6d6c91f952ccb7f35c34cf8aa/) | AsfToken | token | $493,214.80 | Verified native implementation with $493,214.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ee6db...7c53ea`](./contracts/ethereum-1/0x1ee6db6b89fbf07489ec4cdae89b82c97c7c53ea/) | TokenizedStrategy | core_logic | $3,783.57 | Verified native implementation with $3,783.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4feb6c...b04408`](./contracts/ethereum-1/0x4feb6c50a69d0cb29f77e307249c767607b04408/) | ASFOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e988d...c8f945`](./contracts/ethereum-1/0x6e988d3a79cc4daedfdc7cef2f76160f81c8f945/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3a370...c976c5`](./contracts/ethereum-1/0xa3a3702d81fd317fa1b8735227e29dc756c976c5/) | AuctionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1666ee...d9b1e5`](./contracts/ethereum-1/0x1666ee2dbb308c1ee321cc6f1575afceaad9b1e5/) | CbbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b36d8...0eeb35`](./contracts/ethereum-1/0x2b36d82bfb9ea09bbed084be34df942aad0eeb35/) | CrvUsdFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fe24f...fb632d`](./contracts/ethereum-1/0x7fe24f1a024d33506966cb7ca48bab8c65fb632d/) | dASF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b9a4b...d4b680`](./contracts/ethereum-1/0x5b9a4b5a377e2377f6f5873e95d9274caed4b680/) | dASF Redemptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d258...56f60e`](./contracts/ethereum-1/0x04d258d3ee00ef9840985afd373037d91c56f60e/) | Dutch Desk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003aac...ee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/) | Multisig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x746c23...898f62`](./contracts/ethereum-1/0x746c238e34a6dbfe1d35d50471467bd7bf898f62/) | OnLossDepositLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1d07f...39cad4`](./contracts/ethereum-1/0xb1d07f500393b768c64b9ceeba85c58dc639cad4/) | Price Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6aed7c...4fab76`](./contracts/ethereum-1/0x6aed7c8e57f905863caaab59fc10b5d95a4fab76/) | RETHToBOLDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a0605...aa4ec9`](./contracts/ethereum-1/0x5a0605efb3a50adc9f81dd456812953655aa4ec9/) | ScrvUsdOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48ba7b...e5b433`](./contracts/ethereum-1/0x48ba7b711a8d5dadc6690de2e86533f70ee5b433/) | SfrxUsdOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b1096...a1e7d5`](./contracts/ethereum-1/0x5b10963ff6c8bd0cb054a5a895ab91c1aca1e7d5/) | Sorted Troves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x412330...c25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e40eb...561e65`](./contracts/ethereum-1/0x0e40eb56626cfd0f41ca7a72618209d958561e65/) | StrategyAprOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73dfcc...3dba58`](./contracts/ethereum-1/0x73dfcc4fb90e6e252e5d41f6588534a8043dba58/) | StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x600d6a...01007c`](./contracts/ethereum-1/0x600d6aebd8eacfcfbb8eedff139408200d01007c/) | StrategyFixedReportTrigger | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d09d5...082d10`](./contracts/ethereum-1/0x9d09d5175783f0caa56d6d1e7590c2b935082d10/) | SusdsOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x193b7d...54aba5`](./contracts/ethereum-1/0x193b7da0f8036709774054dfd7539ca36654aba5/) | TbtcFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39fca0...a3a775`](./contracts/ethereum-1/0x39fca0f77ba22926e8e5ec5df68271eb49a3a775/) | TbtcOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a173e...98134f`](./contracts/ethereum-1/0x1a173e7223dbd1e66bbe654a0b8c4c1ebd98134f/) | tBTCToUSDafExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf119b5...329034`](./contracts/ethereum-1/0xf119b5aa93a7755b09952b3a88d04cdaf5329034/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36e9ee...b41c1f`](./contracts/ethereum-1/0x36e9ee7a0ce154cc1e379a7c0231fa19c0b41c1f/) | Trove Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0502db...91b072`](./contracts/ethereum-1/0x0502dbe106d80577b156b0679342a11dca91b072/) | USDaf Flash Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90318f...542ee4`](./contracts/ethereum-1/0x90318f8028da3a985e9d2f777369c961a8542ee4/) | USDaf Leverage Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66871d...661b4b`](./contracts/ethereum-1/0x66871db0ca840ac3e9cb2dbbfcff8ec060661b4b/) | WbtcFallbackOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1919de...1b7205`](./contracts/ethereum-1/0x1919de21635276a80aa3384a852df8189e1b7205/) | WbtcOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5602eb...e58815`](./contracts/ethereum-1/0x5602eb937b25f783a4b7b522b7c0baf28be58815/) | WBTCToCRVUSDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cd733...1063b4`](./contracts/ethereum-1/0x6cd733c283ef09a760e330acb7d8c7e9961063b4/) | WBTCToUSDCExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ae509...46ba65`](./contracts/ethereum-1/0x2ae50916b4467c681689069bb54e94fd0246ba65/) | WbtcZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c59ee...99caed`](./contracts/ethereum-1/0x4c59eec0bf43bb56ff7ee5aa21b51f76e699caed/) | WETHToBOLDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf00850...e3caac`](./contracts/ethereum-1/0xf00850a4384878c66c54fde0bdc29aa825e3caac/) | WETHToCRVUSDExchange | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fd713...b27d15`](./contracts/ethereum-1/0x7fd713fe57fcd0a7636c152faba6bdc2d3b27d15/) | WrappedCbbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x253da8...1df194`](./contracts/ethereum-1/0x253da8f1f6cd0fb33aadc13999df9b124f1df194/) | WrappedSpot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe9ac...c5ca9a`](./contracts/ethereum-1/0xdfe9ace42684879ee17620bcce218711f1c5ca9a/) | WSTETHToBOLDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63bf36...ee881f`](./contracts/ethereum-1/0x63bf3669a8784d279165a80ea877c74f92ee881f/) | WSTETHToCRVUSDExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07011c...ca598a`](./contracts/ethereum-1/0x07011c1cdebc84fd5bbc64db6ce5ca9b92ca598a/) | ZapperAsFuck | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 6 |
| standard_library | 18 |
| needs_review | 402 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10, low=1, medium=2
- Match method counts: extraction_exact=387

Zero-match audit list:

- [16688] Audit 1
- [16692] Audit 7
- [16693] Audit 10
- [16694] Audit 11
- [16696] Audit 1
- [16704] Chaos Labs USDaf/Bold Economic Modeling and Simulation Report
- [16708] - [Audits/Bug Bounties]()

Fork inheritance lineage and inherited audits are included when available.
