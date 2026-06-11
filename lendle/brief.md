# Agentic Audit Brief: Lendle

⚠️ Lifecycle status: DECLINING - TVL dropped 89.3% over 90 days

## Project Overview

- Project: Lendle (`lendle`)
- Website: [https://www.lendle.xyz/](https://www.lendle.xyz/)
- Lifecycle: declining (Tier 1, sunsetting)
- Generated: 2026-06-11T00:38:44.862Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-5143
- Chains: mantle
- Contract surface: 64 unique implementations (181 raw deployments)
- DeFi Llama TVL: $1,130,408.00
- On-chain TVL (included contracts): $60,666.62
- TVL by chain: Mantle $60,666.62

## Project Description

Lendle is a Mantle-based decentralized lending and borrowing money market. The protocol is currently sunsetting/shutting down, so current risk and coverage should be assessed in that context. Yield vaults, staking, and incentive programs should be treated as secondary or historical components unless confirmed active in the current contract surface.

### Architecture

The Lendle lending markets and Lendle Yield vaults share the LendleToken for incentives and governance. The lending family provides core infrastructure like oracles and token contracts that may be utilized by yield strategies.

## Audit Coverage Summary

- Verified implementations audited: 19/44 (43.2%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 64
- Raw deployments: 181
- Audits discovered: 9
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $5,556.53
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 0 aging, 1 stale, 7 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $5,556.53 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 19 | 43.2% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LendleToken | token | mantle | [`0x25356a...e49396`](./contracts/mantle-5000/0x25356aeca4210ef7553140edb9b8026089e49396/) | ✅ Audited |
| AaveOracle | operational_periphery | mantle | [`0x870c96...506efc`](./contracts/mantle-5000/0x870c9692ab04944c86ec6feef63f261226506efc/) | ✅ Audited |
| AToken | token | mantle | 9 deployments: mantle [`0x19342d...251655`](./contracts/mantle-5000/0x19342de516e24b3ea48b9d621e4a71c595251655/); mantle `0x3bb743...57d5c1`; mantle `0x3e597f...214eff`; mantle `0x63e42e...e94898`; mantle `0x6a4a5e...1e6de0`; mantle `0xb8ed11...596de3`; mantle `0xbff488...2f60bb`; mantle `0xec3414...320694`; mantle `0xf375e5...966e05` | ✅ Audited |
| ChefIncentivesController | governance | mantle | [`0x201673...413b32`](./contracts/mantle-5000/0x201673fe5b93d92b9a036cb4e2e444d352413b32/) | ✅ Audited |
| LendingPool | core_logic | mantle | 2 deployments: mantle [`0x13e976...9d9ec7`](./contracts/mantle-5000/0x13e9761c037f382472ce765556c3da2af29d9ec7/); mantle `0xcfa5ae...fb7cf3` | ✅ Audited |
| LendingPoolAddressesProvider | core_logic | mantle | [`0xab94be...19c3d4`](./contracts/mantle-5000/0xab94bedd21ae3411eb2698945dfcab1d5c19c3d4/) | ✅ Audited |
| LendingPoolAddressesProviderRegistry | registry | mantle | 2 deployments: mantle [`0xb92bff...11b868`](./contracts/mantle-5000/0xb92bffee2de49b6e87ef3260337b676a2811b868/); mantle `0xd27275...0978bc` | ✅ Audited |
| LendingPoolCollateralManager | core_logic | mantle | [`0x7d3503...9394cc`](./contracts/mantle-5000/0x7d350354dd9d1e48ab1810f1f1b139309e9394cc/) | ✅ Audited |
| LendingPoolConfigurator | core_logic | mantle | 3 deployments: mantle [`0x30d990...044856`](./contracts/mantle-5000/0x30d990834539e1ce8be816631b73a534e5044856/); mantle `0x845a24...2883fe`; mantle `0xfe91d9...7dd0c1` | ✅ Audited |
| LendingRateOracle | operational_periphery | mantle | [`0xc7f65c...d72392`](./contracts/mantle-5000/0xc7f65c6b94a8a1c0977add58b6799ad456d72392/) | ✅ Audited |
| MasterChef | unknown | mantle | [`0x2186a9...8cd56b`](./contracts/mantle-5000/0x2186a94df0f06a378999c22cfb6a160b798cd56b/) | ✅ Audited |
| MerkleDistributor | operational_periphery | mantle | [`0xb57f32...589296`](./contracts/mantle-5000/0xb57f32d28e098cd2d72eafc7a4ecfc54f3589296/) | ✅ Audited |
| MultiFeeDistribution | unknown | mantle | 2 deployments: mantle [`0x5c75a7...f49230`](./contracts/mantle-5000/0x5c75a733656c3e42e44afff1aca1913611f49230/); mantle `0xfa12aa...de522b` | ✅ Audited |
| PythPriceFeed | operational_periphery | mantle | 6 deployments: mantle [`0x0a0636...e61f17`](./contracts/mantle-5000/0x0a0636e83d9881dc3db72da7a883cbf77ae61f17/); mantle `0x4169e5...5904c6`; mantle `0x4358d5...58bdc3`; mantle `0x68b76f...a7acbd`; mantle `0x7099bb...fea137`; mantle `0xbac333...e4b50b` | ✅ Audited |
| StableDebtToken | token | mantle | 8 deployments: mantle [`0x17dd84...4d58a2`](./contracts/mantle-5000/0x17dd84c6a3c02af488312122f7749e5d104d58a2/); mantle `0x18f6e6...dd381d`; mantle `0x2f1c30...8e7736`; mantle `0x4b0968...ac04e3`; mantle `0x743e9e...3b7c74`; mantle `0x783e5a...f008f5`; mantle `0xd8a36c...745407`; mantle `0xf74481...b40291` | ✅ Audited |
| StakingConfigurator | governance | mantle | 2 deployments: mantle [`0xe5f9ff...9db37b`](./contracts/mantle-5000/0xe5f9ffc0d0d70eed59364b44b1f11900b39db37b/); mantle `0xf4e565...528b2f` | ✅ Audited |
| TokenVesting | operational_periphery | mantle | [`0xa7f784...1f7e6f`](./contracts/mantle-5000/0xa7f784dc0ec287342b0b84e63961effa541f7e6f/) | ✅ Audited |
| VariableDebtToken | token | mantle | 7 deployments: mantle [`0x25a1b6...d072c4`](./contracts/mantle-5000/0x25a1b600bf4f1812b93244eb1965dd189dd072c4/); mantle `0x5b82b7...ef1277`; mantle `0x63d5a8...0ae8ce`; mantle `0x6e24fb...54a820`; mantle `0x929138...108ee1`; mantle `0xb3f838...7d6af5`; mantle `0xf7f3ba...ad55f2` | ✅ Audited |
| WETHGateway | token | mantle | [`0xec831f...ac55c2`](./contracts/mantle-5000/0xec831f8710c6286a91a348928600157f07ac55c2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultV7 | core_logic | mantle | 9 deployments: mantle [`0x3ad7d1...34cb52`](./contracts/mantle-5000/0x3ad7d10085c7243a19c6589056a58eb94334cb52/); mantle `0x43703b...20b7bf`; mantle `0x4606e0...0c53f4`; mantle `0x4fd28e...d98076`; mantle `0xb2be0a...c72100`; mantle `0xb76167...4a18b4`; mantle `0xd1d9c7...4b15d8`; mantle `0xd1fc69...e87cae`; mantle `0xeb244c...3b7373` | ⚠️ Unaudited |
| StakingERC20 | token | mantle | 2 deployments: mantle [`0xb3149c...082d91`](./contracts/mantle-5000/0xb3149c9073580f91ca1ff703a19fdd0f9e082d91/); mantle `0xdb9182...acf1fb` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | mantle | [`0x552b9e...b84773`](./contracts/mantle-5000/0x552b9e4bae485c4b7f540777d7d25614cdb84773/) | ⚠️ Unaudited |
| Api3AggregatorAdaptor | unknown | mantle | 2 deployments: mantle [`0x6982e8...a66508`](./contracts/mantle-5000/0x6982e8b8a1da1570a4fb6362a55c63c38da66508/); mantle `0x7cbdfc...ba421f` | ⚠️ Unaudited |
| Api3PriceFeed | operational_periphery | mantle | 4 deployments: mantle [`0x14d48a...831c73`](./contracts/mantle-5000/0x14d48a6d54b612fe7ee847e80a87c7d20e831c73/); mantle `0x7ed5ed...6021f1`; mantle `0x983086...84ff06`; mantle `0xcde071...8dc50c` | ⚠️ Unaudited |
| Api3PythPriceFeed | operational_periphery | mantle | 19 deployments: mantle [`0x04dcaa...d88ef8`](./contracts/mantle-5000/0x04dcaa1f6f3990fde4a5ab90f1222d2b79d88ef8/); mantle `0x0f4716...df9f07`; mantle `0x242a36...d4c147`; mantle `0x244f11...035de0`; mantle `0x2e014f...9d20ee`; mantle `0x37d09f...789297`; mantle `0x39d9ec...80b131`; mantle `0x42591e...d6a3bb`; mantle `0x42f915...367d2d`; mantle `0x4f8402...85d863`; mantle `0x525927...31dd1c`; mantle `0x790292...aec5b3`; mantle `0x82d263...fb283f`; mantle `0x8ba59d...efe909`; mantle `0xad22b2...85756b`; mantle `0xb7edd9...b27891`; mantle `0xdcc5f2...692a09`; mantle `0xf5c791...380850`; mantle `0xf73c33...721f2a` | ⚠️ Unaudited |
| ATokenV2 | token | mantle | 11 deployments: mantle [`0x1bd5e3...04698d`](./contracts/mantle-5000/0x1bd5e38ffa87f81e7adc9b61439a52a37b04698d/); mantle `0x248ba0...ce4436`; mantle `0x37d051...173bec`; mantle `0x38113c...504b43`; mantle `0x4d7b93...0f22cf`; mantle `0x612271...0c8c8c`; mantle `0x665f9a...6e8d47`; mantle `0x892e01...6162d6`; mantle `0x990a4e...ad6e1e`; mantle `0xc430c4...fc2f7a`; mantle `0xf8d3af...1184e2` | ⚠️ Unaudited |
| BeefyOracle | operational_periphery | mantle | 2 deployments: mantle [`0x256cd4...56f851`](./contracts/mantle-5000/0x256cd403755fc4362e62691aaa2c04538c56f851/); mantle `0x8500a4...f5abba` | ⚠️ Unaudited |
| BeefySwapper | adapter | mantle | [`0x006b07...df1a2f`](./contracts/mantle-5000/0x006b07b7b817925582af85d9810eda1f8adf1a2f/) | ⚠️ Unaudited |
| ChefIncentivesControllerV2 | governance | mantle | 2 deployments: mantle [`0x79e2fd...f27c41`](./contracts/mantle-5000/0x79e2fd1c484eb9ee45001a98ce31f28918f27c41/); mantle `0xc36b75...c6db95` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | mantle | 18 deployments: mantle [`0x1bb165...ff5bee`](./contracts/mantle-5000/0x1bb165ed88eda830c969a91308052fdaf4ff5bee/); mantle `0x29a26d...e93778`; mantle `0x50c7e4...5ae2a9`; mantle `0x5588be...cf7d4b`; mantle `0x58a704...b23571`; mantle `0x713749...aa6cfa`; mantle `0x719844...0d028b`; mantle `0x975e25...614538`; mantle `0x9bca50...edbb9f`; mantle `0x9c08c8...1fc37b`; mantle `0xa2fd0a...931cfb`; mantle `0xac8d69...6dec64`; mantle `0xb92ead...eb0f13`; mantle `0xcd214b...10ae1c`; mantle `0xd2b3c2...6f31a5`; mantle `0xd9b0b0...40a488`; mantle `0xe35fa6...938e4a`; mantle `0xe89dec...3ddbaf` | ⚠️ Unaudited |
| FairAuctionNoES | operational_periphery | mantle | [`0xa0fa32...27c349`](./contracts/mantle-5000/0xa0fa329b8977125c5e47fe439c69658cb727c349/) | ⚠️ Unaudited |
| GenericLogic | unknown | mantle | [`0xf9e8f0...bb30fd`](./contracts/mantle-5000/0xf9e8f0a5aa1fd994b762ac28ebfbe14f83bb30fd/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | mantle | [`0xc90c10...ddee12`](./contracts/mantle-5000/0xc90c10c7e3b2f14870cc870a046bd099ccddee12/) | ⚠️ Unaudited |
| MerkleERC20Distributor | operational_periphery | mantle | [`0x938034...67078f`](./contracts/mantle-5000/0x93803455aa62e5b95cdb174cd52b16382967078f/) | ⚠️ Unaudited |
| Pauser | unknown | mantle | 2 deployments: mantle [`0x2427c2...9adfd6`](./contracts/mantle-5000/0x2427c22a35a6d7d141c1979160e7852a5d9adfd6/); mantle `0xca7190...09e3ea` | ⚠️ Unaudited |
| ProtocolRevenueDistribution | unknown | mantle | 4 deployments: mantle [`0x2e2df1...2f7ea9`](./contracts/mantle-5000/0x2e2df129bde4d56c99c1a93544e8a2b9282f7ea9/); mantle `0xb1946b...d97704`; mantle `0xb442f5...fa7fa1`; mantle `0xd4df2e...35f7f9` | ⚠️ Unaudited |
| ProxyAdmin | governance | mantle | 2 deployments: mantle [`0x2a5b18...33f8dc`](./contracts/mantle-5000/0x2a5b18a211e985da6dc3f680be495246b033f8dc/); mantle `0x5e3dfc...9bad64` | ⚠️ Unaudited |
| ReserveLogic | unknown | mantle | [`0xa9902e...7facfa`](./contracts/mantle-5000/0xa9902e4ba29ec28a0f06f9fbd04ddbc6087facfa/) | ⚠️ Unaudited |
| Timelock | governance | mantle | 3 deployments: mantle [`0x5cbf95...1e0345`](./contracts/mantle-5000/0x5cbf9566595ebc6542418e3b9e1f6685ae1e0345/); mantle `0xb6eeda...a92484`; mantle `0xf64896...70a1b0` | ⚠️ Unaudited |
| TimelockController | governance | mantle | 10 deployments: mantle [`0x0be62b...fe238c`](./contracts/mantle-5000/0x0be62bc0029ba48e0026eb4e5c79f21f95fe238c/); mantle `0x26ae2b...48cff0`; mantle `0x2a8a9a...b356f2`; mantle `0x354ca4...86dc55`; mantle `0x383716...6231f6`; mantle `0x75197a...3d1e59`; mantle `0x89253b...55b3c6`; mantle `0xa46fa4...35acfa`; mantle `0xae6ffe...21626a`; mantle `0xbf1af0...405b7d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mantle | 6 deployments: mantle [`0x07323e...d17cf9`](./contracts/mantle-5000/0x07323ed912aeae3f0aa2f9b609e47553acd17cf9/); mantle `0x52efe0...80c94e`; mantle `0x8e3a91...2f9314`; mantle `0xc2e285...37b8c2`; mantle `0xd9fcff...a80607`; mantle `0xe54ab3...3a3b84` | ⚠️ Unaudited |
| ValidationLogic | unknown | mantle | [`0x733aad...ee1623`](./contracts/mantle-5000/0x733aad45a334237b0ba6b84fd4aeff9107ee1623/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | mantle | 5 deployments: mantle [`0x079c99...3ad8b4`](./contracts/mantle-5000/0x079c993a1e228fbf0bc49ba673fb249e7b3ad8b4/); mantle `0x217d15...e9b1d8`; mantle `0x5841b7...24d26f`; mantle `0x9aeb85...0ad3c8`; mantle `0xa126a4...1e70a9` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | mantle | [`0x370bc6...79a01e`](./contracts/mantle-5000/0x370bc6b2940a6927fff2d64ba3d96c641579a01e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | mantle | `0x079eb9...c0385b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x0a4e3e...962019` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1fb19c...52d70c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x228518...8f4eaa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3401e5...beacaa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3a8341...197e84` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x415e2d...7825bc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4c57be...79aa6b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x520e7f...dbead6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5645d7...d8fff6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x6897b0...dce20c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x6eea6c...f3f106` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x8668fa...b0a01d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x88cff8...59eba2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xaa7bee...172189` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xaba6a7...cc6d0a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb74b3a...150a45` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xdd9f06...22f378` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xea068d...9f5aea` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xefdc43...457fda` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/Lendle) | SourceHat | Audit | 2023-09 | stale | Direct | contract_name | 51 | high |
| [<>](https://www.halborn.com/audits/lendle/brink-a73cf0) | Halborn | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x3ad7d1...34cb52`](./contracts/mantle-5000/0x3ad7d10085c7243a19c6589056a58eb94334cb52/) | VaultV7 | core_logic | $5,556.44 | Verified native implementation with $5,556.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1bd5e3...04698d`](./contracts/mantle-5000/0x1bd5e38ffa87f81e7adc9b61439a52a37b04698d/) | ATokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1bb165...ff5bee`](./contracts/mantle-5000/0x1bb165ed88eda830c969a91308052fdaf4ff5bee/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xa0fa32...27c349`](./contracts/mantle-5000/0xa0fa329b8977125c5e47fe439c69658cb727c349/) | FairAuctionNoES | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xf9e8f0...bb30fd`](./contracts/mantle-5000/0xf9e8f0a5aa1fd994b762ac28ebfbe14f83bb30fd/) | GenericLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x938034...67078f`](./contracts/mantle-5000/0x93803455aa62e5b95cdb174cd52b16382967078f/) | MerkleERC20Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x2427c2...9adfd6`](./contracts/mantle-5000/0x2427c22a35a6d7d141c1979160e7852a5d9adfd6/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x2e2df1...2f7ea9`](./contracts/mantle-5000/0x2e2df129bde4d56c99c1a93544e8a2b9282f7ea9/) | ProtocolRevenueDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xa9902e...7facfa`](./contracts/mantle-5000/0xa9902e4ba29ec28a0f06f9fbd04ddbc6087facfa/) | ReserveLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x733aad...ee1623`](./contracts/mantle-5000/0x733aad45a334237b0ba6b84fd4aeff9107ee1623/) | ValidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x370bc6...79a01e`](./contracts/mantle-5000/0x370bc6b2940a6927fff2d64ba3d96c641579a01e/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 6 |
| standard_library | 10 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=51

Zero-match audit list:

- [3143] <>
- [3144] {% embed url="<>" %}
- [3145] {% embed url="<>" %}
- [3146] {% embed url="<>" %}
- [3147] {% embed url="<>" %}
- [3148] {% embed url="<>" %}
- [3149] {% embed url="<>" %}
- [3150] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
