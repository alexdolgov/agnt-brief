# Agentic Audit Brief: Yei Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Yei Finance (`yei-finance`)
- Website: [https://www.yei.finance/](https://www.yei.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: sei
- Contract surface: 47 unique implementations (147 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $17,240,281.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Yei Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 47 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 47
- Raw deployments: 147
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x60c82a40c57736a9c692c42e87a8849fb407f0d6` | ⚠️ Unaudited |
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x241995b768c1ae629eb5a6f3749c6e7b8c4d47f2`; sei `0x932b0def45af6b4df91a223a9e36f5ee62f7c435`; sei `0xb948e837af263e0ac0bfc88e2438666289745a77`; sei `0xc6f7283620683bd1fda0c20158a2a589a090eea6` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x36ac8c4350974c92e79ed7cb326fa6bc05479c0f`; sei `0x51c5fd7783358afe244ebb74aa8963e152fad73b`; sei `0xd7bd619b948c825031ecd80b1999852c8f0ba7ed`; sei `0xdbebd178fffa02f09af640fb31ecf669ed0108a7` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x635901ab3409d47da0e693e244b42baf4b348a41`; sei `0x99c952c3fe5f31546c29b282911d2ed6b1a95d86`; sei `0x9c8a9f8a9b5e1f9e27b6bb39fdb8e92454a1279d`; sei `0xf7dd04ecbb8de9569a9dd2d2cc546fa8e579b54e` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x3b28c1c795f1382a083d822dc2997eef49505643`; sei `0x6ddbd4728cc02f6a667b0424fdf58aca098c73a8`; sei `0xca7352a1f8c3bfc60bb376fc3a011c70a6f41e00`; sei `0xdf9d79854b07c7b62e4f96b7b162bcdc43609a95` | ⚠️ Unaudited |
| Clovis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0x8154d3161fc83ff69111b69b1120cd7475628555`; sei `0x81d3a238b02827f62b9f390f947d36d4a5bf89d2` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0x1c644810f2bd306db6cf7ac392d11f3da68f4ab1`; sei `0xa3c23d4c03009d39b574ef64ba9f3661567b8a0f` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x800f3e929686ec90eeaabb8b98ed1eff126d532c`; sei `0xbf63c919a8c15f4741e75c232c7be0d0af4d1d05` | ⚠️ Unaudited |
| CollectorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x04c3d1abb0fbb17a2711ab851cc5d1276e001b61`; sei `0x4ec5e3f9a32aabd6af62b9a22188f429d65f39c7`; sei `0x88a8998a5588447992d6f98ba50180679c433894` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0xbed70224331e0a01c0b194163f8242ad7af3cabf`; sei `0xc0e30559445476dff725f3a3dbb6feab47694266`; sei `0xc427438784b7ed4eec38e5746516972af01a9476` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 21 deployments: sei `0x0df8022519a8d1231293b24b2fd7a8bf992d0b4b`; sei `0x33afe4892ab282544c8700a61984886d44e96eac`; sei `0x571591052aa05353a5f96070df2f71c961d2dfb9`; sei `0x58f8645b9ef2bdea6cd05105bf5ce6e8805e3a20`; sei `0x58f9da1f026b742d31cba95f171b7815f08d0575`; sei `0x5d3872d88e5e9f4a63f48a10d3b55a701149829c`; sei `0x5ee1bc89dd06d40d2550a77f4a72a2af5d28678b`; sei `0x660a1f48fa0f6b8193756fad0cc6ac78660bb61d`; sei `0x704d9658b25c6cfd88807f930c759041d01987c8`; sei `0x78b5ded9b67e3548a4fcdf298f89a17d5bd3a852`; sei `0x807878fc9686357416be585a3b4ebb5ae46680b8`; sei `0x80c1afe0770287a9ec9b6cc1ca2aae354ec8af2a`; sei `0x8c857e5eec30119f15dc640a7482cc2cc16d72e5`; sei `0x9bd15987df626b52d107688034c5e788346f2700`; sei `0xa3322edf272fd5e72851f7c45784998ec9b6b628`; sei `0xa753cb2ed8da813aa1fd4c64c7bb0fe034d8cfbb`; sei `0xaeb5098c2de6f62122ecc523790184b23890e3f1`; sei `0xaeca84e5430a723a876ccbc217a8273f04c14447`; sei `0xc1901f1b33b7071e67bf9ef4a749ad80e6340a3c`; sei `0xf4be509ddcc4adc4acc29a9fd89227cdb2c1ee06`; sei `0xfff1c1ebb8f7b1c8371e054c9511caffce83b8a2` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x5143e6c2d1b67e85ee1b3fe35d3b48f73c40ec9b`; sei `0x812b8ea4cd56b8d9ede1604ffe0cecf1e6be7f04`; sei `0xc6388fdc02066849643059f0265202109f83b74a`; sei `0xea54e360d9129c3ab76487eae25ed5fe44c856c2` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x32bf49731a60e871224c31c0361baeb284f2a359`; sei `0x36757f4796c834ef29ee778e37e1a28eceac5c3f`; sei `0x69ea2c310a950e58984f4bec4accf2ece391dafd`; sei `0x96020007583c55abe6297090269179e6e046b2f1` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x3655494c5c78102ecfe8e8f4b07e6de7413c3bef`; sei `0x81deecd10a76c1da037079eeb09d0b84e746c038`; sei `0x859f699b896381a3badebe2c04ab70e3ccb381ff` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x767148190d8b66ad7cd6a364866c1437d8a2cfd3`; sei `0xa4bfc89476ea68a0a649612bb259aac8e2f2bb19`; sei `0xdd66f956b39c91b904282d3122aea8c3ba41c857` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x13206f9ce7c4c7850fe1278d9efa2f17aea80461`; sei `0x6e410a9e4ac53c0f9782d8279c38b5b96a8d9af8`; sei `0xdbc8d6f888b66fa6869d4d0950d135faa95b8dd4` | ⚠️ Unaudited |
| LiquidateLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x30bbfe09001f51eb9837f8ffefbbd762d54be4cf` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x5d1c6e0d69e962851b315bc9eff92d5189189c6b`; sei `0x6cfc881c3f4f043057db70a854a0bb9ebcee0c5b`; sei `0xd4cf1d5087c72e1f6353907f2161a75230abf8fa` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x18b07b4a2800ef3f192ff6c7076abfeeab1c3bcd`; sei `0x6724ed1d520bcae7f0102de8fed65d2fe17c4886` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x68a91e65fce074a15c862f97e1ce977de2a72255`; sei `0xf846d773053252c5dbd0f62560a22f6b749233c6` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x00208103c28fba80e715435b8173361bb817a1f2`; sei `0x84b7c6edff42d3e16dd28c68c6672bbff4f85645`; sei `0xd078c43f88fbed47b3ce16dc361606b594c8f305` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x5c57266688a4ad1d3ab61209ebcb967b84227642`; sei `0x74c69acb35d406151c4ae5a0c75e5ad5acfa9149`; sei `0x7da484d72c066304a075c0416d0e77506bf0e153`; sei `0xff33a79d9190bd63d0e9a4946f7fccba0e8f2a1e` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 6 deployments: sei `0x8138da4417340594aeea4be8fbc7693d9875b6cb`; sei `0xa0f196f8bf5c5af3ad10ceeff65d4f339c8d73b2`; sei `0xcb0ac1f731ce2a2f2197017c956a37932e3ea721`; sei `0xd7a8b00ee979ee9adc68ccbe2ec4a868477c9adf`; sei `0xe949f17a59c5d8c274a50b9a0a1d7e4e5d6f64f6`; sei `0xff5daee448c0f9f14416ddc874fd3cd8a5a76474` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x1f22c32f743d5a8ee1d0a012bfeef75bf76c7f61`; sei `0x80c4cdee95e52a8ad2c57ec3265bea3a9c91669d`; sei `0xf43fb6cbe9b211d3c132ba5fc144f13d68285781` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x2d245f6181b5ee45ccd1bfa0a9b662f1594f2775`; sei `0x8301b04d9641ad2c52be2108b0b41d0f9164254d`; sei `0xe3d1cb511f6dbc55e6d2853a20c17954014b0dd7` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x169863232c312ef27dfc9205f92b68e72cf5a88c`; sei `0x6061fb6676574ba1ecf4f1d80357ceb6d09595c7`; sei `0x67b440b71fa2cb8e9a91a4ffb3e89a6976fcc608`; sei `0xbb8a61410b3b7084c8c8047edc953f7508cf1627` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x1031698f52be8ff0fef8dea520fe162fff8a5789`; sei `0x3132fe205accd04295789ff1fb3abcc10ac3d5c6`; sei `0x3618737b19fd057725c80b347058587b7f01e9c6`; sei `0x62901c9a112e98ea7f301a8aa983b76320b40ceb` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x0349219e437a86c0a6ee9dec41e42e5d7a0b3843`; sei `0x117ab77c5fc17354c393b3a2b8eb0e6f8806b1c4`; sei `0x374865d6aa24a7523a6176ce25e05cf6dc826304`; sei `0x4cab4b383fdc060fbff508b0a619c4f617e43a8f` | ⚠️ Unaudited |
| RewardsControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0xb1b2b614ad3bfb0cc024397424f7d37b2cea9a12`; sei `0xc891045d1bc28c12c137e836d8a55a56686d6ee6`; sei `0xe8094b66a2d83a7dea5f65493631c77a1b2f8608` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x4f7fc21b367e0ad538cd425bfca9e5491c05b5ce`; sei `0xd13fcb3fa9e7264341c0d1ded52f93fc2fcb99a1`; sei `0xe300239131061c50f147032e0d1049899e8f861f`; sei `0xee2aaa4329ad3aaddd1ac8e986e174760ba0a4f3` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x0f8286f6aa0ecf83c9c1d87dac974871d0573421`; sei `0x1b94edb27c7dd7711fcc3ae7b25a037215043d8b`; sei `0x26355c3b44cc79d7cae46c894bb0599a3c204718` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x19162c4c011a0cb0a58e3e1143e9616cad719cee`; sei `0xbef6c63256a780d12c947dfc216789a7bef3fb2a`; sei `0xbfb3d529914f5ed7bfd25ab26a65c9d56c0d56c5`; sei `0xd25ce1d2f20868c610726a9d7c675ea9a8359c55` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x186b5114230d94c480c94f2ae9dd5f89ecb5f549`; sei `0x411958fe53f5c48cfa263cc16b6f0f8e0be5c3e8`; sei `0xeb0cc27b656775bf27dc7a3c1cf570e002f727da`; sei `0xfbc3db2ed6875da561c74d17d8ef2e809b5eaa1f` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x0910ba548d6e635e47d137fc1cdcbe5a9ff91fd1`; sei `0x0a4feb762be9a56c0b84442e0846a418e46bcf00`; sei `0x78b3dcc95a0b2cb76e65b98c6057ad7fdd4d05b1`; sei `0xc7aea6f527fd67e190165000118330bc5eac26f9` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x6c96480f40721d80e19af156c312e08b4b18ea89`; sei `0x81fcee5b9536dc0c626ddae6c84b9802842a57ae`; sei `0xd33ce3998e09c191aee704a353daf30597f961d6`; sei `0xf43c32ecd35203c47d30dcd1b3198edb8af8a8f2` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0x67a0a897a32f0e5c76303666ca34178949f86ed3` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0xefe5054adf8c5fb416b4c6acca594b646caab91a` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x44a8aa4c2f712dd8c701b411adbe0419ce93bf3c`; sei `0x5d20a2d97b3202c1b6ccd21e26a42c8d6f3cdd75`; sei `0xbc096b6a7d5404de916b3333ad223a1b32eec8aa`; sei `0xd2a000458fd01352c91be33c79ae7d12d62c069f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x05696a5e904970fa08413b30142518efdabec7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7cee89997cf523e61226e37d3dfcd4686fca9288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x82d1ae3d9038d1ad9c240c68c01a5f4d4a09d81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xaf448e94c6cb4307a2439bfb66b69fd2ac405307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb2b323e19b836e16e146291e966c83d67560be79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xc844901d55af32984078f297e6e3aeb4efe96bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xccefc4836e0b15eb65fe018bac6c72d9a9f87b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe721a929962709051a4654a53bd5252ba9f85578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xf83c7625a44d8b6541c39b50f61d79f7334180c4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 137
- Live contracts: 0
- Unknown liveness contracts: 137
- Source-verified contracts: 128
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=50, contamination review=5, source verified unclassified=73, unverified unclassified=9

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | BorrowLogic<br>`0x635901ab3409d47da0e693e244b42baf4b348a41` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | BorrowLogic<br>`0x99c952c3fe5f31546c29b282911d2ed6b1a95d86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | BorrowLogic<br>`0x9c8a9f8a9b5e1f9e27b6bb39fdb8e92454a1279d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | BorrowLogic<br>`0xf7dd04ecbb8de9569a9dd2d2cc546fa8e579b54e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | BridgeLogic<br>`0x3b28c1c795f1382a083d822dc2997eef49505643` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | BridgeLogic<br>`0x6ddbd4728cc02f6a667b0424fdf58aca098c73a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | BridgeLogic<br>`0xca7352a1f8c3bfc60bb376fc3a011c70a6f41e00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | BridgeLogic<br>`0xdf9d79854b07c7b62e4f96b7b162bcdc43609a95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x0df8022519a8d1231293b24b2fd7a8bf992d0b4b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x33afe4892ab282544c8700a61984886d44e96eac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x571591052aa05353a5f96070df2f71c961d2dfb9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x58f8645b9ef2bdea6cd05105bf5ce6e8805e3a20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x58f9da1f026b742d31cba95f171b7815f08d0575` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x5d3872d88e5e9f4a63f48a10d3b55a701149829c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x5ee1bc89dd06d40d2550a77f4a72a2af5d28678b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x660a1f48fa0f6b8193756fad0cc6ac78660bb61d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x704d9658b25c6cfd88807f930c759041d01987c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x78b5ded9b67e3548a4fcdf298f89a17d5bd3a852` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x807878fc9686357416be585a3b4ebb5ae46680b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x80c1afe0770287a9ec9b6cc1ca2aae354ec8af2a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x8c857e5eec30119f15dc640a7482cc2cc16d72e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0x9bd15987df626b52d107688034c5e788346f2700` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xa3322edf272fd5e72851f7c45784998ec9b6b628` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xa753cb2ed8da813aa1fd4c64c7bb0fe034d8cfbb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xaeb5098c2de6f62122ecc523790184b23890e3f1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xaeca84e5430a723a876ccbc217a8273f04c14447` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xc1901f1b33b7071e67bf9ef4a749ad80e6340a3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xf4be509ddcc4adc4acc29a9fd89227cdb2c1ee06` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | DefaultReserveInterestRateStrategy<br>`0xfff1c1ebb8f7b1c8371e054c9511caffce83b8a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | EModeLogic<br>`0x3655494c5c78102ecfe8e8f4b07e6de7413c3bef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | EModeLogic<br>`0x81deecd10a76c1da037079eeb09d0b84e746c038` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | EModeLogic<br>`0x859f699b896381a3badebe2c04ab70e3ccb381ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | FlashLoanLogic<br>`0x767148190d8b66ad7cd6a364866c1437d8a2cfd3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | FlashLoanLogic<br>`0xa4bfc89476ea68a0a649612bb259aac8e2f2bb19` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | FlashLoanLogic<br>`0xdd66f956b39c91b904282d3122aea8c3ba41c857` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | LiquidationLogic<br>`0x5d1c6e0d69e962851b315bc9eff92d5189189c6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | LiquidationLogic<br>`0x6cfc881c3f4f043057db70a854a0bb9ebcee0c5b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | LiquidationLogic<br>`0xd4cf1d5087c72e1f6353907f2161a75230abf8fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | Pool<br>`0x00208103c28fba80e715435b8173361bb817a1f2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | Pool<br>`0x84b7c6edff42d3e16dd28c68c6672bbff4f85645` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | PoolLogic<br>`0x2d245f6181b5ee45ccd1bfa0a9b662f1594f2775` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | PoolLogic<br>`0x8301b04d9641ad2c52be2108b0b41d0f9164254d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | PoolLogic<br>`0xe3d1cb511f6dbc55e6d2853a20c17954014b0dd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | SupplyLogic<br>`0x0f8286f6aa0ecf83c9c1d87dac974871d0573421` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | SupplyLogic<br>`0x1b94edb27c7dd7711fcc3ae7b25a037215043d8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | SupplyLogic<br>`0x26355c3b44cc79d7cae46c894bb0599a3c204718` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | UiPoolDataProviderV3<br>`0x186b5114230d94c480c94f2ae9dd5f89ecb5f549` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | UiPoolDataProviderV3<br>`0x411958fe53f5c48cfa263cc16b6f0f8e0be5c3e8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| candidate review | UiPoolDataProviderV3<br>`0xeb0cc27b656775bf27dc7a3c1cf570e002f727da` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| candidate review | UiPoolDataProviderV3<br>`0xfbc3db2ed6875da561c74d17d8ef2e809b5eaa1f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| contamination review | Collector<br>`0x1c644810f2bd306db6cf7ac392d11f3da68f4ab1` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| contamination review | PoolConfigurator<br>`0x1f22c32f743d5a8ee1d0a012bfeef75bf76c7f61` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| contamination review | PullRewardsTransferStrategy<br>`0x169863232c312ef27dfc9205f92b68e72cf5a88c` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| contamination review | UiIncentiveDataProviderV3<br>`0x19162c4c011a0cb0a58e3e1143e9616cad719cee` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| contamination review | WalletBalanceProvider<br>`0x6c96480f40721d80e19af156c312e08b4b18ea89` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | ACLManager<br>`0x241995b768c1ae629eb5a6f3749c6e7b8c4d47f2` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | ACLManager<br>`0x932b0def45af6b4df91a223a9e36f5ee62f7c435` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | ACLManager<br>`0xb948e837af263e0ac0bfc88e2438666289745a77` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | AToken<br>`0x36ac8c4350974c92e79ed7cb326fa6bc05479c0f` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | AToken<br>`0x51c5fd7783358afe244ebb74aa8963e152fad73b` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | AToken<br>`0xd7bd619b948c825031ecd80b1999852c8f0ba7ed` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | AToken<br>`0xdbebd178fffa02f09af640fb31ecf669ed0108a7` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | Collector<br>`0x800f3e929686ec90eeaabb8b98ed1eff126d532c` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | Collector<br>`0xa3c23d4c03009d39b574ef64ba9f3661567b8a0f` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | CollectorController<br>`0x04c3d1abb0fbb17a2711ab851cc5d1276e001b61` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | CollectorController<br>`0x4ec5e3f9a32aabd6af62b9a22188f429d65f39c7` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | CollectorController<br>`0x88a8998a5588447992d6f98ba50180679c433894` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | ConfiguratorLogic<br>`0xbed70224331e0a01c0b194163f8242ad7af3cabf` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | ConfiguratorLogic<br>`0xc0e30559445476dff725f3a3dbb6feab47694266` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | ConfiguratorLogic<br>`0xc427438784b7ed4eec38e5746516972af01a9476` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | DelegationAwareAToken<br>`0x5143e6c2d1b67e85ee1b3fe35d3b48f73c40ec9b` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | DelegationAwareAToken<br>`0x812b8ea4cd56b8d9ede1604ffe0cecf1e6be7f04` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | DelegationAwareAToken<br>`0xc6388fdc02066849643059f0265202109f83b74a` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | DelegationAwareAToken<br>`0xea54e360d9129c3ab76487eae25ed5fe44c856c2` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | EmissionManager<br>`0x32bf49731a60e871224c31c0361baeb284f2a359` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | EmissionManager<br>`0x36757f4796c834ef29ee778e37e1a28eceac5c3f` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | EmissionManager<br>`0x69ea2c310a950e58984f4bec4accf2ece391dafd` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | ERC1967Proxy<br>`0x18b07b4a2800ef3f192ff6c7076abfeeab1c3bcd` | non_address_book | unknown | unknown | verified | n/a | `0xfa60c4f33a01d70b0d67ad46d2b1c5ecdc79682b` |
| source verified unclassified | ERC1967Proxy<br>`0x68a91e65fce074a15c862f97e1ce977de2a72255` | non_address_book | unknown | unknown | verified | n/a | `0xfa60c4f33a01d70b0d67ad46d2b1c5ecdc79682b` |
| source verified unclassified | InitializableAdminUpgradeabilityProxy<br>`0x13206f9ce7c4c7850fe1278d9efa2f17aea80461` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | InitializableAdminUpgradeabilityProxy<br>`0x6e410a9e4ac53c0f9782d8279c38b5b96a8d9af8` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | InitializableAdminUpgradeabilityProxy<br>`0xbf63c919a8c15f4741e75c232c7be0d0af4d1d05` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | InitializableAdminUpgradeabilityProxy<br>`0xdbc8d6f888b66fa6869d4d0950d135faa95b8dd4` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | LiquidateLoan<br>`0x30bbfe09001f51eb9837f8ffefbbd762d54be4cf` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | NttManager<br>`0x6724ed1d520bcae7f0102de8fed65d2fe17c4886` | non_address_book | unknown | unknown | verified | n/a | `0xfa60c4f33a01d70b0d67ad46d2b1c5ecdc79682b` |
| source verified unclassified | NttManager<br>`0xf846d773053252c5dbd0f62560a22f6b749233c6` | non_address_book | unknown | unknown | verified | n/a | `0xfa60c4f33a01d70b0d67ad46d2b1c5ecdc79682b` |
| source verified unclassified | PoolAddressesProvider<br>`0x5c57266688a4ad1d3ab61209ebcb967b84227642` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | PoolAddressesProvider<br>`0x74c69acb35d406151c4ae5a0c75e5ad5acfa9149` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | PoolAddressesProvider<br>`0x7da484d72c066304a075c0416d0e77506bf0e153` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | PoolAddressesProviderRegistry<br>`0x8138da4417340594aeea4be8fbc7693d9875b6cb` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | PoolAddressesProviderRegistry<br>`0xa0f196f8bf5c5af3ad10ceeff65d4f339c8d73b2` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | PoolAddressesProviderRegistry<br>`0xcb0ac1f731ce2a2f2197017c956a37932e3ea721` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | PoolAddressesProviderRegistry<br>`0xd7a8b00ee979ee9adc68ccbe2ec4a868477c9adf` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | PoolAddressesProviderRegistry<br>`0xe949f17a59c5d8c274a50b9a0a1d7e4e5d6f64f6` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | PoolAddressesProviderRegistry<br>`0xff5daee448c0f9f14416ddc874fd3cd8a5a76474` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | PoolConfigurator<br>`0x80c4cdee95e52a8ad2c57ec3265bea3a9c91669d` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | PoolConfigurator<br>`0xf43fb6cbe9b211d3c132ba5fc144f13d68285781` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | PullRewardsTransferStrategy<br>`0x6061fb6676574ba1ecf4f1d80357ceb6d09595c7` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | PullRewardsTransferStrategy<br>`0x67b440b71fa2cb8e9a91a4ffb3e89a6976fcc608` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | PullRewardsTransferStrategy<br>`0xbb8a61410b3b7084c8c8047edc953f7508cf1627` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | ReservesSetupHelper<br>`0x1031698f52be8ff0fef8dea520fe162fff8a5789` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | ReservesSetupHelper<br>`0x3132fe205accd04295789ff1fb3abcc10ac3d5c6` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | ReservesSetupHelper<br>`0x3618737b19fd057725c80b347058587b7f01e9c6` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | ReservesSetupHelper<br>`0x62901c9a112e98ea7f301a8aa983b76320b40ceb` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | RewardsController<br>`0x0349219e437a86c0a6ee9dec41e42e5d7a0b3843` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | RewardsController<br>`0x117ab77c5fc17354c393b3a2b8eb0e6f8806b1c4` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | RewardsController<br>`0x374865d6aa24a7523a6176ce25e05cf6dc826304` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | RewardsController<br>`0x4cab4b383fdc060fbff508b0a619c4f617e43a8f` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | RewardsControllerV2<br>`0xb1b2b614ad3bfb0cc024397424f7d37b2cea9a12` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | RewardsControllerV2<br>`0xc891045d1bc28c12c137e836d8a55a56686d6ee6` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | RewardsControllerV2<br>`0xe8094b66a2d83a7dea5f65493631c77a1b2f8608` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | StableDebtToken<br>`0x4f7fc21b367e0ad538cd425bfca9e5491c05b5ce` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | StableDebtToken<br>`0xd13fcb3fa9e7264341c0d1ded52f93fc2fcb99a1` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | StableDebtToken<br>`0xe300239131061c50f147032e0d1049899e8f861f` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | StableDebtToken<br>`0xee2aaa4329ad3aaddd1ac8e986e174760ba0a4f3` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | UiIncentiveDataProviderV3<br>`0xbef6c63256a780d12c947dfc216789a7bef3fb2a` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | UiIncentiveDataProviderV3<br>`0xbfb3d529914f5ed7bfd25ab26a65c9d56c0d56c5` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | UiIncentiveDataProviderV3<br>`0xd25ce1d2f20868c610726a9d7c675ea9a8359c55` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | VariableDebtToken<br>`0x0910ba548d6e635e47d137fc1cdcbe5a9ff91fd1` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | VariableDebtToken<br>`0x0a4feb762be9a56c0b84442e0846a418e46bcf00` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | VariableDebtToken<br>`0x78b3dcc95a0b2cb76e65b98c6057ad7fdd4d05b1` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | VariableDebtToken<br>`0xc7aea6f527fd67e190165000118330bc5eac26f9` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | WalletBalanceProvider<br>`0x81fcee5b9536dc0c626ddae6c84b9802842a57ae` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | WalletBalanceProvider<br>`0xd33ce3998e09c191aee704a353daf30597f961d6` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | WalletBalanceProvider<br>`0xf43c32ecd35203c47d30dcd1b3198edb8af8a8f2` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | WrappedTokenGatewayV3<br>`0x44a8aa4c2f712dd8c701b411adbe0419ce93bf3c` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| source verified unclassified | WrappedTokenGatewayV3<br>`0x5d20a2d97b3202c1b6ccd21e26a42c8d6f3cdd75` | non_address_book | unknown | unknown | verified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| source verified unclassified | WrappedTokenGatewayV3<br>`0xd2a000458fd01352c91be33c79ae7d12d62c069f` | non_address_book | unknown | unknown | verified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| unverified unclassified | UnnamedContract<br>`0x05696a5e904970fa08413b30142518efdabec7a3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| unverified unclassified | UnnamedContract<br>`0x7cee89997cf523e61226e37d3dfcd4686fca9288` | non_address_book | unknown | unknown | unverified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| unverified unclassified | UnnamedContract<br>`0x82d1ae3d9038d1ad9c240c68c01a5f4d4a09d81f` | non_address_book | unknown | unknown | unverified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| unverified unclassified | UnnamedContract<br>`0xaf448e94c6cb4307a2439bfb66b69fd2ac405307` | non_address_book | unknown | unknown | unverified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| unverified unclassified | UnnamedContract<br>`0xb2b323e19b836e16e146291e966c83d67560be79` | non_address_book | unknown | unknown | unverified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| unverified unclassified | UnnamedContract<br>`0xc844901d55af32984078f297e6e3aeb4efe96bf6` | non_address_book | unknown | unknown | unverified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| unverified unclassified | UnnamedContract<br>`0xccefc4836e0b15eb65fe018bac6c72d9a9f87b79` | non_address_book | unknown | unknown | unverified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |
| unverified unclassified | UnnamedContract<br>`0xe721a929962709051a4654a53bd5252ba9f85578` | non_address_book | unknown | unknown | unverified | n/a | `0x5d9204829fed30222369ddb281ebf98e8535a79d` |
| unverified unclassified | UnnamedContract<br>`0xf83c7625a44d8b6541c39b50f61d79f7334180c4` | non_address_book | unknown | unknown | unverified | n/a | `0xc371a8f97029cb5e4ea34724eeea5064c445d497` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/WXhpES7EjLtpGpkH241h/Yei Finance - Zellic Audit Report.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2FWXhpES7EjLtpGpkH241h%2FYei%20Finance%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/prx2e8i2NZ1apjDj20to/Yei Finance - Zellic Audit Report - Oracle.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2Fprx2e8i2NZ1apjDj20to%2FYei%20Finance%20-%20Zellic%20Audit%20Report%20-%20Oracle.pdf) | Zellic | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2FdWGR2kDcaGsDkYGV1SOs%2FYei%20Finance%20-%20PeckShield%20Audit%20Report%20-%20Yei%20Swap.pdf) | PeckShield | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/5VaVd8HkMLq4gPN3m2Wv/Yei Finance - billh Security Review - Yei Swap.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2F5VaVd8HkMLq4gPN3m2Wv%2FYei%20Finance%20-%20billh%20Security%20Review%20-%20Yei%20Swap.pdf) | billh | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/4lKFvt4Xg1KLvyEGZkre/Yei Finance - billh Security Review - YeiBridge.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2F4lKFvt4Xg1KLvyEGZkre%2FYei%20Finance%20-%20billh%20Security%20Review%20-%20YeiBridge.pdf) | billh | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/ViAUJoj7zLwiCd8aCFgz/Yei Finance - billh Security Report - TGE.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2FViAUJoj7zLwiCd8aCFgz%2FYei%20Finance%20-%20billh%20Security%20Report%20-%20TGE.pdf) | billh | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Yei Finance Oracle - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Yei%20Finance%20Oracle%20-%20Zellic%20Audit%20Report.pdf) | zellic | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12427] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/WXhpES7EjLtpGpkH241h/Yei Finance - Zellic Audit Report.pdf — no match: Only one contract, Oracle.sol, is in scope. Audit date is June 4, 2024 from cover page.
- [12428] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/prx2e8i2NZ1apjDj20to/Yei Finance - Zellic Audit Report - Oracle.pdf — no match: Only one contract (Oracle.sol) is in scope. Audit date is July 9, 2024 from cover page.
- [12429] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf — no match: Scope table lists 'Name: Yei Finance' but contracts in scope are YeiSwap and NonfungiblePositionManager based on findings targets.
- [12430] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/5VaVd8HkMLq4gPN3m2Wv/Yei Finance - billh Security Review - Yei Swap.pdf — no match: Only YeiSwap.sol is explicitly referenced in findings; no formal scope table provided.
- [12431] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/4lKFvt4Xg1KLvyEGZkre/Yei Finance - billh Security Review - YeiBridge.pdf — no match: Only one contract (YeiCctpV2Bridge) is explicitly referenced in the scope and findings. The scope section lists a GitHub repository and commit but no individual contract files; the contract name is extracted from the findings context.
- [12432] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/ViAUJoj7zLwiCd8aCFgz/Yei Finance - billh Security Report - TGE.pdf — no match: Scope section lists two GitHub repos but no specific contract files. Only YeiDistributor.sol is referenced in findings. Other contracts (feeDistributor, votingEscrow) are dependencies, not in scope.
- [14969] Yei Finance Oracle - Zellic Audit Report.pdf — no match: Only one contract (Oracle.sol) is in scope. The audit date is June 4, 2024 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/WXhpES7EjLtpGpkH241h/Yei Finance - Zellic Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope table and findings target | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/prx2e8i2NZ1apjDj20to/Yei Finance - Zellic Audit Report - Oracle.pdf | Oracle | unmatched — not counted | — | listed in scope section as 'Programs Oracle.sol' | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf | YeiSwap | unmatched — not counted | — | Listed in scope table and findings target | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf | NonfungiblePositionManager | unmatched — not counted | — | Mentioned as target in finding PVE-003 | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/5VaVd8HkMLq4gPN3m2Wv/Yei Finance - billh Security Review - Yei Swap.pdf | YeiSwap | unmatched — not counted | — | mentioned in findings context | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/4lKFvt4Xg1KLvyEGZkre/Yei Finance - billh Security Review - YeiBridge.pdf | YeiCctpV2Bridge | unmatched — not counted | — | mentioned in findings context | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/ViAUJoj7zLwiCd8aCFgz/Yei Finance - billh Security Report - TGE.pdf | YeiDistributor | unmatched — not counted | — | mentioned in findings context | no |
| Yei Finance Oracle - Zellic Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope section as 'Program Oracle.sol' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, medium=2
- Match method counts: n/a

Zero-match audit list:

- [12427] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/WXhpES7EjLtpGpkH241h/Yei Finance - Zellic Audit Report.pdf
- [12428] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/prx2e8i2NZ1apjDj20to/Yei Finance - Zellic Audit Report - Oracle.pdf
- [12429] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf
- [12430] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/5VaVd8HkMLq4gPN3m2Wv/Yei Finance - billh Security Review - Yei Swap.pdf
- [12431] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/4lKFvt4Xg1KLvyEGZkre/Yei Finance - billh Security Review - YeiBridge.pdf
- [12432] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/ViAUJoj7zLwiCd8aCFgz/Yei Finance - billh Security Report - TGE.pdf
- [14969] Yei Finance Oracle - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
