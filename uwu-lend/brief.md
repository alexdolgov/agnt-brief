# Agentic Audit Brief: UwU Lend

## Project Overview

- Project: UwU Lend (`uwu-lend`)
- Website: [https://www.uwulend.fi/](https://www.uwulend.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:04.216Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: ethereum
- Contract surface: 157 unique implementations (345 raw deployments)
- DeFi Llama TVL: $236,350.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 107 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 26 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 22 common project-authored base contract(s) (versionedinitializable, lendingpoolstorage, debttokenbase). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Liquity** (`liquity`).
6 audits inherited from `liquity`.

Total inherited audits: 6. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 404; live-surface contracts included: 345 (295 live, 50 unknown).
- Excluded by liveness: 59 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 61/100 (61.0%)
- Deployed-live implementations: 107 of 157 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 63/107
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 157
- Raw deployments: 345
- Audits discovered: 10 (4 direct, 6 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 63 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 8.0% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 54 | 50.5% | 2022-12 |
| Coinspect | Tier 2 | 9 | 8.4% | 2025-01 |
| Trail of Bits | Tier 1 | 8 | 7.5% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (63)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveOracle | operational_periphery | ethereum | n/a | [`0xac4a2a...772598`](./contracts/ethereum-1/0xac4a2ac76d639e10f2c05a41274c1af85b772598/) | ✅ Audited |
| AaveProtocolDataProvider | unknown | ethereum | n/a | [`0x17938e...8cd521`](./contracts/ethereum-1/0x17938ede656ca1901807abf43a6b1d138d8cd521/) | ✅ Audited |
| ActivePool | core_logic | ethereum | n/a | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x02738e...560dae`](./contracts/ethereum-1/0x02738ef3f8d8d3161dbbedbda25574154c560dae/); ethereum `0x3e0807...d9b22c` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x044ad8...6a9c97`](./contracts/ethereum-1/0x044ad85f8421d8ffc383095e4db23656086a9c97/); ethereum `0xadfa5f...500086` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x10ee4a...d7fa5d`](./contracts/ethereum-1/0x10ee4ac0e052312ca3d2f01ed75df7e2c3d7fa5d/); ethereum `0xdb1a8f...a59eba` | ✅ Audited |
| AToken | token | ethereum | n/a | 23 deployments: ethereum [`0x12df06...51bc52`](./contracts/ethereum-1/0x12df06aef0c0d5ac1809b73ceb15da4ea651bc52/); ethereum `0x2c9389...2f7f64`; ethereum `0x41adb3...d7a5ce`; ethereum `0x4722a5...9a5a9c`; ethereum `0x482364...a74bf7`; ethereum `0x48ab39...2c4b35`; ethereum `0x5675dd...ed0f41`; ethereum `0x576098...4b6fdd`; ethereum `0x5ed051...93059b`; ethereum `0x5f5c8f...fc95ca`; ethereum `0x61e9a7...0fd6ff`; ethereum `0x7a9f54...dcc1f0`; ethereum `0x871ac0...b36cca`; ethereum `0x8ddbbe...d10e89`; ethereum `0xa256d0...1bd54c`; ethereum `0xa69d94...e1188a`; ethereum `0xb5cf0d...d2cbe2`; ethereum `0xcb0245...574bb6`; ethereum `0xcca2f0...844429`; ethereum `0xe6e33b...dc8c43`; ethereum `0xe73c56...bbf99a`; ethereum `0xf47dfc...5b2a06`; ethereum `0xff1c3d...abc039` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x13adb4...4e5509`](./contracts/ethereum-1/0x13adb41f38cd14ac4f42db5ea60ae474a54e5509/); ethereum `0x24959f...233c7d` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x17b132...24f6c8`](./contracts/ethereum-1/0x17b13209d132a14f8e2130cafbfe89194424f6c8/); ethereum `0xd1e6b0...3510e2` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x20e61b...564aa4`](./contracts/ethereum-1/0x20e61ba4365cc4bfa82b1449982e091904564aa4/); ethereum `0x8232d3...4430f5` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x243387...31aa70`](./contracts/ethereum-1/0x243387a7036bfcb09f9bf4eced1e60765d31aa70/); ethereum `0x9d111e...049e25` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x2ea21b...58b479`](./contracts/ethereum-1/0x2ea21b1d2429d71abb2624a660a92baece58b479/); ethereum `0x8c240c...8fa93d` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3435cc...24eaf5`](./contracts/ethereum-1/0x3435ccfa639b756aa7c5097008ab70984524eaf5/); ethereum `0xb95bd0...3c7626` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x4c82a5...a7b002`](./contracts/ethereum-1/0x4c82a5191c6d93fb1ec1146be47176cd00a7b002/); ethereum `0xc4bf70...1ba0fa` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x511447...b7e670`](./contracts/ethereum-1/0x51144708b82ea3b5b1002c9dc38b71ec63b7e670/); ethereum `0xa066f1...5973fe` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x550649...b0e4aa`](./contracts/ethereum-1/0x550649c2a66ca0ad5fc54e74d5603c7be3b0e4aa/); ethereum `0x67fadb...0e13e5` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x56e3f1...2bd25c`](./contracts/ethereum-1/0x56e3f10a0a61432f3485174f391141df172bd25c/); ethereum `0xeb61e5...8a14cc` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x67b375...020b8e`](./contracts/ethereum-1/0x67b3750733efa3fbe6291af96add7b5050020b8e/); ethereum `0xe873e3...748fad` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x6ace5c...d8fc8d`](./contracts/ethereum-1/0x6ace5c946a3abd8241f31f182c479e67a4d8fc8d/); ethereum `0x8dd93b...65fd27` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x8028ea...ea90a6`](./contracts/ethereum-1/0x8028ea7da2ea9bcb9288c1f6f603169b8aea90a6/); ethereum `0xe44d24...75b14b` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x9dad36...205075`](./contracts/ethereum-1/0x9dad36853b8c6ce9a206b83d47b28a4c49205075/); ethereum `0xf12931...0b67a6` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0xb5bb4f...2afeb8`](./contracts/ethereum-1/0xb5bb4f1a3a5a644d80f97bd60eed0c2dfb2afeb8/); ethereum `0xc480a1...bc12fc` | ✅ Audited |
| ATokensAndRatesHelper | token | ethereum | n/a | [`0xaab1b4...b95645`](./contracts/ethereum-1/0xaab1b4260297fffdbc267a46b73c7fcd43b95645/) | ✅ Audited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ✅ Audited |
| ChefIncentivesController | governance | ethereum | n/a | [`0x219531...1cccdb`](./contracts/ethereum-1/0x21953192664867e19f85e96e1d1dd79dc31cccdb/) | ✅ Audited |
| CollSurplusPool | core_logic | ethereum | n/a | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ✅ Audited |
| DefaultReserveInterestRateStrategy | operational_periphery | ethereum | n/a | 42 deployments: ethereum [`0x03bca3...af7b64`](./contracts/ethereum-1/0x03bca34ff553a2ede4f1fceb177dc42ee6af7b64/); ethereum `0x07b127...001ab7`; ethereum `0x0f2e9d...55684e`; ethereum `0x1d2d10...0dc61b`; ethereum `0x23a625...4d2115`; ethereum `0x271787...3d0874`; ethereum `0x2a7743...144fb6`; ethereum `0x2cee07...cae023`; ethereum `0x39cee7...7f5d30`; ethereum `0x3a1c46...5c6b06`; ethereum `0x43631b...6ab1d0`; ethereum `0x4cc685...ccd1c2`; ethereum `0x4fc093...0868ce`; ethereum `0x5d89fa...71e820`; ethereum `0x673ef6...fbcb9b`; ethereum `0x690dcb...ff494a`; ethereum `0x6b0118...8b2d64`; ethereum `0x73cae6...360f88`; ethereum `0x88fbeb...be03f5`; ethereum `0x9203a2...cf1a9c`; ethereum `0x9fcd8c...8f6012`; ethereum `0xa3c977...0247f7`; ethereum `0xa645c8...5ed356`; ethereum `0xaf3da5...f19df7`; ethereum `0xb5782e...8eca31`; ethereum `0xb87872...5543b0`; ethereum `0xba285e...e9e6a6`; ethereum `0xc3f77e...c9342b`; ethereum `0xc52216...8663f3`; ethereum `0xc65de1...7ac239`; ethereum `0xc818d6...7a89c5`; ethereum `0xc9bae0...9e036d`; ethereum `0xca2a83...edebf3`; ethereum `0xca328d...86c90e`; ethereum `0xcb830c...34421f`; ethereum `0xcca85d...757c09`; ethereum `0xd14b84...9ba3bf`; ethereum `0xd4fb94...da1479`; ethereum `0xda7411...e362d2`; ethereum `0xec2416...691390`; ethereum `0xf01f28...76e15b`; ethereum `0xf15ca7...8c1836` | ✅ Audited |
| FallbackOracle | operational_periphery | ethereum | n/a | [`0x9bc633...5698b9`](./contracts/ethereum-1/0x9bc6333081266e55d88942e277fc809b485698b9/) | ✅ Audited |
| GenericLogic | unknown | ethereum | n/a | [`0xaede01...198b89`](./contracts/ethereum-1/0xaede01960810a655aecf86278bfdf5c968198b89/) | ✅ Audited |
| LendingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x05bfa9...25ea4d`](./contracts/ethereum-1/0x05bfa9157e92690b179033ca2f6dd1e86b25ea4d/); ethereum `0x2409af...87c668` | ✅ Audited |
| LendingPoolAddressesProvider | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x011c0d...f7f1fb`](./contracts/ethereum-1/0x011c0d38da64b431a1bdfc17ad72678eabf7f1fb/); ethereum `0x10141a...19a0d0`; ethereum `0x1166de...5390bf`; ethereum `0x3e2587...cbe234`; ethereum `0x86aba3...6be7cc`; ethereum `0xebdbb9...eb10f6` | ✅ Audited |
| LendingPoolConfigurator | core_logic | ethereum | n/a | [`0x1c0e90...2c69ae`](./contracts/ethereum-1/0x1c0e90b5d9b0b1497979fdde0f08249bde2c69ae/) | ✅ Audited |
| LendingPoolConfigurator | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x408c97...5b005c`](./contracts/ethereum-1/0x408c9764993209dc772eb12ff641f4b55f5b005c/); ethereum `0x40daf7...835347` | ✅ Audited |
| Leverager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3516b8...9f8c2a`](./contracts/ethereum-1/0x3516b83348af99021715f16db46d065bbe9f8c2a/); ethereum `0x38972f...c73c2d`; ethereum `0x780dcf...2f32ed` | ✅ Audited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ✅ Audited |
| LQTYToken | token | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ✅ Audited |
| LUSDToken | token | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ✅ Audited |
| MultiFeeDistribution | unknown | ethereum | n/a | [`0x7c0bf1...c5e237`](./contracts/ethereum-1/0x7c0bf1108935e7105e218bbb4f670e5942c5e237/) | ✅ Audited |
| MultiFeeDistributionV2 | unknown | ethereum | n/a | [`0x0a7b2a...9b0188`](./contracts/ethereum-1/0x0a7b2a21027f92243c5e5e777aa30bb7969b0188/) | ✅ Audited |
| ReserveLogic | unknown | ethereum | n/a | [`0x4be759...8fbdd9`](./contracts/ethereum-1/0x4be75900f8a54d7d5962e950f3af98d61f8fbdd9/) | ✅ Audited |
| StabilityPool | core_logic | ethereum | n/a | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ✅ Audited |
| StakingRewards | unknown | ethereum | n/a | [`0xe36435...527186`](./contracts/ethereum-1/0xe3643512532fe1f3522745787e883f9729527186/) | ✅ Audited |
| TroveManager | governance | ethereum | n/a | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ✅ Audited |
| UiPoolDataProviderV2 | core_logic | ethereum | n/a | [`0x19dd01...e20ce5`](./contracts/ethereum-1/0x19dd01d5cd88eae5674a2ab94d654f9413e20ce5/) | ✅ Audited |
| Unipool | core_logic | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ✅ Audited |
| ValidationLogic | unknown | ethereum | n/a | [`0x3c0ada...8839af`](./contracts/ethereum-1/0x3c0ada81038a078cc1272ac22745ddd1ab8839af/) | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 25 deployments: ethereum [`0x0f6885...fac22c`](./contracts/ethereum-1/0x0f6885ded5ef51f773e40f3ccd323131f3fac22c/); ethereum `0x1125a0...06549a`; ethereum `0x1c01d3...a4faa0`; ethereum `0x24c988...bb9af6`; ethereum `0x3923c7...26ea32`; ethereum `0x4385ae...ada6e0`; ethereum `0x50db71...475781`; ethereum `0x604b79...9fdce4`; ethereum `0x70e3e2...3e9255`; ethereum `0x726da5...7c9189`; ethereum `0x79e01c...8bf9c8`; ethereum `0x7c14f3...4e1c99`; ethereum `0x8975bc...a633ad`; ethereum `0x89ec19...db1f90`; ethereum `0x8da785...e34929`; ethereum `0x903e35...d9e45b`; ethereum `0x97a19b...8ad012`; ethereum `0xa71b2c...997083`; ethereum `0xaab791...cecd93`; ethereum `0xb894e2...d0b1f4`; ethereum `0xbae076...5e146b`; ethereum `0xbb8565...923d52`; ethereum `0xbc9a6b...b2c544`; ethereum `0xc52369...7c33b6`; ethereum `0xf3d6fa...f4affa` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x1254b1...8e410f`](./contracts/ethereum-1/0x1254b1fd988a1168e44a4588bb503a867f8e410f/); ethereum `0x28d9ca...41e51b` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x13cdfd...11176b`](./contracts/ethereum-1/0x13cdfdd18e6bb8d41be0a55d9cf697c0ef11176b/); ethereum `0x2ce6eb...1203d9` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x29d567...03ac3f`](./contracts/ethereum-1/0x29d567fa37b4af64dd1b886571cd1ff5d403ac3f/); ethereum `0x6063ed...805b47` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x39a873...7726b9`](./contracts/ethereum-1/0x39a873f3f60bb4cd81fe46f3beb6285bdb7726b9/); ethereum `0xd1367a...696148` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x404776...4211bf`](./contracts/ethereum-1/0x40477637151b0e182242185166c485836d4211bf/); ethereum `0x82a49c...8d2805` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x407e84...6f9368`](./contracts/ethereum-1/0x407e84b671f018f86fcf02a4df2d8daa906f9368/); ethereum `0x51e0f1...9427d9` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x453842...d023d3`](./contracts/ethereum-1/0x453842ba9dcd4569407b2adedeb8636314d023d3/); ethereum `0xd4a4da...219d1b` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x4b8e01...ec0319`](./contracts/ethereum-1/0x4b8e01020b942bb5c0b4a8368a2ec44e12ec0319/); ethereum `0xaac1d6...8dc160` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x5c8cb0...b3f241`](./contracts/ethereum-1/0x5c8cb0e43cb17553ab4a37011c3dc743aeb3f241/); ethereum `0xdebb85...e8e86f` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x64e484...e4e2d4`](./contracts/ethereum-1/0x64e4843ffdfb62d205b049ddbe8b949534e4e2d4/); ethereum `0xd626d6...5e204f` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x75e02d...d25614`](./contracts/ethereum-1/0x75e02dd8123b460fdb2bc52cb67becbbead25614/); ethereum `0xd5bfd3...47850b` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x9abe34...bb18ef`](./contracts/ethereum-1/0x9abe34021128c17de3c2180a02932eb5e1bb18ef/); ethereum `0x9ddfc4...a64f45` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0xa2c32a...d9eebc`](./contracts/ethereum-1/0xa2c32a116e959ee35d5c99a2a575697814d9eebc/); ethereum `0xbac9d1...488d66` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0xac1bd7...191c7a`](./contracts/ethereum-1/0xac1bd73182c1469b7c103f35ac234fd056191c7a/); ethereum `0xb9e8bc...0affa0` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0xd7f6e4...450d11`](./contracts/ethereum-1/0xd7f6e4e10fd1e7faf642fa924c5ea2b6c5450d11/); ethereum `0xe03496...d539ef` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0xec12f6...b7b2c1`](./contracts/ethereum-1/0xec12f63116bd2493104a26fbdbcd70f51ab7b2c1/); ethereum `0xfcbd89...b3096f` | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | operational_periphery | ethereum | n/a | [`0x8c5a7f...9bc933`](./contracts/ethereum-1/0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933/) | ⚠️ Unaudited |
| AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | operational_periphery | ethereum | n/a | [`0x18672b...0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | ethereum | n/a | [`0x3b79a2...7faf57`](./contracts/ethereum-1/0x3b79a28264fc52c7b4cea90558aa0b162f7faf57/) | ⚠️ Unaudited |
| BLUSDToken | token | ethereum | n/a | [`0xb9d7dd...3f79c3`](./contracts/ethereum-1/0xb9d7dddca9a4ac480991865efef82e01273f79c3/) | ⚠️ Unaudited |
| BondNFT | token | ethereum | n/a | [`0xa83848...4029ee`](./contracts/ethereum-1/0xa8384862219188a8f03c144953cf21fc124029ee/) | ⚠️ Unaudited |
| ChickenBondManager | governance | ethereum | n/a | [`0x57619f...e37137`](./contracts/ethereum-1/0x57619fe9c539f890b19c61812226f9703ce37137/) | ⚠️ Unaudited |
| crvUSD ControllerFactory | registry | ethereum | n/a | [`0xc9332f...0738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | ⚠️ Unaudited |
| crvUSD Stablecoin | token | ethereum | n/a | [`0xf939e0...ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | ⚠️ Unaudited |
| CustomPriceGetter | operational_periphery | ethereum | n/a | [`0x02da86...aab6a8`](./contracts/ethereum-1/0x02da86a57432e3861b1ab183ab7b24fcf4aab6a8/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| DSToken | token | ethereum | n/a | 2 deployments: ethereum [`0x97bf1f...b71e0e`](./contracts/ethereum-1/0x97bf1ff371ceabbb9e821480d31dd743c4b71e0e/); ethereum `0x9aed7a...d6727b` | ⚠️ Unaudited |
| Factory | registry | ethereum | n/a | [`0xe5a5f1...f2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | ⚠️ Unaudited |
| FRAXStablecoin | token | ethereum | n/a | [`0x853d95...75b99e`](./contracts/ethereum-1/0x853d955acef822db058eb8505911ed77f175b99e/) | ⚠️ Unaudited |
| IncentivesControllerV2 | governance | ethereum | n/a | [`0xdb5c23...8e9e5a`](./contracts/ethereum-1/0xdb5c23ae97f76dacc907f5f13bda54131c8e9e5a/) | ⚠️ Unaudited |
| IncentivesControllerV3 | governance | ethereum | n/a | [`0xf8390b...d6c568`](./contracts/ethereum-1/0xf8390b84533db97d3e415b4c7bf4251953d6c568/) | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | ethereum | n/a | [`0xac5384...cabed4`](./contracts/ethereum-1/0xac538416ba7438c773f29cf58afdc542fdcabed4/) | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | ethereum | n/a | [`0x2e9f84...fe7ddb`](./contracts/ethereum-1/0x2e9f846ce3820531b52c08d3d4543be5c8fe7ddb/) | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | ethereum | n/a | [`0x413a1f...522fe4`](./contracts/ethereum-1/0x413a1f0098a8c5ba1078552af515bd0146522fe4/) | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| Migration | operational_periphery | ethereum | n/a | [`0x67bd24...30edab`](./contracts/ethereum-1/0x67bd2425823614a8d0a90c467cf36c34db30edab/) | ⚠️ Unaudited |
| MultiClaim | unknown | ethereum | n/a | [`0x32facb...203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | ⚠️ Unaudited |
| MultiFeeDistributionV3 | unknown | ethereum | n/a | [`0x630de1...2bdd44`](./contracts/ethereum-1/0x630de1180a22e76e70e041da5eb9b676ce2bdd44/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | n/a | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| OneWayLendingFactory | registry | ethereum | n/a | [`0xea6876...3205e0`](./contracts/ethereum-1/0xea6876dde9e3467564acbee1ed5bac88783205e0/) | ⚠️ Unaudited |
| PegPrice | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x226845...6c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/); ethereum `0xe911fa...8c85a6` | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb92998...87bed9`](./contracts/ethereum-1/0xb92998ccd53135bf9f26cbb67590b070d287bed9/); ethereum `0xc003be...93faa3` | ⚠️ Unaudited |
| SavingsDai | unknown | ethereum | n/a | [`0x83f20f...42beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | ⚠️ Unaudited |
| Sifu | unknown | ethereum | n/a | [`0x8dd098...9697ff`](./contracts/ethereum-1/0x8dd09822e83313adca54c75696ae80c5429697ff/) | ⚠️ Unaudited |
| SifuM | unknown | ethereum | n/a | [`0x593899...ddaab5`](./contracts/ethereum-1/0x5938999dd0cc4d480c3b1a451aecc78ae4ddaab5/) | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/); ethereum `0x4ca9c6...c42b8c` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | token | ethereum | n/a | [`0xbcdad8...92279a`](./contracts/ethereum-1/0xbcdad8dedff0bdf425bbf7cb5970157da492279a/) | ⚠️ Unaudited |
| StableDebtToken | token | ethereum | n/a | 17 deployments: ethereum [`0x043fc0...2b4bbd`](./contracts/ethereum-1/0x043fc0b333034a13061601275420f1601e2b4bbd/); ethereum `0x05d682...6a58eb`; ethereum `0x1c5c84...18bf99`; ethereum `0x2cb86d...7a62f7`; ethereum `0x3f4478...f76e14`; ethereum `0x4ff822...1b2e5a`; ethereum `0x6b5766...e69bea`; ethereum `0x74943d...8214be`; ethereum `0x7aef02...731131`; ethereum `0xa097ec...7bd5bd`; ethereum `0xbf5214...00b919`; ethereum `0xbf772d...9d7e96`; ethereum `0xc7c3d7...a60a3c`; ethereum `0xcbd753...20adc4`; ethereum `0xcc80c9...123b0d`; ethereum `0xec6f20...d85774`; ethereum `0xf39a01...c2a59c` | ⚠️ Unaudited |
| StakedUSDeV2 | token | ethereum | n/a | [`0x9d39a5...7a3497`](./contracts/ethereum-1/0x9d39a5de30e57443bff2a8307a4256c8797a3497/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenMintERC20Token | token | ethereum | n/a | [`0x29127f...eac313`](./contracts/ethereum-1/0x29127fe04ffa4c32acac0ffe17280abd74eac313/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x3e0486...2b6027`](./contracts/ethereum-1/0x3e04863dba602713bb5d0edbf7db7c3a9a2b6027/) | ⚠️ Unaudited |
| USDe | unknown | ethereum | n/a | [`0x4c9edd...1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | ⚠️ Unaudited |
| UwU | unknown | ethereum | n/a | [`0x55c08c...765257`](./contracts/ethereum-1/0x55c08ca52497e2f1534b59e2917bf524d4765257/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 39 deployments: ethereum [`0x2f50d5...5846bb`](./contracts/ethereum-1/0x2f50d538606fa9edd2b11e2446beb18c9d5846bb/); ethereum `0x3993d3...22d446`; ethereum `0x3a283d...907611`; ethereum `0x3b6831...bce833`; ethereum `0x3d229e...d7b23b`; ethereum `0x4c18e4...e0ae79`; ethereum `0x4ca9b3...be596f`; ethereum `0x575ccd...318e2c`; ethereum `0x5f3b5d...94e2a2`; ethereum `0x64e3c2...ac041d`; ethereum `0x6c3f90...e6e490`; ethereum `0x705350...55410f`; ethereum `0x70fc95...745f68`; ethereum `0x752ebe...efaeac`; ethereum `0x7ca5b0...1d7575`; ethereum `0x80466c...638fe5`; ethereum `0x8282bd...43a2ef`; ethereum `0x8301ae...d7c511`; ethereum `0x848467...e84834`; ethereum `0x9838ec...c9427b`; ethereum `0x98638f...996122`; ethereum `0x98a7f1...d3eb8b`; ethereum `0xa85461...5fba10`; ethereum `0xa90996...857849`; ethereum `0xb19059...e572fd`; ethereum `0xb1f2cd...202cac`; ethereum `0xb57649...b0e0d4`; ethereum `0xbc89cd...ca8f53`; ethereum `0xbebc44...2ff1c7`; ethereum `0xbfcf63...d0952a`; ethereum `0xc4ad29...7675ff`; ethereum `0xca3d75...9a6bdf`; ethereum `0xcb0871...60147b`; ethereum `0xd061d6...c2fce0`; ethereum `0xd10d54...902e5a`; ethereum `0xd446a9...ab7e5a`; ethereum `0xd51a44...faae46`; ethereum `0xd533a9...34cd52`; ethereum `0xed4064...ff5c4d` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | ethereum | n/a | [`0x793533...c6addd`](./contracts/ethereum-1/0x7935330d82c3b2b96b2e6bdec13e2dfca1c6addd/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WETHGateway | token | ethereum | n/a | [`0x2fd22a...4d7d2f`](./contracts/ethereum-1/0x2fd22a9db5e07bfff9145e549c463967864d7d2f/) | ⚠️ Unaudited |
| Wonderland | unknown | ethereum | n/a | [`0x9b06f3...c68a76`](./contracts/ethereum-1/0x9b06f3c5de42d4623d7a2bd940ec735103c68a76/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x019d39...e6a3e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08fd54...7dffdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c16d7...cfbd66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d309b...5c28d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23a0a2...98db14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25d580...854585` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x298a32...556f66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e707e...18da7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fe2eb...7bcac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x442707...379219` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4791e8...fabacc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c7e93...f6d388` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4e67...9c73b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fa44a...45c806` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60b8b1...09da4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6356bf...831e88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x687527...a2d518` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7749ee...a97712` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c417f...7c6a86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f0e5a...42e3e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f49be...18a1b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82893d...fc1779` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aa8b3...4e182d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b93ae...e03812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9060a4...ac0762` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x964ead...9cd6e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c1fcf...5a6cb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4fcc8...ff24bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa61dac...d8dfc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa67a82...a27c87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8c931...d36e2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa436c...0549a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacfbdb...34ecdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1ad05...5be7cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2f81b...b91328` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6c153...2453f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7cd17...cfa764` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8aedf...383499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb0589...3e45f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc74211...e247df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc80468...bbc0d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd21040...bff916` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7f950...186717` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7fbb4...a0d3a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd865c7...bd32bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe76d93...e99c7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe81964...a761c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedb47f...6b4724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeee1b3...1c2549` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Liquity.pdf](https://github.com/trailofbits/publications/blob/master/reviews/Liquity.pdf) | Trail of Bits | Audit | 2021-01 | stale | Inherited from Liquity | contract_name | 8 | high |
| [www.coinspect.com/blog/liquity-audit](https://www.coinspect.com/blog/liquity-audit) | unknown | Audit | 2021-03 | stale | Inherited from Liquity | n/a | 0 | n/a |
| [Liquity - Smart Contract Audit 2021.pdf](https://www.coinspect.com/doc/Liquity%20%2D%20Smart%20Contract%20Audit%202021%2Epdf) | yAudit | Audit | 2021-03 | stale | Inherited from Liquity | n/a | 0 | n/a |
| [www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit](https://www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit) | Coinspect | Audit | 2025-01 | aging | Inherited from Liquity | n/a | 0 | n/a |
| [www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit](https://www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit) | Coinspect | Audit | 2025-01 | aging | Inherited from Liquity | n/a | 0 | n/a |
| [Liquity - Smart Contract Audit 2021.pdf](https://www.coinspect.com/doc/Liquity%20%2D%20Smart%20Contract%20Audit%202021.pdf) | Coinspect | Audit | 2021-03 | stale | Inherited from Liquity | contract_name | 9 | high |
| [PeckShield-Audit-Report-UWU-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-UWU-v1.0.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 143 | high |
| [PeckShield-Audit-Report-Radiant-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Radiant-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sourcehat.com/audits/RadiantProtocol](https://sourcehat.com/audits/RadiantProtocol) | SourceHat | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DIP001_audit_report_2020_03_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/DIP001_audit_report_2020_03_en_1_0.pdf) | PeckShield | Audit | 2020-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8c5a7f...9bc933`](./contracts/ethereum-1/0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933/) | AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18672b...0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d7dd...3f79c3`](./contracts/ethereum-1/0xb9d7dddca9a4ac480991865efef82e01273f79c3/) | BLUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa83848...4029ee`](./contracts/ethereum-1/0xa8384862219188a8f03c144953cf21fc124029ee/) | BondNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57619f...e37137`](./contracts/ethereum-1/0x57619fe9c539f890b19c61812226f9703ce37137/) | ChickenBondManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9332f...0738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | crvUSD ControllerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf939e0...ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | crvUSD Stablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02da86...aab6a8`](./contracts/ethereum-1/0x02da86a57432e3861b1ab183ab7b24fcf4aab6a8/) | CustomPriceGetter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5a5f1...f2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb5c23...8e9e5a`](./contracts/ethereum-1/0xdb5c23ae97f76dacc907f5f13bda54131c8e9e5a/) | IncentivesControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8390b...d6c568`](./contracts/ethereum-1/0xf8390b84533db97d3e415b4c7bf4251953d6c568/) | IncentivesControllerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac5384...cabed4`](./contracts/ethereum-1/0xac538416ba7438c773f29cf58afdc542fdcabed4/) | LendingPoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e9f84...fe7ddb`](./contracts/ethereum-1/0x2e9f846ce3820531b52c08d3d4543be5c8fe7ddb/) | LendingPoolCollateralManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x413a1f...522fe4`](./contracts/ethereum-1/0x413a1f0098a8c5ba1078552af515bd0146522fe4/) | LendingRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67bd24...30edab`](./contracts/ethereum-1/0x67bd2425823614a8d0a90c467cf36c34db30edab/) | Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32facb...203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | MultiClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x630de1...2bdd44`](./contracts/ethereum-1/0x630de1180a22e76e70e041da5eb9b676ce2bdd44/) | MultiFeeDistributionV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | NEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea6876...3205e0`](./contracts/ethereum-1/0xea6876dde9e3467564acbee1ed5bac88783205e0/) | OneWayLendingFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226845...6c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | PegPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb92998...87bed9`](./contracts/ethereum-1/0xb92998ccd53135bf9f26cbb67590b070d287bed9/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83f20f...42beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | SavingsDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8dd098...9697ff`](./contracts/ethereum-1/0x8dd09822e83313adca54c75696ae80c5429697ff/) | Sifu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x593899...ddaab5`](./contracts/ethereum-1/0x5938999dd0cc4d480c3b1a451aecc78ae4ddaab5/) | SifuM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcdad8...92279a`](./contracts/ethereum-1/0xbcdad8dedff0bdf425bbf7cb5970157da492279a/) | StableAndVariableTokensHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x043fc0...2b4bbd`](./contracts/ethereum-1/0x043fc0b333034a13061601275420f1601e2b4bbd/) | StableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d39a5...7a3497`](./contracts/ethereum-1/0x9d39a5de30e57443bff2a8307a4256c8797a3497/) | StakedUSDeV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c9edd...1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | USDe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55c08c...765257`](./contracts/ethereum-1/0x55c08ca52497e2f1534b59e2917bf524d4765257/) | UwU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f50d5...5846bb`](./contracts/ethereum-1/0x2f50d538606fa9edd2b11e2446beb18c9d5846bb/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x793533...c6addd`](./contracts/ethereum-1/0x7935330d82c3b2b96b2e6bdec13e2dfca1c6addd/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fd22a...4d7d2f`](./contracts/ethereum-1/0x2fd22a9db5e07bfff9145e549c463967864d7d2f/) | WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b06f3...c68a76`](./contracts/ethereum-1/0x9b06f3c5de42d4623d7a2bd940ec735103c68a76/) | Wonderland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 100 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 1
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=159, inherited_name_remap=1

Zero-match audit list:

- [16677] www.coinspect.com/blog/liquity-audit
- [16678] Liquity - Smart Contract Audit 2021.pdf
- [16679] www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit
- [16680] www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit
- [21206] PeckShield-Audit-Report-Radiant-v1.0.pdf
- [21207] sourcehat.com/audits/RadiantProtocol
- [21208] DIP001_audit_report_2020_03_en_1_0.pdf

Possible remapped coverage (verified):

- [16676] Liquity.pdf: CollSurplusPool (remapped from DefaultPool)

Fork inheritance lineage and inherited audits are included when available.
