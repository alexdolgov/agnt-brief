# Agentic Audit Brief: Yei Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 32.1% over 90 days

## Project Overview

- Project: Yei Finance (`yei-finance`)
- Website: [https://www.yei.finance/](https://www.yei.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:19.409Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: sei
- Contract surface: 44 unique implementations (145 raw deployments)
- DeFi Llama TVL: $32,332,654.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yei Finance is a DeFi protocol on Sei with marketed products including YeiLend lending markets, YeiSwap token swaps, and bridge/cross-chain pre-deposit vault features. The project brief should distinguish these product surfaces and avoid unverified governance or cross-product support assumptions unless confirmed by documentation or contract analysis.

### Architecture

The protocol uses shared proxy-based infrastructure for cross-chain asset management (NttManager, WormholeTransceiver) and governance (Collector), which likely support both lending and DEX operations. The deployer clusters suggest modular development with distinct groups managing core and peripheral contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/35 (0.0%)
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 44
- Raw deployments: 145
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AaveProtocolDataProvider | unknown | sei | 2 deployments: sei [`0x60c82a...07f0d6`](./contracts/sei-1329/0x60c82a40c57736a9c692c42e87a8849fb407f0d6/); sei `0xe77f43...aefee1` | ⚠️ Unaudited |
| ACLManager | governance | sei | 4 deployments: sei [`0x241995...4d47f2`](./contracts/sei-1329/0x241995b768c1ae629eb5a6f3749c6e7b8c4d47f2/); sei `0x932b0d...f7c435`; sei `0xb948e8...745a77`; sei `0xc6f728...90eea6` | ⚠️ Unaudited |
| AToken | token | sei | 4 deployments: sei [`0x36ac8c...479c0f`](./contracts/sei-1329/0x36ac8c4350974c92e79ed7cb326fa6bc05479c0f/); sei `0x51c5fd...fad73b`; sei `0xd7bd61...0ba7ed`; sei `0xdbebd1...0108a7` | ⚠️ Unaudited |
| BorrowLogic | core_logic | sei | 4 deployments: sei [`0x635901...348a41`](./contracts/sei-1329/0x635901ab3409d47da0e693e244b42baf4b348a41/); sei `0x99c952...a95d86`; sei `0x9c8a9f...a1279d`; sei `0xf7dd04...79b54e` | ⚠️ Unaudited |
| BridgeLogic | operational_periphery | sei | 4 deployments: sei [`0x3b28c1...505643`](./contracts/sei-1329/0x3b28c1c795f1382a083d822dc2997eef49505643/); sei `0x6ddbd4...8c73a8`; sei `0xca7352...f41e00`; sei `0xdf9d79...609a95` | ⚠️ Unaudited |
| Clovis | unknown | sei | [`0x81d3a2...bf89d2`](./contracts/sei-1329/0x81d3a238b02827f62b9f390f947d36d4a5bf89d2/) | ⚠️ Unaudited |
| Collector | unknown | sei | 4 deployments: sei [`0x1c6448...8f4ab1`](./contracts/sei-1329/0x1c644810f2bd306db6cf7ac392d11f3da68f4ab1/); sei `0x800f3e...6d532c`; sei `0xa3c23d...7b8a0f`; sei `0xbf63c9...4d1d05` | ⚠️ Unaudited |
| CollectorController | governance | sei | 3 deployments: sei [`0x04c3d1...001b61`](./contracts/sei-1329/0x04c3d1abb0fbb17a2711ab851cc5d1276e001b61/); sei `0x4ec5e3...5f39c7`; sei `0x88a899...433894` | ⚠️ Unaudited |
| ConfiguratorLogic | governance | sei | 3 deployments: sei [`0xbed702...f3cabf`](./contracts/sei-1329/0xbed70224331e0a01c0b194163f8242ad7af3cabf/); sei `0xc0e305...694266`; sei `0xc42743...1a9476` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | sei | 21 deployments: sei [`0x0df802...2d0b4b`](./contracts/sei-1329/0x0df8022519a8d1231293b24b2fd7a8bf992d0b4b/); sei `0x33afe4...e96eac`; sei `0x571591...d2dfb9`; sei `0x58f864...5e3a20`; sei `0x58f9da...8d0575`; sei `0x5d3872...49829c`; sei `0x5ee1bc...28678b`; sei `0x660a1f...0bb61d`; sei `0x704d96...1987c8`; sei `0x78b5de...d3a852`; sei `0x807878...6680b8`; sei `0x80c1af...c8af2a`; sei `0x8c857e...6d72e5`; sei `0x9bd159...6f2700`; sei `0xa3322e...b6b628`; sei `0xa753cb...d8cfbb`; sei `0xaeb509...90e3f1`; sei `0xaeca84...c14447`; sei `0xc1901f...340a3c`; sei `0xf4be50...c1ee06`; sei `0xfff1c1...83b8a2` | ⚠️ Unaudited |
| DelegationAwareAToken | token | sei | 4 deployments: sei [`0x5143e6...40ec9b`](./contracts/sei-1329/0x5143e6c2d1b67e85ee1b3fe35d3b48f73c40ec9b/); sei `0x812b8e...be7f04`; sei `0xc6388f...83b74a`; sei `0xea54e3...c856c2` | ⚠️ Unaudited |
| EmissionManager | operational_periphery | sei | 4 deployments: sei [`0x32bf49...f2a359`](./contracts/sei-1329/0x32bf49731a60e871224c31c0361baeb284f2a359/); sei `0x36757f...ac5c3f`; sei `0x69ea2c...91dafd`; sei `0x960200...46b2f1` | ⚠️ Unaudited |
| EModeLogic | unknown | sei | 3 deployments: sei [`0x365549...3c3bef`](./contracts/sei-1329/0x3655494c5c78102ecfe8e8f4b07e6de7413c3bef/); sei `0x81deec...46c038`; sei `0x859f69...b381ff` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | sei | 3 deployments: sei [`0x767148...a2cfd3`](./contracts/sei-1329/0x767148190d8b66ad7cd6a364866c1437d8a2cfd3/); sei `0xa4bfc8...f2bb19`; sei `0xdd66f9...41c857` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | sei | 3 deployments: sei [`0x13206f...a80461`](./contracts/sei-1329/0x13206f9ce7c4c7850fe1278d9efa2f17aea80461/); sei `0x6e410a...8d9af8`; sei `0xdbc8d6...5b8dd4` | ⚠️ Unaudited |
| LiquidateLoan | unknown | sei | [`0x30bbfe...4be4cf`](./contracts/sei-1329/0x30bbfe09001f51eb9837f8ffefbbd762d54be4cf/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | sei | 3 deployments: sei [`0x5d1c6e...189c6b`](./contracts/sei-1329/0x5d1c6e0d69e962851b315bc9eff92d5189189c6b/); sei `0x6cfc88...ee0c5b`; sei `0xd4cf1d...abf8fa` | ⚠️ Unaudited |
| NttManager | governance | sei | 2 deployments: sei [`0x18b07b...1c3bcd`](./contracts/sei-1329/0x18b07b4a2800ef3f192ff6c7076abfeeab1c3bcd/); sei `0x68a91e...a72255` | ⚠️ Unaudited |
| Pool | core_logic | sei | 3 deployments: sei [`0x002081...17a1f2`](./contracts/sei-1329/0x00208103c28fba80e715435b8173361bb817a1f2/); sei `0x84b7c6...f85645`; sei `0xd078c4...c8f305` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | sei | 4 deployments: sei [`0x5c5726...227642`](./contracts/sei-1329/0x5c57266688a4ad1d3ab61209ebcb967b84227642/); sei `0x74c69a...fa9149`; sei `0x7da484...f0e153`; sei `0xff33a7...8f2a1e` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | sei | 6 deployments: sei [`0x8138da...75b6cb`](./contracts/sei-1329/0x8138da4417340594aeea4be8fbc7693d9875b6cb/); sei `0xa0f196...8d73b2`; sei `0xcb0ac1...3ea721`; sei `0xd7a8b0...7c9adf`; sei `0xe949f1...6f64f6`; sei `0xff5dae...a76474` | ⚠️ Unaudited |
| PoolConfigurator | core_logic | sei | 3 deployments: sei [`0x1f22c3...6c7f61`](./contracts/sei-1329/0x1f22c32f743d5a8ee1d0a012bfeef75bf76c7f61/); sei `0x80c4cd...91669d`; sei `0xf43fb6...285781` | ⚠️ Unaudited |
| PoolLogic | core_logic | sei | 3 deployments: sei [`0x2d245f...4f2775`](./contracts/sei-1329/0x2d245f6181b5ee45ccd1bfa0a9b662f1594f2775/); sei `0x8301b0...64254d`; sei `0xe3d1cb...4b0dd7` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | core_logic | sei | 4 deployments: sei [`0x169863...f5a88c`](./contracts/sei-1329/0x169863232c312ef27dfc9205f92b68e72cf5a88c/); sei `0x6061fb...9595c7`; sei `0x67b440...fcc608`; sei `0xbb8a61...cf1627` | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | sei | 4 deployments: sei [`0x103169...8a5789`](./contracts/sei-1329/0x1031698f52be8ff0fef8dea520fe162fff8a5789/); sei `0x3132fe...c3d5c6`; sei `0x361873...01e9c6`; sei `0x62901c...b40ceb` | ⚠️ Unaudited |
| RewardsController | governance | sei | 4 deployments: sei [`0x034921...0b3843`](./contracts/sei-1329/0x0349219e437a86c0a6ee9dec41e42e5d7a0b3843/); sei `0x117ab7...06b1c4`; sei `0x374865...826304`; sei `0x4cab4b...e43a8f` | ⚠️ Unaudited |
| RewardsControllerV2 | governance | sei | 3 deployments: sei [`0xb1b2b6...ea9a12`](./contracts/sei-1329/0xb1b2b614ad3bfb0cc024397424f7d37b2cea9a12/); sei `0xc89104...6d6ee6`; sei `0xe8094b...2f8608` | ⚠️ Unaudited |
| StableDebtToken | token | sei | 4 deployments: sei [`0x4f7fc2...05b5ce`](./contracts/sei-1329/0x4f7fc21b367e0ad538cd425bfca9e5491c05b5ce/); sei `0xd13fcb...cb99a1`; sei `0xe30023...8f861f`; sei `0xee2aaa...a0a4f3` | ⚠️ Unaudited |
| SupplyLogic | unknown | sei | 3 deployments: sei [`0x0f8286...573421`](./contracts/sei-1329/0x0f8286f6aa0ecf83c9c1d87dac974871d0573421/); sei `0x1b94ed...043d8b`; sei `0x26355c...204718` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | sei | 4 deployments: sei [`0x19162c...719cee`](./contracts/sei-1329/0x19162c4c011a0cb0a58e3e1143e9616cad719cee/); sei `0xbef6c6...f3fb2a`; sei `0xbfb3d5...0d56c5`; sei `0xd25ce1...359c55` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | sei | 4 deployments: sei [`0x186b51...b5f549`](./contracts/sei-1329/0x186b5114230d94c480c94f2ae9dd5f89ecb5f549/); sei `0x411958...e5c3e8`; sei `0xeb0cc2...f727da`; sei `0xfbc3db...5eaa1f` | ⚠️ Unaudited |
| VariableDebtToken | token | sei | 4 deployments: sei [`0x0910ba...f91fd1`](./contracts/sei-1329/0x0910ba548d6e635e47d137fc1cdcbe5a9ff91fd1/); sei `0x0a4feb...6bcf00`; sei `0x78b3dc...4d05b1`; sei `0xc7aea6...ac26f9` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | sei | 4 deployments: sei [`0x6c9648...18ea89`](./contracts/sei-1329/0x6c96480f40721d80e19af156c312e08b4b18ea89/); sei `0x81fcee...2a57ae`; sei `0xd33ce3...f961d6`; sei `0xf43c32...f8a8f2` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | sei | 2 deployments: sei [`0x67a0a8...f86ed3`](./contracts/sei-1329/0x67a0a897a32f0e5c76303666ca34178949f86ed3/); sei `0xefe505...aab91a` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | sei | 4 deployments: sei [`0x44a8aa...93bf3c`](./contracts/sei-1329/0x44a8aa4c2f712dd8c701b411adbe0419ce93bf3c/); sei `0x5d20a2...3cdd75`; sei `0xbc096b...eec8aa`; sei `0xd2a000...2c069f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | sei | `0x05696a...bec7a3` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x7cee89...ca9288` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x82d1ae...09d81f` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xaf448e...405307` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xb2b323...60be79` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xc84490...e96bf6` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xccefc4...f87b79` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xe721a9...f85578` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xf83c76...4180c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[**https://drive.google.com/drive/folders/1DoZnQU-KURN29grndjvnrumCanwCHhnI?usp=drive\_link**]()](https://drive.google.com/drive/folders/1DoZnQU-KURN29grndjvnrumCanwCHhnI?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x241995...4d47f2`](./contracts/sei-1329/0x241995b768c1ae629eb5a6f3749c6e7b8c4d47f2/) | ACLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x36ac8c...479c0f`](./contracts/sei-1329/0x36ac8c4350974c92e79ed7cb326fa6bc05479c0f/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x635901...348a41`](./contracts/sei-1329/0x635901ab3409d47da0e693e244b42baf4b348a41/) | BorrowLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x3b28c1...505643`](./contracts/sei-1329/0x3b28c1c795f1382a083d822dc2997eef49505643/) | BridgeLogic | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x81d3a2...bf89d2`](./contracts/sei-1329/0x81d3a238b02827f62b9f390f947d36d4a5bf89d2/) | Clovis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1c6448...8f4ab1`](./contracts/sei-1329/0x1c644810f2bd306db6cf7ac392d11f3da68f4ab1/) | Collector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x04c3d1...001b61`](./contracts/sei-1329/0x04c3d1abb0fbb17a2711ab851cc5d1276e001b61/) | CollectorController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xbed702...f3cabf`](./contracts/sei-1329/0xbed70224331e0a01c0b194163f8242ad7af3cabf/) | ConfiguratorLogic | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0df802...2d0b4b`](./contracts/sei-1329/0x0df8022519a8d1231293b24b2fd7a8bf992d0b4b/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x5143e6...40ec9b`](./contracts/sei-1329/0x5143e6c2d1b67e85ee1b3fe35d3b48f73c40ec9b/) | DelegationAwareAToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x32bf49...f2a359`](./contracts/sei-1329/0x32bf49731a60e871224c31c0361baeb284f2a359/) | EmissionManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x365549...3c3bef`](./contracts/sei-1329/0x3655494c5c78102ecfe8e8f4b07e6de7413c3bef/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x767148...a2cfd3`](./contracts/sei-1329/0x767148190d8b66ad7cd6a364866c1437d8a2cfd3/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x30bbfe...4be4cf`](./contracts/sei-1329/0x30bbfe09001f51eb9837f8ffefbbd762d54be4cf/) | LiquidateLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x5d1c6e...189c6b`](./contracts/sei-1329/0x5d1c6e0d69e962851b315bc9eff92d5189189c6b/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x002081...17a1f2`](./contracts/sei-1329/0x00208103c28fba80e715435b8173361bb817a1f2/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x5c5726...227642`](./contracts/sei-1329/0x5c57266688a4ad1d3ab61209ebcb967b84227642/) | PoolAddressesProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x8138da...75b6cb`](./contracts/sei-1329/0x8138da4417340594aeea4be8fbc7693d9875b6cb/) | PoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1f22c3...6c7f61`](./contracts/sei-1329/0x1f22c32f743d5a8ee1d0a012bfeef75bf76c7f61/) | PoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x2d245f...4f2775`](./contracts/sei-1329/0x2d245f6181b5ee45ccd1bfa0a9b662f1594f2775/) | PoolLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x169863...f5a88c`](./contracts/sei-1329/0x169863232c312ef27dfc9205f92b68e72cf5a88c/) | PullRewardsTransferStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x103169...8a5789`](./contracts/sei-1329/0x1031698f52be8ff0fef8dea520fe162fff8a5789/) | ReservesSetupHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x034921...0b3843`](./contracts/sei-1329/0x0349219e437a86c0a6ee9dec41e42e5d7a0b3843/) | RewardsController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xb1b2b6...ea9a12`](./contracts/sei-1329/0xb1b2b614ad3bfb0cc024397424f7d37b2cea9a12/) | RewardsControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x4f7fc2...05b5ce`](./contracts/sei-1329/0x4f7fc21b367e0ad538cd425bfca9e5491c05b5ce/) | StableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0f8286...573421`](./contracts/sei-1329/0x0f8286f6aa0ecf83c9c1d87dac974871d0573421/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x19162c...719cee`](./contracts/sei-1329/0x19162c4c011a0cb0a58e3e1143e9616cad719cee/) | UiIncentiveDataProviderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x186b51...b5f549`](./contracts/sei-1329/0x186b5114230d94c480c94f2ae9dd5f89ecb5f549/) | UiPoolDataProviderV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0910ba...f91fd1`](./contracts/sei-1329/0x0910ba548d6e635e47d137fc1cdcbe5a9ff91fd1/) | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x6c9648...18ea89`](./contracts/sei-1329/0x6c96480f40721d80e19af156c312e08b4b18ea89/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x44a8aa...93bf3c`](./contracts/sei-1329/0x44a8aa4c2f712dd8c701b411adbe0419ce93bf3c/) | WrappedTokenGatewayV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1795] [**https://drive.google.com/drive/folders/1DoZnQU-KURN29grndjvnrumCanwCHhnI?usp=drive\_link**]()

Fork inheritance lineage and inherited audits are included when available.
