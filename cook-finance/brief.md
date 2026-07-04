# Agentic Audit Brief: cook-finance

## Project Overview

- Project: cook-finance (`cook-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.502Z
- Pipeline run: v2-2026-07-04-7d91d2
- Chains: avalanche, bsc, ethereum
- Contract surface: 70 unique implementations (70 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 70 project-authored contract(s) across 3 chain(s); 18 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 18 common project-authored base contract(s) (poolstate, proxy, contextupgradeable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Pendle** (`pendle`) in the JCollateralCapErc20Delegate, JWrappedNativeDelegate, Joetroller subsystem.
13 audits inherited from `pendle`, scoped to that subsystem.

Total inherited audits: 13. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 70; live-surface contracts included: 70 (68 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/63 (6.3%)
- Deployed-live implementations: 68 of 70 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/70
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 70
- Raw deployments: 70
- Audits discovered: 14 (1 direct, 13 inherited from forked code)
- Scoreable audits (matched contracts): 14
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 5 fresh, 0 aging, 1 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 4.8% (ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xleastwood | Tier 2 | 3 | 4.3% | n/a |
| Ackee Blockchain | Tier 2 | 3 | 4.3% | n/a |
| ChainSecurity | Tier 1 | 3 | 4.3% | 2025-08 |
| CMichel | Tier 2 | 3 | 4.3% | n/a |
| HickupHH3 | Tier 2 | 3 | 4.3% | 2026-01 |
| Spearbit | Tier 1 | 3 | 4.3% | 2025-08 |
| WatchPug | Tier 2 | 3 | 4.3% | 2026-01 |
| CertiK | Tier 2 | 1 | 1.4% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CookToken | unknown | ethereum | n/a | [`0x0c5778...c21a85`](./contracts/ethereum-1/0x0c5778a97e5f143fefdaa251b6b7ac3404c21a85/) | ✅ Audited |
| JCollateralCapErc20Delegate | unknown | avalanche | n/a | [`0x125cf8...84b4d2`](./contracts/avalanche-43114/0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2/) | ✅ Audited |
| Joetroller | unknown | avalanche | n/a | [`0x1ed836...92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/) | ✅ Audited |
| JWrappedNativeDelegate | unknown | avalanche | n/a | [`0x267a45...149df5`](./contracts/avalanche-43114/0x267a4576293d55b53c769606e886e1f343149df5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | bsc | n/a | [`0x623ef0...7da112`](./contracts/bsc-56/0x623ef0fce36b046fcd08655ede084eb4447da112/) | ⚠️ Unaudited |
| AddressArrayUtils | unknown | bsc | n/a | [`0x6c6fee...92582a`](./contracts/bsc-56/0x6c6fee4256903b402e940c464f42594e8e92582a/) | ⚠️ Unaudited |
| AlpacaLendingAdapter | unknown | bsc | n/a | [`0x772186...b4212a`](./contracts/bsc-56/0x772186d213038f3943ad4acff0cd9ca450b4212a/) | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | avalanche | n/a | [`0x2d1e2e...ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | ethereum | n/a | [`0x59e799...5432b7`](./contracts/ethereum-1/0x59e799b58f1f4bc778e126b0d1d2774ae05432b7/) | ⚠️ Unaudited |
| BatchIssuanceModule | unknown | ethereum | n/a | [`0x68d098...5992fc`](./contracts/ethereum-1/0x68d098b5b661bdf0ba4a60081f2edb16525992fc/) | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | avalanche | n/a | [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/) | ⚠️ Unaudited |
| BoringHelperV1 | unknown | avalanche | n/a | [`0x1dd4d8...ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/) | ⚠️ Unaudited |
| BountyDetective | unknown | ethereum | n/a | [`0xa3c05d...45e28e`](./contracts/ethereum-1/0xa3c05d4cc9de141f790f18a23438065df845e28e/) | ⚠️ Unaudited |
| CKToken | unknown | ethereum | n/a | [`0x43633b...edab2b`](./contracts/ethereum-1/0x43633bdb2675adab99ce3059d734b92a1dedab2b/) | ⚠️ Unaudited |
| CKTokenCreator | unknown | ethereum | n/a | [`0x99178d...2de3c6`](./contracts/ethereum-1/0x99178d2437cc3d192fb24ae6680ae87b9c2de3c6/) | ⚠️ Unaudited |
| CKValuer | unknown | ethereum | n/a | [`0x3e3dc6...be6ade`](./contracts/ethereum-1/0x3e3dc628fd41a88fd5a6cd78088dc078f7be6ade/) | ⚠️ Unaudited |
| Cliff | unknown | avalanche | n/a | [`0xaff905...2d4f34`](./contracts/avalanche-43114/0xaff90532e2937ff290009521e7e120ed062d4f34/) | ⚠️ Unaudited |
| Controller | unknown | bsc | n/a | [`0x822aeb...34a2bd`](./contracts/bsc-56/0x822aeb433a4ea7a97b76287cb513c3985034a2bd/) | ⚠️ Unaudited |
| COOK | unknown | avalanche | n/a | [`0x637afe...58902f`](./contracts/avalanche-43114/0x637afeff75ca669ff92e4570b14d6399a658902f/) | ⚠️ Unaudited |
| CookDistribution | unknown | ethereum | n/a | [`0x828714...edd280`](./contracts/ethereum-1/0x82871428cac61655eabe2f872cc138318fedd280/) | ⚠️ Unaudited |
| CookPool | unknown | ethereum | n/a | [`0x00b812...be3e64`](./contracts/ethereum-1/0x00b81204b111f0cd5f5742e879c1e90344be3e64/) | ⚠️ Unaudited |
| CrossChainNFTMapping | unknown | bsc | n/a | [`0x2b959d...0f33f9`](./contracts/bsc-56/0x2b959d3ab5c2f2942a3cd9fac03cfad9a70f33f9/) | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | avalanche | n/a | [`0xadaf18...e6e398`](./contracts/avalanche-43114/0xadaf18d79f316005542da4ecb1624b59c4e6e398/) | ⚠️ Unaudited |
| ERC20Mock | unknown | avalanche | n/a | [`0x72281a...106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/) | ⚠️ Unaudited |
| EthCrossChainData | unknown | bsc | n/a | [`0x11e2a7...8c2672`](./contracts/bsc-56/0x11e2a718d46ebe97645b87f2363afe1bf28c2672/) | ⚠️ Unaudited |
| EthCrossChainManager | unknown | bsc | n/a | [`0x00eee7...8aa6fe`](./contracts/bsc-56/0x00eee7b864062c40f8096f948a2b0db3c28aa6fe/) | ⚠️ Unaudited |
| FreelaToken | unknown | bsc | n/a | [`0x22c98e...dd522d`](./contracts/bsc-56/0x22c98e232c40b015880c40f23fc0120e92dd522d/) | ⚠️ Unaudited |
| GeneralIndexModule | unknown | ethereum | n/a | [`0xbaa031...108ecc`](./contracts/ethereum-1/0xbaa031842356767e51f116d189f1dab0ca108ecc/) | ⚠️ Unaudited |
| IntegrationRegistry | unknown | bsc | n/a | [`0x3aac95...72659c`](./contracts/bsc-56/0x3aac9529c21025b35f6daf1b185724cdeb72659c/) | ⚠️ Unaudited |
| IssuanceModule | unknown | bsc | n/a | [`0x01d128...4ff05e`](./contracts/bsc-56/0x01d12800094b8c1935f9f1ca626d7609e54ff05e/) | ⚠️ Unaudited |
| IssuanceModuleV2 | unknown | bsc | n/a | [`0x7db3cb...aa89d0`](./contracts/bsc-56/0x7db3cbaf736c049933a3af28dbed4a4442aa89d0/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | avalanche | n/a | [`0x102011...ae0fbf`](./contracts/avalanche-43114/0x102011863cc4f506d1387cd6b22c522602ae0fbf/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | n/a | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeFactory | unknown | avalanche | n/a | [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | ⚠️ Unaudited |
| JoeHatToken | unknown | avalanche | n/a | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| JoeLens | unknown | avalanche | n/a | [`0xfdf50f...8a47cc`](./contracts/avalanche-43114/0xfdf50fea3527fad31fa840b748fd3694ae8a47cc/) | ⚠️ Unaudited |
| JoeMaker | unknown | avalanche | n/a | [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/) | ⚠️ Unaudited |
| JoeMakerV3 | unknown | avalanche | n/a | [`0xdb5b4c...a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | ⚠️ Unaudited |
| JoeRoll | unknown | avalanche | n/a | [`0xacff0f...0bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | ⚠️ Unaudited |
| JoeRouter02 | unknown | avalanche | n/a | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| JoeToken | unknown | avalanche | n/a | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| LockProxy | unknown | avalanche | n/a | [`0xd3b90e...b6ac57`](./contracts/avalanche-43114/0xd3b90e2603d265bf46dbc788059ac12d52b6ac57/) | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | n/a | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | n/a | [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | ⚠️ Unaudited |
| MDX | unknown | bsc | n/a | [`0xaee416...796668`](./contracts/bsc-56/0xaee4164c1ee46ed0bbc34790f1a3d1fc87796668/) | ⚠️ Unaudited |
| Multicall | unknown | bsc | n/a | [`0x9f7b0f...91d05e`](./contracts/bsc-56/0x9f7b0f81ac2f673d9d089c9123de191b4b91d05e/) | ⚠️ Unaudited |
| ONG | unknown | bsc | n/a | [`0x308bfa...0599d9`](./contracts/bsc-56/0x308bfaeaac8bdab6e9fc5ead8edcb5f95b0599d9/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x35be79...81102e`](./contracts/ethereum-1/0x35be7982bc5e40a8c9af39a639bddce32081102e/) | ⚠️ Unaudited |
| pCOOK | unknown | bsc | n/a | [`0x965b0d...de086a`](./contracts/bsc-56/0x965b0df5bda0e7a0649324d78f03d5f7f2de086a/) | ⚠️ Unaudited |
| PolkaFinance | unknown | bsc | n/a | [`0x785e2f...075774`](./contracts/bsc-56/0x785e2fc214f0ec721d82312e24b537d9c3075774/) | ⚠️ Unaudited |
| PolyWrapperV1 | unknown | avalanche | n/a | [`0x287bd6...8cfd65`](./contracts/avalanche-43114/0x287bd66753f0ca8e9c2171d782df39e4c28cfd65/) | ⚠️ Unaudited |
| PolyWrapperV2 | unknown | avalanche | n/a | [`0xf06587...b33a0d`](./contracts/avalanche-43114/0xf06587de89e289ce480cdf21109a14547eb33a0d/) | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | [`0xba5f7f...2b4f5e`](./contracts/ethereum-1/0xba5f7f5502bba82460d29b1b9aee967caf2b4f5e/) | ⚠️ Unaudited |
| PriceConsumerV3 | unknown | ethereum | n/a | [`0x7b800c...8e9e72`](./contracts/ethereum-1/0x7b800c1e5ed4f57a4dd592bd49e429422b8e9e72/) | ⚠️ Unaudited |
| PriceOracle | unknown | ethereum | n/a | [`0xddbec2...2be3f5`](./contracts/ethereum-1/0xddbec29765c3c23be054291e951f8139712be3f5/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | avalanche | n/a | [`0x107b31...b8555a`](./contracts/avalanche-43114/0x107b31d84bf6cec672f3af924471bb6f4fb8555a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x02fa08...86a460`](./contracts/ethereum-1/0x02fa0829266d4ef7aa7b9375bbf9ff419386a460/) | ⚠️ Unaudited |
| RewardDistributor | unknown | avalanche | n/a | [`0x227449...a14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/) | ⚠️ Unaudited |
| RewardVesting | unknown | bsc | n/a | [`0x4aee24...7440b5`](./contracts/bsc-56/0x4aee24e834e39cbc5bdbcaaa02e5e27fa17440b5/) | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | avalanche | n/a | [`0x05d06a...5a3388`](./contracts/avalanche-43114/0x05d06afb994047acee8c205500ab1aa25c5a3388/) | ⚠️ Unaudited |
| StakingPools | unknown | bsc | n/a | [`0x1abeaa...c9aff5`](./contracts/bsc-56/0x1abeaa9d633162586a4c80389160c33327c9aff5/) | ⚠️ Unaudited |
| StreamingFeeModule | unknown | ethereum | n/a | [`0x88de2b...7151cd`](./contracts/ethereum-1/0x88de2bd17d4d37a7679ff0b697481a42787151cd/) | ⚠️ Unaudited |
| TokenVesting | unknown | avalanche | n/a | [`0x0147c0...0ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x2f4391...bb5140`](./contracts/avalanche-43114/0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x4b4e08...7fbc17`](./contracts/avalanche-43114/0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17/) | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | avalanche | n/a | [`0x3c5486...f73682`](./contracts/avalanche-43114/0x3c5486b85faae29b071f2a616a59ca7bf8f73682/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xbdfe29...51e2c4`](./contracts/ethereum-1/0xbdfe29d9e42ea541c581eef6cf3a2bb27b51e2c4/) | ⚠️ Unaudited |
| VenusWrapAdapater | unknown | bsc | n/a | [`0x6b04e9...ab40f0`](./contracts/bsc-56/0x6b04e95f602054a24ebbaf34796bb1e654ab40f0/) | ⚠️ Unaudited |
| Zap | unknown | avalanche | n/a | [`0x2c7b8e...d02027`](./contracts/avalanche-43114/0x2c7b8e971c704371772edaf16e0db381a8d02027/) | ⚠️ Unaudited |

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
| [WatchPug-SparkLinearDiscountOracle.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/LinearDiscountOracle/WatchPug-SparkLinearDiscountOracle.pdf) | WatchPug | Audit | n/a | unknown | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [WatchPug-LpOracle.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/LpPtoracle/WatchPug-LpOracle.pdf) | WatchPug | Audit | n/a | unknown | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [WatchPug-PtOracle.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/LpPtoracle/WatchPug-PtOracle.pdf) | WatchPug | Audit | n/a | unknown | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [0xleastwood-Part 1 + 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/0xleastwood/0xleastwood-Part%201%20%2B%202.pdf) | 0xleastwood | Audit | n/a | unknown | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [0xleastwood-Part 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/0xleastwood/0xleastwood-Part%202.pdf) | 0xleastwood | Audit | n/a | unknown | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [Ackee-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/Ackee/Ackee-Part%201.pdf) | Ackee Blockchain | Audit | n/a | unknown | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [CMichel-Part 2.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/CMichel/CMichel-Part%202.pdf) | CMichel | Audit | n/a | unknown | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [Cmichel-Part 1.pdf](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/main%20codebase/CMichel/Cmichel-Part%201.pdf) | CMichel | Audit | n/a | unknown | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [CertiK.pdf](https://github.com/CookFinance/cook-token/blob/master/audits/CertiK.pdf) | CertiK | Audit | 2021-02 | stale | Direct | contract_name | 1 | high |
| [WatchPug.pdf (also discovered via alternate URL)](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/marketV7/WatchPug.pdf) | WatchPug | Audit | 2026-01 | fresh | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [HickupHH3.pdf (also discovered via alternate URL)](https://github.com/pendle-finance/pendle-core-v2-public/blob/main/audits/marketV7/HickupHH3.pdf) | HickupHH3 | Audit | 2026-01 | fresh | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [Pendle-Spearbit-Security-Review-August-2025.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/Spearbit/Pendle-Spearbit-Security-Review-August-2025.pdf) | Spearbit | Audit | 2025-08 | fresh | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [ChainSecurity-Markets.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Markets.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |
| [ChainSecurity-Router and AMM.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Router%20and%20AMM.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Inherited from Pendle — forked code, scoped to JCollateralCapErc20Delegate, Joetroller, JWrappedNativeDelegate | inherited | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x623ef0...7da112`](./contracts/bsc-56/0x623ef0fce36b046fcd08655ede084eb4447da112/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6c6fee...92582a`](./contracts/bsc-56/0x6c6fee4256903b402e940c464f42594e8e92582a/) | AddressArrayUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x772186...b4212a`](./contracts/bsc-56/0x772186d213038f3943ad4acff0cd9ca450b4212a/) | AlpacaLendingAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2d1e2e...ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | BadBuildersClubSoulbound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59e799...5432b7`](./contracts/ethereum-1/0x59e799b58f1f4bc778e126b0d1d2774ae05432b7/) | BasicIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68d098...5992fc`](./contracts/ethereum-1/0x68d098b5b661bdf0ba4a60081f2edb16525992fc/) | BatchIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/) | BoostedMasterChefJoe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1dd4d8...ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/) | BoringHelperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3c05d...45e28e`](./contracts/ethereum-1/0xa3c05d4cc9de141f790f18a23438065df845e28e/) | BountyDetective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43633b...edab2b`](./contracts/ethereum-1/0x43633bdb2675adab99ce3059d734b92a1dedab2b/) | CKToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99178d...2de3c6`](./contracts/ethereum-1/0x99178d2437cc3d192fb24ae6680ae87b9c2de3c6/) | CKTokenCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e3dc6...be6ade`](./contracts/ethereum-1/0x3e3dc628fd41a88fd5a6cd78088dc078f7be6ade/) | CKValuer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaff905...2d4f34`](./contracts/avalanche-43114/0xaff90532e2937ff290009521e7e120ed062d4f34/) | Cliff | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x822aeb...34a2bd`](./contracts/bsc-56/0x822aeb433a4ea7a97b76287cb513c3985034a2bd/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x637afe...58902f`](./contracts/avalanche-43114/0x637afeff75ca669ff92e4570b14d6399a658902f/) | COOK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x828714...edd280`](./contracts/ethereum-1/0x82871428cac61655eabe2f872cc138318fedd280/) | CookDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b812...be3e64`](./contracts/ethereum-1/0x00b81204b111f0cd5f5742e879c1e90344be3e64/) | CookPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b959d...0f33f9`](./contracts/bsc-56/0x2b959d3ab5c2f2942a3cd9fac03cfad9a70f33f9/) | CrossChainNFTMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xadaf18...e6e398`](./contracts/avalanche-43114/0xadaf18d79f316005542da4ecb1624b59c4e6e398/) | CustomMasterChefJoeV2Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x72281a...106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/) | ERC20Mock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11e2a7...8c2672`](./contracts/bsc-56/0x11e2a718d46ebe97645b87f2363afe1bf28c2672/) | EthCrossChainData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00eee7...8aa6fe`](./contracts/bsc-56/0x00eee7b864062c40f8096f948a2b0db3c28aa6fe/) | EthCrossChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22c98e...dd522d`](./contracts/bsc-56/0x22c98e232c40b015880c40f23fc0120e92dd522d/) | FreelaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaa031...108ecc`](./contracts/ethereum-1/0xbaa031842356767e51f116d189f1dab0ca108ecc/) | GeneralIndexModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3aac95...72659c`](./contracts/bsc-56/0x3aac9529c21025b35f6daf1b185724cdeb72659c/) | IntegrationRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01d128...4ff05e`](./contracts/bsc-56/0x01d12800094b8c1935f9f1ca626d7609e54ff05e/) | IssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7db3cb...aa89d0`](./contracts/bsc-56/0x7db3cbaf736c049933a3af28dbed4a4442aa89d0/) | IssuanceModuleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x102011...ae0fbf`](./contracts/avalanche-43114/0x102011863cc4f506d1387cd6b22c522602ae0fbf/) | JCollateralCapErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | JoeBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | JoeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | JoeHatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfdf50f...8a47cc`](./contracts/avalanche-43114/0xfdf50fea3527fad31fa840b748fd3694ae8a47cc/) | JoeLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/) | JoeMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdb5b4c...a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | JoeMakerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xacff0f...0bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | JoeRoll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | JoeRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | JoeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd3b90e...b6ac57`](./contracts/avalanche-43114/0xd3b90e2603d265bf46dbc788059ac12d52b6ac57/) | LockProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | MasterChefJoeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | MasterChefJoeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaee416...796668`](./contracts/bsc-56/0xaee4164c1ee46ed0bbc34790f1a3d1fc87796668/) | MDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x308bfa...0599d9`](./contracts/bsc-56/0x308bfaeaac8bdab6e9fc5ead8edcb5f95b0599d9/) | ONG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35be79...81102e`](./contracts/ethereum-1/0x35be7982bc5e40a8c9af39a639bddce32081102e/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x965b0d...de086a`](./contracts/bsc-56/0x965b0df5bda0e7a0649324d78f03d5f7f2de086a/) | pCOOK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x785e2f...075774`](./contracts/bsc-56/0x785e2fc214f0ec721d82312e24b537d9c3075774/) | PolkaFinance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x287bd6...8cfd65`](./contracts/avalanche-43114/0x287bd66753f0ca8e9c2171d782df39e4c28cfd65/) | PolyWrapperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf06587...b33a0d`](./contracts/avalanche-43114/0xf06587de89e289ce480cdf21109a14547eb33a0d/) | PolyWrapperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba5f7f...2b4f5e`](./contracts/ethereum-1/0xba5f7f5502bba82460d29b1b9aee967caf2b4f5e/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b800c...8e9e72`](./contracts/ethereum-1/0x7b800c1e5ed4f57a4dd592bd49e429422b8e9e72/) | PriceConsumerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xddbec2...2be3f5`](./contracts/ethereum-1/0xddbec29765c3c23be054291e951f8139712be3f5/) | PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x107b31...b8555a`](./contracts/avalanche-43114/0x107b31d84bf6cec672f3af924471bb6f4fb8555a/) | PriceOracleProxyUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x227449...a14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4aee24...7440b5`](./contracts/bsc-56/0x4aee24e834e39cbc5bdbcaaa02e5e27fa17440b5/) | RewardVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x05d06a...5a3388`](./contracts/avalanche-43114/0x05d06afb994047acee8c205500ab1aa25c5a3388/) | SimpleRewarderPerSec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1abeaa...c9aff5`](./contracts/bsc-56/0x1abeaa9d633162586a4c80389160c33327c9aff5/) | StakingPools | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88de2b...7151cd`](./contracts/ethereum-1/0x88de2bd17d4d37a7679ff0b697481a42787151cd/) | StreamingFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0147c0...0ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/) | TokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3c5486...f73682`](./contracts/avalanche-43114/0x3c5486b85faae29b071f2a616a59ca7bf8f73682/) | TripleSlopeRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b04e9...ab40f0`](./contracts/bsc-56/0x6b04e95f602054a24ebbaf34796bb1e654ab40f0/) | VenusWrapAdapater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2c7b8e...d02027`](./contracts/avalanche-43114/0x2c7b8e971c704371772edaf16e0db381a8d02027/) | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1, inherited_name_remap=48

Fork inheritance lineage and inherited audits are included when available.
