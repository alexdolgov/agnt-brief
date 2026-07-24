# Agentic Audit Brief: UwU Lend

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: UwU Lend (`uwu-lend`)
- Website: [https://www.uwulend.fi/](https://www.uwulend.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 794 unique implementations (1048 raw deployments)
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
Origin: alchemix (`0x853d95...75b99e`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**InitializableImmutableAdminUpgradeabilityProxy** (`0x408c9764993209dc772eb12ff641f4b55f5b005c`, chain 1)
Origin: xave-finance (`0xc8c8e2...50eb8c`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LendingPool** (`0x05bfa9157e92690b179033ca2f6dd1e86b25ea4d`, chain 1)
Origin: bao-finance (`0x8dff5e...a30fcf`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LendingPoolConfigurator** (`0x40daf7be3a99b898f54fb7968d16db5103835347`, chain 1)
Origin: xave-finance (`0xc8c8e2...50eb8c`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ValidationLogic** (`0x3c0ada81038a078cc1272ac22745ddd1ab8839af`, chain 1)
Origin: bao-finance (`0x8dff5e...a30fcf`)
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
- Outside the address book: 740 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Confirmed-live implementations: 54 of 794 unique; 740 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 12/102
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 692
- Unique implementations: 794
- Raw deployments: 1048
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

### ❓ Unverified (692)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688c4296a2c4d800f271fe6f01741111b09be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019d39636cdf55209bbe65571907d1d3a3e6a3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c6808eb242c826d32f03712d66d5e613782363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dcc3aaa2f0c97fe0abfaf07df3e0c7ae56557a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04baf30115d7bac714709910dd286718cfad8808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0639076265e9f88542c91dcdeda65127974a5ca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069c24600c2a03147d4e1d9b04d193151676f577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ce8086965234400fdecab190b115c2c0717047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b547cae235227635c13266c69847a3e46fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a5fbd1829efc4f1e698145fcd69b8235d30a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085c11f97c7365fdcb38171f7c44ff27f22147a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08fd5423e40c7c0a36263d1da1e0c1bf987dffdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b541beff2cd44859701619e245e82f48e62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093edae2f47da37db7a1cc443d5552d1408d5337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a2290c3e97db5823eb11e60de64a0a98fdd2451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad96b511f501c1bdab362c5c044ea8279846713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b51619785fa7ac8f2a8f387c18e599250cc2b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c16d76839854e3af96dc98a95834f9173cfbd66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb5727a6a8cb8a01c1b693d7a18119a3542dc42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cc3114cd2e4adc3ed5691fa28b8cf106579d90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce658f9bc3af831271199578449810023dba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d032449b25aa966b01b1a510f121ae6ec78beb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d07e5d0c6657a59153359d6552c4664b6634f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1ea2269d6e22dfeebce7b0a4c6c3d415b5bc85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e894387c073c6f62c9bbded21e33d3062847440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ea2207e31dc03701b12e4b322df1bbb404b8855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec271d3bdb1a723088d1dcef6b7ebf9c1b0d377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f75c5f723681a6897dc2fb6ffa672a4929028a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1067c6dc34c86b5f23f4a9bdbe7a639ad613342c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1085fa0770a88a132e3b8aae21c84755d70081ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f193d5328d967076c5ed80be9ed5a79224ddab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1440ecdfc61386a64116e58326bc7d6074e80815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152b59937ecb0f1030d81d2206c4cbb3fd0ce015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a2a96608b48ebfd80c31da8a9be340a354cd46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16240bc4e1e82525c67faf01fa8ffb15e2fc50e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16495612e7b35bbc8c672cd76de83bcc81774552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170d177f083e377d9a3fe222deef7bd5486853f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184a07c9cfd6165d6accdc373eb00bc5cd8733cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041ad83145351ef45f4bb91d08886648aeaf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a783886f03710abf4a6833f50d5e69047123be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac802654c8ca728d948d4312e6fefc04f73dcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba08cfa34122a1462dfc903ad2219a73ca6ce1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be588641fb28eb8c2a51f1129707fb1e2683f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cbe07f3b3bf3bde44d363cecaecfe9a98ec2dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d309bd5fe9820dda1dfd9281ce522d90c5c28d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d837a45bb5cc1e170c690aefee4121323a889b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dde3505fa0dd8ef2253dbbc1aea0b4355c38d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df188958a8674b5177f77667b8d173c3cdd9e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e077b2a6a67f543629c8fccc97229452211a612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e2391a261217c93d09ff3ae9ab1903ea237bda8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f18188cf19cc28172e54dc6f580229b2e255015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc83f75499b7620d53757f0b01e2ae626aae530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205d52e9ea8e42659ac5c7f83863b18d27d7e0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20658291677a29efddfd0e303f8b23113d837cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20915f71474c127e5c3cdc41c75cb21d4e0605f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20cb52832f35c61ccdbe5c336e405fe979de9430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x217c089db99274f142bbdb48e409180b045e24ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c1ae31cbfbb3ca077db4736663c2e1066614bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2397321b301b80a1c0911d6f9ed4b6033d43cf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239c957d42343b3d91fabc7c16e7f1e30bc32e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a0a26206849d3cabb19157f3d764a59298db14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240eba32583bb925b2cb3acfee189f559219bf37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244bafbae9c47c795d3ab76ee77c5ba62e92285b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a76073ab9131b25693f3b75dd1ce996fd3116c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25d580d124206db575be2c91d9cfb95594854585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2869e74a15d3c0c797b04feaef93734060a4477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x286ed6c7a0797e370ed47c8f0f57ad68060af7c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292a6f6156c9e197aa2d059a3194ea8d235b3f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x294c8cebce8c6b065d23b97133ce10fded601aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298a32d105138ad496b93e413a295e5aa9556f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a1999513b743ad83596ae72edc7cda23fbec314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a28789645776eaa95f6d491ff375781ea5b40dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7d59e327759acd5d11a8fb652bf4072d28ac04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaa9ae7101e0a59c52916d8db9acda311b1c296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b4d259a8f6e765ad881c4c1d04045d629da01b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb8d5a94efec5cc2f53cfbce7e0e88754217f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d31b5be00575a102e96553f9dc97743a8bc2fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dc7cd6ae6cce2e652479e01db84ed5ce6dcb677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e61da9d555625200c9eae7f2de9a269ca93f9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e707e9c8e3464673564c2daea31d7cbff18da7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebef24da09489218ba2becb01867f6daaedcd4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef4b38a128ecc1ac06b43055553f95af59523de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffffba4f562569bec2d4fc1c36f7797ffb173cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307f4344b1e425f6210620bf15ab242e88c6639f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c271e2758fa59671106cc523708ddeaa188841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31aa15da826da3311788b208d31cae34074d1dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326fe113a130c569b44aff93b3637f3ac956ecdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d7261e6924600abb668ff82da86f6532304c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34fdcf9f2b7bc66c5f8cbd6b507482416938db73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3669c421b77340b2979d1a00a792cc2ee0fce737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368440b3121f32df336d393834eafd8fa787c4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369d81cf263abc7ee567d8836a39234141d4da07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d9386ad4b8636459c365295ddc7e70e33889bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37336ad1f3a145c710247e6a14c9acc7f34d09ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375278d3c65f29c1a90e8550888f1439cfefe465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3860358a3a8eead5e1e47c8407fdaa571972a673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387177b33830f48199110f186f47797c66556b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38a67c0f839e5f8939b12f9181a1924e4e4375ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e7627eb98a40e7528bcce709a80083093ba2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3910dce33441360e4c1d2749afa08e1a59af2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395a3481bf6ed9a9827d4df25032dadd3432c3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39abc0483046d7ad4957c8ada6e0787824a7c21d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce23799dc56664ff6048892510abffdb7a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bab7207d4e27b5de4a15d540b7297281b45ed2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c2982ca260e870eee70c423818010dfef212659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c329e6c2a3f1c67b298e1891370544630fc88ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d56432c41f68eb2cde5e244b0c65c731ff5defa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d94b714382f61107a71690463b921e1db6b6735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ddb00cb5c927a71feddec48db1a231901568a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f16dfcfd23c1aa4472c80b2d2688e5c8222d71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f37712726c9e509c5479f13e17cb1033411d864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f702a8f6c9f9f7abdfea67f89d33f18e0368600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe2ebecd94e1ec7e1c1afe9cbcc2ba05c7bcac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40745803c2faa8e8402e2ae935933d07ca8f355c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409893c94aad411030e5a78fd39b015221dfb8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40cf1c8fd53c7b6473e53a3c71c543d0713394f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x411949abcaaf0a476d557ad19ae82f4e34142736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4169ef3b885416bd553567e78585a97ee52ba700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a37655a7afb85787bd60a9fa750225567da186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d65ce96342a3d9c3d878856e283e839d29df42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41df5d28c7e801c4df0ab33421e2ed6ce52d2567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422cd669cbdd74e48849b671ead3e0eb27c7495b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9dea10b51a696949715797bdfd69489fc3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x430dcc1902920823c12bfe6404e677e1ce53956a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442707961190f71e4e31a036055b3e4cf0379219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x445918e531aff4ef2ed31ec497d40ec7eb125582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4462df433d01f32ac0c4adb0a76dcf255634490c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ade9aa409b0c29463ff7fcf07c9d3c939166ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b95da0a7e912cbf63d2eea6285ce1b14dc84aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469561357211a6ce4707dc48174d6c617ccb0402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469a991a6bb8cbbfee42e7ab846edeef1bc0b3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4740b7ba86f14ef9feccbedb0fb1134f8f940359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476b1e35dde474cb9aa1f6b85c9cc589bfa85c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4791e8c0d3b9488f299cacca7e03073d98fabacc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480a0af04186080bac985e595d66ea3bf351eb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ee75278820f409ecd67063d8d717b38d66bd71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9cb5d0b755275fd188f87c0a8df531b0c7c7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4af9f911d825c2acba58d4e7eb4ae09795710022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b56b6b2169381d4247d59fe8d0fe52e943eeb0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bdc9b55bdc73b717d83dd436bf9ee3f2b89ac37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c517d4e2c851ca76d7ec94b805269df0f2201de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c56dbcc056655b8813539af9c819ae128c07e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5d4f542765b66154b2e789abd8e69ed4504112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c7e93c358972093948cfe0b291f6b261cf6d388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cb152b45e667f86a0470776bed0be93a5f1c534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d7a5a57a33e9ac924a1a795bfbbfc309804ff95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9a788bc0801112fb8ad8faac5c4a00d02b2ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e710b33c87cedf832cd82e11d743a011864f733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7cf3569529660bf23926060efb25866d67314b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f51264b07db8b2910e892eeef22460de23268a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50103e7e050e4b0a9ddaef537c82ac7273a89b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50996c7e748b1b83130b4854945d86ba6fc81f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c39ea8f3d72310c8b56a56b333994266e9b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50dc3537617cfa20f1b401de98d0efeb412cf9ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f35f4fd499898801282a415f4c3a689663719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5154e7698b235e6003bfa025839d192230e39dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51faf963880dabe40ee82e79a1af0a90a156b312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x528baca578523855a64ee9c276826f934c86a54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a430b5b7407fa103c5ae974744e4cc945354e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x536aa22bfb4bfb4cef2e191d48b5b17464545013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c13ba8834a1567474b19822aad85c6f90d9f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5425724e4ce3b469c61876b59be43a210a572997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545ae1908b6f12e91e03b1dec4f2e06d0570fe1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5488fb4a4bdad44a2e35614e8918fd22c2f4b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54a8c6c4b3256d24652dae3fc1511c871593de9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54c80f1c4718e3e6df71b83bb9cb389ec41f07a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55b65dc72db0ddc858adb1dd097eea89546d395d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5624b48ec2848bd642230b46405e1f65938c5fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5699d20732a2efa9a895ef04bb210aa751c4db96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57823e61f1f6d0af24e80e5232901cf9d69eef4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5814cbfb4f67cb384de981849d773a9da179fec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58258aee794fb5ebd8b932cb4fa222dd4fcfcf62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595c33538215dc4b092f35afc85d904631263f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599ea9f2c71971fda372d54dee338e535f49623d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59b3d5ddf93a3782f7b7a4be1214722fc6fecd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e132164ec2e48b0714eb6abdb10225df44da0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1d9008647ebe40a059808b31aaedf1d1b5a70e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4e67a7b38db357a20d1eeb1bec486ac19c73b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bea27d52e36c58dbce2921773396f33f2bd780a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cce1098be1734b8910e22e240aa0673ab9083fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d49599f6ce3fe92c358055486ab21fdcd8f52f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0198c158276efaebc5a32c8351fb5d679d4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e70f7acb8ec0231c00220d11c74dc2b23187103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa44af661fd72c7fb4034c1aee4b0013a45c806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fc6b5187fa4756a060f719ee518262e5562478f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fca68c9ba31dbaa5ab82dd468ae76746efd9adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6025040aa316692fbf80909d0fc9cf7b997a2795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604cb55e89568b68e125e1c0272a71ff1faab46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b1b1f20373005030095fbe7cde032625fc96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b8b1af9fce43d2df3c35bce0c599b07609da4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c0b047133f696334a2b7f68af0b49d2f3d4f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62882b7c0b2931b180b16044bfc5ea3fe8808568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629c473e0e698fd101496e5fbda4bcb58da78dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6356bf70d0a84c2e4f88ee1c51c7cdabda831e88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x640b8cdb00d0fb2246d01b8dbf83ae5d2d2a629e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650a3685ab74bb1a36f40574c6187641d2b5b7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6527a927bdb147d15fde4326381843f55fbfe986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a8b215f34df5c30c64523d638ea698065ffa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663ef4455a07243d9029ba0fc48297ae181aeb38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66436c64da9d9a61bcc3f652490d20d7cf19765d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66506b0a93ac7f420ed2fe8f53548142dd390148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e323284c10dcec5a4810beba7eb3b992476320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679fcb9b33fc4ae10ff4f96caef49c1ae3f8fa67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x687527357752bcd764830648130272f807a2d518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69aafff1218ba086ac782f98cb8399d1226e2af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f79536d304a556603ff55d4dac017ddf50af50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69fb7c45726cfe2badee8317005d3f94be838840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5b5e025f2febf11646050e28240279215c0da8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b44d94ecdfaf0cb00def55212e226603bb68793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b765d07cf966c745b340adca67749fe75b5c345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c6a54a124e7b9859014425b8c0142ee0b19febf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c86adb5696d2632973109a337a50ef7bdc48ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8093ebb80cd9f7395681ad8de90ca93b08d9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8f6d1da6232d5e40b0b8758a0145d6c5123eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea66d267234dc5abfcc9885765a1e2e50073a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4c7e4c51d51adcf1c3dae8e28d0e75a673f8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7086f2acb5558043ff9ce3df346d8e3fb4f4f452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a1151e0bb32484e25c107e3a69886a8361482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f1ceae0fe7205d96151f995e65a6c30f028649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x712eda4e2816574e3ca1f123e22f762bdeb40e07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720310d711455f032fcbb3feadf858534fb257c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7228d63ff5fb0e66cee650b113c2187212776c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72de985c5af6f96f3be22784b5533218421e6394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7301bb959ee286d8abc46f341144afe443cedae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x743377926033cad0770e0f2b0d4cd33d7430fd56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747459fc40d80a500440f9d650818f7fa5754acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x750e9887425f9f325504fe69b7173a4cacd55351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e14253de6a5c2af12d5f1a1ea0a2e11e69ec10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624c0dd4f5d06d650ddff25ffec45d032501260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c8cef5b18994a85bc2be1991e5b9c716626767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f7774139bf0097d2882c41af5a37717e3641a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7749ee9553a4719c6cfa941fcf49f9f4a2a97712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783128730280053ef00f675b777288e80565f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78a538cf4c73dba3794c0385d28758fed517cccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x798a3fa03d6f6db94537033d0ab7db4bef54fc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7999939436e5c6b1ae36e47f92d1200df99e506c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7c5b74911075778873b8aad0f2f03bc108d31b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af331398dc340bf327904077eb68f27f75a9693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bfcc1629fd6a84e8913ea9c767baef46dd31754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c417fe930d32a018b17fbbd9806f5e3867c6a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c868f045a60501a2f4159446545939771dda323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e125afc27fee12e68bb5efe137c7a54cf7e490e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ebef3496fce85e9869d3feb7e4f49ad084300bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0e5acd2338704c45a2d30fbae801584b42e3e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f3c6b1e4ad1e3bf102643fce202202aaaa09116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f49be0acee7af8d5fb12bedabb3af5db418a1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa0320180b0d6e12b3ab47aa0fbb3da9e3e926c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818709b85052ddc521fae9c78737b27316337e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81903f6f9675f7b500eafe20681bd2d7bab7c71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82893de096aab4a90ec3ddd5868b87589dfc1779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x832f436ad2813c76aae756703cacb5c1028d11da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8412ebf45bac1b340bbe8f318b928c466c4e39ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8545d32ac1d423016197866e884aa0e8d953eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b80cb930c33d0abcd94227725ef4bc4905a9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x877156b9400807a00c87e21316903552759fac49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878f2059435a19c79c20318ee57657bf4543b6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88b2aba0c9e8891573b03af909ba51a25708ae6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e9cb153df9b8c46bd0c99081fc5e6c67149863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89058630b53228adcc77690586cfb3c74f08803c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89086653f185a0431d24043d92772942c141bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x893e606358205ad994e610ad48e8aef98aeaddbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x896a3f03176f05cfbb4f006bfcd8723f2b0d741c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89a5cec88598c0ce4d4e331d0b027499edd3dffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ac9a0b48fc66875de710ab7ee53027970064dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d32bf7b120630b24fe9edc8c7534a73016c999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea1e4232680a66470a725ffd399082a375d1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aa8b3cab47cd2bffa6c778296cf1f6fc14e182d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b8dce09b0deb003573215d5be238534b1cf11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b93ae7762c3fc7ae1421ff424323b2881e03812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76f31e7c3b8f637131df15d9b4a3f8ba93bd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d849f291979034efcfa38a57cb05ec13e7bf8de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dfa3c5321f2c8d76fbc5fe9746090f1eea5753d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f300679f893584149af176562abc64f8e3b4476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4ef8c623c33cdb6a57c19aecb87e161fa7691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f68f4810cce3194b6cb6f3d50fa58c2c9bdd1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7405d5738468863a516b3cb6c8984845983d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8273f271b134f514b8a33f87b4de803e44d723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fdd3fbfeb32b28fb73555518f8b361bcea741a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x900909c07c2761d84c5d863ff5905102916df69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90218033ce26b3d41c45795e903c7989817f0dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90503d86e120b3b309cebf00c2ca013ab3624736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9060a45ffad7d2856a969bc4c9d5d9a7fcac0762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908fcbf4cc0cb550cdaf668c94bf75321da54536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90cb8bdb5ad68f21aff8718733761e5a0e531a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e7efdca79de10f1713c59bc3ae9b076e753490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x913a3a0d83b87497587e66a7f9603ccd998ba572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914cb62c14777068956090adb494ab4279424499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9164e210d123e6566daf113136a73684c4ab01e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91678e87e220855cb4ec169abdc9e7b5f3dc0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933b774623bf7dd40351b79d2b589f7b09be5fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93aad8d9941b0c034aca21f2a2c5317ec1397ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94635b2034ccec3293b81d411cd77c36c353f41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d97dee8fa8b97576375c68d856239ff7681086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9555b042f969e561855e5f28cb1230819149a8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95702e148363a6fc4bc97ff54bda8a2ae88b4c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ecdc6caaf7e4805fcef2679a92338351d24297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964eadcf991594da1fd250bb3600327df19cd6e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96665d63c1b53f8335e3c9287ee255f306c93c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966aa4de332da1fece5a90e025b08a43919d9705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbdecefb60a289b0460f7638f4a75f432ca06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ad3a49fdc33efb4ba266877c17ce52eb0e41c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96bac90bee7f416d33601d1dc45efb19aca8ca62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d07ff312c56e08462308bca2f5e505e8111a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9732d3ee0f185d7c2d610e30dc5de28ef68ad7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f60ffc47fafbcba3ea364bff2abcbabf85c849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f9a691ed9deb9b4ad2ba7e9a738706222dcf71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x983ca3b5d2a07700354a2127a874f37ea1962037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98b994de6da51c43f1710e92f949854246726122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f8dc2eac0940e609a8dcb9fc905f0158af2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa0eb29a462baa0275e5f9e56f938f31d0adbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6c44168f7a29a44949429ca55f411acd8391d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd5b13f51e27b58174968a8983b450a300cda05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be82cddb5c266e010c97e4b1b5b2df53c16384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c1fcfd1724a4887e812f77897d9a3467f5a6cb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2186cabc49782632efd00ba28bdb92086470a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6a04871d11b33645ab592f68c41bb2b41f51ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dfbf2b2af574ca8ba6dd3fd397287944269f720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e291bfbb158ffaaf1c3a8ccd694be0d49d6aada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e7a52c1619c5134c223f780237c12fd9001b75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1c425ae40908a071f003ae604d7e421a289c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f33628e6389b3a918dbd1aa5e9fe0f4a0c62ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa038ef2ba621342ca83cab9534ea04fa91d1bc3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13d7886abc466da907e0c9345d5d271b8852647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa219008f38a698cc5df6074f0f147a5eab2a2ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b71ee64e910741f5cf480b19e8e402de4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29367a3f057f3191b62bd4055845a33411892b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2fcda2dd82b7ab6b0c6cf116b6546e57499fad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3c8931ec0fef9bf05386d154c4cd1e93aa92a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3cce9ae6571c9075c980afa2749451793b947bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa402f9e5015be2de7aed695e47f2729246cc9434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4fcc863483c48021d5f28948cd8d9034fff24bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa504742cefe2f9027328b49c7cffec3d79b5ab1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5200b42dad593c284f2a5e85d768e4dd829a09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa61dac9ffdd0ac14b7ec5238b845ddaf2fd8dfc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6623dd479c95010f05bad523609edf1928d2b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67a82bf6d2fcca57650da763cf89f0779a27c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6e97d76d21ae347b13c343508826496b07202e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e98815c0193e01165720c3abea43b885ae67fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869b9171c8f912c592abc58005922718d0d49b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c9315b9844b4252286101e31f8276f25d36e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8fa2460927332ed475364c602d916fbc095b1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b386dcd598acf3ce53460631feefbba730cbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0850ddf8ab99286a473a7d2a96e07cefa89034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25a6fa9e4dadae0d3ee59bea19fbcf0284830c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa346781ddd7009caa644a4980f044c50cd2ae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa436cae48988c1aea891a73852fd948b90549a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaad66110a1ff96d8be8c00c85ad024bbda6f60c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabb326cd92b0e48fa6dfc54d69cd1750a1007a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac288da6a8c5b6406562c27d54ba22666fe3adca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6714612e0ceffcba83e6e00c8360494493b27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8a4d55c1d6ea3f84a6c868f2b5a5ec3cef2800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacab7f05a612690b9e05ca3bfc1ff2e99169a39f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacfbdbcfb1e6e5769cf4efa688b52d888834ecdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad19c0506f5277bbf92d8dfde1a51a15aed42606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad430500ecda11e38c9bcb08a702274b94641112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfcf9894335dc340f6cd182afa45999f45fc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14b769eac8ddb3caa79bd3d7c21d2986327bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee70429bdfbf599a979f50d5fde5eb0d317e0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf02be5968d8fe9536e24e4c7e888c59a58bc077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb06b456fb3108a43b305919cd61c03e12bc7864c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08eb288c57a37bc82238168ad96e15975602cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb185a192e5e9ce5ea2204dcfee0f4467008d4216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1ad05fb35fc8900a5edc2bdb5e47ccecd5be7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1bc8b14ac9576d34225dbd6c09dd88a28c064ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1debd19c6ef1ae76ef1a05a6f40bb7f8b9d83f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ebf227188e44ac268565c73e0fcd82d4bfb1e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f81b9249bf7dc68e10dc6aec0dccf50bb91328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb311acd3eba1acfa29957cad50746738d52070dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d07e2f94155467cb6fb177318e23e94919b586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4277e256f9c22e22acd8fb1c65e190daa331eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4eb45443d525149410ee69400c0956a7e89b82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb524622901b3f7b5dea6501e9830700c847c7dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa4c4752321b3154f08dfbdfcf34847f2eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57a959cdb3d5e460f9a7cc48ed05ec29dff049a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61009896eb35d81d02f15b2a1380252d2141725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c153dbfc752a97c8eb4f2b8f198b610e2453f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb70a04ddf77610c4dad1cacc908eff91fa764a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72b885694d46897a50ab83911849604eafd69be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7cb99cc08a83ab6823c9dd0bf4830a7e01e6375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7cd173843f998004ed85d17cc2df103ffcfa764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80dde125af28f3b124d6fa1ff11fad5967940ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81179875cb152f50184979a0de999026fe556e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8315af919729c823b2d996b1a6dde381e7444f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8643df25b6614ebd9e03144d12f53994e40e770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8687d7dc9d8fa32fabde63e19b2dbc9bb8b2138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a3f8e783d52cfb9e632276714234661db698e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8aedf50e708ed4ebca5be1e34885ad41c383499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911d7e59ba82fdf477a2ab22ff25125072c9282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb960c386eca71d28c95cb064d2f4720fbad1f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b55db94eb5581d7716235f5f55156f73878211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f861b7755ff09cfd65cfe262d19823607b1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac8459641f765b26e8984f29082629359f084c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb0589a56557161707fa402df58863d3233e45f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb3fda661149f6e45d829d5dd54a1608577c5fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9997a195a031e4d7d29c14ea3fc53cf94f4b86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4d0f452b347cf25ee84509ed99bd478ac96b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6977251621591fd3e8222cc89081841510b547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7507bea8d7bcb49f511cf59651b5114e6e7667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcda2acfe820c92b8e0b389733aaaae4f930a9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdaf491a8c45981ccdfe46455f9d62b5c9b1632f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdcb57c9d35e8d41babcbca67416ee6622274caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe83fd842db4937c0c3d15b2aba6af7e854f8dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe9b99d4dc860ac6fb97e56102815a8f973967c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00978c2bfc2c0ac159367080992b287c075164b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc014f34d5ba10b6799d76b0f5acdeee577805085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08550a4cc5333f40e593ecc4c4724808085d304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0bd9eb88840ee181c5cadf0a2914d41a403007a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0da79a6a0f255ed6d31a8ffd719c19a52aa5a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1793a29609ffff81f10139fa0a7a444c9e106ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1db00a8e5ef7bfa476395cdbcc98235477cde4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1dbac8eb17f3684bf87847cd9525dfbcd9a4033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2df2d82361f3cd885bc9e29de3427cea86b37e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3eb88b3ee65b7bc8c0aa6bf399e4bd89a4d0331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ffc76af1b0e60a4b79f7c30ad8cdeb0cabf0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc423aefe189394aed22f954eba943f303b42d1dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc455e6c7936c2382f04306d329abc5d36444d3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4afee724025a33c041b39f374014dcbb8c52459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4e343b89fb261f42432d9078dde9798e67c33ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54106a999bede585c9574f2e4cb31df46cbdd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fa220347375ac4f91f9e4a4aab362f22801504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc619ff91e2f00279f9046dbe10806de1cd4ba99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e58b36e26b08fd1d2aed4538c02171fa872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67a44d958eef0ff316c3a7c9e14fb96f6dedaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc684432fd6322c6d58b6bc5d28b18569aa0ad0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc687e65456ff664b95753e3ee02a5e5d4fdbe886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7421184041bd29ec3829a640bfebe4648e247df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc778417e063141139fce010982780140aa0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bab672806932fcaf918b4318796b02b0832856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80468f2e9fb58fa4e7ba8ec4e60af5106bbc0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc805d4126c3ac9d0ad7bb94c3d5cd72e3cbcd6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80c48862e4254f37047235298edb6aa35717c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8418af6358ffdda74e09ca9cc3fe03ca6adc5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8dcc12f457eecb38d070815731c63639ae87aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91bb4b0696e3b48c0c501b4ce8e7244fc363a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95bd7460ece4007973458d1c0f8ccc46c1880df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc96265c8748c8361d77fe99d42ae78aae63995a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9853117981374667e0eb3434ad22008133c6c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9facfa2fc50c9a30c77a2ad14e2db107d591918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca2f671cd71b31acd60e74a7c148715b053c7f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa487d113ad1c34ce128c4f3a2a437614c6a692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1f6f6bf3bcc01cdb6ba3ab22f5849333efe6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb70bbaec89b577617f835e7a2e126da9e5acf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb75a1655c84589652d0f3a4605e5dda8431f0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a15af05102713d4e9628f20824111f9331b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcba8e52ab11b3209ab55e28622371d9877058d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbd7fd48c7a2a095ce053d5998db12ca0ea65264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbed82324afcc67e77e9ce9a23d85d49d65cfe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc519ffb126de2c7f941851afda78a73f121a753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccebbf77c3eeb298113392363e0c9863b37111b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd7167b3a16f6177e34e2b9ae0d7c3eeee4a4b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb55051fc792303ddc7c1052cc5161baed88e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb71cbf4f6b8db8d13d1be655988cbc523bc8b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde9a4e885b87a893b8817d136fd2f404b54294f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf4a95e684c8aeb42077a1312dafc98da64e1fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1e6926b2167f83ec3300bed04a672abd93e646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb3cfeae8c3f39aecdf7ec275a00d29eca08535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c71ecd0787bb792e2bb8eeef030a66467bba1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e6bc02657451fe16cddd7cab8cd55e39d25d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd123c42cfebe2fadaa4557dd06bcadb823785967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13c9a29ef6c5adc7b43bbd5854b07bb9b099862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1d25d2c962ce628820a33118578eb7fe2f03b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd21040c133cb8a407cba7830edb521665ebff916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd223f6a87c931baa5896e47e0d018c55b535bd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2a4ca94f2de6593ec6f68019e313e1518f60560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b62aef2102c09f475b23dda6b61072e848cf28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2d43555134dc575bf7279f4ba18809645db0f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e576b5dcde3580420a5ef78f3639ba9cd1b967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd404bef05e9e256765440a1b9a6b56750c4cedec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5d4f0ad337fca8d7628bbf4f1a2e1b3970b9d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6953e2c5546860a244aacb0e5af67a16d3725de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd710df47b264f6e08325412d929f7354b8221f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74034c6109a23b6c7657144cacbbbb82bdcb00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7477321a84f3d39b8d742580f3740016658135d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd794f13b9a494118cc83ec8880d22a44f1a843cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd79964c70cb06224fda4c48387b53e9819bcb71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7f9506e26cf90647c30778a37a37cc48c186717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7fbb427aceb18fac3b377730f35f0a5b7a0d3a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85bd15f77f56b99f7610e8605a4a8ebcc345413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd865c7c460bcb58d75c840629d4fdf5bbebd32bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd875628b942f8970de3cceaf6417005f68540d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8960b01ac99966e686101196c0d5aaa4e2d7588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8c9d9071123a059c6e0a945cf0e0c82b508d816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e4bbb06cec6365b1c70e646032a5622085e6b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f49c747aed8d394f6f1841546e2b83e09a357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90d7cda2546419f25803919376692a8d4b483c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd96f48665a1410c0cd669a88898eca36b9fc2cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f2b927eb692f88689e08e53d729109c84cc5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda2c338350a0e59ce71cdced9679a3a590dd9bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb68c6264e9d0f8a6df1fa5a89f205da38698d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc65f3514725206dd83a8843aae2ac3d99771c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc892358d55d5ae1ec47a531130d62151eba36e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd05247d34d85bcc145c74e2f1d070352fef83f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd1052137472cca4c2f55b93cc9c0f06ec20b6b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd8778e4cbf210e7c0ee803a9f8874a87c62b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde3c8aa7f53a69c595b7720045000a68cb9cb341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdede1cce94cdaa3ce358e561895775db369b72e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf41e21dae8bf6ae3eddb83337f8364eb7fc1659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe1a5b757523ca6f7f049ac02151808e6a52111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0070f7a961dcb102e3d904a170613be3f3b37a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02bf848395a538c7c624c2bfe377b039f067a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c29b1a278d4b5eae5016a7bc9bfee6c663d146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0d2007f6f2a71b90143d6667257d95643183f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ec9b5aa7b67135fcc173a96ecc5c4a81cb850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16723a08ae054a8f20bdc0395389569011e78d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1ac243f14de48eba4c267e82d97ebc7d260d318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c3218134e7c69f3443bbd96a5851d193224f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25fbb66110a83cc5f3d74dd85a39e070ca3f017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2968dd5557383109998c29c3a5842d73f66ff97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3637b3aaf5492c72b911656970339d410e0975e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38daa41be7ca22f724b9cf6d13cd920bf18a3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3997288987e6297ad550a69b31439504f513267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3cd7c4739f8b068d1fe32b81a0e67ebc27b36cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e3fb7e9f48d26817b7210c9bd6b22744790415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ee57d3fbdbae9b506a92da79ca8454ac288e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe420cf281e567cb144838435bb5d6b482c102e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe45217a77c332ff767112dc89e568c473c5fad2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4e8219982e088c4895800ca60891dbc023ee2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53d45abe10ce20427d20c5a1b6360fa5ba0ce0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55be4c8f2d3c11536f61c8977dac4ad58446059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5afcf332a5457e8fafcd668bce3df953762dfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6191aa754f9a881e0a73f2028edf324242f39e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe621bb24fe3613caaa59c33f0f59eaa026663a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c144ba99af564be7e81261f7bd951b802f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6dbd13209338f8b8a4e2d3310da163004835729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe76d930c1f64acbba68ff4b5a8e045eda2e99c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe782adaa40f2148ccd0e181ce090e44900e392ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cd2b4eb1d98cd6a4a48b6071d46401ac7dc5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81964d5b14b59ff5927a42db08f3cc9b3a761c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84251b93d9524e0d2e621ba7dc7cb3579f997c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84f5b1582ba325fdf9ce6b0c1f087ccfc924e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b2989276e2ca8fdea2268e3551b2b4b2418950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe92b32d8f55564e0eedbd665ffd810cc918f5627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94c443e2d124cf9d5b5a6f1ce0e29dc464551da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe965db54fe154765460c5289a2b383d34fd6010b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96a9bdb549f4cc4ee8deb7085bd6ffe4b273b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae4365f8714b8fdc66ed0f2a3d90338c9dd84eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1cfef24f5b9d287f702ac6ebd301e606936b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4480152bef93fa7bd01a7f427f1dd3069fc4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b86248d3c2b618ccb071adb122109da96da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb85dd2374a44f80342acf8010d585bda32b77a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8672dd770d59fad9a811591a5edd40e8f6a413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec9189c95beb2e7f735e439e858a70b3bb8a6aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecca5a27b4f8f92a2bffd006f20168a7188c0a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb47ff3525e32e0755c908c0c718f58af6b4724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedcf198bc94ddcabb21dbeb38ad9f9793208f12a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea5ba20b042cce9f1d3f4f796df5a844868916f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee1b35b1a4af3e44f741a55c8b2a04b171c2549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1385d2b5dc6d14d5fecb86d53cdbefeca20fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2b0895f986afd7eb7939b65e2883c5e199751f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef633d1af20ed99a69b7cf46da5be63da07ed5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9c97e356bc5ff2460e25f40f608101ce15d70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1000d3bafdeee84c69ad4dd0168a6ea09866ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf113929f69fabe165a2280cac00c5f77196aa34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18056bbd320e96a48e3fbf8bc061322531aac99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ba3eef64bbc575c5ddc7454d81afc4800ea689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22995a3ea2c83f6764c711115b23a88411cafdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf248aa4aa0b7fedd183ab08135dd64f992972e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313a91af8930ae7fe3e6f8ba7ce62024928ee77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38ab1e51536cf5e4b0c83f83f1e6026b869188d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf391a63cddaff93ab52c14497a1ac4121672fa1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53cc57d1983372c5dc55f0466872265da08e3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cbebbd549273af82b42cd0230de9ea6efef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5b2514045f6b003a2a3eeb2b1e3de7f8676979a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5e9eb18b3ecdfda07ea55133f427d47add6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71040d20cc3ffbb28c1abcef46134c7936624e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf780dec6c8f7b4a14858fe3ccd64e4cc1f8f3e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7dbc322d72c1788a1e37eee738e2ea9c7fa875e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf80678718187a9e29e63a1f5af61369ecc8a8a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8beb5c479a9b58f581076697bbce83baade90c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa267599bc504a60806b24656495d89064cbd972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa27cdd5328979e85b440f1c7d56c8a5372f9ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3e2db8eb6c646e0d24046c1a185934d41a8f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa4a0f86d13880185e85490410d212c65ea4795a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa712ee4788c042e2b7bb55e6cb8ec569c4530c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa7c660683ff22989413256bd57f569562ce1559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb230bc3de97ee43d2501bcaab9a50bba9b69e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb81be4bde317d32ec6934db87e05cfdc5245437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbef0cb133e2921aad88bbd993990834ca33bda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc2796c47063d6fcb98006081778c7b45b13a4c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc780e0e273098e6efdad6f30caa48ffc659cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc92d0e9fa35df17e3a6d9f40716ca2ce749922b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf1468a6b04307927d83def4106dd64839b353b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf2c2689c130b0686331c9ada0e40ec1a1a58d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe51132b5320bd1a599688ca69697557aa763b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff051db87adfb0be398016ee5c68280ad49f1fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff498bbcbf40d0f30f178f553e8fa36153baf30b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 894
- Live contracts: 34
- Unknown liveness contracts: 860
- Source-verified contracts: 203
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate auto own=1, candidate review=141, contamination review=12, source verified unclassified=49, unverified unclassified=691

Showing first 200 of 894 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate auto own | LendingPoolConfigurator<br>`0x1c0e90b5d9b0b1497979fdde0f08249bde2c69ae` | non_address_book | core_logic | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0x044ad85f8421d8ffc383095e4db23656086a9c97` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x10ee4ac0e052312ca3d2f01ed75df7e2c3d7fa5d` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x12df06aef0c0d5ac1809b73ceb15da4ea651bc52` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0x13adb41f38cd14ac4f42db5ea60ae474a54e5509` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x17b13209d132a14f8e2130cafbfe89194424f6c8` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x2c93899383f4798e79b80bc278144c6f2a2f7f64` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0x2ea21b1d2429d71abb2624a660a92baece58b479` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x3435ccfa639b756aa7c5097008ab70984524eaf5` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x3e0807714e3c26aa25fe69526b18c53c69d9b22c` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x41adb3fd5d0c8771860805c96b88da257fd7a5ce` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x4722a5bb5c262f6d531ce9983a0cff50f19a5a9c` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0x4823643f7e4298c2d99a608cb064770e87a74bf7` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0x48ab3938e166f17ce8be0d5b40930c90f52c4b35` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x4c82a5191c6d93fb1ec1146be47176cd00a7b002` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x550649c2a66ca0ad5fc54e74d5603c7be3b0e4aa` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x5675dd04b4276c6d614f5f2fee55ee0457ed0f41` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x56e3f10a0a61432f3485174f391141df172bd25c` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x576098250889835a517355acfd81e9ede44b6fdd` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0x5ed0517ee80f0ceb47a694cfbc559fd7ce93059b` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x5f5c8fdc1c85fea814b400a05ee135a1c6fc95ca` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0x61e9a703a390b83a915a1e30b3073b7bc50fd6ff` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0x67b3750733efa3fbe6291af96add7b5050020b8e` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x7a9f54e779a1ac4265212ea94d6cae36dcdcc1f0` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x8232d353bab970ddede3e376e32d7b1ce24430f5` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x871ac01199c5d581145764b15a16fda745b36cca` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0x8dd93b5dfd11ab2c42016670c63dd9cd4e65fd27` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x8ddbbe5c8ec86e61686b9bd2abfb0cfc67d10e89` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x9d111e09bffc02d9e2fd8f388d45a1a4af049e25` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0x9dad36853b8c6ce9a206b83d47b28a4c49205075` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0xa066f10e11352581e78ffadd3cb1b69db35973fe` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0xa256d09531dd7569e8ec224ce8d8c2ba001bd54c` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0xa69d94ca2c538ad2622ea89e3f5c65b2c7e1188a` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0xb5bb4f1a3a5a644d80f97bd60eed0c2dfb2afeb8` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0xb5cf0d3f5d1247dd0b5496fd8f9c309767d2cbe2` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0xcb0245aa8f36993ab99e22a13ec9f5f480574bb6` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0xcca2f076845bfe9c77654a87a708ad9cdc844429` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0xe44d24fcbd9c7755907a400ed32ee7901175b14b` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0xe6e33b26476dca924ec500e03e54b8f5e0dc8c43` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0xe73c56f8fded020a4c975da6148bb61ba4bbf99a` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | AToken<br>`0xf47dfce7fa5a10cb462cab98e5076a2a525b2a06` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | AToken<br>`0xff1c3d38ccdd719898abb478c257581557abc039` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x07b12795e18cb1568e9c24df4a54356846001ab7` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x0f2e9dc60e73dc328f5d04e4b6c83d0fcc55684e` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x1d2d10939de0a153ef7c4c566075aec3d60dc61b` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x23a625f94381a767713cab4fe880414bd84d2115` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x271787560903da9d7aa775b8b7004d451b3d0874` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x2a7743b4baed1267debc8e84caad0e64ed144fb6` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x2cee07005db0726e4814693ffa2677cec4cae023` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x39cee76900ac8ef70c6a49831044d0cfee7f5d30` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x3a1c46855b446100e862a46ff2cf9cc3f85c6b06` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x43631bc3b517a5ee149872632bbe45729d6ab1d0` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x4fc09399c77b11a6644f4a84cf6e067eee0868ce` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x5d89fa15ace0c240f29e9124c41525f62371e820` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x673ef673e78609fdc6b203c0a60ba86f97fbcb9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x47094ac2b18689fc3d526f55e846873f5c5ad19c` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x6b011855f3ae618ade7ca52fc899a7828e8b2d64` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x73cae61ac8f59ebc04bebe2b2ffab62fb6360f88` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x88fbeb0022be4e8c0f9fba149b83d30791be03f5` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x9fcd8cde94bd5ba162139c20245e8801e08f6012` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xa3c9774d5a41443edb41795bf6b83a79790247f7` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xa645c8c13c1ff81bc881cb2272727126965ed356` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xaf3da5594bbe05bb2d3f56ae0a2d6ab7def19df7` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xb5782e0a5af693bd638234c9e2c2ebafb38eca31` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xc3f77e44c4d6366fdf6e9620499c2cea1ec9342b` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xc52216be18e4847b3f075a54961ffd2d1f8663f3` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xc65de150da3ce599e28f10b232cd89aa5e7ac239` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xc9bae09e27ceaf84a54f2061b9ce43a3fe9e036d` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xca2a8300489487a6e94cc85028ccf465e5edebf3` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xca328d134df1714901e39f8d61d2ef274f86c90e` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xcb830c23a9736089ae588313ebfa5b317e34421f` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xcca85d91c3db299eb2e07c24be513fb4d9757c09` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xd14b841469b4dadfee06b310f407da0a979ba3bf` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xd4fb946e72c4b9ab8bc1728df2012f7057da1479` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xda741178fddf0207f6060b2543c80419a4e362d2` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xec2416bf49ee3cf57eb2cb6b55061e9c9d691390` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xf01f289a70e8fb8f396e6379529289bd9076e15b` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | FallbackOracle<br>`0x9bc6333081266e55d88942e277fc809b485698b9` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | LendingPoolAddressesProvider<br>`0x10141a3fb615d7af2ffb151d675e80e2f919a0d0` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | LendingPoolAddressesProvider<br>`0x1166deebec7e112ace261a283dba7b876a5390bf` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | LendingPoolAddressesProvider<br>`0x3e25876aea64a39554b4e0f6dce6360e38cbe234` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | LendingPoolAddressesProvider<br>`0x86aba3373d3365c2684ef7a2bb24314b146be7cc` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | LendingPoolAddressesProvider<br>`0xebdbb9846073a6dc288d92684a0187f208eb10f6` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | Leverager<br>`0x3516b83348af99021715f16db46d065bbe9f8c2a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | Leverager<br>`0x38972f4bc20dbf2eb2a4cb0593414e7f1bc73c2d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0x043fc0b333034a13061601275420f1601e2b4bbd` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0x05d682006df6306e371b5411863fc207506a58eb` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0x1c5c841941d98cef5393423e6391bd0b1c18bf99` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | StableDebtToken<br>`0x2cb86dc130f0e99c3ff7128b10d18096957a62f7` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0x3f447884b0dc714dd3398e94cb4c31aa93f76e14` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0x4ff822cc01051c30fb0a2d4899fbc889501b2e5a` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0x6b5766198a2dbf85160985047b987a483be69bea` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | StableDebtToken<br>`0x74943d75f0d9f2164cfe7727e20f1f91058214be` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0x7aef021db359bb820ec191bcfc65e74758731131` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | StableDebtToken<br>`0xa097ec3aae169e8e62ffc8980a9f657ef97bd5bd` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0xbf5214c7d7c39b924d591cc43e80acd2cc00b919` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0xbf772d84e26ceace3521b7c0ed5cf456149d7e96` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0xc7c3d79d61c9e4e27ff904f66386a89726a60a3c` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0xcbd753d1466a6fe68fb2d31f4027b889d120adc4` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0xcc80c90d7e28fa0a7d5d3d6df0e86af502123b0d` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0xec6f20a9b6c250b7adc90d7fede3aba23ed85774` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | StableDebtToken<br>`0xf39a0170db39367657562b51f40b57db33c2a59c` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x0f6885ded5ef51f773e40f3ccd323131f3fac22c` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x1125a006396c40d80c51c51e787979bb8b06549a` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x1c01d301cbdb3497ba84a339101e93da30a4faa0` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x24c988aa019e2ddbc788c334b9ec08b715bb9af6` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x28d9ca44105ff50ae51edd3f43b4df67c541e51b` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x2ce6eb07c2e9c88b9fe665a75400db7bf21203d9` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x3923c7ca0db0df747f32c50fd478247f7926ea32` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x40477637151b0e182242185166c485836d4211bf` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x407e84b671f018f86fcf02a4df2d8daa906f9368` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x4385ae8f5275568cc31cb8f112cb3fb4d8ada6e0` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x4b8e01020b942bb5c0b4a8368a2ec44e12ec0319` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x50db712486c38fd7fcf0c72894d70ce4b0475781` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x604b7980d3611116b24707ecce425bea929fdce4` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x6063ed0d6d3f0750c4240ab178a189809a805b47` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x70e3e2d8450f148a76cc04c52b3bc803493e9255` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x726da50fdbce564ffe88d58c23766193907c9189` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x75e02dd8123b460fdb2bc52cb67becbbead25614` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x79e01cf0ebe41446318c04ae61c4ebcc1a8bf9c8` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x7c14f35cb20ec5aaf16f02df3ba546b8224e1c99` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x8975bcf1fd81d2eb8164919de4d5897efaa633ad` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x89ec197ce3d072997a6966312300684a8bdb1f90` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x8da785a2f19b3f69359cf86a4a12a6fcbde34929` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x903e35e149424a13bdb6c63ef72e74394bd9e45b` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0x97a19ba727e034eccc33608a994bff5c618ad012` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0x9ddfc4f8ad48940e323ccfd4426bd0b074a64f45` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xa2c32a116e959ee35d5c99a2a575697814d9eebc` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xa71b2cebb5e0ac07497f825470e45383e1997083` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0xaab79161546e64845ad07527fda4b7246ececd93` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0xac1bd73182c1469b7c103f35ac234fd056191c7a` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xb894e2bc1816f4c217612ea7683ab92c10d0b1f4` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xbae0762ae91718138c60ffaa2d43be333a5e146b` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xbb85652ab83219e146bded3ea9c228a66e923d52` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0xbc9a6bbff91cb28b1bb3f3ed91e937b84eb2c544` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xc523698b92fee97a3d3b5be5d6744dd3207c33b6` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0xd1367ad1ea2202072d685d333f0077e63e696148` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xd4a4da45e170d43bba5685e04635ca0325219d1b` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xd626d62f322e484629a475b544278b88f35e204f` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xdebb85c7378829229b4f4cea07eba49496e8e86f` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xe03496a48f59ec2a209f8dc473332e1499d539ef` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| candidate review | VariableDebtToken<br>`0xf3d6fa1fe40ad41d7bc42218067c4858ccf4affa` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| candidate review | VariableDebtToken<br>`0xfcbd894a18358d53d38abb8b1c83c222c4b3096f` | retained_scope_excluded_inventory | token | live | verified | review: no_fresh_structural_match | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| contamination review | LUSDPriceGetter<br>`0x0929786f027c4cd43bf15906d44fdc42e95df00f` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| contamination review | MarryStrgtVaultWrapper<br>`0x9a92e217a5b5653d00d4fdd9fbb6e8b4513ffafe` | non_address_book | unknown | unknown | verified | n/a | `0x4bfa154b86d4a1854af6547684129561c852fbdc` |
| contamination review | OneInchSwapper<br>`0xeeccbad532fa1ab87943c21d386194979a8ca178` | non_address_book | unknown | unknown | verified | n/a | `0x4bfa154b86d4a1854af6547684129561c852fbdc` |
| contamination review | RangePriceGetter<br>`0x29473bb643269606e00adae93ddb147a3463100e` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| contamination review | SIFUPriceGetter<br>`0x51e9d8b9c4c72e840e308b89694e84844a9fffc9` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| contamination review | SiloOracle<br>`0x2ac896fe1a3ca6b2ab316440d2a6e0eac83ccef7` | non_address_book | operational_periphery | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| contamination review | sUSDePriceProviderBUniCatch<br>`0xd252953818bdf8507643c237877020398fa4b2e8` | non_address_book | operational_periphery | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| contamination review | UwUETHLPPriceGetter<br>`0x853376ce22da41ee9a8442d3f81d4ee8410bf5f8` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| contamination review | UwUUiPriceGetter<br>`0x027d9e6f282a6620bf3b44289fcfe444305dc514` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| contamination review | VaultPriceGetter<br>`0xfe4127c543b66387d6cd139079d0d85630eed5fd` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| contamination review | VaultRangePriceGetter<br>`0x8a8e89e4f0f5696b3ee2b482e26aa315ab861241` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| contamination review | WMEMOPriceGetter<br>`0xeb498956174ec4b11316fb1c5c7a5c3255c4eb3a` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | ATokenBurnable<br>`0xe9621e6e650350576fbf94793b8a7b9f2f4f61b5` | non_address_book | token | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | CustomPriceGetter<br>`0x4939231c5d1ba724c9e2bc9b9c5fa16ed2a06c5a` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | CustomPriceGetter<br>`0x4a5c35130286becf1393f6f56fa795ad738624fb` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | CustomPriceGetter<br>`0x964d57a3df684524159dbcc1fab19f2a66c5c99d` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | CustomPriceGetter<br>`0xa659b7b770b6519aa4f2ac4b41316a74e0f61a91` | non_address_book | operational_periphery | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | CustomPriceGetter<br>`0xaedcf57350a034d5caaa9b6590ded60f73492eb1` | non_address_book | operational_periphery | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | CustomPriceGetter<br>`0xc4076987cc1094e5364fc5b9203ec2965fff9a85` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | CustomPriceGetter<br>`0xec674453db9cfcd5f474f94649092bf2fc0eadd2` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | CustomPriceGetter<br>`0xf160abfb24fad81de393ce1b06145635cf264bb5` | non_address_book | operational_periphery | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | Dummy<br>`0xe3d0e323c6531ec9340cf3ddb1c29667798e8ebc` | non_address_book | unknown | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | FlashLiquidatorV2<br>`0x4752206fc014c2c142ff731be7e69d9d89d418fa` | non_address_book | operational_periphery | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | IncentivesControllerV2<br>`0x78f3fc482cb170012dc0402eb2007c5f40c346b2` | non_address_book | governance | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | IncentivesControllerV2<br>`0x81a45d3d16d2621f4cd2a2398bc7e93347b7ad45` | non_address_book | governance | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | IncentivesControllerV3<br>`0x24911dad45220af2f258fa2434ac51e7b979215b` | non_address_book | governance | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | IncentivesControllerV3<br>`0x415243c28ee353c0c5dd3ba76d3e011114560ec3` | non_address_book | governance | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | IncentivesControllerV3<br>`0x8c7f54a2fb90c9366e3fa8b31af47c0dd357aedf` | non_address_book | governance | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | IncentivesControllerV3<br>`0x93ad34560df42bd90f608ceb7872b8cc80dd453a` | non_address_book | governance | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | LendingPoolAddressesProviderRegistry<br>`0x34a7db36d435e3404b82dfd338d48255e1e4a3ec` | non_address_book | registry | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | LendingPoolAddressesProviderRegistry<br>`0x4392393bc2e46d528ad1a891ea9d78f7cbe9ccca` | non_address_book | registry | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | LendingPoolAddressesProviderRegistry<br>`0x668b234b42deb9d8607271428bc1cfd23f0dd9ef` | non_address_book | registry | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | LendingPoolAddressesProviderRegistry<br>`0x843a69bf787d260a42c0c54f1fd0e563ccff16d8` | non_address_book | registry | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | Leverager<br>`0x0663cf7d88c91f785a3e53372bbf27d422b6567c` | non_address_book | unknown | unknown | verified | n/a | `0x4bfa154b86d4a1854af6547684129561c852fbdc` |
| source verified unclassified | Leverager<br>`0x10bc453811893b7031b489cb67739ae35b7afdd8` | non_address_book | unknown | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | LUSDPriceGetter<br>`0x257642ff3b3e6ae98fc7fc70ceb0ff926c3d7e69` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | MarryStrgtVaultFactory<br>`0x3d8bd8a39dcf7593543fde39a066c87e41138a82` | non_address_book | unknown | unknown | verified | n/a | `0x4bfa154b86d4a1854af6547684129561c852fbdc` |
| source verified unclassified | MarryStrgtVaultFactory<br>`0x6502dc7879a3158adf75b9ef499ccb90cbb152b9` | non_address_book | unknown | unknown | verified | n/a | `0x4bfa154b86d4a1854af6547684129561c852fbdc` |
| source verified unclassified | MarryStrgtVaultFactory<br>`0xb45d8a96a6020befa0bd0a0c1ed16a91a8cea199` | non_address_book | unknown | unknown | verified | n/a | `0x4bfa154b86d4a1854af6547684129561c852fbdc` |
| source verified unclassified | MarryStrgtVaultFactory<br>`0xc1950e7b0216da90ae69911dabc9f3e1db0b34f8` | non_address_book | unknown | unknown | verified | n/a | `0x4bfa154b86d4a1854af6547684129561c852fbdc` |
| source verified unclassified | MarryStrgtVaultWrapper<br>`0xe1ec18d475d02a8219a13d045a15fe67db8e0773` | non_address_book | unknown | unknown | verified | n/a | `0x4bfa154b86d4a1854af6547684129561c852fbdc` |
| source verified unclassified | Migration<br>`0x130e527ff9dd7e2c59b576d6553a8d0f79f824f2` | non_address_book | unknown | unknown | verified | n/a | `0x221211264a3c7dde2f687cbdd7e348586bdd0000` |
| source verified unclassified | Migration<br>`0x458e7e99344996548fbc895cb5ce3e08ec9a7e59` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | Migration<br>`0x54f839153ff4281a61cc90670905e059f15c3a7b` | non_address_book | unknown | unknown | verified | n/a | `0x221211264a3c7dde2f687cbdd7e348586bdd0000` |
| source verified unclassified | MigrationUpdater<br>`0xeb1be6de225bed949d10a053236aac9e80aceeea` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | MultiFeeDistributionUNIV3POS<br>`0x24c7ceec7e5d151accaf044a81a93f346e21f446` | non_address_book | unknown | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | MultiFeeDistributionUNIV3POS<br>`0x4c7e22c7a1fd8aa06c23237f56d1b974853115c7` | non_address_book | unknown | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | MultiFeeDistributionUNIV3POS<br>`0x716ea741b8b32ea7d543c14a352f00d7914d4457` | non_address_book | unknown | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | MultiFeeDistributionUNIV3POS<br>`0xaa5bce11a187af295ef9508f8432f479fa8867df` | non_address_book | unknown | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | MultiFeeDistributionV3<br>`0x29a906316ad99270f294ef779fa61589f5b184bd` | non_address_book | unknown | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | RangePriceGetter<br>`0x781b291e4d5ca2b0ed46ebd37ddc70b3242fac2d` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | RangePriceGetter<br>`0x786a2623ef03a859a76cc718cb44ca3d8d424284` | non_address_book | operational_periphery | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | RangePriceGetter<br>`0x80d3570260e38e054abd5dcf211d6f1945ff1245` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | RangePriceGetter<br>`0x8338be71192aaf7c1d04bdb197ad21655f2e62e9` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | RangePriceGetter<br>`0x90ba920e2426857276a2338d69bf9cefee6c7b18` | non_address_book | operational_periphery | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | RangePriceGetter<br>`0x923576079ac789d8eaf0dc629a9f47f463d1bac5` | non_address_book | operational_periphery | unknown | verified | n/a | `0x50831130c4b0aa78fca9edaa39d7339a9620d751` |
| source verified unclassified | RangePriceGetter<br>`0xa15151f44ff07139f638bb04c96159b1bd61bc92` | non_address_book | operational_periphery | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |
| source verified unclassified | RangePriceGetter<br>`0xe6518bad5e8161baf1923d47c099b5dbe55bcf97` | non_address_book | operational_periphery | unknown | verified | n/a | `0x00004c2e74a38bccf68993514cc06375ca554321` |

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
| needs_review | 692 |

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
