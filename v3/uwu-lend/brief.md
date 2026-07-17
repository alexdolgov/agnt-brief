# Agentic Audit Brief: UwU Lend

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: UwU Lend (`uwu-lend`)
- Website: [https://www.uwulend.fi/](https://www.uwulend.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 152 unique implementations (406 raw deployments)
- Coverage basis: 12/54 confirmed own live verified implementations (22.2%); conservative 22.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $236,350.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for UwU Lend. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 123 contract row(s) across ethereum. Structural roles: 71 core, 36 unclassified, 16 supporting. 15 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 123
- Structural roles: core (71), unclassified (36), supporting (16)
- Contract kinds: contract (120), unclassified (3)
- Detected standards: erc20 (35), ownable (18), erc1967proxy (15), erc20permit (8), erc165 (3), pausable (3), accesscontrol (2), erc4626 (2)
- Frameworks: openzeppelin (80), foundry (23), boringcrypto (4)
- Upgradeable-pattern rows: 15

## Fork Analysis

5 of 89 contracts are derived from known codebases. 84 contracts have no detected origin.

### Forked Contracts

**FRAXStablecoin** (`0x853d955acef822db058eb8505911ed77f175b99e`, chain 1)
Origin: alchemix (`0x853d955acef822db058eb8505911ed77f175b99e`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**InitializableImmutableAdminUpgradeabilityProxy** (`0x408c9764993209dc772eb12ff641f4b55f5b005c`, chain 1)
Origin: xave-finance (`0xc8c8e23dfddb3082d50e18342d26a06a8150eb8c`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LendingPool** (`0x05bfa9157e92690b179033ca2f6dd1e86b25ea4d`, chain 1)
Origin: bao-finance (`0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LendingPoolConfigurator** (`0x40daf7be3a99b898f54fb7968d16db5103835347`, chain 1)
Origin: xave-finance (`0xc8c8e23dfddb3082d50e18342d26a06a8150eb8c`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ValidationLogic** (`0x3c0ada81038a078cc1272ac22745ddd1ab8839af`, chain 1)
Origin: bao-finance (`0x8dff5e27ea6b7ac08ebfdf9eb090f32ee9a30fcf`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- AaveOracle (`0xac4a2ac76d639e10f2c05a41274c1af85b772598`, chain 1)
- AaveProtocolDataProvider (`0x17938ede656ca1901807abf43a6b1d138d8cd521`, chain 1)
- AnyswapV5ERC20 (`0x3b79a28264fc52c7b4cea90558aa0b162f7faf57`, chain 1)
- ATokensAndRatesHelper (`0xaab1b4260297fffdbc267a46b73c7fcd43b95645`, chain 1)
- BLUSDToken (`0xb9d7dddca9a4ac480991865efef82e01273f79c3`, chain 1)
- ChefIncentivesController (`0x21953192664867e19f85e96e1d1dd79dc31cccdb`, chain 1)
- crvUSD Stablecoin (`0xf939e0a03fb07f59a73314e73794be0e57ac1b4e`, chain 1)
- Dai (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- DefaultReserveInterestRateStrategy (`0x03bca34ff553a2ede4f1fceb177dc42ee6af7b64`, chain 1)
- DefaultReserveInterestRateStrategy (`0x4cc68501c23ce0977ae52fc935745b6d7fccd1c2`, chain 1)
- DefaultReserveInterestRateStrategy (`0x690dcb18c1a56cd2711102c2427729739dff494a`, chain 1)
- DefaultReserveInterestRateStrategy (`0x9203a201800c95399e66ebcdd2fe42ba81cf1a9c`, chain 1)
- DefaultReserveInterestRateStrategy (`0xb87872e3ef8916e9606231cab8787712ab5543b0`, chain 1)
- DefaultReserveInterestRateStrategy (`0xba285ed9a1fc13b4860e2d2cb8910bcd1be9e6a6`, chain 1)
- DefaultReserveInterestRateStrategy (`0xc818d61b4e601ab5c957c7f9ec0cf65e387a89c5`, chain 1)
- DefaultReserveInterestRateStrategy (`0xf15ca7550959b8541dbff631fc7aac65088c1836`, chain 1)
- GenericLogic (`0xaede01960810a655aecf86278bfdf5c968198b89`, chain 1)
- IncentivesControllerV2 (`0xdb5c23ae97f76dacc907f5f13bda54131c8e9e5a`, chain 1)
- IncentivesControllerV3 (`0xf8390b84533db97d3e415b4c7bf4251953d6c568`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x02738ef3f8d8d3161dbbedbda25574154c560dae`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x1254b1fd988a1168e44a4588bb503a867f8e410f`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x13cdfdd18e6bb8d41be0a55d9cf697c0ef11176b`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x20e61ba4365cc4bfa82b1449982e091904564aa4`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x2409af0251dcb89ee3dee572629291f9b087c668`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x243387a7036bfcb09f9bf4eced1e60765d31aa70`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x24959f75d7bda1884f1ec9861f644821ce233c7d`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x29d567fa37b4af64dd1b886571cd1ff5d403ac3f`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x39a873f3f60bb4cd81fe46f3beb6285bdb7726b9`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x453842ba9dcd4569407b2adedeb8636314d023d3`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x51144708b82ea3b5b1002c9dc38b71ec63b7e670`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x51e0f19bf0b765bc55724c7374fe00ab229427d9`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x5c8cb0e43cb17553ab4a37011c3dc743aeb3f241`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x64e4843ffdfb62d205b049ddbe8b949534e4e2d4`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x67fadbd9bf8899d7c578db22d7af5e2e500e13e5`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x6ace5c946a3abd8241f31f182c479e67a4d8fc8d`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x8028ea7da2ea9bcb9288c1f6f603169b8aea90a6`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x82a49c799c4ca5bdb629bcd6107737a3de8d2805`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x8c240c385305aeb2d5ceb60425aabcb3488fa93d`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x9abe34021128c17de3c2180a02932eb5e1bb18ef`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xaac1d67f1c17ec01593d76e831c51a4f458dc160`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xadfa5fa0c51d11b54c8a0b6a15f47987bd500086`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb95bd0793bcc5524af358ffaae3e38c3903c7626`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb9e8bcd56f26b0540989a66aa24d431cdb0affa0`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xbac9d17f290260a1d5f1b69cac84dba6b4488d66`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc480a11a524e4db27c6d4e814b4d9b3646bc12fc`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc4bf704f51aa4ce1aa946ffe15646f9b271ba0fa`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xd1e6b03bf65b381cbdeccf275535d40d4c3510e2`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xd5bfd3d736477f48efc873ee464f4a8b5447850b`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xd7f6e4e10fd1e7faf642fa924c5ea2b6c5450d11`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xdb1a8f07f6964efcfff1aa8025b8ce192ba59eba`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xe873e375065ce4dd7f96a289f74f885509748fad`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xeb61e567cbaeaccb6c259def92900bc59d8a14cc`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xec12f63116bd2493104a26fbdbcd70f51ab7b2c1`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xf1293141fc6ab23b2a0143acc196e3429e0b67a6`, chain 1)
- LendingPoolAddressesProvider (`0x011c0d38da64b431a1bdfc17ad72678eabf7f1fb`, chain 1)
- LendingPoolAddressesProviderRegistry (`0xac538416ba7438c773f29cf58afdc542fdcabed4`, chain 1)
- LendingPoolCollateralManager (`0x2e9f846ce3820531b52c08d3d4543be5c8fe7ddb`, chain 1)
- LendingRateOracle (`0x413a1f0098a8c5ba1078552af515bd0146522fe4`, chain 1)
- Leverager (`0x780dcfda4a6de88d5c4f912345b99223012f32ed`, chain 1)
- LUSDToken (`0x5f98805a4e8be255a32880fdec7f6728c6568ba0`, chain 1)
- MagicInternetMoneyV1 (`0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3`, chain 1)
- MultiFeeDistribution (`0x7c0bf1108935e7105e218bbb4f670e5942c5e237`, chain 1)
- MultiFeeDistributionV2 (`0x0a7b2a21027f92243c5e5e777aa30bb7969b0188`, chain 1)
- MultiFeeDistributionV3 (`0x630de1180a22e76e70e041da5eb9b676ce2bdd44`, chain 1)
- ReserveLogic (`0x4be75900f8a54d7d5962e950f3af98d61f8fbdd9`, chain 1)
- SavingsDai (`0x83f20f44975d03b1b09e64809b757c47f942beea`, chain 1)
- Sifu (`0x8dd09822e83313adca54c75696ae80c5429697ff`, chain 1)
- SifuM (`0x5938999dd0cc4d480c3b1a451aecc78ae4ddaab5`, chain 1)
- sSpellV1 (`0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9`, chain 1)
- sSpellV1 (`0x4ca9c6f89758877b78a44e57fd8feb89b4c42b8c`, chain 1)
- StableAndVariableTokensHelper (`0xbcdad8dedff0bdf425bbf7cb5970157da492279a`, chain 1)
- StakedUSDeV2 (`0x9d39a5de30e57443bff2a8307a4256c8797a3497`, chain 1)
- StakingRewards (`0xe3643512532fe1f3522745787e883f9729527186`, chain 1)
- TetherToken (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- TokenMintERC20Token (`0x29127fe04ffa4c32acac0ffe17280abd74eac313`, chain 1)
- UiPoolDataProviderV2 (`0x19dd01d5cd88eae5674a2ab94d654f9413e20ce5`, chain 1)
- UniswapV2Pair (`0x3e04863dba602713bb5d0edbf7db7c3a9a2b6027`, chain 1)
- UwU (`0x55c08ca52497e2f1534b59e2917bf524d4765257`, chain 1)
- Vyper_contract (`0xd533a949740bb3306d119cc777fa900ba034cd52`, chain 1)
- WalletBalanceProvider (`0x7935330d82c3b2b96b2e6bdec13e2dfca1c6addd`, chain 1)
- WBTC (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- WETH9 (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- WETHGateway (`0x2fd22a9db5e07bfff9145e549c463967864d7d2f`, chain 1)
- Wonderland (`0x9b06f3c5de42d4623d7a2bd940ec735103c68a76`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 123; live-surface rows included: 123 (123 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 87/87 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/54 (22.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 54 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Confirmed-live implementations: 54 of 152 unique; 98 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 12/102
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 152
- Raw deployments: 406
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 12 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 12 | 11.8% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260169 | `0xac4a2ac76d639e10f2c05a41274c1af85b772598` | ✅ Audited |
| AToken | token | project_anchor | own_supporting | 18 | ethereum | unit-260194 | 59 deployments: ethereum `0x02738ef3f8d8d3161dbbedbda25574154c560dae`; ethereum `0x044ad85f8421d8ffc383095e4db23656086a9c97`; ethereum `0x10ee4ac0e052312ca3d2f01ed75df7e2c3d7fa5d`; ethereum `0x12df06aef0c0d5ac1809b73ceb15da4ea651bc52`; ethereum `0x13adb41f38cd14ac4f42db5ea60ae474a54e5509`; ethereum `0x17b13209d132a14f8e2130cafbfe89194424f6c8`; ethereum `0x20e61ba4365cc4bfa82b1449982e091904564aa4`; ethereum `0x243387a7036bfcb09f9bf4eced1e60765d31aa70`; ethereum `0x24959f75d7bda1884f1ec9861f644821ce233c7d`; ethereum `0x2c93899383f4798e79b80bc278144c6f2a2f7f64`; ethereum `0x2ea21b1d2429d71abb2624a660a92baece58b479`; ethereum `0x3435ccfa639b756aa7c5097008ab70984524eaf5`; ethereum `0x3e0807714e3c26aa25fe69526b18c53c69d9b22c`; ethereum `0x41adb3fd5d0c8771860805c96b88da257fd7a5ce`; ethereum `0x4722a5bb5c262f6d531ce9983a0cff50f19a5a9c`; ethereum `0x4823643f7e4298c2d99a608cb064770e87a74bf7`; ethereum `0x48ab3938e166f17ce8be0d5b40930c90f52c4b35`; ethereum `0x4c82a5191c6d93fb1ec1146be47176cd00a7b002`; ethereum `0x51144708b82ea3b5b1002c9dc38b71ec63b7e670`; ethereum `0x550649c2a66ca0ad5fc54e74d5603c7be3b0e4aa`; ethereum `0x5675dd04b4276c6d614f5f2fee55ee0457ed0f41`; ethereum `0x56e3f10a0a61432f3485174f391141df172bd25c`; ethereum `0x576098250889835a517355acfd81e9ede44b6fdd`; ethereum `0x5ed0517ee80f0ceb47a694cfbc559fd7ce93059b`; ethereum `0x5f5c8fdc1c85fea814b400a05ee135a1c6fc95ca`; ethereum `0x61e9a703a390b83a915a1e30b3073b7bc50fd6ff`; ethereum `0x67b3750733efa3fbe6291af96add7b5050020b8e`; ethereum `0x67fadbd9bf8899d7c578db22d7af5e2e500e13e5`; ethereum `0x6ace5c946a3abd8241f31f182c479e67a4d8fc8d`; ethereum `0x7a9f54e779a1ac4265212ea94d6cae36dcdcc1f0`; ethereum `0x8028ea7da2ea9bcb9288c1f6f603169b8aea90a6`; ethereum `0x8232d353bab970ddede3e376e32d7b1ce24430f5`; ethereum `0x871ac01199c5d581145764b15a16fda745b36cca`; ethereum `0x8c240c385305aeb2d5ceb60425aabcb3488fa93d`; ethereum `0x8dd93b5dfd11ab2c42016670c63dd9cd4e65fd27`; ethereum `0x8ddbbe5c8ec86e61686b9bd2abfb0cfc67d10e89`; ethereum `0x9d111e09bffc02d9e2fd8f388d45a1a4af049e25`; ethereum `0x9dad36853b8c6ce9a206b83d47b28a4c49205075`; ethereum `0xa066f10e11352581e78ffadd3cb1b69db35973fe`; ethereum `0xa256d09531dd7569e8ec224ce8d8c2ba001bd54c`; ethereum `0xa69d94ca2c538ad2622ea89e3f5c65b2c7e1188a`; ethereum `0xadfa5fa0c51d11b54c8a0b6a15f47987bd500086`; ethereum `0xb5bb4f1a3a5a644d80f97bd60eed0c2dfb2afeb8`; ethereum `0xb5cf0d3f5d1247dd0b5496fd8f9c309767d2cbe2`; ethereum `0xb95bd0793bcc5524af358ffaae3e38c3903c7626`; ethereum `0xc480a11a524e4db27c6d4e814b4d9b3646bc12fc`; ethereum `0xc4bf704f51aa4ce1aa946ffe15646f9b271ba0fa`; ethereum `0xcb0245aa8f36993ab99e22a13ec9f5f480574bb6`; ethereum `0xcca2f076845bfe9c77654a87a708ad9cdc844429`; ethereum `0xd1e6b03bf65b381cbdeccf275535d40d4c3510e2`; ethereum `0xdb1a8f07f6964efcfff1aa8025b8ce192ba59eba`; ethereum `0xe44d24fcbd9c7755907a400ed32ee7901175b14b`; ethereum `0xe6e33b26476dca924ec500e03e54b8f5e0dc8c43`; ethereum `0xe73c56f8fded020a4c975da6148bb61ba4bbf99a`; ethereum `0xe873e375065ce4dd7f96a289f74f885509748fad`; ethereum `0xeb61e567cbaeaccb6c259def92900bc59d8a14cc`; ethereum `0xf1293141fc6ab23b2a0143acc196e3429e0b67a6`; ethereum `0xf47dfce7fa5a10cb462cab98e5076a2a525b2a06`; ethereum `0xff1c3d38ccdd719898abb478c257581557abc039` | ✅ Audited |
| ChefIncentivesController | governance | project_anchor | own_supporting | 0 | ethereum | unit-260139 | `0x21953192664867e19f85e96e1d1dd79dc31cccdb` | ✅ Audited |
| GenericLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260171 | `0xaede01960810a655aecf86278bfdf5c968198b89` | ✅ Audited |
| LendingPoolAddressesProvider | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260134 | 6 deployments: ethereum `0x011c0d38da64b431a1bdfc17ad72678eabf7f1fb`; ethereum `0x10141a3fb615d7af2ffb151d675e80e2f919a0d0`; ethereum `0x1166deebec7e112ace261a283dba7b876a5390bf`; ethereum `0x3e25876aea64a39554b4e0f6dce6360e38cbe234`; ethereum `0x86aba3373d3365c2684ef7a2bb24314b146be7cc`; ethereum `0xebdbb9846073a6dc288d92684a0187f208eb10f6` | ✅ Audited |
| Leverager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260158 | `0x780dcfda4a6de88d5c4f912345b99223012f32ed` | ✅ Audited |
| MultiFeeDistribution | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260160 | `0x7c0bf1108935e7105e218bbb4f670e5942c5e237` | ✅ Audited |
| MultiFeeDistributionV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260136 | `0x0a7b2a21027f92243c5e5e777aa30bb7969b0188` | ✅ Audited |
| ReserveLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260149 | `0x4be75900f8a54d7d5962e950f3af98d61f8fbdd9` | ✅ Audited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260181 | `0xe3643512532fe1f3522745787e883f9729527186` | ✅ Audited |
| ValidationLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260146 | `0x3c0ada81038a078cc1272ac22745ddd1ab8839af` | ✅ Audited |
| VariableDebtToken | token | project_anchor | own_supporting | 16 | ethereum | n/a | 57 deployments: ethereum `0x0f6885ded5ef51f773e40f3ccd323131f3fac22c`; ethereum `0x1125a006396c40d80c51c51e787979bb8b06549a`; ethereum `0x1254b1fd988a1168e44a4588bb503a867f8e410f`; ethereum `0x13cdfdd18e6bb8d41be0a55d9cf697c0ef11176b`; ethereum `0x1c01d301cbdb3497ba84a339101e93da30a4faa0`; ethereum `0x24c988aa019e2ddbc788c334b9ec08b715bb9af6`; ethereum `0x28d9ca44105ff50ae51edd3f43b4df67c541e51b`; ethereum `0x29d567fa37b4af64dd1b886571cd1ff5d403ac3f`; ethereum `0x2ce6eb07c2e9c88b9fe665a75400db7bf21203d9`; ethereum `0x3923c7ca0db0df747f32c50fd478247f7926ea32`; ethereum `0x39a873f3f60bb4cd81fe46f3beb6285bdb7726b9`; ethereum `0x40477637151b0e182242185166c485836d4211bf`; ethereum `0x407e84b671f018f86fcf02a4df2d8daa906f9368`; ethereum `0x4385ae8f5275568cc31cb8f112cb3fb4d8ada6e0`; ethereum `0x453842ba9dcd4569407b2adedeb8636314d023d3`; ethereum `0x4b8e01020b942bb5c0b4a8368a2ec44e12ec0319`; ethereum `0x50db712486c38fd7fcf0c72894d70ce4b0475781`; ethereum `0x51e0f19bf0b765bc55724c7374fe00ab229427d9`; ethereum `0x5c8cb0e43cb17553ab4a37011c3dc743aeb3f241`; ethereum `0x604b7980d3611116b24707ecce425bea929fdce4`; ethereum `0x6063ed0d6d3f0750c4240ab178a189809a805b47`; ethereum `0x64e4843ffdfb62d205b049ddbe8b949534e4e2d4`; ethereum `0x70e3e2d8450f148a76cc04c52b3bc803493e9255`; ethereum `0x726da50fdbce564ffe88d58c23766193907c9189`; ethereum `0x75e02dd8123b460fdb2bc52cb67becbbead25614`; ethereum `0x79e01cf0ebe41446318c04ae61c4ebcc1a8bf9c8`; ethereum `0x7c14f35cb20ec5aaf16f02df3ba546b8224e1c99`; ethereum `0x82a49c799c4ca5bdb629bcd6107737a3de8d2805`; ethereum `0x8975bcf1fd81d2eb8164919de4d5897efaa633ad`; ethereum `0x89ec197ce3d072997a6966312300684a8bdb1f90`; ethereum `0x8da785a2f19b3f69359cf86a4a12a6fcbde34929`; ethereum `0x903e35e149424a13bdb6c63ef72e74394bd9e45b`; ethereum `0x97a19ba727e034eccc33608a994bff5c618ad012`; ethereum `0x9abe34021128c17de3c2180a02932eb5e1bb18ef`; ethereum `0x9ddfc4f8ad48940e323ccfd4426bd0b074a64f45`; ethereum `0xa2c32a116e959ee35d5c99a2a575697814d9eebc`; ethereum `0xa71b2cebb5e0ac07497f825470e45383e1997083`; ethereum `0xaab79161546e64845ad07527fda4b7246ececd93`; ethereum `0xaac1d67f1c17ec01593d76e831c51a4f458dc160`; ethereum `0xac1bd73182c1469b7c103f35ac234fd056191c7a`; ethereum `0xb894e2bc1816f4c217612ea7683ab92c10d0b1f4`; ethereum `0xb9e8bcd56f26b0540989a66aa24d431cdb0affa0`; ethereum `0xbac9d17f290260a1d5f1b69cac84dba6b4488d66`; ethereum `0xbae0762ae91718138c60ffaa2d43be333a5e146b`; ethereum `0xbb85652ab83219e146bded3ea9c228a66e923d52`; ethereum `0xbc9a6bbff91cb28b1bb3f3ed91e937b84eb2c544`; ethereum `0xc523698b92fee97a3d3b5be5d6744dd3207c33b6`; ethereum `0xd1367ad1ea2202072d685d333f0077e63e696148`; ethereum `0xd4a4da45e170d43bba5685e04635ca0325219d1b`; ethereum `0xd5bfd3d736477f48efc873ee464f4a8b5447850b`; ethereum `0xd626d62f322e484629a475b544278b88f35e204f`; ethereum `0xd7f6e4e10fd1e7faf642fa924c5ea2b6c5450d11`; ethereum `0xdebb85c7378829229b4f4cea07eba49496e8e86f`; ethereum `0xe03496a48f59ec2a209f8dc473332e1499d539ef`; ethereum `0xec12f63116bd2493104a26fbdbcd70f51ab7b2c1`; ethereum `0xf3d6fa1fe40ad41d7bc42218067c4858ccf4affa`; ethereum `0xfcbd894a18358d53d38abb8b1c83c222c4b3096f` | ✅ Audited |

### ⚠️ Verified + Unaudited (90)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveProtocolDataProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260137 | `0x17938ede656ca1901807abf43a6b1d138d8cd521` | ⚠️ Unaudited |
| ActivePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f` | ⚠️ Unaudited |
| AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933` | ⚠️ Unaudited |
| AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b1b0c623a30089a280ed9256379fb0e4e62` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-260145 | `0x3b79a28264fc52c7b4cea90558aa0b162f7faf57` | ⚠️ Unaudited |
| ATokenBurnable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9621e6e650350576fbf94793b8a7b9f2f4f61b5` | ⚠️ Unaudited |
| ATokensAndRatesHelper | token | project_anchor | own_supporting | 0 | ethereum | unit-260168 | `0xaab1b4260297fffdbc267a46b73c7fcd43b95645` | ⚠️ Unaudited |
| BLUSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260173 | `0xb9d7dddca9a4ac480991865efef82e01273f79c3` | ⚠️ Unaudited |
| BondNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8384862219188a8f03c144953cf21fc124029ee` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24179cd81c9e782a4096035f7ec97fb8b783e007` | ⚠️ Unaudited |
| ChickenBondManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57619fe9c539f890b19c61812226f9703ce37137` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d32e8b97ed5881324241cf03b2da5e2ebce5521` | ⚠️ Unaudited |
| crvUSD ControllerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332fdcb1c491dcc683bae86fe3cb70360738bc` | ⚠️ Unaudited |
| crvUSD Stablecoin | token | project_anchor | own_supporting | 0 | ethereum | unit-260184 | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | ⚠️ Unaudited |
| CustomPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x02da86a57432e3861b1ab183ab7b24fcf4aab6a8`; ethereum `0x4939231c5d1ba724c9e2bc9b9c5fa16ed2a06c5a`; ethereum `0x4a5c35130286becf1393f6f56fa795ad738624fb`; ethereum `0x964d57a3df684524159dbcc1fab19f2a66c5c99d`; ethereum `0xa659b7b770b6519aa4f2ac4b41316a74e0f61a91`; ethereum `0xaedcf57350a034d5caaa9b6590ded60f73492eb1`; ethereum `0xc4076987cc1094e5364fc5b9203ec2965fff9a85`; ethereum `0xec674453db9cfcd5f474f94649092bf2fc0eadd2`; ethereum `0xf160abfb24fad81de393ce1b06145635cf264bb5` | ⚠️ Unaudited |
| Dai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260157 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260135 | `0x03bca34ff553a2ede4f1fceb177dc42ee6af7b64` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_core | 0 | ethereum | n/a | 36 deployments: ethereum `0x07b12795e18cb1568e9c24df4a54356846001ab7`; ethereum `0x0f2e9dc60e73dc328f5d04e4b6c83d0fcc55684e`; ethereum `0x1d2d10939de0a153ef7c4c566075aec3d60dc61b`; ethereum `0x23a625f94381a767713cab4fe880414bd84d2115`; ethereum `0x271787560903da9d7aa775b8b7004d451b3d0874`; ethereum `0x2a7743b4baed1267debc8e84caad0e64ed144fb6`; ethereum `0x2cee07005db0726e4814693ffa2677cec4cae023`; ethereum `0x39cee76900ac8ef70c6a49831044d0cfee7f5d30`; ethereum `0x3a1c46855b446100e862a46ff2cf9cc3f85c6b06`; ethereum `0x43631bc3b517a5ee149872632bbe45729d6ab1d0`; ethereum `0x4fc09399c77b11a6644f4a84cf6e067eee0868ce`; ethereum `0x5d89fa15ace0c240f29e9124c41525f62371e820`; ethereum `0x673ef673e78609fdc6b203c0a60ba86f97fbcb9b`; ethereum `0x6b011855f3ae618ade7ca52fc899a7828e8b2d64`; ethereum `0x73cae61ac8f59ebc04bebe2b2ffab62fb6360f88`; ethereum `0x88fbeb0022be4e8c0f9fba149b83d30791be03f5`; ethereum `0x9fcd8cde94bd5ba162139c20245e8801e08f6012`; ethereum `0xa3c9774d5a41443edb41795bf6b83a79790247f7`; ethereum `0xa645c8c13c1ff81bc881cb2272727126965ed356`; ethereum `0xaf3da5594bbe05bb2d3f56ae0a2d6ab7def19df7`; ethereum `0xb5782e0a5af693bd638234c9e2c2ebafb38eca31`; ethereum `0xba285ed9a1fc13b4860e2d2cb8910bcd1be9e6a6`; ethereum `0xc3f77e44c4d6366fdf6e9620499c2cea1ec9342b`; ethereum `0xc52216be18e4847b3f075a54961ffd2d1f8663f3`; ethereum `0xc65de150da3ce599e28f10b232cd89aa5e7ac239`; ethereum `0xc9bae09e27ceaf84a54f2061b9ce43a3fe9e036d`; ethereum `0xca2a8300489487a6e94cc85028ccf465e5edebf3`; ethereum `0xca328d134df1714901e39f8d61d2ef274f86c90e`; ethereum `0xcb830c23a9736089ae588313ebfa5b317e34421f`; ethereum `0xcca85d91c3db299eb2e07c24be513fb4d9757c09`; ethereum `0xd14b841469b4dadfee06b310f407da0a979ba3bf`; ethereum `0xd4fb946e72c4b9ab8bc1728df2012f7057da1479`; ethereum `0xda741178fddf0207f6060b2543c80419a4e362d2`; ethereum `0xec2416bf49ee3cf57eb2cb6b55061e9c9d691390`; ethereum `0xf01f289a70e8fb8f396e6379529289bd9076e15b`; ethereum `0xf15ca7550959b8541dbff631fc7aac65088c1836` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260151 | `0x4cc68501c23ce0977ae52fc935745b6d7fccd1c2` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260156 | `0x690dcb18c1a56cd2711102c2427729739dff494a` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260164 | `0x9203a201800c95399e66ebcdd2fe42ba81cf1a9c` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260172 | `0xb87872e3ef8916e9606231cab8787712ab5543b0` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260177 | `0xc818d61b4e601ab5c957c7f9ec0cf65e387a89c5` | ⚠️ Unaudited |
| DSToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x97bf1ff371ceabbb9e821480d31dd743c4b71e0e`; ethereum `0x9aed7a25f2d928225e6fb2388055c7363ad6727b` | ⚠️ Unaudited |
| Dummy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d0e323c6531ec9340cf3ddb1c29667798e8ebc` | ⚠️ Unaudited |
| Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ⚠️ Unaudited |
| FallbackOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bc6333081266e55d88942e277fc809b485698b9` | ⚠️ Unaudited |
| FlashLiquidatorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4752206fc014c2c142ff731be7e69d9d89d418fa` | ⚠️ Unaudited |
| FRAXStablecoin | token | project_anchor | own_supporting | 0 | ethereum | unit-260162 | `0x853d955acef822db058eb8505911ed77f175b99e` | ⚠️ Unaudited |
| IncentivesControllerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x78f3fc482cb170012dc0402eb2007c5f40c346b2`; ethereum `0x81a45d3d16d2621f4cd2a2398bc7e93347b7ad45` | ⚠️ Unaudited |
| IncentivesControllerV2 | governance | project_anchor | own_supporting | 0 | ethereum | unit-260180 | `0xdb5c23ae97f76dacc907f5f13bda54131c8e9e5a` | ⚠️ Unaudited |
| IncentivesControllerV3 | governance | project_anchor | own_supporting | 0 | ethereum | n/a | 5 deployments: ethereum `0x24911dad45220af2f258fa2434ac51e7b979215b`; ethereum `0x415243c28ee353c0c5dd3ba76d3e011114560ec3`; ethereum `0x8c7f54a2fb90c9366e3fa8b31af47c0dd357aedf`; ethereum `0x93ad34560df42bd90f608ceb7872b8cc80dd453a`; ethereum `0xf8390b84533db97d3e415b4c7bf4251953d6c568` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-260186 | 2 deployments: ethereum `0x05bfa9157e92690b179033ca2f6dd1e86b25ea4d`; ethereum `0x2409af0251dcb89ee3dee572629291f9b087c668` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | project_anchor | own_supporting | 0 | ethereum | n/a | 5 deployments: ethereum `0x34a7db36d435e3404b82dfd338d48255e1e4a3ec`; ethereum `0x4392393bc2e46d528ad1a891ea9d78f7cbe9ccca`; ethereum `0x668b234b42deb9d8607271428bc1cfd23f0dd9ef`; ethereum `0x843a69bf787d260a42c0c54f1fd0e563ccff16d8`; ethereum `0xac538416ba7438c773f29cf58afdc542fdcabed4` | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260143 | `0x2e9f846ce3820531b52c08d3d4543be5c8fe7ddb` | ⚠️ Unaudited |
| LendingPoolConfigurator | core_logic | project_anchor | own_core | 1 | ethereum | n/a | 3 deployments: ethereum `0x1c0e90b5d9b0b1497979fdde0f08249bde2c69ae`; ethereum `0x408c9764993209dc772eb12ff641f4b55f5b005c`; ethereum `0x40daf7be3a99b898f54fb7968d16db5103835347` | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260148 | `0x413a1f0098a8c5ba1078552af515bd0146522fe4` | ⚠️ Unaudited |
| Leverager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0663cf7d88c91f785a3e53372bbf27d422b6567c`; ethereum `0x10bc453811893b7031b489cb67739ae35b7afdd8`; ethereum `0x3516b83348af99021715f16db46d065bbe9f8c2a`; ethereum `0x38972f4bc20dbf2eb2a4cb0593414e7f1bc73c2d` | ⚠️ Unaudited |
| LQTYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d` | ⚠️ Unaudited |
| LQTYToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d` | ⚠️ Unaudited |
| LUSDPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0929786f027c4cd43bf15906d44fdc42e95df00f`; ethereum `0x257642ff3b3e6ae98fc7fc70ceb0ff926c3d7e69` | ⚠️ Unaudited |
| LUSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260154 | `0x5f98805a4e8be255a32880fdec7f6728c6568ba0` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260165 | `0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3` | ⚠️ Unaudited |
| MarryStrgtVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3d8bd8a39dcf7593543fde39a066c87e41138a82`; ethereum `0x6502dc7879a3158adf75b9ef499ccb90cbb152b9`; ethereum `0xb45d8a96a6020befa0bd0a0c1ed16a91a8cea199`; ethereum `0xc1950e7b0216da90ae69911dabc9f3e1db0b34f8` | ⚠️ Unaudited |
| MarryStrgtVaultWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9a92e217a5b5653d00d4fdd9fbb6e8b4513ffafe`; ethereum `0xe1ec18d475d02a8219a13d045a15fe67db8e0773` | ⚠️ Unaudited |
| Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x130e527ff9dd7e2c59b576d6553a8d0f79f824f2`; ethereum `0x458e7e99344996548fbc895cb5ce3e08ec9a7e59`; ethereum `0x54f839153ff4281a61cc90670905e059f15c3a7b`; ethereum `0x67bd2425823614a8d0a90c467cf36c34db30edab` | ⚠️ Unaudited |
| MigrationUpdater | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1be6de225bed949d10a053236aac9e80aceeea` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb5a46e02decaf5f939ab12c123eee203a5f` | ⚠️ Unaudited |
| MultiFeeDistributionUNIV3POS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x24c7ceec7e5d151accaf044a81a93f346e21f446`; ethereum `0x4c7e22c7a1fd8aa06c23237f56d1b974853115c7`; ethereum `0x716ea741b8b32ea7d543c14a352f00d7914d4457`; ethereum `0xaa5bce11a187af295ef9508f8432f479fa8867df` | ⚠️ Unaudited |
| MultiFeeDistributionV3 | unknown | project_anchor | own_core | 0 | ethereum | n/a | 2 deployments: ethereum `0x29a906316ad99270f294ef779fa61589f5b184bd`; ethereum `0x630de1180a22e76e70e041da5eb9b676ce2bdd44` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c051057b774cd75067dc48f8987c4eb97a5e` | ⚠️ Unaudited |
| OneInchSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeccbad532fa1ab87943c21d386194979a8ca178` | ⚠️ Unaudited |
| OneWayLendingFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6876dde9e3467564acbee1ed5bac88783205e0` | ⚠️ Unaudited |
| PegPrice | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x226845c2ba216b8bb1aaadfd4e14de69426c5445`; ethereum `0xe911fa14a49ac37e79ae8a60bd22a5f6a78c85a6` | ⚠️ Unaudited |
| RangePriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x29473bb643269606e00adae93ddb147a3463100e`; ethereum `0x781b291e4d5ca2b0ed46ebd37ddc70b3242fac2d`; ethereum `0x786a2623ef03a859a76cc718cb44ca3d8d424284`; ethereum `0x80d3570260e38e054abd5dcf211d6f1945ff1245`; ethereum `0x8338be71192aaf7c1d04bdb197ad21655f2e62e9`; ethereum `0x90ba920e2426857276a2338d69bf9cefee6c7b18`; ethereum `0x923576079ac789d8eaf0dc629a9f47f463d1bac5`; ethereum `0xa15151f44ff07139f638bb04c96159b1bd61bc92`; ethereum `0xe6518bad5e8161baf1923d47c099b5dbe55bcf97` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb92998ccd53135bf9f26cbb67590b070d287bed9`; ethereum `0xc003be0faf0b06f66fdf8264540b6a1e2e93faa3` | ⚠️ Unaudited |
| SavingsDai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260161 | `0x83f20f44975d03b1b09e64809b757c47f942beea` | ⚠️ Unaudited |
| Sifu | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260163 | `0x8dd09822e83313adca54c75696ae80c5429697ff` | ⚠️ Unaudited |
| SifuM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260153 | `0x5938999dd0cc4d480c3b1a451aecc78ae4ddaab5` | ⚠️ Unaudited |
| SIFUPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x51e9d8b9c4c72e840e308b89694e84844a9fffc9`; ethereum `0xc68838b3f922e244958f9399b21d3e46aabad0f4` | ⚠️ Unaudited |
| SiloOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac896fe1a3ca6b2ab316440d2a6e0eac83ccef7` | ⚠️ Unaudited |
| sSpellV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260141 | `0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9` | ⚠️ Unaudited |
| sSpellV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260150 | `0x4ca9c6f89758877b78a44e57fd8feb89b4c42b8c` | ⚠️ Unaudited |
| StabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66017d22b0f8556afdd19fc67041899eb65a21bb` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | token | project_anchor | own_supporting | 0 | ethereum | unit-260175 | `0xbcdad8dedff0bdf425bbf7cb5970157da492279a` | ⚠️ Unaudited |
| StableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 17 deployments: ethereum `0x043fc0b333034a13061601275420f1601e2b4bbd`; ethereum `0x05d682006df6306e371b5411863fc207506a58eb`; ethereum `0x1c5c841941d98cef5393423e6391bd0b1c18bf99`; ethereum `0x2cb86dc130f0e99c3ff7128b10d18096957a62f7`; ethereum `0x3f447884b0dc714dd3398e94cb4c31aa93f76e14`; ethereum `0x4ff822cc01051c30fb0a2d4899fbc889501b2e5a`; ethereum `0x6b5766198a2dbf85160985047b987a483be69bea`; ethereum `0x74943d75f0d9f2164cfe7727e20f1f91058214be`; ethereum `0x7aef021db359bb820ec191bcfc65e74758731131`; ethereum `0xa097ec3aae169e8e62ffc8980a9f657ef97bd5bd`; ethereum `0xbf5214c7d7c39b924d591cc43e80acd2cc00b919`; ethereum `0xbf772d84e26ceace3521b7c0ed5cf456149d7e96`; ethereum `0xc7c3d79d61c9e4e27ff904f66386a89726a60a3c`; ethereum `0xcbd753d1466a6fe68fb2d31f4027b889d120adc4`; ethereum `0xcc80c90d7e28fa0a7d5d3d6df0e86af502123b0d`; ethereum `0xec6f20a9b6c250b7adc90d7fede3aba23ed85774`; ethereum `0xf39a0170db39367657562b51f40b57db33c2a59c` | ⚠️ Unaudited |
| StakedUSDeV2 | token | project_anchor | own_supporting | 0 | ethereum | unit-260167 | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | ⚠️ Unaudited |
| sUSDePriceProviderBUniCatch | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd252953818bdf8507643c237877020398fa4b2e8` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260179 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| TokenMintERC20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-260142 | `0x29127fe04ffa4c32acac0ffe17280abd74eac313` | ⚠️ Unaudited |
| TroveManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2` | ⚠️ Unaudited |
| UiPoolDataProviderV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260138 | `0x19dd01d5cd88eae5674a2ab94d654f9413e20ce5` | ⚠️ Unaudited |
| Unipool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260147 | `0x3e04863dba602713bb5d0edbf7db7c3a9a2b6027` | ⚠️ Unaudited |
| USDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | ⚠️ Unaudited |
| UwU | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260152 | `0x55c08ca52497e2f1534b59e2917bf524d4765257` | ⚠️ Unaudited |
| UwUETHLPPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853376ce22da41ee9a8442d3f81d4ee8410bf5f8` | ⚠️ Unaudited |
| UwUUiPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x027d9e6f282a6620bf3b44289fcfe444305dc514` | ⚠️ Unaudited |
| VariableDebtTokenBurnable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9802a71b3d10657c166ceca41dc3b70926b979af` | ⚠️ Unaudited |
| VaultPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4127c543b66387d6cd139079d0d85630eed5fd` | ⚠️ Unaudited |
| VaultRangePriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8e89e4f0f5696b3ee2b482e26aa315ab861241` | ⚠️ Unaudited |
| VoltaPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99497b973d8bd6be3c8e8785caa92bd1f89ea779` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 38 deployments: ethereum `0x2f50d538606fa9edd2b11e2446beb18c9d5846bb`; ethereum `0x3993d34e7e99abf6b6f367309975d1360222d446`; ethereum `0x3a283d9c08e8b55966afb64c515f5143cf907611`; ethereum `0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833`; ethereum `0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b`; ethereum `0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79`; ethereum `0x4ca9b3063ec5866a4b82e437059d2c43d1be596f`; ethereum `0x575ccd8e2d300e2377b43478339e364000318e2c`; ethereum `0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2`; ethereum `0x64e3c23bfc40722d3b649844055f1d51c1ac041d`; ethereum `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490`; ethereum `0x705350c4bcd35c9441419ddd5d2f097d7a55410f`; ethereum `0x70fc957eb90e37af82acdbd12675699797745f68`; ethereum `0x752ebeb79963cf0732e9c0fec72a49fd1defaeac`; ethereum `0x7ca5b0a2910b33e9759dc7ddb0413949071d7575`; ethereum `0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5`; ethereum `0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef`; ethereum `0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511`; ethereum `0x8484673ca7bff40f82b041916881aea15ee84834`; ethereum `0x9838eccc42659fa8aa7daf2ad134b53984c9427b`; ethereum `0x98638facf9a3865cd033f36548713183f6996122`; ethereum `0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b`; ethereum `0xa85461afc2deec01bda23b5cd267d51f765fba10`; ethereum `0xa90996896660decc6e997655e065b23788857849`; ethereum `0xb19059ebb43466c323583928285a49f558e572fd`; ethereum `0xb1f2cdec61db658f091671f5f199635aef202cac`; ethereum `0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4`; ethereum `0xbc89cd85491d81c6ad2954e6d0362ee29fca8f53`; ethereum `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7`; ethereum `0xbfcf63294ad7105dea65aa58f8ae5be2d9d0952a`; ethereum `0xc4ad29ba4b3c580e6d59105fff484999997675ff`; ethereum `0xca3d75ac011bf5ad07a98d02f18225f9bd9a6bdf`; ethereum `0xcb08717451aae9ef950a2524e33b6dcaba60147b`; ethereum `0xd061d61a4d941c39e5453435b6345dc261c2fce0`; ethereum `0xd10d54830714003575d9f472d62268a29c902e5a`; ethereum `0xd446a98f88e1d053d1f64986e3ed083bb1ab7e5a`; ethereum `0xd51a44d3fae010294c616388b506acda1bfaae46`; ethereum `0xed4064f376cb8d68f770fb1ff088a3d0f3ff5c4d` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260178 | `0xd533a949740bb3306d119cc777fa900ba034cd52` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260159 | `0x7935330d82c3b2b96b2e6bdec13e2dfca1c6addd` | ⚠️ Unaudited |
| WBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-260140 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-260176 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WETHGateway | token | project_anchor | own_supporting | 0 | ethereum | unit-260144 | `0x2fd22a9db5e07bfff9145e549c463967864d7d2f` | ⚠️ Unaudited |
| WMEMOPriceGetter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb498956174ec4b11316fb1c5c7a5c3255c4eb3a` | ⚠️ Unaudited |
| Wonderland | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260166 | `0x9b06f3c5de42d4623d7a2bd940ec735103c68a76` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019d39636cdf55209bbe65571907d1d3a3e6a3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08fd5423e40c7c0a36263d1da1e0c1bf987dffdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c16d76839854e3af96dc98a95834f9173cfbd66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d309bd5fe9820dda1dfd9281ce522d90c5c28d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a0a26206849d3cabb19157f3d764a59298db14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25d580d124206db575be2c91d9cfb95594854585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298a32d105138ad496b93e413a295e5aa9556f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e707e9c8e3464673564c2daea31d7cbff18da7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe2ebecd94e1ec7e1c1afe9cbcc2ba05c7bcac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442707961190f71e4e31a036055b3e4cf0379219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4791e8c0d3b9488f299cacca7e03073d98fabacc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c7e93c358972093948cfe0b291f6b261cf6d388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4e67a7b38db357a20d1eeb1bec486ac19c73b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa44af661fd72c7fb4034c1aee4b0013a45c806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b8b1af9fce43d2df3c35bce0c599b07609da4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6356bf70d0a84c2e4f88ee1c51c7cdabda831e88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x687527357752bcd764830648130272f807a2d518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7749ee9553a4719c6cfa941fcf49f9f4a2a97712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c417fe930d32a018b17fbbd9806f5e3867c6a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0e5acd2338704c45a2d30fbae801584b42e3e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f49be0acee7af8d5fb12bedabb3af5db418a1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82893de096aab4a90ec3ddd5868b87589dfc1779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aa8b3cab47cd2bffa6c778296cf1f6fc14e182d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b93ae7762c3fc7ae1421ff424323b2881e03812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9060a45ffad7d2856a969bc4c9d5d9a7fcac0762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964eadcf991594da1fd250bb3600327df19cd6e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c1fcfd1724a4887e812f77897d9a3467f5a6cb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4fcc863483c48021d5f28948cd8d9034fff24bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa61dac9ffdd0ac14b7ec5238b845ddaf2fd8dfc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67a82bf6d2fcca57650da763cf89f0779a27c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c9315b9844b4252286101e31f8276f25d36e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa436cae48988c1aea891a73852fd948b90549a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacfbdbcfb1e6e5769cf4efa688b52d888834ecdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1ad05fb35fc8900a5edc2bdb5e47ccecd5be7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f81b9249bf7dc68e10dc6aec0dccf50bb91328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c153dbfc752a97c8eb4f2b8f198b610e2453f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7cd173843f998004ed85d17cc2df103ffcfa764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8aedf50e708ed4ebca5be1e34885ad41c383499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb0589a56557161707fa402df58863d3233e45f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7421184041bd29ec3829a640bfebe4648e247df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc778417e063141139fce010982780140aa0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80468f2e9fb58fa4e7ba8ec4e60af5106bbc0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd21040c133cb8a407cba7830edb521665ebff916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7f9506e26cf90647c30778a37a37cc48c186717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7fbb427aceb18fac3b377730f35f0a5b7a0d3a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd865c7c460bcb58d75c840629d4fdf5bbebd32bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe76d930c1f64acbba68ff4b5a8e045eda2e99c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81964d5b14b59ff5927a42db08f3cc9b3a761c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb47ff3525e32e0755c908c0c718f58af6b4724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee1b35b1a4af3e44f741a55c8b2a04b171c2549` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-UWU-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-UWU-v1.0.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | matched | 12 | 2 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21205] PeckShield-Audit-Report-UWU-v1.0.pdf — matched: Extracted 15 contract names from the scope section (pages 4-5) and findings. The audit date is December 31, 2022 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-UWU-v1.0.pdf | MultiFeeDistribution | own contract | MultiFeeDistribution (selected) `0x7c0bf1108935e7105e218bbb4f670e5942c5e237` — deployed 2022-09-19 19:11:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | StakingRewards | own contract | StakingRewards (selected) `0xe3643512532fe1f3522745787e883f9729527186` — deployed 2022-09-19 19:13:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | ChefIncentivesController | own contract | ChefIncentivesController (selected) `0x21953192664867e19f85e96e1d1dd79dc31cccdb` — deployed 2022-09-19 20:05:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | Leverager | own contract | Leverager (selected) `0x780dcfda4a6de88d5c4f912345b99223012f32ed` — deployed 2022-10-13 00:59:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | ReserveLogic | own contract | ReserveLogic (selected) `0x4be75900f8a54d7d5962e950f3af98d61f8fbdd9` — deployed 2022-09-19 19:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | GenericLogic | own contract | GenericLogic (selected) `0xaede01960810a655aecf86278bfdf5c968198b89` — deployed 2022-09-19 19:54:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | ValidationLogic | own contract | ValidationLogic (selected) `0x3c0ada81038a078cc1272ac22745ddd1ab8839af` — deployed 2022-09-19 19:55:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x05bfa9157e92690b179033ca2f6dd1e86b25ea4d` — deployed 2022-09-19 19:55:35+03 — liveness: live (proxy_unit_reachable)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x2409af0251dcb89ee3dee572629291f9b087c668` — deployed 2022-09-19 19:55:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-UWU-v1.0.pdf | LendingPoolConfigurator | ambiguous — not counted | InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x408c9764993209dc772eb12ff641f4b55f5b005c` — deployed 2022-09-19 19:56:11+03 — liveness: live (code_present_context)<br>LendingPoolConfigurator (alternative) `0x40daf7be3a99b898f54fb7968d16db5103835347` — deployed 2022-09-19 19:55:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-UWU-v1.0.pdf | AToken | own proxy deployment | InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xc4bf704f51aa4ce1aa946ffe15646f9b271ba0fa` — deployed 2022-09-19 20:10:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x243387a7036bfcb09f9bf4eced1e60765d31aa70` — deployed 2022-09-19 20:10:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x02738ef3f8d8d3161dbbedbda25574154c560dae` — deployed 2022-09-19 20:09:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xf1293141fc6ab23b2a0143acc196e3429e0b67a6` — deployed 2024-04-16 13:21:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x67fadbd9bf8899d7c578db22d7af5e2e500e13e5` — deployed 2022-09-19 20:09:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x8028ea7da2ea9bcb9288c1f6f603169b8aea90a6` — deployed 2022-10-17 14:06:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xe873e375065ce4dd7f96a289f74f885509748fad` — deployed 2023-08-31 18:53:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x6ace5c946a3abd8241f31f182c479e67a4d8fc8d` — deployed 2022-09-19 20:09:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x20e61ba4365cc4bfa82b1449982e091904564aa4` — deployed 2024-03-11 14:52:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x24959f75d7bda1884f1ec9861f644821ce233c7d` — deployed 2022-10-11 20:26:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xdb1a8f07f6964efcfff1aa8025b8ce192ba59eba` — deployed 2022-09-19 20:10:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xeb61e567cbaeaccb6c259def92900bc59d8a14cc` — deployed 2024-01-23 16:35:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xd1e6b03bf65b381cbdeccf275535d40d4c3510e2` — deployed 2023-08-15 11:41:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xadfa5fa0c51d11b54c8a0b6a15f47987bd500086` — deployed 2022-09-19 20:10:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xc480a11a524e4db27c6d4e814b4d9b3646bc12fc` — deployed 2022-09-19 20:09:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xb95bd0793bcc5524af358ffaae3e38c3903c7626` — deployed 2022-09-19 20:08:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (selected) `0x51144708b82ea3b5b1002c9dc38b71ec63b7e670` — deployed 2022-12-26 13:25:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x8c240c385305aeb2d5ceb60425aabcb3488fa93d` — deployed 2022-09-19 20:08:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-26 was 5d from audit; next candidate 75d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | VariableDebtToken | own proxy deployment | InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x82a49c799c4ca5bdb629bcd6107737a3de8d2805` — deployed 2023-08-31 18:53:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x1254b1fd988a1168e44a4588bb503a867f8e410f` — deployed 2022-09-19 20:08:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x51e0f19bf0b765bc55724c7374fe00ab229427d9` — deployed 2022-09-19 20:08:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x39a873f3f60bb4cd81fe46f3beb6285bdb7726b9` — deployed 2022-10-17 14:06:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x5c8cb0e43cb17553ab4a37011c3dc743aeb3f241` — deployed 2022-09-19 20:09:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xbac9d17f290260a1d5f1b69cac84dba6b4488d66` — deployed 2022-09-19 20:09:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xb9e8bcd56f26b0540989a66aa24d431cdb0affa0` — deployed 2022-09-19 20:10:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x453842ba9dcd4569407b2adedeb8636314d023d3` — deployed 2023-08-15 11:41:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x13cdfdd18e6bb8d41be0a55d9cf697c0ef11176b` — deployed 2022-09-19 20:10:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x9abe34021128c17de3c2180a02932eb5e1bb18ef` — deployed 2022-09-19 20:10:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xaac1d67f1c17ec01593d76e831c51a4f458dc160` — deployed 2022-10-11 20:26:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xd5bfd3d736477f48efc873ee464f4a8b5447850b` — deployed 2022-09-19 20:09:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x64e4843ffdfb62d205b049ddbe8b949534e4e2d4` — deployed 2022-09-19 20:09:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (selected) `0xec12f63116bd2493104a26fbdbcd70f51ab7b2c1` — deployed 2022-12-26 13:25:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x29d567fa37b4af64dd1b886571cd1ff5d403ac3f` — deployed 2022-09-19 20:10:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xd7f6e4e10fd1e7faf642fa924c5ea2b6c5450d11` — deployed 2024-04-16 13:21:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-26 was 5d from audit; next candidate 75d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | AaveOracle | own contract | AaveOracle (selected) `0xac4a2ac76d639e10f2c05a41274c1af85b772598` — deployed 2022-09-19 19:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | FallbackOracle | unmatched — not counted | — | Explicitly stated: 'this audit only covers the fallback-oracle/FallbackOracle.sol contract' on page 5. | no |
| PeckShield-Audit-Report-UWU-v1.0.pdf | MultiFeeDistributionV2 | own contract | MultiFeeDistributionV2 (selected) `0x0a7b2a21027f92243c5e5e777aa30bb7969b0188` — deployed 2022-12-19 16:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0x011c0d38da64b431a1bdfc17ad72678eabf7f1fb` — deployed 2022-09-19 19:52:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xaab1b4260297fffdbc267a46b73c7fcd43b95645` | ATokensAndRatesHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb9d7dddca9a4ac480991865efef82e01273f79c3` | BLUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | crvUSD Stablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b175474e89094c44da98b954eedeac495271d0f` | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03bca34ff553a2ede4f1fceb177dc42ee6af7b64` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07b12795e18cb1568e9c24df4a54356846001ab7` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4cc68501c23ce0977ae52fc935745b6d7fccd1c2` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x690dcb18c1a56cd2711102c2427729739dff494a` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9203a201800c95399e66ebcdd2fe42ba81cf1a9c` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb87872e3ef8916e9606231cab8787712ab5543b0` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc818d61b4e601ab5c957c7f9ec0cf65e387a89c5` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb5c23ae97f76dacc907f5f13bda54131c8e9e5a` | IncentivesControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x24911dad45220af2f258fa2434ac51e7b979215b` | IncentivesControllerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05bfa9157e92690b179033ca2f6dd1e86b25ea4d` | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x34a7db36d435e3404b82dfd338d48255e1e4a3ec` | LendingPoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e9f846ce3820531b52c08d3d4543be5c8fe7ddb` | LendingPoolCollateralManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1c0e90b5d9b0b1497979fdde0f08249bde2c69ae` | LendingPoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x413a1f0098a8c5ba1078552af515bd0146522fe4` | LendingRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5f98805a4e8be255a32880fdec7f6728c6568ba0` | LUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3` | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29a906316ad99270f294ef779fa61589f5b184bd` | MultiFeeDistributionV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83f20f44975d03b1b09e64809b757c47f942beea` | SavingsDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8dd09822e83313adca54c75696ae80c5429697ff` | Sifu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5938999dd0cc4d480c3b1a451aecc78ae4ddaab5` | SifuM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9` | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ca9c6f89758877b78a44e57fd8feb89b4c42b8c` | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbcdad8dedff0bdf425bbf7cb5970157da492279a` | StableAndVariableTokensHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | StakedUSDeV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f958d2ee523a2206206994597c13d831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19dd01d5cd88eae5674a2ab94d654f9413e20ce5` | UiPoolDataProviderV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x55c08ca52497e2f1534b59e2917bf524d4765257` | UwU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd533a949740bb3306d119cc777fa900ba034cd52` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7935330d82c3b2b96b2e6bdec13e2dfca1c6addd` | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2fd22a9db5e07bfff9145e549c463967864d7d2f` | WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b06f3c5de42d4623d7a2bd940ec735103c68a76` | Wonderland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 95 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 1 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: temporal_name=2, unique_name=10

Fork inheritance lineage and inherited audits are included when available.
