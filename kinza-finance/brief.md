# Agentic Audit Brief: Kinza Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 12.8% over 90 days

## Project Overview

- Project: Kinza Finance (`kinza-finance`)
- Website: [https://app.kinza.finance/#/referral?referralCode=28UAHQ](https://app.kinza.finance/#/referral?referralCode=28UAHQ)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-30T10:52:49.058Z
- Pipeline run: v2-pipeline-2026-05-30-255779-2e4e
- Chains: bsc, ethereum, mantle, opbnb
- Contract surface: 154 unique implementations (252 raw deployments)
- DeFi Llama TVL: $7,776,309.13
- On-chain TVL (included contracts): $0.01
- TVL by chain: Bsc $0.01

## Project Description

Kinza Finance is a decentralized lending protocol that enables users to supply and borrow digital assets across multiple chains. It uses a pool-based model with variable interest rates, liquidation mechanisms, and governance controls.

### Architecture

The protocol is organized around a single lending family with two deployments (likely mainnet and testnet) sharing identical contract patterns. Core lending logic resides in Pool and PoolConfigurator, managed via PoolAddressesProvider, while governance and access control are handled by GnosisSafe multisigs and ACLManager.

## Audit Coverage Summary

- Verified implementations audited: 1/50 (2.0%)
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 104
- Unique implementations: 154
- Raw deployments: 252
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $0.01
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $0.01 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 1 | 2.0% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProtectedNativeTokenGateway | token | bsc | [`0x88e6ee...239337`](./contracts/bsc-56/0x88e6ee8bae18ebbc9a49f9627a0ea4ff94239337/) | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Pool | core_logic | bsc | 4 deployments: ethereum `0x7b9ef9...78e95c`; ethereum `0xea1447...cef1be`; bsc [`0x0b4115...614e4c`](./contracts/bsc-56/0x0b4115d1fa43e4bc57513899c1cfb2acfd614e4c/); bsc `0xcb0620...963c8c` | ⚠️ Unaudited |
| AaveOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x39abed...754a39`](./contracts/ethereum-1/0x39abeda13579fbb4effb31b5f38bdc91ae754a39/); bsc `0xec203e...4ab461` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | bsc | 2 deployments: ethereum `0xe44990...37f038`; bsc [`0x09ddc4...6f5d61`](./contracts/bsc-56/0x09ddc4ae826601b0f9671b9edffdf75e7e6f5d61/) | ⚠️ Unaudited |
| ACLManager | governance | bsc | 2 deployments: ethereum `0x9074fc...095fdb`; bsc [`0x625eda...163e31`](./contracts/bsc-56/0x625edab184b3b517654097875f1d8c9820163e31/) | ⚠️ Unaudited |
| AToken | token | bsc | 2 deployments: ethereum `0xcdeaad...2f2ce0`; bsc [`0xc7da75...a67e8a`](./contracts/bsc-56/0xc7da75e3c5d15eb2002af72ce958cddc49a67e8a/) | ⚠️ Unaudited |
| BorrowableDataProvider | core_logic | ethereum | 4 deployments: ethereum [`0x2864aa...6d33ee`](./contracts/ethereum-1/0x2864aa9e7cbe4b114306be82aa23ffe2036d33ee/); ethereum `0x85c813...619b4a`; bsc `0xcf46f7...ba9533`; bsc `0xd6a287...65c5f2` | ⚠️ Unaudited |
| BorrowLogic | core_logic | bsc | 5 deployments: ethereum `0xb2a2c0...e75c94`; bsc [`0x637660...12a528`](./contracts/bsc-56/0x6376602e080c2bbb02d26aff6d209a4fdb12a528/); bsc `0x70d790...2fbea1`; bsc `0xa6265a...b006fb`; bsc `0xee2585...2a4273` | ⚠️ Unaudited |
| BridgeLogic | operational_periphery | bsc | 4 deployments: ethereum `0xd0209f...afdf88`; bsc [`0x299441...8dd02b`](./contracts/bsc-56/0x2994413c2b20555f7eeed0b7a9455cecbb8dd02b/); bsc `0x342019...9a00f1`; bsc `0xe3aad8...af86b4` | ⚠️ Unaudited |
| ConfiguratorLogic | governance | bsc | 2 deployments: ethereum `0xd74d44...74bc8d`; bsc [`0x306ca8...889871`](./contracts/bsc-56/0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | bsc | 17 deployments: bsc [`0x0c2d7e...4fe543`](./contracts/bsc-56/0x0c2d7e456b0d0ab80dca148e60d23cf6304fe543/); bsc `0x165e61...74b170`; bsc `0x1f84bf...f0db11`; bsc `0x2c1c96...25d4f7`; bsc `0x3402ce...9d2add`; bsc `0x41822c...92a85e`; bsc `0x5466e3...47d9c0`; bsc `0x5ceb0e...546673`; bsc `0x71e953...635ba1`; bsc `0x72958b...1a932a`; bsc `0x8c4861...952ed8`; bsc `0x920d4b...bb190f`; bsc `0x98c5fb...2ddd1e`; bsc `0xc62cd1...ad0aa1`; bsc `0xcc7e55...036b7d`; bsc `0xd67ff7...eff410`; bsc `0xe3e610...6e35cb` | ⚠️ Unaudited |
| EmissionManager | operational_periphery | bsc | 2 deployments: ethereum `0xfcc750...130195`; bsc [`0xe85d5d...ca2d51`](./contracts/bsc-56/0xe85d5d7f0b627a545e29248cb1a6807b28ca2d51/) | ⚠️ Unaudited |
| EModeLogic | unknown | ethereum | 2 deployments: ethereum [`0x4e68bc...6c4273`](./contracts/ethereum-1/0x4e68bcd17c6e47cd7c80d66770f80161296c4273/); bsc `0xc8cb15...cb28d9` | ⚠️ Unaudited |
| EthAtomicReservesSetupHelper | periphery | ethereum | [`0x3f2845...a5e6c6`](./contracts/ethereum-1/0x3f2845e6ce191237d1727b7b889d16f426a5e6c6/) | ⚠️ Unaudited |
| ezETHPriceAdaptor | operational_periphery | ethereum | [`0xb30a57...d201db`](./contracts/ethereum-1/0xb30a57f7e04e0e3adf99effdc6860e2450d201db/) | ⚠️ Unaudited |
| FlashLoanLogic | unknown | bsc | 5 deployments: ethereum `0x9f3de0...9b8b4d`; bsc [`0x486d68...e608ea`](./contracts/bsc-56/0x486d682781a960ffb2a1feedbd3455c6fae608ea/); bsc `0x48a8af...922f4d`; bsc `0x5e086a...89d329`; bsc `0x7954f3...24327f` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 2 deployments: ethereum [`0x8c99b0...5baa58`](./contracts/ethereum-1/0x8c99b0141849d8097309c8ea78f86b7bb65baa58/); ethereum `0xa3ec77...edfd16` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | 2 deployments: bsc [`0x65fdcd...3cdb36`](./contracts/bsc-56/0x65fdcd48c4807f67429bdc731d6964f5553cdb36/); bsc `0x980833...50ba71` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | opbnb | 4 deployments: opbnb [`0x028bb3...f5840f`](./contracts/opbnb-204/0x028bb35818f95c9ee7acf85e964067745df5840f/); opbnb `0x550330...9b1ed3`; mantle `0x3cc8dc...561d68`; mantle `0xb00083...12ee28` | ⚠️ Unaudited |
| HAYBinanceOracleAggregator | operational_periphery | bsc | [`0x3d29c3...8d4c38`](./contracts/bsc-56/0x3d29c3b0b0267ec6fb3e417c64a7835b748d4c38/) | ⚠️ Unaudited |
| HAYTWAPAggregator | unknown | bsc | [`0xd8e9cb...0cc7d8`](./contracts/bsc-56/0xd8e9cb8e17d7801fa2145be6f2aa973cb20cc7d8/) | ⚠️ Unaudited |
| kBTC | unknown | bsc | [`0x9356f6...b48383`](./contracts/bsc-56/0x9356f6d95b8e109f4b7ce3e49d672967d3b48383/) | ⚠️ Unaudited |
| LiquidationAdaptor | unknown | bsc | 17 deployments: bsc [`0x0df5a3...d95eb5`](./contracts/bsc-56/0x0df5a3c7f28514873ab3b2c11a76d30073d95eb5/); bsc `0x1561f7...1f5f9e`; bsc `0x1c40ce...806836`; bsc `0x2baa97...672b25`; bsc `0x32264d...e767fd`; bsc `0x3b029a...3eadd5`; bsc `0x3c6fa8...fb7d5c`; bsc `0x534a55...40b49e`; bsc `0x682092...9a89cf`; bsc `0x79b80f...08501c`; bsc `0x993e9a...949fa4`; bsc `0x9c580c...781585`; bsc `0xaf8665...c0404a`; bsc `0xbb5f2d...23eb5e`; bsc `0xde4736...113e7e`; bsc `0xe8fcad...5ceb4d`; bsc `0xec9582...9b9851` | ⚠️ Unaudited |
| LiquidationAdaptorAccessControl | governance | bsc | [`0x8b8479...203c71`](./contracts/bsc-56/0x8b8479dcf0c6cad7f6d8fa2e782d15f3a9203c71/) | ⚠️ Unaudited |
| LiquidationAdaptorPancakeV3FallBack | unknown | bsc | [`0x5fa010...b751cd`](./contracts/bsc-56/0x5fa0108775dd5af2d8c53c51279e4111d9b751cd/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | bsc | 4 deployments: ethereum `0xe6f875...bca163`; bsc [`0x107a0d...9b4ac2`](./contracts/bsc-56/0x107a0d2b34fc76f19ad64e9a9d27340a049b4ac2/); bsc `0x54c33c...6d8e67`; bsc `0xc01ef1...6bc041` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | ethereum | 2 deployments: ethereum [`0x021889...6bd953`](./contracts/ethereum-1/0x0218890dd636c3a1cf0f98557ee2d3612c6bd953/); bsc `0xca20a5...1fd7ce` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | ethereum | 3 deployments: ethereum [`0x37c9e6...43cbc6`](./contracts/ethereum-1/0x37c9e6eeabe799878ff9d32984a3a0b91243cbc6/); bsc `0x37d7eb...269189`; bsc `0xb62afd...fa8345` | ⚠️ Unaudited |
| PoolConfigurator | core_logic | bsc | 4 deployments: ethereum `0x824a5b...1eabbd`; ethereum `0x877a6c...449122`; bsc [`0x25b36e...e902bb`](./contracts/bsc-56/0x25b36ed1e5b5b2b2978d473ed42928d3b6e902bb/); bsc `0xa57764...efe5a2` | ⚠️ Unaudited |
| PoolLogic | core_logic | bsc | 2 deployments: ethereum `0x5d9991...792c2b`; bsc [`0x30777a...3d616f`](./contracts/bsc-56/0x30777a478886ecfca0dc8b023e4fd19b133d616f/) | ⚠️ Unaudited |
| pufETHPriceAdaptor | operational_periphery | ethereum | [`0x0339e7...a557c8`](./contracts/ethereum-1/0x0339e70aadaacda0102a471c4c07cc6383a557c8/) | ⚠️ Unaudited |
| pumpBTCPriceAdaptor | operational_periphery | ethereum | [`0x01b327...2530ea`](./contracts/ethereum-1/0x01b32790c5cd5fc7b916ed9fcdbe9c31ed2530ea/) | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | bsc | 3 deployments: bsc [`0x1f0d4b...450794`](./contracts/bsc-56/0x1f0d4b5e45e9d471aa67e3a1eb0a786e82450794/); bsc `0x2a8108...3b22b8`; bsc `0xd9c5bd...788f57` | ⚠️ Unaudited |
| rETHPriceAdaptor | operational_periphery | ethereum | 3 deployments: ethereum [`0x2e2b78...d2db57`](./contracts/ethereum-1/0x2e2b783b7e8c1e72d114af009ef5de6260d2db57/); ethereum `0x55c31b...e52066`; ethereum `0x818a8d...d92f85` | ⚠️ Unaudited |
| RewardsController | governance | ethereum | 2 deployments: ethereum [`0x7f60ed...bacf35`](./contracts/ethereum-1/0x7f60edd6aabd5c7e9c2870284262ac36bdbacf35/); bsc `0xfe2506...6f8099` | ⚠️ Unaudited |
| rsETHPriceAdaptor | operational_periphery | ethereum | [`0x0e8db6...f8e92e`](./contracts/ethereum-1/0x0e8db6395d0499e9b469d1c4ae4842cb53f8e92e/) | ⚠️ Unaudited |
| SNBNBBinanceOracleAggregator | operational_periphery | bsc | [`0xd73d7f...203e7f`](./contracts/bsc-56/0xd73d7f28ef7ba655f3095bf6b0e2029efc203e7f/) | ⚠️ Unaudited |
| SNBNBBinanceOracleCustomAggregator | operational_periphery | bsc | 2 deployments: bsc [`0x85621e...0eecfc`](./contracts/bsc-56/0x85621eab77dd243822d5ba9bbe6c67d3df0eecfc/); bsc `0xd41a40...cac2cf` | ⚠️ Unaudited |
| StableDebtToken | token | bsc | 2 deployments: ethereum `0xf8a60a...db53fd`; bsc [`0xc3752d...2b87b4`](./contracts/bsc-56/0xc3752d2ce05cd638523cccaa090ef5e25a2b87b4/) | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | ethereum | [`0x4579ef...4f4289`](./contracts/ethereum-1/0x4579eff1b5b7b6245c6c7ff86530338b194f4289/) | ⚠️ Unaudited |
| SupplyLogic | unknown | bsc | 7 deployments: ethereum `0xc98135...2e0cb1`; bsc [`0x15e0e9...775091`](./contracts/bsc-56/0x15e0e9810d2eda58f63336c397acdf745d775091/); bsc `0x1ab9b6...c21176`; bsc `0x3e2e10...2bdd9c`; bsc `0x625399...9b9451`; bsc `0x6a6877...87a17b`; bsc `0x763b2a...2fc1c2` | ⚠️ Unaudited |
| TimelockController | governance | bsc | 4 deployments: ethereum `0x92139d...2a8276`; bsc [`0x004a9e...d9cba6`](./contracts/bsc-56/0x004a9eac7ceaf27b4a1a7746d677bfa704d9cba6/); bsc `0x7a085a...283d6a`; bsc `0xdf2baf...2977aa` | ⚠️ Unaudited |
| TVLReader | unknown | bsc | [`0x5dfaf0...f804e5`](./contracts/bsc-56/0x5dfaf0e89a51d4713f8aedde4a62190987f804e5/) | ⚠️ Unaudited |
| VariableDebtToken | token | bsc | 2 deployments: ethereum `0xd32077...93c36f`; bsc [`0x00170f...dbaee8`](./contracts/bsc-56/0x00170fbbc27793837f1b7fb073f91f5ed8dbaee8/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | bsc | 7 deployments: ethereum `0x5c7afe...18efb8`; bsc [`0x11dc2a...13db62`](./contracts/bsc-56/0x11dc2a7d1d7405010cd1e863de2b6b7c3e13db62/); bsc `0x1ec9f9...b902e8`; bsc `0x3828f7...0d4cae`; bsc `0xa8fe77...160c1a`; bsc `0xc53d47...39d7df`; bsc `0xf711ae...12d805` | ⚠️ Unaudited |
| WBETHBinanceOracleAggregator | operational_periphery | bsc | [`0x41f19b...9693f4`](./contracts/bsc-56/0x41f19b0edc78d32a65dc3eef3864b26f5a9693f4/) | ⚠️ Unaudited |
| WbETHPriceAdaptor | operational_periphery | bsc | 2 deployments: bsc [`0x6ea1e0...2f06a2`](./contracts/bsc-56/0x6ea1e03cacb8e0a7e8aca311ee37a474cb2f06a2/); bsc `0x8c6dcf...a11862` | ⚠️ Unaudited |
| weETHPriceAdaptor | operational_periphery | ethereum | 2 deployments: ethereum [`0x036780...e5f832`](./contracts/ethereum-1/0x036780ca4a3ec315e15371f5cccfa160d0e5f832/); ethereum `0x512215...04ae9c` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | ethereum | 2 deployments: ethereum [`0xa4cd4b...781087`](./contracts/ethereum-1/0xa4cd4b5004ab42758bcb8893a10c5b3532781087/); bsc `0xcc650b...526739` | ⚠️ Unaudited |
| wstETHPriceAdaptor | operational_periphery | ethereum | 2 deployments: ethereum [`0x1031a3...537a0a`](./contracts/ethereum-1/0x1031a3093cb7d58015e78ea2bfcaf9ab37537a0a/); ethereum `0xe7fd99...634437` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (104)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x004a9eac7ceaf27b4a1a7746d677bfa704d9cba6) | proxy | opbnb | `0x3aadc3...e441cb` | ❓ Unverified |
| Proxy (impl: 0x758fb1e27510c0ce0e88fafa23705081a6f61f13) | proxy | mantle | `0x5757b1...78ed51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd27b00...3f83f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x209f07...d4d475` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x433958...a26027` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x439e13...adfcad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf01f32...6b98cf` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x004a9e...d9cba6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x077893...8abc6f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x0c2d7e...4fe543` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x0df5a3...d95eb5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x1c40ce...806836` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x1e1a67...29dffe` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x1f84bf...f0db11` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x209f07...d4d475` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x260a7f...eb0068` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x2a8108...3b22b8` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x306ca8...889871` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x30777a...3d616f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x32379a...fd26f6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x342019...9a00f1` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x35d8d7...f97c8a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x36be6c...15b9dc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x37d7eb...269189` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x3f8860...cab067` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x3fb65b...031710` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x41822c...92a85e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x4bacc3...71c9d5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x52cf67...7bc7ee` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x54c33c...6d8e67` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x565ef2...c1a7bf` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x5ceb0e...546673` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x6e5b5c...f59046` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x722f6e...59e1b5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x75257e...f04bbc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x763b2a...2fc1c2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x7954f3...24327f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x7ad8c5...1006b3` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x88e984...5fe4de` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x8a8451...8a1278` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x8c9c95...779013` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x947ad3...1f3669` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x993e9a...949fa4` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x9c580c...781585` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xa6265a...b006fb` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xab98ae...6f18c6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xb62afd...fa8345` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xbb5f2d...23eb5e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xbc4318...357a2f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xc086e1...90241a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xc62cd1...ad0aa1` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xc7da75...a67e8a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xc8cb15...cb28d9` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xca0eda...1dd0e0` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xca20a5...1fd7ce` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xcf46f7...ba9533` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xd67ff7...eff410` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xd9c5bd...788f57` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xdc68ac...065d8b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xde451b...b69802` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xe8fcad...5ceb4d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xec9582...9b9851` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xef31e7...24905d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x002618...2315b2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x0536e7...0051ea` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x0d4af5...8381b8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x18cc2c...95ec38` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1c3a49...6b001a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x22e585...9589c9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x26b164...7e87dc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x28a3f4...3f873c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2f31ac...c2e608` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x34edc3...972891` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3ab164...6596dc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x51ff36...373d64` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x532ece...757d72` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x58067d...bc6d90` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x69424f...f1ced7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x6cf78e...9d5fc0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x6f230e...2bf7e8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x70fce7...82e5ce` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7287d9...617f7f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x758fb1...f61f13` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7ba63a...aef8c5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7d3458...f3bf9b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9be413...612eb0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9cd978...b01f71` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa4f75b...33bd4b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xad4881...20abc2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbb0a49...c40153` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbdf463...0f4b09` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbf2602...7e51b6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xc16ba9...0e6962` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd5e6a1...c0b303` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd62434...7a9438` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd7933c...920d7a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe03379...fd9bdb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe2fee9...0583c0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe5ca43...283ffc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe5f546...661095` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xebf687...e05606` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xec63c5...5e2c18` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf29d81...7a11ae` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf4f615...e7df96` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [{% embed url="<>" %}](https://omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513) | Omniscia | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [Salus-Kinza-1.0.pdf](https://github.com/Kinza-Finance/KZA-1.0/blob/main/audits/Salus-Kinza-1.0.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0b4115...614e4c`](./contracts/bsc-56/0x0b4115d1fa43e4bc57513899c1cfb2acfd614e4c/) | Pool | core_logic | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x625eda...163e31`](./contracts/bsc-56/0x625edab184b3b517654097875f1d8c9820163e31/) | ACLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc7da75...a67e8a`](./contracts/bsc-56/0xc7da75e3c5d15eb2002af72ce958cddc49a67e8a/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2864aa...6d33ee`](./contracts/ethereum-1/0x2864aa9e7cbe4b114306be82aa23ffe2036d33ee/) | BorrowableDataProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x637660...12a528`](./contracts/bsc-56/0x6376602e080c2bbb02d26aff6d209a4fdb12a528/) | BorrowLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x299441...8dd02b`](./contracts/bsc-56/0x2994413c2b20555f7eeed0b7a9455cecbb8dd02b/) | BridgeLogic | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x306ca8...889871`](./contracts/bsc-56/0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871/) | ConfiguratorLogic | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c2d7e...4fe543`](./contracts/bsc-56/0x0c2d7e456b0d0ab80dca148e60d23cf6304fe543/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe85d5d...ca2d51`](./contracts/bsc-56/0xe85d5d7f0b627a545e29248cb1a6807b28ca2d51/) | EmissionManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e68bc...6c4273`](./contracts/ethereum-1/0x4e68bcd17c6e47cd7c80d66770f80161296c4273/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f2845...a5e6c6`](./contracts/ethereum-1/0x3f2845e6ce191237d1727b7b889d16f426a5e6c6/) | EthAtomicReservesSetupHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb30a57...d201db`](./contracts/ethereum-1/0xb30a57f7e04e0e3adf99effdc6860e2450d201db/) | ezETHPriceAdaptor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x486d68...e608ea`](./contracts/bsc-56/0x486d682781a960ffb2a1feedbd3455c6fae608ea/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd8e9cb...0cc7d8`](./contracts/bsc-56/0xd8e9cb8e17d7801fa2145be6f2aa973cb20cc7d8/) | HAYTWAPAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0df5a3...d95eb5`](./contracts/bsc-56/0x0df5a3c7f28514873ab3b2c11a76d30073d95eb5/) | LiquidationAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8b8479...203c71`](./contracts/bsc-56/0x8b8479dcf0c6cad7f6d8fa2e782d15f3a9203c71/) | LiquidationAdaptorAccessControl | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5fa010...b751cd`](./contracts/bsc-56/0x5fa0108775dd5af2d8c53c51279e4111d9b751cd/) | LiquidationAdaptorPancakeV3FallBack | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x107a0d...9b4ac2`](./contracts/bsc-56/0x107a0d2b34fc76f19ad64e9a9d27340a049b4ac2/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x021889...6bd953`](./contracts/ethereum-1/0x0218890dd636c3a1cf0f98557ee2d3612c6bd953/) | PoolAddressesProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37c9e6...43cbc6`](./contracts/ethereum-1/0x37c9e6eeabe799878ff9d32984a3a0b91243cbc6/) | PoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25b36e...e902bb`](./contracts/bsc-56/0x25b36ed1e5b5b2b2978d473ed42928d3b6e902bb/) | PoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x30777a...3d616f`](./contracts/bsc-56/0x30777a478886ecfca0dc8b023e4fd19b133d616f/) | PoolLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0339e7...a557c8`](./contracts/ethereum-1/0x0339e70aadaacda0102a471c4c07cc6383a557c8/) | pufETHPriceAdaptor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01b327...2530ea`](./contracts/ethereum-1/0x01b32790c5cd5fc7b916ed9fcdbe9c31ed2530ea/) | pumpBTCPriceAdaptor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f0d4b...450794`](./contracts/bsc-56/0x1f0d4b5e45e9d471aa67e3a1eb0a786e82450794/) | ReservesSetupHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e2b78...d2db57`](./contracts/ethereum-1/0x2e2b783b7e8c1e72d114af009ef5de6260d2db57/) | rETHPriceAdaptor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f60ed...bacf35`](./contracts/ethereum-1/0x7f60edd6aabd5c7e9c2870284262ac36bdbacf35/) | RewardsController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e8db6...f8e92e`](./contracts/ethereum-1/0x0e8db6395d0499e9b469d1c4ae4842cb53f8e92e/) | rsETHPriceAdaptor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd73d7f...203e7f`](./contracts/bsc-56/0xd73d7f28ef7ba655f3095bf6b0e2029efc203e7f/) | SNBNBBinanceOracleAggregator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x85621e...0eecfc`](./contracts/bsc-56/0x85621eab77dd243822d5ba9bbe6c67d3df0eecfc/) | SNBNBBinanceOracleCustomAggregator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc3752d...2b87b4`](./contracts/bsc-56/0xc3752d2ce05cd638523cccaa090ef5e25a2b87b4/) | StableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15e0e9...775091`](./contracts/bsc-56/0x15e0e9810d2eda58f63336c397acdf745d775091/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5dfaf0...f804e5`](./contracts/bsc-56/0x5dfaf0e89a51d4713f8aedde4a62190987f804e5/) | TVLReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00170f...dbaee8`](./contracts/bsc-56/0x00170fbbc27793837f1b7fb073f91f5ed8dbaee8/) | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11dc2a...13db62`](./contracts/bsc-56/0x11dc2a7d1d7405010cd1e863de2b6b7c3e13db62/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6ea1e0...2f06a2`](./contracts/bsc-56/0x6ea1e03cacb8e0a7e8aca311ee37a474cb2f06a2/) | WbETHPriceAdaptor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x036780...e5f832`](./contracts/ethereum-1/0x036780ca4a3ec315e15371f5cccfa160d0e5f832/) | weETHPriceAdaptor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4cd4b...781087`](./contracts/ethereum-1/0xa4cd4b5004ab42758bcb8893a10c5b3532781087/) | WrappedTokenGatewayV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1031a3...537a0a`](./contracts/ethereum-1/0x1031a3093cb7d58015e78ea2bfcaf9ab37537a0a/) | wstETHPriceAdaptor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 3 |
| standard_library | 5 |
| needs_review | 85 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [10238] Salus-Kinza-1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
