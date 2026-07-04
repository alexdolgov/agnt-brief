# Agentic Audit Brief: dTRINITY

## Project Overview

- Project: dTRINITY (`dtrinity`)
- Website: [https://dtrinity.org/](https://dtrinity.org/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:44.114Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: ethereum, fraxtal, sonic
- Contract surface: 212 unique implementations (402 raw deployments)
- DeFi Llama TVL: $2,254,148.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 108 project-authored contract(s) across 3 chain(s); 6 ERC4626 vaults, 24 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 21 common project-authored base contract(s) (versionedinitializable, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 552; live-surface contracts included: 384 (263 live, 121 unknown).
- Excluded by liveness: 168 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/91 (12.1%)
- Deployed-live implementations: 91 of 212 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/91
- Verified + Unaudited implementations: 80
- Verified by bytecode match: 0
- Unverified implementations: 121
- Unique implementations: 212
- Raw deployments: 402
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hats Finance | Tier 2 | 11 | 12.1% | n/a |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmoManager | unknown | sonic | n/a | 11 deployments: sonic [`0x0346e3...46973c`](./contracts/sonic-146/0x0346e3770fba1fa6b041aae9b7fd5070bd46973c/); sonic `0x090af6...3f429c`; sonic `0x20ceff...d89355`; sonic `0x259238...adf8aa`; sonic `0x29adcb...da87ab`; sonic `0x75f14f...164eb1`; sonic `0x788d96...614d4a`; sonic `0xfb9383...e89108`; fraxtal `0x160080...370505`; fraxtal `0x49a0c8...75271a`; fraxtal `0xd9ba54...bf76c7` | ✅ Audited |
| CollateralHolderVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x349ee0...56a2f2`](./contracts/ethereum-1/0x349ee07146157648d40fd471380b510b4d56a2f2/); ethereum `0x84c580...9253f4` | ✅ Audited |
| DStakeCollateralVault | core_logic | fraxtal | n/a | 4 deployments: sonic `0x709c23...9be595`; sonic `0x925a5c...8eead9`; sonic `0xd4258d...1b4d8c`; fraxtal [`0x5432ed...8cc7be`](./contracts/fraxtal-252/0x5432ed4a370718d6904485e2fc114762c68cc7be/) | ✅ Audited |
| DStakeRewardManagerDLend | core_logic | fraxtal | n/a | [`0xf224e6...7a1367`](./contracts/fraxtal-252/0xf224e69c461a2dd3c5f6f6814529c8cf557a1367/) | ✅ Audited |
| DStakeRouterDLend | adapter | fraxtal | n/a | [`0xefc15e...d4cd99`](./contracts/fraxtal-252/0xefc15efb330112a2c313d5da8f1b29893ad4cd99/) | ✅ Audited |
| DStakeToken | token | sonic | n/a | [`0x5a5ce9...882bae`](./contracts/sonic-146/0x5a5ce9fc488a17618d5fdef867fa67c1b7882bae/) | ✅ Audited |
| Issuer | unknown | sonic | n/a | 10 deployments: sonic [`0x090613...a15c59`](./contracts/sonic-146/0x09061316c817cbfd4b2b962cbe4db64980a15c59/); sonic `0x09f790...ab45cf`; sonic `0x1f3754...4e990e`; sonic `0x3b8c68...cb51f8`; sonic `0x5e8352...488d15`; sonic `0x72ef2d...b81fbf`; sonic `0x807aa6...b0bca1`; sonic `0x96a5a8...423b69`; fraxtal `0x1ec13e...99b7a2`; fraxtal `0x823fd0...d4715c` | ✅ Audited |
| OdosSwapLogic | unknown | fraxtal | n/a | [`0xb029d6...4dd2ba`](./contracts/fraxtal-252/0xb029d67e4eb9d71d2e7140425e7227c5074dd2ba/) | ✅ Audited |
| OracleAggregator | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x1295a5...2c3a9c`](./contracts/sonic-146/0x1295a55d482257ecd66ba8846eab6849712c3a9c/); fraxtal `0xfa7560...af5cdd` | ✅ Audited |
| RedeemerWithFees | unknown | sonic | n/a | 4 deployments: sonic [`0x12bccb...db561c`](./contracts/sonic-146/0x12bccbbc931db5eae47efc04aca1b3f695db561c/); sonic `0x1f5d6e...c2b221`; sonic `0x528872...6c4927`; fraxtal `0xb0499d...bd8d16` | ✅ Audited |
| WrappedDLendConversionAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x1a5bb4...3e100f`](./contracts/ethereum-1/0x1a5bb485c58a86c193b823d0ea031b68813e100f/); ethereum `0xd07072...48fb07`; sonic `0x317b5c...226297`; sonic `0xc5ac44...a3c505`; sonic `0xcd32cf...2112dc`; fraxtal `0xced414...860e08` | ✅ Audited |

### ⚠️ Verified + Unaudited (80)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | fraxtal | n/a | [`0x99a434...eafb16`](./contracts/fraxtal-252/0x99a434c9387dac572bdd6dacb1b7e27314eafb16/) | ⚠️ Unaudited |
| ACLManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x80f702...589609`](./contracts/ethereum-1/0x80f7023e25a32e4a020ed71346c0f37c10589609/); sonic `0x973044...08e593`; fraxtal `0x93d2e5...a3acdf` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0xc85492...50a1ba`](./contracts/ethereum-1/0xc85492686004914a64930afaf48809384250a1ba/) | ⚠️ Unaudited |
| AmoDebtToken | token | fraxtal | n/a | 3 deployments: ethereum `0x55a626...6b098d`; ethereum `0x88e49f...aaaa38`; fraxtal [`0x3e17fd...0e3c28`](./contracts/fraxtal-252/0x3e17fd53fcb2dbd409b92f4860326b8b880e3c28/) | ⚠️ Unaudited |
| AmoManagerV2 | governance | ethereum | n/a | 3 deployments: ethereum [`0x29532f...6e6880`](./contracts/ethereum-1/0x29532f74a9302e0a1e9f7d015fe355ffde6e6880/); ethereum `0xbc5340...ea56a7`; fraxtal `0x57bbd5...0bebae` | ⚠️ Unaudited |
| AtomicMarketListingHelper | periphery | fraxtal | n/a | [`0x67c3ad...ad2662`](./contracts/fraxtal-252/0x67c3ad684243430ca1f7f32fe4a64eb223ad2662/) | ⚠️ Unaudited |
| BorrowLogic | unknown | sonic | n/a | 4 deployments: ethereum `0x810369...b72786`; sonic [`0x1e06f1...c606ab`](./contracts/sonic-146/0x1e06f1d027686abb8c7aab7feec115f5a8c606ab/); sonic `0x9e302c...2b6dcc`; fraxtal `0x2a1d1b...319eeb` | ⚠️ Unaudited |
| BridgeLogic | unknown | sonic | n/a | 4 deployments: ethereum `0xe1c986...c4e671`; sonic [`0xb7cff0...0f8635`](./contracts/sonic-146/0xb7cff0c4301cd43b01d96d4d8669550bb50f8635/); sonic `0xca0a90...7e37bb`; fraxtal `0xba4d4b...8cc46a` | ⚠️ Unaudited |
| CalldataLogic | unknown | sonic | n/a | 4 deployments: ethereum `0xd23431...e5776d`; sonic [`0x393645...1fa3eb`](./contracts/sonic-146/0x393645a8ac1d8ad9dc80be912c63bfc0841fa3eb/); sonic `0xe1c986...c4e671`; fraxtal `0xa1bf60...4128e8` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | fraxtal | n/a | 4 deployments: ethereum `0xc18b93...feb7ed`; sonic `0x683f18...ce9809`; sonic `0x9986dc...fe9f85`; fraxtal [`0x6288d4...53e56f`](./contracts/fraxtal-252/0x6288d412921c1e14a5ab96b043758621b453e56f/) | ⚠️ Unaudited |
| ConvexRewardPool | core_logic | fraxtal | n/a | [`0x9886ad...172afd`](./contracts/fraxtal-252/0x9886ad218f646ad67b5d057953b2d25bd0172afd/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2c2a70...f1cef9`](./contracts/ethereum-1/0x2c2a700766886290359ccf39cb2173a39af1cef9/); fraxtal `0x5ecfa6...c04577` | ⚠️ Unaudited |
| CurveXChainLiquidityGauge | operational_periphery | fraxtal | n/a | [`0xf5572d...444702`](./contracts/fraxtal-252/0xf5572d8d01bb6f96403f477d8b3bfb5739444702/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | sonic | n/a | 27 deployments: ethereum `0x426bb6...b0044a`; ethereum `0x614484...3ded12`; ethereum `0x64dc6d...ec6c7d`; ethereum `0x837c4a...07d270`; sonic [`0x052dc4...ee585d`](./contracts/sonic-146/0x052dc4ca69a6b01b7f61a979f3e40ed319ee585d/); sonic `0x08f3c3...596262`; sonic `0x1fbc97...4314c7`; sonic `0x328b0a...4b43fd`; sonic `0x38a8c0...54d2e1`; sonic `0x3f628a...ab02c0`; sonic `0x475bcf...cc3c25`; sonic `0x85c728...ec0f85`; sonic `0x863a66...f10fd2`; sonic `0x871f22...e01c7f`; sonic `0x8c5221...3236f8`; sonic `0x913412...e4696f`; sonic `0x91756a...944712`; sonic `0xaec328...1af003`; sonic `0xbc7419...87f309`; sonic `0xcc0e6f...1dfb13`; fraxtal `0x088693...5792b5`; fraxtal `0x09ddf5...52bb14`; fraxtal `0x6e15a8...9b7460`; fraxtal `0x8b7d6b...6e98c6`; fraxtal `0xd1d9d6...5ca496`; fraxtal `0xdd796c...e7ae60`; fraxtal `0xeef617...e4019c` | ⚠️ Unaudited |
| DStakeCollateralVaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4acbcf...30f6fe`](./contracts/ethereum-1/0x4acbcfa29fb085097c5f31783403ef7a7930f6fe/); ethereum `0xf93fb0...a1a5b9` | ⚠️ Unaudited |
| DStakeIdleVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x501ce6...e8a9a1`](./contracts/ethereum-1/0x501ce63871f9bb20620233d22d0d4f539fe8a9a1/); ethereum `0x78a4da...5380bc` | ⚠️ Unaudited |
| DStakeProxyAdmin | governance | sonic | n/a | 4 deployments: sonic [`0x6eb812...51029c`](./contracts/sonic-146/0x6eb812c452a20d58f85f010c1f56356df951029c/); sonic `0xbcafae...57b18c`; sonic `0xff3df1...40e01b`; fraxtal `0xde914e...f4733b` | ⚠️ Unaudited |
| DStakeRouterV2 | adapter | ethereum | n/a | 2 deployments: ethereum [`0x2e89df...cf64a8`](./contracts/ethereum-1/0x2e89df2934aff1b671923a45bacf2b21f3cf64a8/); ethereum `0xdd26c2...e9be5a` | ⚠️ Unaudited |
| DStakeRouterV2GovernanceModule | adapter | ethereum | n/a | 2 deployments: ethereum [`0x8cf140...7b6703`](./contracts/ethereum-1/0x8cf140bde76323a5785d87645fc3ddfe837b6703/); ethereum `0xedbccd...28a88b` | ⚠️ Unaudited |
| DStakeRouterV2RebalanceModule | adapter | ethereum | n/a | 3 deployments: ethereum [`0x6f3b7c...a61dde`](./contracts/ethereum-1/0x6f3b7cc3d3c8c201373900402ea0f5a61da61dde/); ethereum `0x7aefde...89c55f`; ethereum `0xc792f2...e18cc6` | ⚠️ Unaudited |
| DStakeToken | unknown | sonic | n/a | 2 deployments: sonic [`0x41a547...93304e`](./contracts/sonic-146/0x41a5477364bf60d8936b90310fecfda79593304e/); sonic `0x5f0eca...fe6f8f` | ⚠️ Unaudited |
| DStakeToken | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x0f51b1...1856c6`](./contracts/fraxtal-252/0x0f51b15939a42bd995ecd3a2c151dc58621856c6/); fraxtal `0x58acc2...492409` | ⚠️ Unaudited |
| DStakeTokenV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x20b188...0a8590`](./contracts/ethereum-1/0x20b1884c9347bebc13e9aca1965c5ae56b0a8590/); ethereum `0x414645...facb87` | ⚠️ Unaudited |
| DStakeTokenV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7cb205...6abf02`](./contracts/ethereum-1/0x7cb20517776636ed76b68edb3d99dcce356abf02/); ethereum `0x9c2780...a3bfd4` | ⚠️ Unaudited |
| EmissionManager | operational_periphery | ethereum | n/a | [`0xcea995...1d1396`](./contracts/ethereum-1/0xcea995daf89500fe165bc86d829552b03a1d1396/) | ⚠️ Unaudited |
| EModeLogic | unknown | ethereum | n/a | 4 deployments: ethereum [`0x26326b...239b4b`](./contracts/ethereum-1/0x26326b406208e206cbe9a2417bf61700b4239b4b/); sonic `0x4b6760...e7a87e`; sonic `0xf84cc8...84ff85`; fraxtal `0xca5cb6...6d62bc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x07fff9...1ca236`](./contracts/ethereum-1/0x07fff99e1664d9b116fbc158c0e99785f81ca236/); ethereum `0x6f83cb...814d1b` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x75998c...4afecc`](./contracts/ethereum-1/0x75998c3009e881f7b3f3d6847bd82649ff4afecc/); ethereum `0xb419ec...c6afdc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x0043a4...714fe7`](./contracts/sonic-146/0x0043a403ada6b63045112d7e979a057c82714fe7/); sonic `0xb76144...4553c3` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x214421...252a45`](./contracts/sonic-146/0x21442105ee1a85aa51b345a149c5f6dd47252a45/); sonic `0xd80374...4550b9` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x3a3dd4...22abd4`](./contracts/sonic-146/0x3a3dd4b0d3bd5592914115e9ce14dd035a22abd4/); sonic `0xdb848e...3432d7` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x41076a...59d0c8`](./contracts/sonic-146/0x41076a2d8f6cac657098e5fff43f31c4c759d0c8/); sonic `0xf4a726...0d0d12` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x53a6ab...0da975`](./contracts/sonic-146/0x53a6abb52b2f968fa80df6a894e4f1b1020da975/); sonic `0xa140c9...c0d327` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x614914...0bcb0e`](./contracts/sonic-146/0x614914b028a7d1fd4fab1e5a53a3e2df000bcb0e/); sonic `0xfa6085...ca8fa9` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x8af8c1...0e396c`](./contracts/sonic-146/0x8af8c11c8c4412c96a09deb5aa7c1d99a10e396c/); sonic `0xa1104d...4fcfaf` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0xba4d4b...8cc46a`](./contracts/sonic-146/0xba4d4b6ca77fd8ab3154b8e7b3a93d96338cc46a/); sonic `0xca5cb6...6d62bc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x0043a4...714fe7`](./contracts/fraxtal-252/0x0043a403ada6b63045112d7e979a057c82714fe7/); fraxtal `0xb76144...4553c3` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x70924f...168d6f`](./contracts/fraxtal-252/0x70924f77509dc1eb9384077b12ca049aa2168d6f/); fraxtal `0xc40f43...0a9d9c` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x788d96...614d4a`](./contracts/fraxtal-252/0x788d96f655735f52c676a133f4dfc53cec614d4a/); fraxtal `0xaf2d75...2fddb6` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x889bf3...913f37`](./contracts/fraxtal-252/0x889bf3e00e93bc9ce17a7f8141ef109283913f37/); fraxtal `0xb419ec...c6afdc` | ⚠️ Unaudited |
| ERC4626BalanceChecker | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x09c418...5e44dd`](./contracts/fraxtal-252/0x09c418a9d8027ef890a91ccdfce3c14d055e44dd/); fraxtal `0x7a2949...2ab7d9` | ⚠️ Unaudited |
| ERC4626OracleWrapperV1_1 | operational_periphery | ethereum | n/a | [`0x889bf3...913f37`](./contracts/ethereum-1/0x889bf3e00e93bc9ce17a7f8141ef109283913f37/) | ⚠️ Unaudited |
| FlashLoanLogic | unknown | fraxtal | n/a | 4 deployments: ethereum `0x8d369c...9b7688`; sonic `0xd82b68...295628`; fraxtal [`0x050453...fa4eb7`](./contracts/fraxtal-252/0x0504539e68ec7a50f8ae847f543ab3a062fa4eb7/); fraxtal `0x2e92fc...83c4e5` | ⚠️ Unaudited |
| FrxEthFundamentalOracleWrapperV1_1 | operational_periphery | ethereum | n/a | [`0xdfd607...44c936`](./contracts/ethereum-1/0xdfd607a73f6d73dbce8adf71de5e9fd56944c936/) | ⚠️ Unaudited |
| GenericERC4626ConversionAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0xa51fa5...2c2b56`](./contracts/ethereum-1/0xa51fa58c76d92f1b0d4d6e3b88d2ba0aff2c2b56/); ethereum `0xefd794...b5db7c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | fraxtal | n/a | 2 deployments: fraxtal [`0xdb104e...d85431`](./contracts/fraxtal-252/0xdb104e0bb0b2955f69e8e092eb80831913d85431/); fraxtal `0xfc2f89...8bc8e9` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | fraxtal | n/a | 2 deployments: fraxtal [`0xa9c3cf...a03d65`](./contracts/fraxtal-252/0xa9c3cf89d9b7680cc2433e2a2bf8e2b357a03d65/); fraxtal `0xabfbcf...067af9` | ⚠️ Unaudited |
| HardPegOracleWrapperV1_1 | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x1e5be5...36cc95`](./contracts/ethereum-1/0x1e5be5059d4a95297604355dc6abd0baf036cc95/); ethereum `0x4ef480...2aa54a`; ethereum `0x788d96...614d4a`; ethereum `0x837c1c...fc638a` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | 11 deployments: ethereum [`0x2b820f...5dff35`](./contracts/ethereum-1/0x2b820fd4911876160c3988e57a10d8a5b85dff35/); ethereum `0x7f9098...9d7cf1`; ethereum `0x88a4ee...a1c748`; ethereum `0x947729...bfb59b`; ethereum `0x979fb7...efaad8`; ethereum `0xa17571...dfe493`; ethereum `0xa5535f...a26eae`; ethereum `0xb33276...a8029c`; ethereum `0xc24773...0e9011`; ethereum `0xdfaee6...a5877f`; sonic `0xf177ef...0d0bd1` | ⚠️ Unaudited |
| IssuerV2 | unknown | sonic | n/a | 3 deployments: sonic [`0x36b535...76fa97`](./contracts/sonic-146/0x36b535bc79defb00d348658ad7e68d9b1176fa97/); sonic `0x9b93c3...725ddc`; fraxtal `0xd95f1c...f9fbca` | ⚠️ Unaudited |
| IssuerV2_2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x70bfbe...8a5a8d`](./contracts/ethereum-1/0x70bfbe78548f1159cb9b453e4d6ad0e3648a5a8d/); ethereum `0xf84cc8...84ff85`; fraxtal `0x9e8d87...abdc3a` | ⚠️ Unaudited |
| L2Pool | unknown | sonic | n/a | 4 deployments: ethereum `0xfda3a0...e19e84`; sonic [`0x179867...6bb8cc`](./contracts/sonic-146/0x179867c392add1bf4f7a3d4c70bf8f2f476bb8cc/); fraxtal `0x20a24d...91a6d7`; fraxtal `0xdfd607...44c936` | ⚠️ Unaudited |
| LiquidationLogic | unknown | sonic | n/a | 4 deployments: ethereum `0xce697c...7d9570`; sonic [`0x19c6b5...f7dc48`](./contracts/sonic-146/0x19c6b5924306baf5ee549cd7b56b37736cf7dc48/); sonic `0x84c580...9253f4`; fraxtal `0xba82d5...e7dc8f` | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | ethereum | n/a | [`0x91c95b...06447c`](./contracts/ethereum-1/0x91c95bb84aa561d93d165ff24d0e54e6b006447c/) | ⚠️ Unaudited |
| OracleAggregatorV1_1 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x02165d...5b186c`](./contracts/ethereum-1/0x02165d665e171566629822d9380ad93b975b186c/); ethereum `0xc40f43...0a9d9c` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | sonic | n/a | 6 deployments: ethereum `0xa5cae8...42e751`; sonic [`0x1f8d8a...1badcb`](./contracts/sonic-146/0x1f8d8a3575d049aa0c195aa947483738811badcb/); sonic `0x598502...484df5`; sonic `0x664965...3b1b26`; sonic `0xfdb85f...336207`; fraxtal `0xd9c622...cb338d` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | ethereum | n/a | [`0xfdb85f...336207`](./contracts/ethereum-1/0xfdb85fdfcee413eb05287f9d4157c1ef1f336207/) | ⚠️ Unaudited |
| PoolConfigurator | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x185e9c...ded6b9`](./contracts/ethereum-1/0x185e9c639dea54d77d62dcb87466fb8de6ded6b9/); sonic `0xac90d7...e40153`; fraxtal `0xb1e4e1...60b8b1` | ⚠️ Unaudited |
| PoolLogic | unknown | fraxtal | n/a | 4 deployments: ethereum `0x44c69f...c5e7a2`; sonic `0x33e010...7173f6`; sonic `0xe61141...c1fb21`; fraxtal [`0x050323...3f7ecd`](./contracts/fraxtal-252/0x0503237c9ade4bfe3a8f9a0d75e197c14a3f7ecd/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | 9 deployments: ethereum `0xbe90db...2c65be`; sonic [`0x0a0808...fb0bc5`](./contracts/sonic-146/0x0a0808f20743278d566fc954d3dcf8c082fb0bc5/); sonic `0xaf3bb4...694cb8`; sonic `0xc59e44...6a68f8`; sonic `0xfff14b...50a7ab`; fraxtal `0x1e5be5...36cc95`; fraxtal `0x75998c...4afecc`; fraxtal `0xaf3bb4...694cb8`; fraxtal `0xdcd396...fdfa5c` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | core_logic | ethereum | n/a | [`0x31bf6b...6e6316`](./contracts/ethereum-1/0x31bf6b030d20af8a92d169632ffd8077456e6316/) | ⚠️ Unaudited |
| RebasingTokenWrapperFactory | registry | fraxtal | n/a | [`0x85c728...ec0f85`](./contracts/fraxtal-252/0x85c7287fc53a06ec7995db5ae6f2610200ec0f85/) | ⚠️ Unaudited |
| Redeemer | unknown | fraxtal | n/a | 3 deployments: sonic `0xe78185...daa5cf`; sonic `0xf5a894...c386ff`; fraxtal [`0x242921...4450a3`](./contracts/fraxtal-252/0x2429213235b5b4504d41bc9aa64fc2659e4450a3/) | ⚠️ Unaudited |
| RedeemerV2 | unknown | sonic | n/a | 7 deployments: ethereum `0x093e9d...ba90cd`; ethereum `0x683f18...ce9809`; ethereum `0xd66c16...036cac`; ethereum `0xdc43d5...afae4b`; sonic [`0x090598...d38b88`](./contracts/sonic-146/0x09059859d2b91cc840bd2c86f841defa19d38b88/); sonic `0x6b0579...6f5935`; fraxtal `0xacd97c...2ec949` | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | fraxtal | n/a | 6 deployments: ethereum `0x18ae2d...dfd5e1`; sonic `0x16e32b...30d19c`; sonic `0x79b3f3...f76ca2`; sonic `0x7c2018...45122a`; sonic `0x95e9b3...10a447`; fraxtal [`0x145555...7d2662`](./contracts/fraxtal-252/0x145555c56718437093c020cef4e8dd11cd7d2662/) | ⚠️ Unaudited |
| RewardsController | governance | ethereum | n/a | [`0x06f0c6...5a0ea8`](./contracts/ethereum-1/0x06f0c640c47fcfe030da1cdd7dfb5080cb5a0ea8/) | ⚠️ Unaudited |
| RewardVault | core_logic | fraxtal | n/a | [`0x464785...6f2e54`](./contracts/fraxtal-252/0x46478563d4532ef2b68a328c3f528b19626f2e54/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | 5 deployments: ethereum [`0x044015...e79804`](./contracts/ethereum-1/0x04401537ca997a43ebcfec8194c7e88c7ee79804/); ethereum `0x38262e...02f3db`; ethereum `0x43b1bc...06c118`; ethereum `0x4b4b5c...0d3ef6`; ethereum `0xe83c18...f30262` | ⚠️ Unaudited |
| SafeL2 | unknown | sonic | n/a | [`0xe83c18...f30262`](./contracts/sonic-146/0xe83c188a7be46b90715c757a06cf917175f30262/) | ⚠️ Unaudited |
| SanitizableAToken | token | ethereum | n/a | [`0x504d0e...483acc`](./contracts/ethereum-1/0x504d0eacbf9ea5645a8a9da1b15f3708a5483acc/) | ⚠️ Unaudited |
| StableDebtToken | token | ethereum | n/a | [`0x391afc...eb8631`](./contracts/ethereum-1/0x391afc4190a92350b5c812434b7fbf381feb8631/) | ⚠️ Unaudited |
| StaticATokenFactory | unknown | sonic | n/a | 4 deployments: ethereum `0xcb8f92...e1d877`; sonic [`0x1cc03e...bd55a8`](./contracts/sonic-146/0x1cc03e57ed4d426f673dbb4d69e08c91bbbd55a8/); sonic `0x777db2...ac81f1`; fraxtal `0x2a0f31...1b2768` | ⚠️ Unaudited |
| StaticATokenLM | token | sonic | n/a | 6 deployments: ethereum `0x576dd4...32d4c9`; ethereum `0xeb5260...c07776`; sonic [`0x36e178...b8059e`](./contracts/sonic-146/0x36e178ba804514d80ea87d78b96db87408b8059e/); sonic `0x5c47b4...17adfa`; sonic `0xd92780...886a71`; sonic `0xe6dee6...34e0d9` | ⚠️ Unaudited |
| SupplyLogic | unknown | fraxtal | n/a | 4 deployments: ethereum `0xe58dec...817ddb`; sonic `0x48f096...068f9a`; sonic `0x837c1c...fc638a`; fraxtal [`0x2d3f57...6d6f3e`](./contracts/fraxtal-252/0x2d3f5739096478dbcf3df74941861b8d156d6f3e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | n/a | 3 deployments: sonic [`0x2e093b...1ba642`](./contracts/sonic-146/0x2e093bf098dc3de208ab23a3b2dbc7cd911ba642/); sonic `0x4ebab4...f50a83`; sonic `0x84670d...7e6a51` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | ethereum | n/a | [`0xe3ee2d...df479e`](./contracts/ethereum-1/0xe3ee2d4bde6695cc1ae4a4cda466bdc6d5df479e/) | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x1c4be7...7867e2`](./contracts/ethereum-1/0x1c4be7d7f0184ba6cc458fc99880198c537867e2/); sonic `0x31e1f0...ec9261`; sonic `0xe505f8...afb37a`; sonic `0xe5ae87...00cbc4`; fraxtal `0xe284a7...d3eabc` | ⚠️ Unaudited |
| VariableDebtToken | token | ethereum | n/a | [`0xf5e96f...da27ef`](./contracts/ethereum-1/0xf5e96f92354de544c2b0b0c4328ef5ded8da27ef/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | ethereum | n/a | [`0xe5ae87...00cbc4`](./contracts/ethereum-1/0xe5ae8775a23293dbf5a59019aa32ba358900cbc4/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | ethereum | n/a | [`0xb1c1d6...c6ac2d`](./contracts/ethereum-1/0xb1c1d6150c4f072f5426aa918f7924ee73c6ac2d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (121)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5d5543...2a9e7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93d2e5...a3acdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d286f...9352b1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x011c49...97e373` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x05281f...a2d972` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x088693...5792b5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0b667e...0585ad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0e1bd1...4ae4ff` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x101af0...4240d9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x172971...8d3918` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2b5ed9...1991a7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2eae5a...621659` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x353a84...b59801` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x43dc80...34dfdb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x44c69f...c5e7a2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5d561d...88936e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x604f81...b078e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x673c07...b7ae6a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x68e108...78a24e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6a60eb...ccc00e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6d9216...bca36b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6df5f1...ef4f84` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6e15a8...9b7460` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83cf77...98c3f0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x94613f...ed56b6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x96b35f...072d39` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x972aad...e9633d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x98df53...a8b4da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa0e572...3d3afa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa29913...f408b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb6294e...58df92` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbe1610...2a1d37` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc18b93...feb7ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcab481...40e451` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcc3ee4...870161` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcc4da1...9a7a06` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd1d9d6...5ca496` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xda988a...518ea4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdbe361...aca375` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdc4e3f...17e28b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdd796c...e7ae60` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf3eb4b...39c0ad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfc2a2f...5898f9` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x02165d...5b186c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x06f0c6...5a0ea8` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x074319...f01af1` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x077db2...afb37b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0785f4...02c17d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x07cd39...33bd3e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0ad050...e73786` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0bd5b0...4f0203` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x12978e...1dc2f2` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x1448a8...ac1686` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x1a5bb4...3e100f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x1c4be7...7867e2` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x1c7b9f...ce496b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x20b188...0a8590` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x20ceff...d89355` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x248019...a5bebe` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x29532f...6e6880` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x2c5e9d...2b4874` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x31bf6b...6e6316` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x3602c7...c7c1d4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x3b038b...507b00` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x3f0c2f...484c5d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x414645...facb87` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x41cbec...5b9d70` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x43a1c8...420a3b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x47c388...280210` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x4f86bc...344159` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x501ce6...e8a9a1` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x539984...6ceca0` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x63f2fe...ac1bbc` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x641956...a69447` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x683f18...ce9809` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x724b25...725901` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x77edd4...d51b69` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x79b3f3...f76ca2` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x7cb205...6abf02` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x81a01e...fce5ca` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x8401f4...ff3dae` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x84c580...9253f4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x86c560...5a04b4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x8fb6ea...92f590` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x918130...369d08` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x96a5a8...423b69` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x9f0253...78fdef` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xa51fa5...2c2b56` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xab5fea...d8cd4f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb43673...b31577` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb5cc58...9bc72f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb76a00...019108` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb7cff0...0f8635` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xbc5340...ea56a7` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xbdfe9d...450cc9` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xc1a3e7...196a74` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xc792f2...e18cc6` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xc85492...50a1ba` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xca52d0...f24dda` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xcb8f92...e1d877` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xcea995...1d1396` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xd23431...e5776d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xd24ca3...e3ca10` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdba93c...f46e39` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdd26c2...e9be5a` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe036a5...25e7c6` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe3ee2d...df479e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe5ae87...00cbc4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe61141...c1fb21` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe7995e...e89ff7` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe7c49a...244a28` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe9bbd4...253d3c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xeb5260...c07776` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xefd794...b5db7c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf1f989...a4c863` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf218d6...35e4ec` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf5e07e...c071e6` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf93fb0...a1a5b9` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xfda3a0...e19e84` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xfddcb4...86ec98` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xff426f...285280` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view](https://drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view?usp=drive_link) | Verichains | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view](https://drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view?usp=sharing) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view](https://drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view?usp=sharing) | Cyberscope | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report.md](https://github.com/hats-finance/dTRINITY-0xee5c6f15e8d0b55a5eff84bb66beeee0e6140ffe/blob/report-update-20250822T111243728Z/report.md) | Hats Finance | Contest | n/a | unknown | Direct | contract_name | 11 | n/a |
| [drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view](https://drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view?usp=sharing) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 212 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=11

Zero-match audit list:

- [11573] drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view
- [11574] drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view
- [11575] drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view
- [11577] drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view

Fork inheritance lineage and inherited audits are included when available.
