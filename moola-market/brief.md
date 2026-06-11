# Agentic Audit Brief: Moola Market

⚠️ Lifecycle status: DECLINING - TVL dropped 6.8% over 90 days

## Project Overview

- Project: Moola Market (`moola-market`)
- Website: [https://moola.market](https://moola.market)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-11T01:12:22.139Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-2b99
- Chains: celo
- Contract surface: 53 unique implementations (91 raw deployments)
- DeFi Llama TVL: $1,212,721.35
- On-chain TVL (included contracts): $73,915.00
- TVL by chain: Celo $73,915.00

## Project Description

Moola Market is a decentralized lending protocol on Celo that enables users to deposit assets to earn interest and borrow against their deposits. It is a fork of Aave v2, providing overcollateralized loans and liquidity pools. Deposit receipt tokens should be understood as the AToken-derived lending receipt tokens where verified; MooToken should be described only as Moola's native token unless a source confirms it is a deposit receipt token.

### Architecture

The LendingPoolAddressesProviderRegistry serves as a central registry for the protocol's address providers, which supply the addresses of core contracts like the lending pool and data provider. The MooToken likely represents a receipt token for deposits, integrating with the lending pool managed through the registry.

## Audit Coverage Summary

- Verified implementations audited: 0/37 (0.0%)
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 53
- Raw deployments: 91
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $73,915.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $73,915.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MooToken | token | celo | [`0x177002...8c131e`](./contracts/celo-42220/0x17700282592d6917f6a73d0bf8accf4d578c131e/) | ⚠️ Unaudited |
| AaCELOAirdrop | operational_periphery | celo | [`0xa19a98...09209f`](./contracts/celo-42220/0xa19a98f07a3f48a2a40bc4dd262fdb8e9d09209f/) | ⚠️ Unaudited |
| AaMooAirdrop | operational_periphery | celo | 2 deployments: celo [`0xa7307f...c93700`](./contracts/celo-42220/0xa7307f1a971f64dca8301a160f358bb97ec93700/); celo `0xc6a6de...1d681c` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | celo | [`0x43d067...0103a1`](./contracts/celo-42220/0x43d067ed784d9dd2ffeda73775e2cc4c560103a1/) | ⚠️ Unaudited |
| AccumulatingMerkleDistributor | operational_periphery | celo | [`0x5b41b0...3f1206`](./contracts/celo-42220/0x5b41b0c78659636c6664f08f7ccb620cea3f1206/) | ⚠️ Unaudited |
| AToken | token | celo | 2 deployments: celo [`0x55bfce...1141e6`](./contracts/celo-42220/0x55bfced2451b2154e06604d4269c9349f31141e6/); celo `0xf44e15...c97a2a` | ⚠️ Unaudited |
| ATokensAndRatesHelper | token | celo | [`0x22060a...4c26f1`](./contracts/celo-42220/0x22060a5e21921d1cfbebd301ff40f91f2d4c26f1/) | ⚠️ Unaudited |
| ATokenV4 | token | celo | [`0xa27269...f501f0`](./contracts/celo-42220/0xa2726942a99ca8ce9f212c97d8f1bd6378f501f0/) | ⚠️ Unaudited |
| ATokenWithTransferForMoolaFix | token | celo | [`0xc8c576...b3c64d`](./contracts/celo-42220/0xc8c5765bd5690e6df761a13db0e133d158b3c64d/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | celo | [`0xb3072f...ea0018`](./contracts/celo-42220/0xb3072f5f0d5e8b9036aec29f37bab70e86ea0018/) | ⚠️ Unaudited |
| DisabledStableDebtToken | token | celo | 2 deployments: celo [`0x188ad2...7a065d`](./contracts/celo-42220/0x188ad2444dcb81b9548337e77f9e5dcbe57a065d/); celo `0x27028e...b4cb21` | ⚠️ Unaudited |
| FixedPriceOracle | operational_periphery | celo | 6 deployments: celo [`0x042b7d...e5b08d`](./contracts/celo-42220/0x042b7d495650ff2c99e095e1e3deb7f8bce5b08d/); celo `0x321429...89bd50`; celo `0x59f9c3...1092d8`; celo `0x81d952...a293a7`; celo `0xca41e1...c2804e`; celo `0xebfaaa...5317e9` | ⚠️ Unaudited |
| GenericLogic | unknown | celo | [`0x4d0f08...34033a`](./contracts/celo-42220/0x4d0f083077db8be0ab37aa18dbbe577f5034033a/) | ⚠️ Unaudited |
| LendingPool | core_logic | celo | 4 deployments: celo [`0x29b492...0cdb7a`](./contracts/celo-42220/0x29b4923d64b3196afd81d5f91185d693330cdb7a/); celo `0x97256c...ae92fc`; celo `0xb9f812...cf1a59`; celo `0xbecd34...97711f` | ⚠️ Unaudited |
| LendingPoolAddressesProvider | core_logic | celo | [`0xd10880...88b332`](./contracts/celo-42220/0xd1088091a174d33412a968fa34cb67131188b332/) | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | celo | 2 deployments: celo [`0x4e7728...e1f2d9`](./contracts/celo-42220/0x4e77286aec541bf5c43183556413c5f6b8e1f2d9/); celo `0xf03982...ab7491` | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | celo | [`0xe99ef3...df399e`](./contracts/celo-42220/0xe99ef38aeb4359ea36190c7d2c16802c2edf399e/) | ⚠️ Unaudited |
| LendingPoolCollateralManagerWithReserve | core_logic | celo | [`0xa2db2e...393b32`](./contracts/celo-42220/0xa2db2e70a795b566f129ae7dff242a4ad1393b32/) | ⚠️ Unaudited |
| LendingPoolConfigurator | core_logic | celo | [`0x2cca74...1b1f1c`](./contracts/celo-42220/0x2cca742585b39e0538f7cc01ab8ffa005f1b1f1c/) | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | celo | [`0xaa6e0f...54ee9b`](./contracts/celo-42220/0xaa6e0f0b63287eac5ddbeefd1f133fc7f554ee9b/) | ⚠️ Unaudited |
| LeverageBorrowAdapter | adapter | celo | [`0x39349d...2a02c4`](./contracts/celo-42220/0x39349d7f974e56b5ed7133c1c1d98e5a2a2a02c4/) | ⚠️ Unaudited |
| LPImplementationInitializerProd | unknown | celo | [`0xef651d...42b4f7`](./contracts/celo-42220/0xef651d5f7492205499ef6b32b8c9230eda42b4f7/) | ⚠️ Unaudited |
| MOOAirdrop2205 | operational_periphery | celo | [`0x6aef08...1a8dfb`](./contracts/celo-42220/0x6aef087821393bf3d4b15b5048f4377cf71a8dfb/) | ⚠️ Unaudited |
| MooCompensationDistributor | operational_periphery | celo | 4 deployments: celo [`0x387ab8...5a321e`](./contracts/celo-42220/0x387ab8fcca2cbca3c24a739fb412cfbc2f5a321e/); celo `0x9dab4c...dcc053`; celo `0xd3d3fd...1be05b`; celo `0xda7c35...623194` | ⚠️ Unaudited |
| MoolaFix | unknown | celo | [`0x4ddfd3...74cca5`](./contracts/celo-42220/0x4ddfd392ba63c2fd294ee20d483388dfa774cca5/) | ⚠️ Unaudited |
| MoolaRewardsDistributionOwnedWallet | unknown | celo | [`0x67ee10...25e174`](./contracts/celo-42220/0x67ee1012a52568fd50d2e168023dc2852825e174/) | ⚠️ Unaudited |
| MoolaStakingRewards | unknown | celo | 12 deployments: celo [`0x1df0a9...d10fad`](./contracts/celo-42220/0x1df0a9c8313a005793501bac2150dfb895d10fad/); celo `0x2ca169...4fb01c`; celo `0x31ccb9...55822e`; celo `0x64d996...027122`; celo `0x92e515...215539`; celo `0xb6a505...63d639`; celo `0xba7dcc...0c5b1d`; celo `0xc99cda...8a6bff`; celo `0xca54a6...b59bef`; celo `0xe76525...5051f6`; celo `0xe8b286...19b6c9`; celo `0xf55469...c10b29` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | celo | 2 deployments: celo [`0xb11f4e...fdfe89`](./contracts/celo-42220/0xb11f4e2165ffed2870d028f2f4ca032f5bfdfe89/); celo `0xe138ce...a884cc` | ⚠️ Unaudited |
| PriceFeed2Step | operational_periphery | celo | 9 deployments: celo [`0x025e7f...f7ad76`](./contracts/celo-42220/0x025e7f3c07f5b8f10ed355158204ba0cb4f7ad76/); celo `0x061aa8...9083be`; celo `0x30e0b8...b65e91`; celo `0x47a6c3...16a51f`; celo `0xae02e5...210bd6`; celo `0xb3242f...868106`; celo `0xc14a11...d92769`; celo `0xcaca92...f687ca`; celo `0xea4772...90dff6` | ⚠️ Unaudited |
| PriceFeedFactory | operational_periphery | celo | 2 deployments: celo [`0x3c9bfc...d2142e`](./contracts/celo-42220/0x3c9bfc6e6ec5e6caee0f44a91976993fafd2142e/); celo `0x7bf9db...7128c4` | ⚠️ Unaudited |
| ReserveLogic | unknown | celo | 3 deployments: celo [`0x883185...6d9f45`](./contracts/celo-42220/0x883185b84c35ef9cf89fca2627e4d7de1d6d9f45/); celo `0x8e6779...fd4f51`; celo `0xa3a84e...4be935` | ⚠️ Unaudited |
| ReserveLogicNoInterest | unknown | celo | [`0xe788cb...897728`](./contracts/celo-42220/0xe788cbf8d93c182ca1d9bdfca1746fe384897728/) | ⚠️ Unaudited |
| StableAndVariableTokensHelper | token | celo | [`0xec9817...0fda87`](./contracts/celo-42220/0xec98172bcf583f2a40e7414cd9252404550fda87/) | ⚠️ Unaudited |
| StableDebtToken | token | celo | [`0xacdb7b...b689da`](./contracts/celo-42220/0xacdb7b3e2b0a038f1f4ef04736728e0065b689da/) | ⚠️ Unaudited |
| ValidationLogic | unknown | celo | [`0x2b9d16...13151a`](./contracts/celo-42220/0x2b9d164fd084a022a5fdfa19403944434e13151a/) | ⚠️ Unaudited |
| VariableDebtToken | token | celo | [`0x0301cf...445c2c`](./contracts/celo-42220/0x0301cf8f1fcd9255bd32fb7e0fe5b3494f445c2c/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | celo | [`0x931cbb...62cb49`](./contracts/celo-42220/0x931cbb9ad04d9e624597fbfef659567ad662cb49/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | celo | `0x1b00fd...96b09b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2eba86...291a2c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3abdfb...a2e104` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3c06fb...7d04b8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3dc0fc...cfe781` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x5e160a...00e72a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x71b7ec...a5353c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7e7d2f...5a9f29` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x801443...ece2df` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x866fb3...36bac7` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x923182...28d3c3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa4659c...2c0e3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb65b6a...699687` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc79410...d0b454` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd42586...3df89d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe50b13...12ed5a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x177002...8c131e`](./contracts/celo-42220/0x17700282592d6917f6a73d0bf8accf4d578c131e/) | MooToken | token | $73,915.00 | Verified native implementation with $73,915.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xa19a98...09209f`](./contracts/celo-42220/0xa19a98f07a3f48a2a40bc4dd262fdb8e9d09209f/) | AaCELOAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xa7307f...c93700`](./contracts/celo-42220/0xa7307f1a971f64dca8301a160f358bb97ec93700/) | AaMooAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5b41b0...3f1206`](./contracts/celo-42220/0x5b41b0c78659636c6664f08f7ccb620cea3f1206/) | AccumulatingMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x55bfce...1141e6`](./contracts/celo-42220/0x55bfced2451b2154e06604d4269c9349f31141e6/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x22060a...4c26f1`](./contracts/celo-42220/0x22060a5e21921d1cfbebd301ff40f91f2d4c26f1/) | ATokensAndRatesHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xc8c576...b3c64d`](./contracts/celo-42220/0xc8c5765bd5690e6df761a13db0e133d158b3c64d/) | ATokenWithTransferForMoolaFix | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb3072f...ea0018`](./contracts/celo-42220/0xb3072f5f0d5e8b9036aec29f37bab70e86ea0018/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x188ad2...7a065d`](./contracts/celo-42220/0x188ad2444dcb81b9548337e77f9e5dcbe57a065d/) | DisabledStableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x042b7d...e5b08d`](./contracts/celo-42220/0x042b7d495650ff2c99e095e1e3deb7f8bce5b08d/) | FixedPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4d0f08...34033a`](./contracts/celo-42220/0x4d0f083077db8be0ab37aa18dbbe577f5034033a/) | GenericLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x29b492...0cdb7a`](./contracts/celo-42220/0x29b4923d64b3196afd81d5f91185d693330cdb7a/) | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xd10880...88b332`](./contracts/celo-42220/0xd1088091a174d33412a968fa34cb67131188b332/) | LendingPoolAddressesProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xe99ef3...df399e`](./contracts/celo-42220/0xe99ef38aeb4359ea36190c7d2c16802c2edf399e/) | LendingPoolCollateralManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xa2db2e...393b32`](./contracts/celo-42220/0xa2db2e70a795b566f129ae7dff242a4ad1393b32/) | LendingPoolCollateralManagerWithReserve | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2cca74...1b1f1c`](./contracts/celo-42220/0x2cca742585b39e0538f7cc01ab8ffa005f1b1f1c/) | LendingPoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xaa6e0f...54ee9b`](./contracts/celo-42220/0xaa6e0f0b63287eac5ddbeefd1f133fc7f554ee9b/) | LendingRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x39349d...2a02c4`](./contracts/celo-42220/0x39349d7f974e56b5ed7133c1c1d98e5a2a2a02c4/) | LeverageBorrowAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xef651d...42b4f7`](./contracts/celo-42220/0xef651d5f7492205499ef6b32b8c9230eda42b4f7/) | LPImplementationInitializerProd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x6aef08...1a8dfb`](./contracts/celo-42220/0x6aef087821393bf3d4b15b5048f4377cf71a8dfb/) | MOOAirdrop2205 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x387ab8...5a321e`](./contracts/celo-42220/0x387ab8fcca2cbca3c24a739fb412cfbc2f5a321e/) | MooCompensationDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4ddfd3...74cca5`](./contracts/celo-42220/0x4ddfd392ba63c2fd294ee20d483388dfa774cca5/) | MoolaFix | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x67ee10...25e174`](./contracts/celo-42220/0x67ee1012a52568fd50d2e168023dc2852825e174/) | MoolaRewardsDistributionOwnedWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1df0a9...d10fad`](./contracts/celo-42220/0x1df0a9c8313a005793501bac2150dfb895d10fad/) | MoolaStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb11f4e...fdfe89`](./contracts/celo-42220/0xb11f4e2165ffed2870d028f2f4ca032f5bfdfe89/) | PriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x025e7f...f7ad76`](./contracts/celo-42220/0x025e7f3c07f5b8f10ed355158204ba0cb4f7ad76/) | PriceFeed2Step | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x3c9bfc...d2142e`](./contracts/celo-42220/0x3c9bfc6e6ec5e6caee0f44a91976993fafd2142e/) | PriceFeedFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x883185...6d9f45`](./contracts/celo-42220/0x883185b84c35ef9cf89fca2627e4d7de1d6d9f45/) | ReserveLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xe788cb...897728`](./contracts/celo-42220/0xe788cbf8d93c182ca1d9bdfca1746fe384897728/) | ReserveLogicNoInterest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xec9817...0fda87`](./contracts/celo-42220/0xec98172bcf583f2a40e7414cd9252404550fda87/) | StableAndVariableTokensHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xacdb7b...b689da`](./contracts/celo-42220/0xacdb7b3e2b0a038f1f4ef04736728e0065b689da/) | StableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2b9d16...13151a`](./contracts/celo-42220/0x2b9d164fd084a022a5fdfa19403944434e13151a/) | ValidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0301cf...445c2c`](./contracts/celo-42220/0x0301cf8f1fcd9255bd32fb7e0fe5b3494f445c2c/) | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3163] DL audit link

Fork inheritance lineage and inherited audits are included when available.
