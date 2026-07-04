# Agentic Audit Brief: infiniFi

## Project Overview

- Project: infiniFi (`infinifi`)
- Website: [https://infinifi.xyz](https://infinifi.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.951Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, bsc, ethereum, plasma
- Contract surface: 129 unique implementations (216 raw deployments)
- DeFi Llama TVL: $65,241,398.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 77 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 21 common project-authored base contract(s) (maturityfarm, farm, erc20permit). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 216; live-surface contracts included: 216 (160 live, 56 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/71 (1.4%)
- Deployed-live implementations: 74 of 129 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/75
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 129
- Raw deployments: 216
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 1.4% (ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 1.3% | 2024-08 |
| Spearbit | Tier 1 | 1 | 1.3% | 2024-07 |
| WatchPug | Tier 2 | 1 | 1.3% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OracleLib | unknown | ethereum | n/a | [`0x02176d...c10ecc`](./contracts/ethereum-1/0x02176d640657740539f70eea98501ebbf1c10ecc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Accounting | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a5c5d...e842b3`](./contracts/ethereum-1/0x7a5c5dba4fbd0e1e1a2ecdbe752fae55f6e842b3/); plasma `0xdeb028...ce765f` | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | ethereum | n/a | [`0x888888...58f946`](./contracts/ethereum-1/0x888888888889758f76e7103c6cbf23abbf58f946/) | ⚠️ Unaudited |
| AfterMintHook | unknown | plasma | n/a | 2 deployments: ethereum `0xa5e274...4797a8`; plasma [`0x1b286d...4de53d`](./contracts/plasma-9745/0x1b286d4c12c9f7cc8a49836bd88d33ae804de53d/) | ⚠️ Unaudited |
| AllocationVoting | unknown | plasma | n/a | 2 deployments: ethereum `0x49fa67...0ff853`; plasma [`0x13dd80...043bb6`](./contracts/plasma-9745/0x13dd8034601ae91d1abcef4632083474fb043bb6/) | ⚠️ Unaudited |
| AssetsChecker | unknown | ethereum | n/a | [`0x16a139...cd8619`](./contracts/ethereum-1/0x16a139da0405eb9777ade4f5f0cc2416e5cd8619/) | ⚠️ Unaudited |
| AutoFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0x15dc4c...bbb56c`](./contracts/ethereum-1/0x15dc4c43b0d3283ae4f193bb8ac97181f4bbb56c/); ethereum `0x92c3a5...c665bf` | ⚠️ Unaudited |
| BeforeRedeemHook | unknown | plasma | n/a | 2 deployments: ethereum `0x4b2bfe...f61395`; plasma [`0x44f949...a9c03b`](./contracts/plasma-9745/0x44f9499122a7434252aa7df727d9552c2ba9c03b/) | ⚠️ Unaudited |
| CapFarm | unknown | ethereum | n/a | 3 deployments: ethereum [`0x31fb25...24c731`](./contracts/ethereum-1/0x31fb2575d5ab1c370b0a612ac9ab569f2924c731/); ethereum `0x35f9eb...a06b87`; ethereum `0xac21b2...48b694` | ⚠️ Unaudited |
| CoWSwapFarm | unknown | ethereum | n/a | [`0x08ce17...baffa7`](./contracts/ethereum-1/0x08ce17d83b3bebb1c43a55a054d656ecbebaffa7/) | ⚠️ Unaudited |
| EmergencyWithdrawal | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa406af...fe26e9`](./contracts/ethereum-1/0xa406afc7967c63c5c454ad1f0e0db9a761fe26e9/); plasma `0xcb4416...dd44af` | ⚠️ Unaudited |
| ERC4626Farm | unknown | ethereum | n/a | 8 deployments: ethereum [`0x05b9e7...a97e93`](./contracts/ethereum-1/0x05b9e728e93d090aa896b96d96ad215b6ca97e93/); ethereum `0x082de0...e00bb3`; ethereum `0x1484d6...65657a`; ethereum `0x1d2ed9...ed9f5c`; ethereum `0x4f6900...19ad88`; ethereum `0x6fbc44...a407a5`; ethereum `0xbafdc4...e8d527`; ethereum `0xf7f724...8ab884` | ⚠️ Unaudited |
| ERC4626FarmWithMaturity | unknown | ethereum | n/a | [`0x76d2e8...c35b78`](./contracts/ethereum-1/0x76d2e84009dae457f8667d823c7c96e9a7c35b78/) | ⚠️ Unaudited |
| ERC4626Oracle | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x36cc59...245b2a`](./contracts/ethereum-1/0x36cc593972ec3dafa1b3344736d770962e245b2a/); ethereum `0x41646d...f66772`; ethereum `0x649243...94d95d`; ethereum `0xcb15a0...f7d4a7`; ethereum `0xe2d3f6...4b54d8`; ethereum `0xef985c...6889c2`; ethereum `0xfa503f...a0440e` | ⚠️ Unaudited |
| EUSDEMigrationFarm | operational_periphery | ethereum | n/a | [`0x6cb48b...5af976`](./contracts/ethereum-1/0x6cb48b801f449ba52c1a3477484f4405235af976/) | ⚠️ Unaudited |
| FarmRegistry | registry | plasma | n/a | 2 deployments: ethereum `0xf5f271...c46119`; plasma [`0x73ab24...c88861`](./contracts/plasma-9745/0x73ab24e6b1e4e106cf95f0ffd393f39365c88861/) | ⚠️ Unaudited |
| FixedPriceOracle | operational_periphery | ethereum | n/a | 13 deployments: ethereum [`0x0b8325...6c1cb5`](./contracts/ethereum-1/0x0b832573f9aef9f045fa559366223abb086c1cb5/); ethereum `0x10f8ef...864dab`; ethereum `0x2630bb...d05083`; ethereum `0x3d6270...c4af13`; ethereum `0x51fc27...cff758`; ethereum `0x64b32f...e2e8f5`; ethereum `0x7ab218...753524`; ethereum `0x8abc95...b344c1`; ethereum `0xa53284...bd4bc1`; ethereum `0xb2dbfe...d46790`; ethereum `0xb52af3...745775`; ethereum `0xd15270...a3a79b`; ethereum `0xd16bf3...c3f3bf` | ⚠️ Unaudited |
| FluidRewardsClaimer | operational_periphery | plasma | n/a | 3 deployments: ethereum `0xd0ec80...65241e`; plasma [`0x7ba3bc...4995a5`](./contracts/plasma-9745/0x7ba3bc4e47f9c44847caf58ba2e3957d984995a5/); plasma `0xc1fe7f...eb9bae` | ⚠️ Unaudited |
| FxSaveFarm | unknown | ethereum | n/a | [`0xc9c06c...9beabc`](./contracts/ethereum-1/0xc9c06c49ed83d12bca88bed999d4920f049beabc/) | ⚠️ Unaudited |
| GauntletAlphaFarm | unknown | ethereum | n/a | [`0x2f59b7...608c25`](./contracts/ethereum-1/0x2f59b7ee5aa0f7834b4526a015bc506a4c608c25/) | ⚠️ Unaudited |
| GPv2Settlement | unknown | ethereum | n/a | [`0x9008d1...60ab41`](./contracts/ethereum-1/0x9008d19f58aabd9ed0d60971565aa8510560ab41/) | ⚠️ Unaudited |
| InfiniFiCore | unknown | plasma | n/a | 3 deployments: ethereum `0xf6d487...d25490`; plasma [`0x160300...5c1d8a`](./contracts/plasma-9745/0x160300d5c1ea377b823127d2d6668d43dd5c1d8a/); plasma `0x4b174a...327c32` | ⚠️ Unaudited |
| InfiniFiGatewayV1 | unknown | ethereum | n/a | [`0x7954d5...296d33`](./contracts/ethereum-1/0x7954d563cbd9ee121a77805bce5fe3c44f296d33/) | ⚠️ Unaudited |
| InfiniFiGatewayV2 | unknown | ethereum | n/a | [`0xd04b37...1fb41f`](./contracts/ethereum-1/0xd04b37f673c42baa46923fe74a830bae721fb41f/) | ⚠️ Unaudited |
| InfiniFiGatewayV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f04b6...7625b5`](./contracts/ethereum-1/0x3f04b65ddbd87f9ce0a2e7eb24d80e7fb87625b5/); ethereum `0xb44e49...fbffb6` | ⚠️ Unaudited |
| InfiniFiGatewayV3 | unknown | plasma | n/a | 2 deployments: plasma [`0x64d9c2...cc98a0`](./contracts/plasma-9745/0x64d9c2fc3c1bd36fec425edd78b67dfc5dcc98a0/); plasma `0x7a3e70...578692` | ⚠️ Unaudited |
| InfiniFiMintOVaultComposer | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x322135...ecc22d`](./contracts/ethereum-1/0x322135e7783cae3c61d30865ad653d7012ecc22d/); ethereum `0x728fab...714fad` | ⚠️ Unaudited |
| InfiniFiOFT | unknown | bsc | n/a | 2 deployments: bsc [`0x60b14e...ebdf09`](./contracts/bsc-56/0x60b14ec49874af1ba471685cb11132101aebdf09/); bsc `0x9fa120...9f1c10` | ⚠️ Unaudited |
| InfiniFiOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x5f2106...5bc3c0`](./contracts/ethereum-1/0x5f2106bb2a5aba6a783dbf29c8d3b09c175bc3c0/); ethereum `0xdd1cb2...cb3005` | ⚠️ Unaudited |
| InfiniFiReceiptTokenSYAdapter | adapter | plasma | n/a | [`0xf8b24d...120600`](./contracts/plasma-9745/0xf8b24d22153d86af79681e949ec2efaf75120600/) | ⚠️ Unaudited |
| InfiniFiStakedTokenSY | unknown | plasma | n/a | 2 deployments: plasma [`0xabd98b...fe83c7`](./contracts/plasma-9745/0xabd98b466196ca3d29e0a2a7859e151a31fe83c7/); plasma `0xeb32a3...6b6fd7` | ⚠️ Unaudited |
| InfiniFiStakeOVaultComposer | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3f59f8...8ae245`](./contracts/ethereum-1/0x3f59f82cb359b9332acaa48f999f4c92f38ae245/); ethereum `0x6375d2...1d71e9` | ⚠️ Unaudited |
| LevelFarm | unknown | ethereum | n/a | [`0x4be546...ca124c`](./contracts/ethereum-1/0x4be546155461d097a714ef2668893b0d10ca124c/) | ⚠️ Unaudited |
| LevelOracle | operational_periphery | ethereum | n/a | [`0xfbbc64...7d7e51`](./contracts/ethereum-1/0xfbbc645d82cbba7c20c37e477ef9c0032d7d7e51/) | ⚠️ Unaudited |
| LiquidationFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ad60c...07592a`](./contracts/ethereum-1/0x1ad60c683ea27bef74b2c27c221486880e07592a/); ethereum `0xda40ce...db1a11` | ⚠️ Unaudited |
| LockedPositionToken | token | ethereum | n/a | 13 deployments: ethereum [`0x12b004...258442`](./contracts/ethereum-1/0x12b004719fb632f1e7c010c6f5d6009fb4258442/); ethereum `0x3a744a...2cf8bb`; ethereum `0x3d360a...c2d644`; ethereum `0x66bcf6...156078`; ethereum `0xb06cc4...bc9707`; ethereum `0xbb5ca7...c912e1`; ethereum `0xbd3f98...bf087a`; ethereum `0xd15fbf...cc26d5`; ethereum `0xed030a...be4fcd`; ethereum `0xed2a36...444a0a`; ethereum `0xf0c4a7...57d7d1`; ethereum `0xf1839b...8ff361`; ethereum `0xf68b95...215085` | ⚠️ Unaudited |
| LockingController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d95cc...037ff7`](./contracts/ethereum-1/0x1d95cc100d6cd9c7bbdbd7cb328d99b3d6037ff7/); plasma `0x43c1c7...448d1c` | ⚠️ Unaudited |
| ManualRebalancer | adapter | ethereum | n/a | [`0x160300...5c1d8a`](./contracts/ethereum-1/0x160300d5c1ea377b823127d2d6668d43dd5c1d8a/) | ⚠️ Unaudited |
| MapleFarm | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5f9f59...a922f7`](./contracts/ethereum-1/0x5f9f597e020bb2b30e92180eee617f4f81a922f7/); ethereum `0x6e6e73...8c4acd`; ethereum `0xf56e94...8163b3` | ⚠️ Unaudited |
| MaturedFarmCleaner | unknown | ethereum | n/a | [`0x607b5a...d4fa56`](./contracts/ethereum-1/0x607b5ab25b2ed5575d296a1cafc3a17161d4fa56/) | ⚠️ Unaudited |
| MerklRewardsClaimer | operational_periphery | plasma | n/a | 2 deployments: plasma [`0x7a6724...b661c6`](./contracts/plasma-9745/0x7a67248a73f9763203d4cd0fc8ef1c22c1b661c6/); plasma `0x9b3bf0...396754` | ⚠️ Unaudited |
| MetaAggregationRouterV2 | adapter | ethereum | n/a | [`0x6131b5...6337b5`](./contracts/ethereum-1/0x6131b5fae19ea4f9d964eac0408e4408b66337b5/) | ⚠️ Unaudited |
| MidasFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7373a7...d31679`](./contracts/ethereum-1/0x7373a7ce3c023c56cb66747afbdf827627d31679/); ethereum `0xf4ea3e...c4cecf` | ⚠️ Unaudited |
| MigrationController | operational_periphery | ethereum | n/a | [`0x5f5403...1839f8`](./contracts/ethereum-1/0x5f5403656e4db95accf1064a714b1bce351839f8/) | ⚠️ Unaudited |
| MinorRolesManager | governance | plasma | n/a | 2 deployments: ethereum `0xa08bf8...66be9b`; plasma [`0x2c0dfa...c19fe7`](./contracts/plasma-9745/0x2c0dfada99dff7ada03952a39302a16be2c19fe7/) | ⚠️ Unaudited |
| MintController | governance | ethereum | n/a | 2 deployments: ethereum [`0x49877d...a4c256`](./contracts/ethereum-1/0x49877d937b9a00d50557bdc3d87287b5c3a4c256/); plasma `0x6f8a9e...33bc66` | ⚠️ Unaudited |
| OracleFactory | operational_periphery | ethereum | n/a | [`0xa2b300...19ed91`](./contracts/ethereum-1/0xa2b300c5d0e9250f646b20ec924efad36d19ed91/) | ⚠️ Unaudited |
| OVault_iUSD_siUSD | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6345d9...a47fef`](./contracts/ethereum-1/0x6345d938a607b8f5da825d1670b4890f5aa47fef/); ethereum `0xea52ce...59f3a3` | ⚠️ Unaudited |
| OVault_USDC_iUSD | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x5ddbdc...55f105`](./contracts/ethereum-1/0x5ddbdc875ae800b1d61cc8c49324f259ef55f105/); ethereum `0xefaf2b...02ab00` | ⚠️ Unaudited |
| OVault_USDC_siUSD | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x6fac6a...6491f7`](./contracts/ethereum-1/0x6fac6ab52d43e11b04f1587db00d5240e86491f7/); ethereum `0xdc78ff...0bf016` | ⚠️ Unaudited |
| PendleCamelotV1VolatileSY | unknown | arbitrum | n/a | [`0x239c7c...64c56e`](./contracts/arbitrum-42161/0x239c7c530f194e9e00856b5c55a95d485f64c56e/) | ⚠️ Unaudited |
| PendleInfinifiSIUSD | unknown | ethereum | n/a | [`0x13dd80...043bb6`](./contracts/ethereum-1/0x13dd8034601ae91d1abcef4632083474fb043bb6/) | ⚠️ Unaudited |
| PLSmoother | unknown | ethereum | n/a | [`0xc32456...ed57a4`](./contracts/ethereum-1/0xc324569141697045b9ede54b5d4623a691ed57a4/) | ⚠️ Unaudited |
| PLSmootherHelper | periphery | ethereum | n/a | [`0x215c7f...b010b8`](./contracts/ethereum-1/0x215c7fa0e620fce99ed4891bccb7523388b010b8/) | ⚠️ Unaudited |
| PrimeBrokerFarm | unknown | ethereum | n/a | [`0xfd1ea1...a83de4`](./contracts/ethereum-1/0xfd1ea12d29b90630b265dbbc6af88266d1a83de4/) | ⚠️ Unaudited |
| ReceiptToken | token | ethereum | n/a | 2 deployments: ethereum [`0x48f9e3...e3d89c`](./contracts/ethereum-1/0x48f9e38f3070ad8945dfeae3fa70987722e3d89c/); plasma `0x626c23...134d54` | ⚠️ Unaudited |
| RedeemController | governance | plasma | n/a | 2 deployments: ethereum `0xcb1747...ec7601`; plasma [`0xb6931f...f2616d`](./contracts/plasma-9745/0xb6931f0a698f4f40cbe0d79045dc2ec223f2616d/) | ⚠️ Unaudited |
| ReservoirFarm | unknown | ethereum | n/a | [`0x6f53c1...3d86de`](./contracts/ethereum-1/0x6f53c12243d2fe281cfdfc63601f8b4e713d86de/) | ⚠️ Unaudited |
| ResolvOracle | operational_periphery | ethereum | n/a | [`0x862bf0...d48171`](./contracts/ethereum-1/0x862bf0f4d43bb892aeccd6e6c43f34549ad48171/) | ⚠️ Unaudited |
| RWAEscrowFarm | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x04d552...9f3271`](./contracts/ethereum-1/0x04d5521ac09f8823338e8163dd8badaee39f3271/); ethereum `0x277fdf...0884c1`; ethereum `0x75b4d3...ffad5f`; ethereum `0x9e5efc...451852`; ethereum `0xe919c6...f181cf` | ⚠️ Unaudited |
| RWAEscrowRateManager | operational_periphery | ethereum | n/a | [`0x11f6fa...6d4189`](./contracts/ethereum-1/0x11f6fab3f4d8635880c3e80cbae8aef8136d4189/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x80608f...c2400c`](./contracts/ethereum-1/0x80608f852d152024c0a2087b16939235fec2400c/) | ⚠️ Unaudited |
| sGHOFarm | unknown | ethereum | n/a | [`0x7e9aa4...92158d`](./contracts/ethereum-1/0x7e9aa426abc2d9006e8c9881754baa00a392158d/) | ⚠️ Unaudited |
| StakedToken | token | ethereum | n/a | 2 deployments: ethereum [`0xdbdc1e...389bcb`](./contracts/ethereum-1/0xdbdc1ef57537e34680b898e1febd3d68c7389bcb/); plasma `0xe335ab...c39afd` | ⚠️ Unaudited |
| SwapFarmV2 | unknown | ethereum | n/a | [`0xeb32a3...6b6fd7`](./contracts/ethereum-1/0xeb32a309405c72253d5db9ef28310a8ff56b6fd7/) | ⚠️ Unaudited |
| SwapFarmV2WithMaturity | unknown | ethereum | n/a | 3 deployments: ethereum [`0x75381e...ac568e`](./contracts/ethereum-1/0x75381e9bc6b908a2e9bc31a535fc48ceceac568e/); ethereum `0x84ff7e...3fe4ee`; ethereum `0xe945de...751ea4` | ⚠️ Unaudited |
| TestOFT | unknown | ethereum | n/a | [`0xa90c9b...79cb00`](./contracts/ethereum-1/0xa90c9bae9b1a41ced9639a652ba4162a2079cb00/) | ⚠️ Unaudited |
| Timelock | governance | plasma | n/a | 6 deployments: ethereum `0x3d1848...1c48a9`; ethereum `0x4b174a...327c32`; plasma [`0x0c206b...8927a3`](./contracts/plasma-9745/0x0c206b695d65aef7381a03352acf9fe2f48927a3/); plasma `0x3d1848...1c48a9`; plasma `0xd105b9...e71ae1`; plasma `0xd54c8f...108b3b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0xad8e0c...af8b26`](./contracts/plasma-9745/0xad8e0c5db0057370e143a6a20ee2720298af8b26/); plasma `0xec59c2...c70a9a` | ⚠️ Unaudited |
| UnstakeAndRedeemHelper | periphery | ethereum | n/a | [`0x4f0122...339dfe`](./contracts/ethereum-1/0x4f0122d43ab4893d5977fb0358b73cc178339dfe/) | ⚠️ Unaudited |
| UnwindingModule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7092a4...b3dfcc`](./contracts/ethereum-1/0x7092a43ae5407666c78dbea657a1891f42b3dfcc/); plasma `0xbf69a4...752488` | ⚠️ Unaudited |
| YieldSharing | unknown | ethereum | n/a | [`0x9e8b92...aea967`](./contracts/ethereum-1/0x9e8b926a0eb276eb380fb8282ea20c2a2faea967/) | ⚠️ Unaudited |
| YieldSharingV2 | unknown | plasma | n/a | 3 deployments: ethereum `0x1cb9ed...d1f579`; plasma [`0x133090...986c9c`](./contracts/plasma-9745/0x1330902050db4edac0d9d8ca33fdab5dbe986c9c/); plasma `0x9b5ae9...851282` | ⚠️ Unaudited |
| YieldSharingV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d5dbf...1407e5`](./contracts/ethereum-1/0x0d5dbf208a9a7540018d204a9a0ad08a091407e5/); ethereum `0x90e91f...bbae3b` | ⚠️ Unaudited |
| YieldSharingV3 | unknown | ethereum | n/a | [`0xf28a28...5642d9`](./contracts/ethereum-1/0xf28a28b4d14fa6614fe5270d147aa4a7df5642d9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PendleInfinifiSIUSD | unknown | ethereum | n/a | `0x9f3050...9aa920` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d5702...4a37fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x555b6e...7a1fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaa00a...880597` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcde3eb...a5eac2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1b474...40abf4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf294ad...c136fc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x05266d...59863c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0a99b6...11ac04` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0afcd2...1430c1` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0cac05...1526a7` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0e09aa...61cb99` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x10f8ef...864dab` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x119c12...29035c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x132c45...dccf1b` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x19f241...51b076` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1cb58c...36b050` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1d2ed9...ed9f5c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x227f23...d6dbac` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x2320eb...044445` | ❓ Unverified |
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
| UnnamedContract | unknown | plasma | n/a | `0xf7f724...8ab884` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfa10e3...a3da4f` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfc4909...dc9497` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Ackee-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Ackee/Ackee-Part%201.pdf) | Ackee Blockchain | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [ChainSecurity.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/ChainSecurity.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |
| [Dedaub-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Dedaub/Dedaub-Part%201.pdf) | Dedaub | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [Spearbit.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Spearbit.pdf) | Spearbit | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [WatchPug-LpOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-LpOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [WatchPug-Part 1 Follow Up 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201%20Follow%20Up%201.pdf) | WatchPug | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [WatchPug-Part 1 Follow Up 2.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201%20Follow%20Up%202.pdf) | WatchPug | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [WatchPug-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201.pdf) | WatchPug | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [WatchPug-Part 2.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%202.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [WatchPug-PtOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-PtOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [WatchPug-SparkLinearDiscountOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-SparkLinearDiscountOracle.pdf) | WatchPug | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [WatchPug-sAPE.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-sAPE.pdf) | WatchPug | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7a5c5d...e842b3`](./contracts/ethereum-1/0x7a5c5dba4fbd0e1e1a2ecdbe752fae55f6e842b3/) | Accounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x888888...58f946`](./contracts/ethereum-1/0x888888888889758f76e7103c6cbf23abbf58f946/) | ActionAddRemoveLiqV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x1b286d...4de53d`](./contracts/plasma-9745/0x1b286d4c12c9f7cc8a49836bd88d33ae804de53d/) | AfterMintHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x13dd80...043bb6`](./contracts/plasma-9745/0x13dd8034601ae91d1abcef4632083474fb043bb6/) | AllocationVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16a139...cd8619`](./contracts/ethereum-1/0x16a139da0405eb9777ade4f5f0cc2416e5cd8619/) | AssetsChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15dc4c...bbb56c`](./contracts/ethereum-1/0x15dc4c43b0d3283ae4f193bb8ac97181f4bbb56c/) | AutoFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x44f949...a9c03b`](./contracts/plasma-9745/0x44f9499122a7434252aa7df727d9552c2ba9c03b/) | BeforeRedeemHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31fb25...24c731`](./contracts/ethereum-1/0x31fb2575d5ab1c370b0a612ac9ab569f2924c731/) | CapFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08ce17...baffa7`](./contracts/ethereum-1/0x08ce17d83b3bebb1c43a55a054d656ecbebaffa7/) | CoWSwapFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa406af...fe26e9`](./contracts/ethereum-1/0xa406afc7967c63c5c454ad1f0e0db9a761fe26e9/) | EmergencyWithdrawal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05b9e7...a97e93`](./contracts/ethereum-1/0x05b9e728e93d090aa896b96d96ad215b6ca97e93/) | ERC4626Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76d2e8...c35b78`](./contracts/ethereum-1/0x76d2e84009dae457f8667d823c7c96e9a7c35b78/) | ERC4626FarmWithMaturity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36cc59...245b2a`](./contracts/ethereum-1/0x36cc593972ec3dafa1b3344736d770962e245b2a/) | ERC4626Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cb48b...5af976`](./contracts/ethereum-1/0x6cb48b801f449ba52c1a3477484f4405235af976/) | EUSDEMigrationFarm | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x73ab24...c88861`](./contracts/plasma-9745/0x73ab24e6b1e4e106cf95f0ffd393f39365c88861/) | FarmRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b8325...6c1cb5`](./contracts/ethereum-1/0x0b832573f9aef9f045fa559366223abb086c1cb5/) | FixedPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x7ba3bc...4995a5`](./contracts/plasma-9745/0x7ba3bc4e47f9c44847caf58ba2e3957d984995a5/) | FluidRewardsClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9c06c...9beabc`](./contracts/ethereum-1/0xc9c06c49ed83d12bca88bed999d4920f049beabc/) | FxSaveFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9008d1...60ab41`](./contracts/ethereum-1/0x9008d19f58aabd9ed0d60971565aa8510560ab41/) | GPv2Settlement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x160300...5c1d8a`](./contracts/plasma-9745/0x160300d5c1ea377b823127d2d6668d43dd5c1d8a/) | InfiniFiCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7954d5...296d33`](./contracts/ethereum-1/0x7954d563cbd9ee121a77805bce5fe3c44f296d33/) | InfiniFiGatewayV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd04b37...1fb41f`](./contracts/ethereum-1/0xd04b37f673c42baa46923fe74a830bae721fb41f/) | InfiniFiGatewayV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f04b6...7625b5`](./contracts/ethereum-1/0x3f04b65ddbd87f9ce0a2e7eb24d80e7fb87625b5/) | InfiniFiGatewayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x64d9c2...cc98a0`](./contracts/plasma-9745/0x64d9c2fc3c1bd36fec425edd78b67dfc5dcc98a0/) | InfiniFiGatewayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x322135...ecc22d`](./contracts/ethereum-1/0x322135e7783cae3c61d30865ad653d7012ecc22d/) | InfiniFiMintOVaultComposer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x60b14e...ebdf09`](./contracts/bsc-56/0x60b14ec49874af1ba471685cb11132101aebdf09/) | InfiniFiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f2106...5bc3c0`](./contracts/ethereum-1/0x5f2106bb2a5aba6a783dbf29c8d3b09c175bc3c0/) | InfiniFiOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xf8b24d...120600`](./contracts/plasma-9745/0xf8b24d22153d86af79681e949ec2efaf75120600/) | InfiniFiReceiptTokenSYAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xabd98b...fe83c7`](./contracts/plasma-9745/0xabd98b466196ca3d29e0a2a7859e151a31fe83c7/) | InfiniFiStakedTokenSY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f59f8...8ae245`](./contracts/ethereum-1/0x3f59f82cb359b9332acaa48f999f4c92f38ae245/) | InfiniFiStakeOVaultComposer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4be546...ca124c`](./contracts/ethereum-1/0x4be546155461d097a714ef2668893b0d10ca124c/) | LevelFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbbc64...7d7e51`](./contracts/ethereum-1/0xfbbc645d82cbba7c20c37e477ef9c0032d7d7e51/) | LevelOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ad60c...07592a`](./contracts/ethereum-1/0x1ad60c683ea27bef74b2c27c221486880e07592a/) | LiquidationFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12b004...258442`](./contracts/ethereum-1/0x12b004719fb632f1e7c010c6f5d6009fb4258442/) | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d95cc...037ff7`](./contracts/ethereum-1/0x1d95cc100d6cd9c7bbdbd7cb328d99b3d6037ff7/) | LockingController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x160300...5c1d8a`](./contracts/ethereum-1/0x160300d5c1ea377b823127d2d6668d43dd5c1d8a/) | ManualRebalancer | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f9f59...a922f7`](./contracts/ethereum-1/0x5f9f597e020bb2b30e92180eee617f4f81a922f7/) | MapleFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x607b5a...d4fa56`](./contracts/ethereum-1/0x607b5ab25b2ed5575d296a1cafc3a17161d4fa56/) | MaturedFarmCleaner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x7a6724...b661c6`](./contracts/plasma-9745/0x7a67248a73f9763203d4cd0fc8ef1c22c1b661c6/) | MerklRewardsClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6131b5...6337b5`](./contracts/ethereum-1/0x6131b5fae19ea4f9d964eac0408e4408b66337b5/) | MetaAggregationRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7373a7...d31679`](./contracts/ethereum-1/0x7373a7ce3c023c56cb66747afbdf827627d31679/) | MidasFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f5403...1839f8`](./contracts/ethereum-1/0x5f5403656e4db95accf1064a714b1bce351839f8/) | MigrationController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x2c0dfa...c19fe7`](./contracts/plasma-9745/0x2c0dfada99dff7ada03952a39302a16be2c19fe7/) | MinorRolesManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49877d...a4c256`](./contracts/ethereum-1/0x49877d937b9a00d50557bdc3d87287b5c3a4c256/) | MintController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2b300...19ed91`](./contracts/ethereum-1/0xa2b300c5d0e9250f646b20ec924efad36d19ed91/) | OracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6345d9...a47fef`](./contracts/ethereum-1/0x6345d938a607b8f5da825d1670b4890f5aa47fef/) | OVault_iUSD_siUSD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ddbdc...55f105`](./contracts/ethereum-1/0x5ddbdc875ae800b1d61cc8c49324f259ef55f105/) | OVault_USDC_iUSD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fac6a...6491f7`](./contracts/ethereum-1/0x6fac6ab52d43e11b04f1587db00d5240e86491f7/) | OVault_USDC_siUSD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc32456...ed57a4`](./contracts/ethereum-1/0xc324569141697045b9ede54b5d4623a691ed57a4/) | PLSmoother | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x215c7f...b010b8`](./contracts/ethereum-1/0x215c7fa0e620fce99ed4891bccb7523388b010b8/) | PLSmootherHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd1ea1...a83de4`](./contracts/ethereum-1/0xfd1ea12d29b90630b265dbbc6af88266d1a83de4/) | PrimeBrokerFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48f9e3...e3d89c`](./contracts/ethereum-1/0x48f9e38f3070ad8945dfeae3fa70987722e3d89c/) | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xb6931f...f2616d`](./contracts/plasma-9745/0xb6931f0a698f4f40cbe0d79045dc2ec223f2616d/) | RedeemController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f53c1...3d86de`](./contracts/ethereum-1/0x6f53c12243d2fe281cfdfc63601f8b4e713d86de/) | ReservoirFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x862bf0...d48171`](./contracts/ethereum-1/0x862bf0f4d43bb892aeccd6e6c43f34549ad48171/) | ResolvOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04d552...9f3271`](./contracts/ethereum-1/0x04d5521ac09f8823338e8163dd8badaee39f3271/) | RWAEscrowFarm | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11f6fa...6d4189`](./contracts/ethereum-1/0x11f6fab3f4d8635880c3e80cbae8aef8136d4189/) | RWAEscrowRateManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e9aa4...92158d`](./contracts/ethereum-1/0x7e9aa426abc2d9006e8c9881754baa00a392158d/) | sGHOFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbdc1e...389bcb`](./contracts/ethereum-1/0xdbdc1ef57537e34680b898e1febd3d68c7389bcb/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb32a3...6b6fd7`](./contracts/ethereum-1/0xeb32a309405c72253d5db9ef28310a8ff56b6fd7/) | SwapFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75381e...ac568e`](./contracts/ethereum-1/0x75381e9bc6b908a2e9bc31a535fc48ceceac568e/) | SwapFarmV2WithMaturity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa90c9b...79cb00`](./contracts/ethereum-1/0xa90c9bae9b1a41ced9639a652ba4162a2079cb00/) | TestOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x0c206b...8927a3`](./contracts/plasma-9745/0x0c206b695d65aef7381a03352acf9fe2f48927a3/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f0122...339dfe`](./contracts/ethereum-1/0x4f0122d43ab4893d5977fb0358b73cc178339dfe/) | UnstakeAndRedeemHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7092a4...b3dfcc`](./contracts/ethereum-1/0x7092a43ae5407666c78dbea657a1891f42b3dfcc/) | UnwindingModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e8b92...aea967`](./contracts/ethereum-1/0x9e8b926a0eb276eb380fb8282ea20c2a2faea967/) | YieldSharing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x133090...986c9c`](./contracts/plasma-9745/0x1330902050db4edac0d9d8ca33fdab5dbe986c9c/) | YieldSharingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d5dbf...1407e5`](./contracts/ethereum-1/0x0d5dbf208a9a7540018d204a9a0ad08a091407e5/) | YieldSharingV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf28a28...5642d9`](./contracts/ethereum-1/0xf28a28b4d14fa6614fe5270d147aa4a7df5642d9/) | YieldSharingV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=3

Zero-match audit list:

- [4769] Ackee-Part 1.pdf
- [4773] Dedaub-Part 1.pdf
- [4778] WatchPug-Part 1 Follow Up 1.pdf
- [4779] WatchPug-Part 1 Follow Up 2.pdf
- [4780] WatchPug-Part 1.pdf
- [4781] WatchPug-Part 2.pdf
- [4782] WatchPug-PtOracle.pdf
- [4783] WatchPug-SparkLinearDiscountOracle.pdf
- [4784] WatchPug-sAPE.pdf

Fork inheritance lineage and inherited audits are included when available.
