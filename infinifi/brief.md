# Agentic Audit Brief: infiniFi

⚠️ Lifecycle status: DECLINING - TVL dropped 45.8% over 90 days

## Project Overview

- Project: infiniFi (`infinifi`)
- Website: [https://infinifi.xyz](https://infinifi.xyz)
- Lifecycle: declining (Tier 0, 49.7% below peak)
- Generated: 2026-06-17T07:00:48.731Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, plasma
- Contract surface: 110 unique implementations (176 raw deployments)
- DeFi Llama TVL: $77,946,415.13
- On-chain TVL (included contracts): $145,943,366.91
- TVL by chain: Ethereum $145,943,366.91

## Project Description

InfiniFi is on-chain banking and yield infrastructure that uses liquid and illiquid assets with transparent fractional reserves. Its contract surface includes receipt, staked, and locked-position tokens, farms and vaults, gateways, controllers, oracles, and operational periphery. Documented integrations include protocols such as AAVE, Pendle, and Ethena; third-party routers and settlement systems should be treated as external dependencies rather than InfiniFi-owned core contracts.

### Architecture

The Core Contracts family orchestrates user deposits and withdrawals, minting Locked Position Tokens and interacting with External Integrations to execute yield strategies. Tokens and Plasma Network families share similar receipt/staked token patterns and rely on the same gateway logic, while BNB Chain extends reach via OFT, all governed by the Timelock and supported by Infrastructure contracts.

## Contract Surface Quality

- Indexed contracts: 214; live-surface contracts included: 176 (169 live, 7 unknown).
- Excluded by liveness: 28 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 4/10 live.
- Detected codebases: none
- Unverified dependencies: 9/78.

## Audit Coverage Summary

- Verified implementations audited: 0/65 (0.0%)
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 1
- Unverified implementations: 45
- Unique implementations: 110
- Raw deployments: 176
- Audits discovered: 12
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $145,943,366.91
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 2 aging, 3 stale, 7 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $145,943,366.91 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ReceiptToken | token | ethereum | n/a | 2 deployments: ethereum [`0x48f9e3...e3d89c`](./contracts/ethereum-1/0x48f9e38f3070ad8945dfeae3fa70987722e3d89c/); plasma `0x626c23...134d54` | ⚠️ Unaudited |
| StakedToken | token | ethereum | n/a | 2 deployments: ethereum [`0xdbdc1e...389bcb`](./contracts/ethereum-1/0xdbdc1ef57537e34680b898e1febd3d68c7389bcb/); plasma `0xe335ab...c39afd` | ⚠️ Unaudited |
| LockedPositionToken | token | ethereum | n/a | 13 deployments: ethereum [`0x12b004...258442`](./contracts/ethereum-1/0x12b004719fb632f1e7c010c6f5d6009fb4258442/); ethereum `0x3a744a...2cf8bb`; ethereum `0x3d360a...c2d644`; ethereum `0x66bcf6...156078`; ethereum `0xb06cc4...bc9707`; ethereum `0xbb5ca7...c912e1`; ethereum `0xbd3f98...bf087a`; ethereum `0xd15fbf...cc26d5`; ethereum `0xed030a...be4fcd`; ethereum `0xed2a36...444a0a`; ethereum `0xf0c4a7...57d7d1`; ethereum `0xf1839b...8ff361`; ethereum `0xf68b95...215085` | ⚠️ Unaudited |
| OVault_USDC_siUSD | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6fac6a...6491f7`](./contracts/ethereum-1/0x6fac6ab52d43e11b04f1587db00d5240e86491f7/); ethereum `0xdc78ff...0bf016` | ⚠️ Unaudited |
| OVault_USDC_iUSD | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x5ddbdc...55f105`](./contracts/ethereum-1/0x5ddbdc875ae800b1d61cc8c49324f259ef55f105/); ethereum `0xefaf2b...02ab00` | ⚠️ Unaudited |
| OVault_iUSD_siUSD | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6345d9...a47fef`](./contracts/ethereum-1/0x6345d938a607b8f5da825d1670b4890f5aa47fef/); ethereum `0xea52ce...59f3a3` | ⚠️ Unaudited |
| Accounting | unknown | plasma | n/a | [`0xdeb028...ce765f`](./contracts/plasma-9745/0xdeb0284d7120d3005cb06961cb1e651942ce765f/) | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | ethereum | unit-29336 | [`0x888888...58f946`](./contracts/ethereum-1/0x888888888889758f76e7103c6cbf23abbf58f946/) | ⚠️ Unaudited |
| AfterMintHook | unknown | plasma | n/a | [`0x1b286d...4de53d`](./contracts/plasma-9745/0x1b286d4c12c9f7cc8a49836bd88d33ae804de53d/) | ⚠️ Unaudited |
| AllocationVoting | unknown | plasma | n/a | [`0x13dd80...043bb6`](./contracts/plasma-9745/0x13dd8034601ae91d1abcef4632083474fb043bb6/) | ⚠️ Unaudited |
| AssetsChecker | unknown | ethereum | n/a | [`0x16a139...cd8619`](./contracts/ethereum-1/0x16a139da0405eb9777ade4f5f0cc2416e5cd8619/) | ⚠️ Unaudited |
| AutoFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0x15dc4c...bbb56c`](./contracts/ethereum-1/0x15dc4c43b0d3283ae4f193bb8ac97181f4bbb56c/); ethereum `0x92c3a5...c665bf` | ⚠️ Unaudited |
| BeforeRedeemHook | unknown | plasma | n/a | [`0x44f949...a9c03b`](./contracts/plasma-9745/0x44f9499122a7434252aa7df727d9552c2ba9c03b/) | ⚠️ Unaudited |
| CapFarm | unknown | ethereum | n/a | 3 deployments: ethereum [`0x31fb25...24c731`](./contracts/ethereum-1/0x31fb2575d5ab1c370b0a612ac9ab569f2924c731/); ethereum `0x35f9eb...a06b87`; ethereum `0xac21b2...48b694` | ⚠️ Unaudited |
| CoWSwapFarm | unknown | ethereum | n/a | [`0x08ce17...baffa7`](./contracts/ethereum-1/0x08ce17d83b3bebb1c43a55a054d656ecbebaffa7/) | ⚠️ Unaudited |
| EmergencyWithdrawal | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa406af...fe26e9`](./contracts/ethereum-1/0xa406afc7967c63c5c454ad1f0e0db9a761fe26e9/); plasma `0xcb4416...dd44af` | ⚠️ Unaudited |
| ERC4626Farm | unknown | ethereum | n/a | 4 deployments: ethereum [`0x082de0...e00bb3`](./contracts/ethereum-1/0x082de04c51d3d5332af2d046923496b05ce00bb3/); ethereum `0x1484d6...65657a`; ethereum `0x4f6900...19ad88`; ethereum `0x6fbc44...a407a5` | ⚠️ Unaudited |
| ERC4626FarmWithMaturity | unknown | ethereum | n/a | [`0x76d2e8...c35b78`](./contracts/ethereum-1/0x76d2e84009dae457f8667d823c7c96e9a7c35b78/) | ⚠️ Unaudited |
| ERC4626Oracle | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x36cc59...245b2a`](./contracts/ethereum-1/0x36cc593972ec3dafa1b3344736d770962e245b2a/); ethereum `0x41646d...f66772`; ethereum `0x649243...94d95d`; ethereum `0xcb15a0...f7d4a7`; ethereum `0xe2d3f6...4b54d8`; ethereum `0xef985c...6889c2`; ethereum `0xfa503f...a0440e` | ⚠️ Unaudited |
| EUSDEMigrationFarm | operational_periphery | ethereum | n/a | [`0x6cb48b...5af976`](./contracts/ethereum-1/0x6cb48b801f449ba52c1a3477484f4405235af976/) | ⚠️ Unaudited |
| FarmRegistry | registry | plasma | n/a | [`0x73ab24...c88861`](./contracts/plasma-9745/0x73ab24e6b1e4e106cf95f0ffd393f39365c88861/) | ⚠️ Unaudited |
| FluidRewardsClaimer | operational_periphery | plasma | n/a | 3 deployments: ethereum `0xd0ec80...65241e`; plasma [`0x7ba3bc...4995a5`](./contracts/plasma-9745/0x7ba3bc4e47f9c44847caf58ba2e3957d984995a5/); plasma `0xc1fe7f...eb9bae` | ⚠️ Unaudited |
| FxSaveFarm | unknown | ethereum | n/a | [`0xc9c06c...9beabc`](./contracts/ethereum-1/0xc9c06c49ed83d12bca88bed999d4920f049beabc/) | ⚠️ Unaudited |
| GauntletAlphaFarm | unknown | ethereum | n/a | [`0x2f59b7...608c25`](./contracts/ethereum-1/0x2f59b7ee5aa0f7834b4526a015bc506a4c608c25/) | ⚠️ Unaudited |
| GPv2Settlement | unknown | ethereum | n/a | [`0x9008d1...60ab41`](./contracts/ethereum-1/0x9008d19f58aabd9ed0d60971565aa8510560ab41/) | ⚠️ Unaudited |
| InfiniFiCore | unknown | plasma | n/a | 2 deployments: plasma [`0x160300...5c1d8a`](./contracts/plasma-9745/0x160300d5c1ea377b823127d2d6668d43dd5c1d8a/); plasma `0x4b174a...327c32` | ⚠️ Unaudited |
| InfiniFiMintOVaultComposer | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x322135...ecc22d`](./contracts/ethereum-1/0x322135e7783cae3c61d30865ad653d7012ecc22d/); ethereum `0x728fab...714fad` | ⚠️ Unaudited |
| InfiniFiOFT | unknown | bsc | n/a | 2 deployments: bsc [`0x60b14e...ebdf09`](./contracts/bsc-56/0x60b14ec49874af1ba471685cb11132101aebdf09/); bsc `0x9fa120...9f1c10` | ⚠️ Unaudited |
| InfiniFiOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x5f2106...5bc3c0`](./contracts/ethereum-1/0x5f2106bb2a5aba6a783dbf29c8d3b09c175bc3c0/); ethereum `0xdd1cb2...cb3005` | ⚠️ Unaudited |
| InfiniFiReceiptTokenSYAdapter | adapter | plasma | n/a | [`0xf8b24d...120600`](./contracts/plasma-9745/0xf8b24d22153d86af79681e949ec2efaf75120600/) | ⚠️ Unaudited |
| InfiniFiStakeOVaultComposer | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3f59f8...8ae245`](./contracts/ethereum-1/0x3f59f82cb359b9332acaa48f999f4c92f38ae245/); ethereum `0x6375d2...1d71e9` | ⚠️ Unaudited |
| LevelFarm | unknown | ethereum | n/a | [`0x4be546...ca124c`](./contracts/ethereum-1/0x4be546155461d097a714ef2668893b0d10ca124c/) | ⚠️ Unaudited |
| LevelOracle | operational_periphery | ethereum | n/a | [`0xfbbc64...7d7e51`](./contracts/ethereum-1/0xfbbc645d82cbba7c20c37e477ef9c0032d7d7e51/) | ⚠️ Unaudited |
| LiquidationFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ad60c...07592a`](./contracts/ethereum-1/0x1ad60c683ea27bef74b2c27c221486880e07592a/); ethereum `0xda40ce...db1a11` | ⚠️ Unaudited |
| LockingController | governance | plasma | n/a | [`0x43c1c7...448d1c`](./contracts/plasma-9745/0x43c1c7399c8d54a82817b4ea3f79e6f68f448d1c/) | ⚠️ Unaudited |
| ManualRebalancer | adapter | ethereum | n/a | [`0x160300...5c1d8a`](./contracts/ethereum-1/0x160300d5c1ea377b823127d2d6668d43dd5c1d8a/) | ⚠️ Unaudited |
| MapleFarm | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5f9f59...a922f7`](./contracts/ethereum-1/0x5f9f597e020bb2b30e92180eee617f4f81a922f7/); ethereum `0x6e6e73...8c4acd`; ethereum `0xf56e94...8163b3` | ⚠️ Unaudited |
| MaturedFarmCleaner | unknown | ethereum | n/a | [`0x607b5a...d4fa56`](./contracts/ethereum-1/0x607b5ab25b2ed5575d296a1cafc3a17161d4fa56/) | ⚠️ Unaudited |
| MerklRewardsClaimer | operational_periphery | plasma | n/a | 2 deployments: plasma [`0x7a6724...b661c6`](./contracts/plasma-9745/0x7a67248a73f9763203d4cd0fc8ef1c22c1b661c6/); plasma `0x9b3bf0...396754` | ⚠️ Unaudited |
| MetaAggregationRouterV2 | adapter | ethereum | n/a | [`0x6131b5...6337b5`](./contracts/ethereum-1/0x6131b5fae19ea4f9d964eac0408e4408b66337b5/) | ⚠️ Unaudited |
| MidasFarm | unknown | ethereum | n/a | [`0x7373a7...d31679`](./contracts/ethereum-1/0x7373a7ce3c023c56cb66747afbdf827627d31679/) | ⚠️ Unaudited |
| MigrationController | operational_periphery | ethereum | n/a | [`0x5f5403...1839f8`](./contracts/ethereum-1/0x5f5403656e4db95accf1064a714b1bce351839f8/) | ⚠️ Unaudited |
| MinorRolesManager | governance | plasma | n/a | [`0x2c0dfa...c19fe7`](./contracts/plasma-9745/0x2c0dfada99dff7ada03952a39302a16be2c19fe7/) | ⚠️ Unaudited |
| MintController | governance | ethereum | n/a | 2 deployments: ethereum [`0x49877d...a4c256`](./contracts/ethereum-1/0x49877d937b9a00d50557bdc3d87287b5c3a4c256/); plasma `0x6f8a9e...33bc66` | ⚠️ Unaudited |
| OracleFactory | operational_periphery | ethereum | n/a | [`0xa2b300...19ed91`](./contracts/ethereum-1/0xa2b300c5d0e9250f646b20ec924efad36d19ed91/) | ⚠️ Unaudited |
| PendleInfinifiSIUSD | unknown | ethereum | unit-29333 | [`0x13dd80...043bb6`](./contracts/ethereum-1/0x13dd8034601ae91d1abcef4632083474fb043bb6/) | ⚠️ Unaudited |
| PLSmoother | unknown | ethereum | n/a | [`0xc32456...ed57a4`](./contracts/ethereum-1/0xc324569141697045b9ede54b5d4623a691ed57a4/) | ⚠️ Unaudited |
| PLSmootherHelper | periphery | ethereum | n/a | [`0x215c7f...b010b8`](./contracts/ethereum-1/0x215c7fa0e620fce99ed4891bccb7523388b010b8/) | ⚠️ Unaudited |
| PrimeBrokerFarm | unknown | ethereum | n/a | [`0xfd1ea1...a83de4`](./contracts/ethereum-1/0xfd1ea12d29b90630b265dbbc6af88266d1a83de4/) | ⚠️ Unaudited |
| RedeemController | governance | plasma | n/a | 2 deployments: ethereum `0xcb1747...ec7601`; plasma [`0xb6931f...f2616d`](./contracts/plasma-9745/0xb6931f0a698f4f40cbe0d79045dc2ec223f2616d/) | ⚠️ Unaudited |
| ReservoirFarm | unknown | ethereum | n/a | [`0x6f53c1...3d86de`](./contracts/ethereum-1/0x6f53c12243d2fe281cfdfc63601f8b4e713d86de/) | ⚠️ Unaudited |
| ResolvOracle | operational_periphery | ethereum | n/a | [`0x862bf0...d48171`](./contracts/ethereum-1/0x862bf0f4d43bb892aeccd6e6c43f34549ad48171/) | ⚠️ Unaudited |
| RWAEscrowFarm | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x04d552...9f3271`](./contracts/ethereum-1/0x04d5521ac09f8823338e8163dd8badaee39f3271/); ethereum `0x277fdf...0884c1`; ethereum `0x75b4d3...ffad5f`; ethereum `0x9e5efc...451852`; ethereum `0xe919c6...f181cf` | ⚠️ Unaudited |
| RWAEscrowRateManager | operational_periphery | ethereum | n/a | [`0x11f6fa...6d4189`](./contracts/ethereum-1/0x11f6fab3f4d8635880c3e80cbae8aef8136d4189/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-29335 | [`0x80608f...c2400c`](./contracts/ethereum-1/0x80608f852d152024c0a2087b16939235fec2400c/) | ⚠️ Unaudited |
| sGHOFarm | unknown | ethereum | n/a | [`0x7e9aa4...92158d`](./contracts/ethereum-1/0x7e9aa426abc2d9006e8c9881754baa00a392158d/) | ⚠️ Unaudited |
| SwapFarmV2 | unknown | ethereum | n/a | [`0xeb32a3...6b6fd7`](./contracts/ethereum-1/0xeb32a309405c72253d5db9ef28310a8ff56b6fd7/) | ⚠️ Unaudited |
| SwapFarmV2WithMaturity | unknown | ethereum | n/a | 3 deployments: ethereum [`0x75381e...ac568e`](./contracts/ethereum-1/0x75381e9bc6b908a2e9bc31a535fc48ceceac568e/); ethereum `0x84ff7e...3fe4ee`; ethereum `0xe945de...751ea4` | ⚠️ Unaudited |
| TestOFT | unknown | ethereum | n/a | [`0xa90c9b...79cb00`](./contracts/ethereum-1/0xa90c9bae9b1a41ced9639a652ba4162a2079cb00/) | ⚠️ Unaudited |
| Timelock | governance | plasma | n/a | 6 deployments: ethereum `0x3d1848...1c48a9`; ethereum `0x4b174a...327c32`; plasma [`0x0c206b...8927a3`](./contracts/plasma-9745/0x0c206b695d65aef7381a03352acf9fe2f48927a3/); plasma `0x3d1848...1c48a9`; plasma `0xd105b9...e71ae1`; plasma `0xd54c8f...108b3b` | ⚠️ Unaudited |
| UnstakeAndRedeemHelper | periphery | ethereum | n/a | [`0x4f0122...339dfe`](./contracts/ethereum-1/0x4f0122d43ab4893d5977fb0358b73cc178339dfe/) | ⚠️ Unaudited |
| UnwindingModule | unknown | plasma | n/a | [`0xbf69a4...752488`](./contracts/plasma-9745/0xbf69a4a09423e7ac37d5c7da0cd14f277f752488/) | ⚠️ Unaudited |
| YieldSharingV2 | unknown | plasma | n/a | 3 deployments: ethereum `0x1cb9ed...d1f579`; plasma [`0x133090...986c9c`](./contracts/plasma-9745/0x1330902050db4edac0d9d8ca33fdab5dbe986c9c/); plasma `0x9b5ae9...851282` | ⚠️ Unaudited |
| YieldSharingV3 | unknown | ethereum | n/a | [`0xf28a28...5642d9`](./contracts/ethereum-1/0xf28a28b4d14fa6614fe5270d147aa4a7df5642d9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FixedPriceOracle | operational_periphery | ethereum | n/a | 11 deployments: ethereum [`0x0b8325...6c1cb5`](./contracts/ethereum-1/0x0b832573f9aef9f045fa559366223abb086c1cb5/); ethereum `0x10f8ef...864dab`; ethereum `0x3d6270...c4af13`; ethereum `0x7ab218...753524`; ethereum `0xa53284...bd4bc1`; ethereum `0xb2dbfe...d46790`; ethereum `0xb52af3...745775`; ethereum `0xd16bf3...c3f3bf`; plasma `0x0cac05...1526a7`; plasma `0x2320eb...044445`; plasma `0xf7f724...8ab884` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PendleInfinifiSIUSD | unknown | ethereum | unit-29339 | `0x9f3050...9aa920` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x05266d...59863c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0a99b6...11ac04` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0afcd2...1430c1` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0e09aa...61cb99` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x10f8ef...864dab` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x119c12...29035c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x132c45...dccf1b` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x19f241...51b076` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1cb58c...36b050` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1d2ed9...ed9f5c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x227f23...d6dbac` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x234546...7a0ceb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x2ab982...16dd03` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x2e13c3...f8a19f` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x3f04b6...7625b5` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x4167c3...c78fb3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x43cc95...d361e5` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x456ab3...410dbe` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x4b2bfe...f61395` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x4de0b0...0713db` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x5feaad...c52777` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x60a0c8...fecab2` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x669345...27c95c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x6fbc44...a407a5` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x7693b3...7af86d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x7954d5...296d33` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x872909...6e71ad` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x8a98c4...25ca6e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x929335...77842a` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x944637...d1afa2` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x990150...698eeb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9f3050...9aa920` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9ff50a...7356ba` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xa2b300...19ed91` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xa4ad55...3ccdc7` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xa5e0a9...1dfc3b` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xac32d4...f6eb25` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xb5734d...ae2a81` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xbfd5fc...1c3580` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xcfdd5c...76a4f5` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xd91edc...11bdb8` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xf31ec6...e5c37b` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfa10e3...a3da4f` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfc4909...dc9497` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Ackee-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Ackee/Ackee-Part%201.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/ChainSecurity.pdf) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Dedaub-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Dedaub/Dedaub-Part%201.pdf) | Dedaub | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Spearbit.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Spearbit.pdf) | Spearbit | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [WatchPug-LpOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-LpOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [WatchPug-Part 1 Follow Up 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201%20Follow%20Up%201.pdf) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WatchPug-Part 1 Follow Up 2.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201%20Follow%20Up%202.pdf) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WatchPug-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201.pdf) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WatchPug-Part 2.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%202.pdf) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WatchPug-PtOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-PtOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [WatchPug-SparkLinearDiscountOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-SparkLinearDiscountOracle.pdf) | WatchPug | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [WatchPug-sAPE.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-sAPE.pdf) | WatchPug | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 108 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4769] Ackee-Part 1.pdf
- [4772] ChainSecurity.pdf
- [4773] Dedaub-Part 1.pdf
- [4776] Spearbit.pdf
- [4777] WatchPug-LpOracle.pdf
- [4778] WatchPug-Part 1 Follow Up 1.pdf
- [4779] WatchPug-Part 1 Follow Up 2.pdf
- [4780] WatchPug-Part 1.pdf
- [4781] WatchPug-Part 2.pdf
- [4782] WatchPug-PtOracle.pdf
- [4783] WatchPug-SparkLinearDiscountOracle.pdf
- [4784] WatchPug-sAPE.pdf

Fork inheritance lineage and inherited audits are included when available.
