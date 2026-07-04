# Agentic Audit Brief: Hourglass

## Project Overview

- Project: Hourglass (`hourglass`)
- Website: [https://hourglass.com/](https://hourglass.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.647Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, ethereum, mantle
- Contract surface: 77 unique implementations (179 raw deployments)
- DeFi Llama TVL: $116,802.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 248 project-authored contract(s) across 3 chain(s); 3 ERC4626 vaults, 30 ERC20 tokens, 11 ERC721 NFTs, 6 ERC1155 multi-tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 37 common project-authored base contract(s) (proxy, erc20upgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 195; live-surface contracts included: 170 (160 live, 10 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/64 (1.6%)
- Deployed-live implementations: 67 of 77 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/67
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 77
- Raw deployments: 179
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 1.5% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HourglassERC20TBT | token | ethereum | n/a | 63 deployments: ethereum [`0x004d95...99dd5d`](./contracts/ethereum-1/0x004d956c022bd0791fc34c4b4f06ec65d499dd5d/); ethereum `0x036d9d...08544b`; ethereum `0x0abcbd...3f3ca6`; ethereum `0x2b8e68...0fad28`; ethereum `0x3e9314...73d863`; ethereum `0x418cff...4fa358`; ethereum `0x43efe8...0a060d`; ethereum `0x47a3a3...9058e4`; ethereum `0x484f8d...a77a71`; ethereum `0x4e11cf...9fcbbe`; ethereum `0x4eaf2a...e4842c`; ethereum `0x577512...9311c3`; ethereum `0x602883...3d0585`; ethereum `0x60e3e1...68d86b`; ethereum `0x66e400...a7c37d`; ethereum `0x68f080...2f4ba6`; ethereum `0x7875ea...32870b`; ethereum `0x859ce1...4d788e`; ethereum `0x8bd79f...b92e1e`; ethereum `0x8ed775...495e5c`; ethereum `0x9734a6...9416bf`; ethereum `0x98ca0f...8a69d7`; ethereum `0x9b7f50...f20418`; ethereum `0x9e1c22...0d6bdf`; ethereum `0x9ec533...33d863`; ethereum `0x9eee7e...361857`; ethereum `0xa2962e...44e798`; ethereum `0xa47a1c...9c12c3`; ethereum `0xb00591...484a24`; ethereum `0xb05e8a...5d3fef`; ethereum `0xb204ab...4461a8`; ethereum `0xb3cb22...e6a38c`; ethereum `0xb66835...d88dd0`; ethereum `0xb7a2c7...aa9946`; ethereum `0xb97661...cd1fc8`; ethereum `0xbaf470...e9ffa8`; ethereum `0xbd91c7...97196a`; ethereum `0xc5dbc2...ed6ae0`; ethereum `0xd02b31...ea589c`; ethereum `0xd3b637...d44579`; ethereum `0xd7f10a...43e834`; ethereum `0xdb0ee7...a878d9`; ethereum `0xe6da3b...a669b1`; ethereum `0xe7f0dc...106fb6`; ethereum `0xe86550...8d109a`; ethereum `0xe91838...54e76b`; ethereum `0xf3fe41...d0f275`; ethereum `0xf68c4b...910b5e`; ethereum `0xfd8b20...aa3dc1`; mantle `0x326b11...90ae6c`; mantle `0x4865bb...647560`; mantle `0x62b9fd...0c92d7`; mantle `0x8fc1e4...b5fef3`; mantle `0x979ecd...3d01ed`; mantle `0xbfe0e2...2470c4`; base `0x2c7432...f4e41c`; base `0x37b93e...5d310b`; base `0x4347e8...d291a0`; base `0x5e57e8...32c997`; base `0x60fba8...bfa3a5`; base `0x70b64c...06342e`; base `0x85e2c7...77088e`; base `0xea3ff2...02af74` | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | unknown | ethereum | n/a | [`0xc6f89c...622d8f`](./contracts/ethereum-1/0xc6f89cc0551c944ceae872997a4060dc95622d8f/) | ⚠️ Unaudited |
| AccountsGuard | governance | base | n/a | [`0x2529ae...d6240b`](./contracts/base-8453/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/) | ⚠️ Unaudited |
| AccountV3 | core_logic | base | n/a | [`0x78db6a...16e8d6`](./contracts/base-8453/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/) | ⚠️ Unaudited |
| AccountV4 | core_logic | base | n/a | [`0xe976bf...63d442`](./contracts/base-8453/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/) | ⚠️ Unaudited |
| ArcticArchitectureLens | unknown | ethereum | n/a | [`0xe12eef...faa54a`](./contracts/ethereum-1/0xe12eef08bfef01579d22895cd790f32d94faa54a/) | ⚠️ Unaudited |
| AtomicQueue | unknown | ethereum | n/a | [`0xd45884...5dea07`](./contracts/ethereum-1/0xd45884b592e316eb816199615a95c182f75dea07/) | ⚠️ Unaudited |
| AtomicSolverV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b744e...1a2d7a`](./contracts/ethereum-1/0x5b744e93bbf5caf38df34f3ba14a40024d1a2d7a/); ethereum `0x8650bd...9987ec` | ⚠️ Unaudited |
| AuraERC4626Adaptor | unknown | ethereum | n/a | [`0x0f3f8c...2bb162`](./contracts/ethereum-1/0x0f3f8cab8d3888281033faf7a6c0b74de62bb162/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x08c6f9...c1364c`](./contracts/ethereum-1/0x08c6f91e2b681faf5e17227f2a44c307b3c1364c/); ethereum `0x5401b8...77d57c`; ethereum `0x657e8c...88c642`; ethereum `0x722344...8c4273`; ethereum `0x917cee...909d88`; ethereum `0xc79cc4...5952ea`; ethereum `0xf0bb20...73416c` | ⚠️ Unaudited |
| CellarMigrationAdaptor2 | operational_periphery | ethereum | n/a | [`0xea1a63...06a221`](./contracts/ethereum-1/0xea1a6307d9b18f8d1cbf1c3dd6aad8416c06a221/) | ⚠️ Unaudited |
| ConcreteMultiStrategyVault | core_logic | ethereum | n/a | [`0x34bdba...c32da8`](./contracts/ethereum-1/0x34bdba9b3d8e3073eb4470cd4c031c2e39c32da8/) | ⚠️ Unaudited |
| CowSwapper | adapter | base | n/a | 3 deployments: base [`0xb988a3...da1f23`](./contracts/base-8453/0xb988a32def54821dde0d7382e8a74f1be4da1f23/); base `0xc92801...811854`; base `0xffc742...da2bb6` | ⚠️ Unaudited |
| DefaultOrderHook | unknown | base | n/a | 3 deployments: base [`0x0f56a2...c1f681`](./contracts/base-8453/0x0f56a2d3ad80817de76d0498c98dd1223bc1f681/); base `0x5f7dfa...20cea6`; base `0xf510ba...09e5bb` | ⚠️ Unaudited |
| eEthExtension | unknown | ethereum | n/a | [`0x4ec6e3...740d5b`](./contracts/ethereum-1/0x4ec6e3b0933cc90fdb274267dff1a57db9740d5b/) | ⚠️ Unaudited |
| ERC20Adaptor | unknown | ethereum | n/a | [`0x7a5b17...81331d`](./contracts/ethereum-1/0x7a5b17e0ad1e0f37061fcc7f90512c367981331d/) | ⚠️ Unaudited |
| ERC4626Adaptor | unknown | ethereum | n/a | [`0xb1761a...a681e2`](./contracts/ethereum-1/0xb1761a7c7799cb429eb5bf2db16d88534da681e2/) | ⚠️ Unaudited |
| ERC4626SharePriceOracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9d3eb5...8014b0`](./contracts/ethereum-1/0x9d3eb50ed4540135a78facd70063bccc988014b0/); ethereum `0xb09cbb...03ece4`; ethereum `0xb12143...981a04` | ⚠️ Unaudited |
| Factory | registry | base | n/a | [`0xda14fd...768e59`](./contracts/base-8453/0xda14fdd72345c4d2511357214c5b89a919768e59/) | ⚠️ Unaudited |
| FeeRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0bc9df...68cd46`](./contracts/ethereum-1/0x0bc9df52ff655932d08daacba33881c0d268cd46/); ethereum `0xe0e4e0...c24897` | ⚠️ Unaudited |
| FeesAndReserves | unknown | ethereum | n/a | [`0x8a2295...02ec74`](./contracts/ethereum-1/0x8a22951e3b5133844e37959cc75fce9b3502ec74/) | ⚠️ Unaudited |
| FeesAndReservesAdaptor | unknown | ethereum | n/a | [`0x5d84ec...b358da`](./contracts/ethereum-1/0x5d84ec98c476b159f3e107709f224d5bbbb358da/) | ⚠️ Unaudited |
| FraxVoterProxyV4 | unknown | ethereum | n/a | [`0x78ec75...62acc0`](./contracts/ethereum-1/0x78ec75e69a5f2150c1095e5feffc1fe17362acc0/) | ⚠️ Unaudited |
| FXSDepositorV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x28fb88...6aae3f`](./contracts/ethereum-1/0x28fb88e578890587563dd49ae35d3422e76aae3f/); ethereum `0xdfa1f6...3c5335` | ⚠️ Unaudited |
| GaugeIncentivesStash | unknown | ethereum | n/a | 2 deployments: ethereum [`0x183d1a...5a9eab`](./contracts/ethereum-1/0x183d1a60e1e00bd87ba8b7e673fd9c26585a9eab/); ethereum `0x5d135c...e6d096` | ⚠️ Unaudited |
| GaugeIncentivesStash | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa9e640...a8b766`](./contracts/ethereum-1/0xa9e640a1fa2a74653368ebe12161939efaa8b766/); ethereum `0xbc74b8...1349ae` | ⚠️ Unaudited |
| HourglassEtherFiLiquidLockDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x035d13...52da4d`](./contracts/ethereum-1/0x035d135bf428460be8e1c19b36e8d4231752da4d/); ethereum `0xd573ce...aa28a2` | ⚠️ Unaudited |
| HourglassStableVaultKYC | core_logic | ethereum | n/a | [`0xd9b2cb...fcce40`](./contracts/ethereum-1/0xd9b2cb2fbad204fc548787ef56b918c845fcce40/) | ⚠️ Unaudited |
| L1cmETH | unknown | ethereum | n/a | [`0xe6829d...59e8fa`](./contracts/ethereum-1/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | n/a | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| LendingPool | core_logic | base | n/a | 3 deployments: base [`0x3ec4a2...141df1`](./contracts/base-8453/0x3ec4a293fb906dd2cd440c20decb250def141df1/); base `0x803ea6...6b98e2`; base `0xa37e9b...645e3b` | ⚠️ Unaudited |
| Liquidator | operational_periphery | base | n/a | [`0xa4b0b9...e1a7af`](./contracts/base-8453/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ⚠️ Unaudited |
| ManagerWithMerkleVerification | unknown | ethereum | n/a | [`0x048a50...4d0a17`](./contracts/ethereum-1/0x048a5002e57166a78dd060b3b36ded2f404d0a17/) | ⚠️ Unaudited |
| MerklOperator | operational_periphery | base | n/a | [`0x969f02...8b42c6`](./contracts/base-8453/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/) | ⚠️ Unaudited |
| MerklOperatorBase | operational_periphery | base | n/a | [`0x4aa34f...575d5f`](./contracts/base-8453/0x4aa34f76f85f72a0f0b6df7ae109f94da0575d5f/) | ⚠️ Unaudited |
| METHL2 | token | mantle | n/a | [`0xcda86a...b90bb0`](./contracts/mantle-5000/0xcda86a272531e8640cd7f1a92c01839911b90bb0/) | ⚠️ Unaudited |
| OneInchAdaptor | unknown | ethereum | n/a | [`0x5f7de9...c58d43`](./contracts/ethereum-1/0x5f7de90fb222d37225dd8929672e427699c58d43/) | ⚠️ Unaudited |
| PitchFXSToken | token | ethereum | n/a | [`0x11ebe2...e88f0b`](./contracts/ethereum-1/0x11ebe21e9d7bf541a18e1e3ac94939018ce88f0b/) | ⚠️ Unaudited |
| PitchProxyAdmin | unknown | ethereum | n/a | [`0xd3c23b...7588ed`](./contracts/ethereum-1/0xd3c23b7b54629d58aa6e206e32e6473e067588ed/) | ⚠️ Unaudited |
| PriceRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x693799...a4fff5`](./contracts/ethereum-1/0x693799805b502264f9365440b93c113d86a4fff5/); ethereum `0xab2d48...818964` | ⚠️ Unaudited |
| ProtocolFeeCollector | unknown | ethereum | n/a | [`0xdfb286...e42524`](./contracts/ethereum-1/0xdfb286d16f9cd8c5cf4d5180501c190519e42524/) | ⚠️ Unaudited |
| Puff | unknown | mantle | n/a | [`0x26a6b0...3be140`](./contracts/mantle-5000/0x26a6b0dcdcfb981362afa56d581e4a7dba3be140/) | ⚠️ Unaudited |
| RecoveryController | governance | base | n/a | [`0x388925...78176a`](./contracts/base-8453/0x3889255c5a9a55137dfdf870a0c30a285978176a/) | ⚠️ Unaudited |
| Redeemer | unknown | base | n/a | [`0x812785...250773`](./contracts/base-8453/0x812785c39a794a9518ee72dd0ce0bdd3f6250773/) | ⚠️ Unaudited |
| RedstoneEthPriceFeedExtension | unknown | ethereum | n/a | [`0xdb4b77...63ae84`](./contracts/ethereum-1/0xdb4b778085ed412518cb64207259a746f363ae84/) | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37912f...059bbd`](./contracts/ethereum-1/0x37912f4c0f0d916890ebd755bf6d1f0a0e059bbd/); base `0xd06905...300d5f` | ⚠️ Unaudited |
| RouterTrampoline | adapter | base | n/a | [`0x354dbb...590667`](./contracts/base-8453/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | ⚠️ Unaudited |
| SaddleVoterProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2cba8a...37e0ee`](./contracts/ethereum-1/0x2cba8a85f44dd1da10a093cc0f96d93b3c37e0ee/); ethereum `0x92812d...8586ed` | ⚠️ Unaudited |
| SaddleVoterProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc0a668...23d254`](./contracts/ethereum-1/0xc0a668d27f344dc723abc87f88792722e623d254/); ethereum `0xf942f2...d62dd9` | ⚠️ Unaudited |
| SDLDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17a67b...8813bc`](./contracts/ethereum-1/0x17a67bdb5cfb7a21781240997505d69a398813bc/); ethereum `0x7c06f6...407653` | ⚠️ Unaudited |
| SDLDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6f5591...639d78`](./contracts/ethereum-1/0x6f559192134709585780e953013b864e00639d78/); ethereum `0xbdb83b...160888` | ⚠️ Unaudited |
| SlipstreamAM | adapter | base | n/a | 2 deployments: base [`0x3ade1f...1eb73b`](./contracts/base-8453/0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b/); base `0xcaf416...527189` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | base | n/a | 3 deployments: base [`0x1dc7a0...d67bf1`](./contracts/base-8453/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); base `0xbed6c3...0fdd4c`; base `0xe0f20b...d8ca7b` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | unknown | ethereum | n/a | [`0xbbe07e...a6c125`](./contracts/ethereum-1/0xbbe07e335235b5be21d9ef413fc52aa250a6c125/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | 3 deployments: ethereum [`0x55148d...13924c`](./contracts/ethereum-1/0x55148d7e3983a54c9f9d1e0c2c2039e2d513924c/); ethereum `0x73e85a...4e629d`; mantle `0x91a194...ec65e5` | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | 3 deployments: base [`0x393893...2b1382`](./contracts/base-8453/0x393893caeb06b5c16728bb1e354b6c36942b1382/); base `0x9c63a4...5eec92`; base `0xefe328...218dad` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | base | n/a | 3 deployments: base [`0x7cc801...34ba3a`](./contracts/base-8453/0x7cc8013e784418dc9771403dd057f55ceb34ba3a/); base `0xbc1071...2ff398`; base `0xd82bfa...7a8c60` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0x657d9a...c96dcb`](./contracts/ethereum-1/0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb/) | ⚠️ Unaudited |
| VeRevenueConverter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x512f50...19cc94`](./contracts/ethereum-1/0x512f50a1dc5ac087cd76195fe6388c7b2919cc94/); ethereum `0x918062...c5ce86` | ⚠️ Unaudited |
| WeETH | unknown | ethereum | n/a | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
| weEthExtension | unknown | ethereum | n/a | [`0x78e593...fd7535`](./contracts/ethereum-1/0x78e59309ba2779a5d3522e965fe9be2790fd7535/) | ⚠️ Unaudited |
| WrappedAerodromeAM | adapter | base | n/a | [`0x17b582...409270`](./contracts/base-8453/0x17b5826382e3a5257b829cf0546a08bd77409270/) | ⚠️ Unaudited |
| WstEthExtension | unknown | ethereum | n/a | [`0xc5a3cb...c46d35`](./contracts/ethereum-1/0xc5a3cb224b799b982706008a1081073fe0c46d35/) | ⚠️ Unaudited |
| YieldClaimer | unknown | base | n/a | [`0xc1e9b2...d551fc`](./contracts/base-8453/0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc/) | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | base | n/a | 5 deployments: base [`0x1f75ab...d59105`](./contracts/base-8453/0x1f75abf8a24782053b351d9b4ea6d1236ed59105/); base `0x2a07d9...93d09f`; base `0x5a8278...4f18ba`; base `0x8c1fbf...291980`; base `0xc8bf4b...22871c` | ⚠️ Unaudited |
| ynETH | unknown | ethereum | n/a | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ⚠️ Unaudited |
| ZeroXAdaptor | unknown | ethereum | n/a | [`0x497bbe...eecfc2`](./contracts/ethereum-1/0x497bbe7d974b45e2e28cfbbdedf9e67646eecfc2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0a46ca...e1333e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b2eb9...0d4d86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d175...60f6bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47589d...ebc4f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49d9ef...cfd302` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x793296...eb2cab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97dd1a...c37565` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca66ed...48d304` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe640ed...b72a70` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7110d6...2de6e6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [HourglassAudit3.pdf](https://github.com/TheArcadiaGroup/publications/blob/main/audits/HourglassAudit3.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit](https://docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit?tab=t.0) | Code4rena | Contest | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Hourglass_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_Audit_Report.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 0 | n/a |
| [Hourglass_HFXB_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_HFXB_Audit_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [Hourglass_Index_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_Index_Audit_Report.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Hourglass_TBT_Locking_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_TBT_Locking_Audit_Report.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [Hourglass_v2_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_v2_Audit_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc6f89c...622d8f`](./contracts/ethereum-1/0xc6f89cc0551c944ceae872997a4060dc95622d8f/) | AccountantWithRateProviders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2529ae...d6240b`](./contracts/base-8453/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/) | AccountsGuard | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78db6a...16e8d6`](./contracts/base-8453/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/) | AccountV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe976bf...63d442`](./contracts/base-8453/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/) | AccountV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe12eef...faa54a`](./contracts/ethereum-1/0xe12eef08bfef01579d22895cd790f32d94faa54a/) | ArcticArchitectureLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd45884...5dea07`](./contracts/ethereum-1/0xd45884b592e316eb816199615a95c182f75dea07/) | AtomicQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b744e...1a2d7a`](./contracts/ethereum-1/0x5b744e93bbf5caf38df34f3ba14a40024d1a2d7a/) | AtomicSolverV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f3f8c...2bb162`](./contracts/ethereum-1/0x0f3f8cab8d3888281033faf7a6c0b74de62bb162/) | AuraERC4626Adaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08c6f9...c1364c`](./contracts/ethereum-1/0x08c6f91e2b681faf5e17227f2a44c307b3c1364c/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea1a63...06a221`](./contracts/ethereum-1/0xea1a6307d9b18f8d1cbf1c3dd6aad8416c06a221/) | CellarMigrationAdaptor2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34bdba...c32da8`](./contracts/ethereum-1/0x34bdba9b3d8e3073eb4470cd4c031c2e39c32da8/) | ConcreteMultiStrategyVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb988a3...da1f23`](./contracts/base-8453/0xb988a32def54821dde0d7382e8a74f1be4da1f23/) | CowSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0f56a2...c1f681`](./contracts/base-8453/0x0f56a2d3ad80817de76d0498c98dd1223bc1f681/) | DefaultOrderHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ec6e3...740d5b`](./contracts/ethereum-1/0x4ec6e3b0933cc90fdb274267dff1a57db9740d5b/) | eEthExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a5b17...81331d`](./contracts/ethereum-1/0x7a5b17e0ad1e0f37061fcc7f90512c367981331d/) | ERC20Adaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1761a...a681e2`](./contracts/ethereum-1/0xb1761a7c7799cb429eb5bf2db16d88534da681e2/) | ERC4626Adaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d3eb5...8014b0`](./contracts/ethereum-1/0x9d3eb50ed4540135a78facd70063bccc988014b0/) | ERC4626SharePriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xda14fd...768e59`](./contracts/base-8453/0xda14fdd72345c4d2511357214c5b89a919768e59/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc9df...68cd46`](./contracts/ethereum-1/0x0bc9df52ff655932d08daacba33881c0d268cd46/) | FeeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a2295...02ec74`](./contracts/ethereum-1/0x8a22951e3b5133844e37959cc75fce9b3502ec74/) | FeesAndReserves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d84ec...b358da`](./contracts/ethereum-1/0x5d84ec98c476b159f3e107709f224d5bbbb358da/) | FeesAndReservesAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28fb88...6aae3f`](./contracts/ethereum-1/0x28fb88e578890587563dd49ae35d3422e76aae3f/) | FXSDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x183d1a...5a9eab`](./contracts/ethereum-1/0x183d1a60e1e00bd87ba8b7e673fd9c26585a9eab/) | GaugeIncentivesStash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9e640...a8b766`](./contracts/ethereum-1/0xa9e640a1fa2a74653368ebe12161939efaa8b766/) | GaugeIncentivesStash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x035d13...52da4d`](./contracts/ethereum-1/0x035d135bf428460be8e1c19b36e8d4231752da4d/) | HourglassEtherFiLiquidLockDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9b2cb...fcce40`](./contracts/ethereum-1/0xd9b2cb2fbad204fc548787ef56b918c845fcce40/) | HourglassStableVaultKYC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6829d...59e8fa`](./contracts/ethereum-1/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | L1cmETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | L2cmETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ec4a2...141df1`](./contracts/base-8453/0x3ec4a293fb906dd2cd440c20decb250def141df1/) | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa4b0b9...e1a7af`](./contracts/base-8453/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | Liquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x048a50...4d0a17`](./contracts/ethereum-1/0x048a5002e57166a78dd060b3b36ded2f404d0a17/) | ManagerWithMerkleVerification | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x969f02...8b42c6`](./contracts/base-8453/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/) | MerklOperator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4aa34f...575d5f`](./contracts/base-8453/0x4aa34f76f85f72a0f0b6df7ae109f94da0575d5f/) | MerklOperatorBase | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xcda86a...b90bb0`](./contracts/mantle-5000/0xcda86a272531e8640cd7f1a92c01839911b90bb0/) | METHL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f7de9...c58d43`](./contracts/ethereum-1/0x5f7de90fb222d37225dd8929672e427699c58d43/) | OneInchAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11ebe2...e88f0b`](./contracts/ethereum-1/0x11ebe21e9d7bf541a18e1e3ac94939018ce88f0b/) | PitchFXSToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3c23b...7588ed`](./contracts/ethereum-1/0xd3c23b7b54629d58aa6e206e32e6473e067588ed/) | PitchProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x693799...a4fff5`](./contracts/ethereum-1/0x693799805b502264f9365440b93c113d86a4fff5/) | PriceRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfb286...e42524`](./contracts/ethereum-1/0xdfb286d16f9cd8c5cf4d5180501c190519e42524/) | ProtocolFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x26a6b0...3be140`](./contracts/mantle-5000/0x26a6b0dcdcfb981362afa56d581e4a7dba3be140/) | Puff | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x388925...78176a`](./contracts/base-8453/0x3889255c5a9a55137dfdf870a0c30a285978176a/) | RecoveryController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x812785...250773`](./contracts/base-8453/0x812785c39a794a9518ee72dd0ce0bdd3f6250773/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37912f...059bbd`](./contracts/ethereum-1/0x37912f4c0f0d916890ebd755bf6d1f0a0e059bbd/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x354dbb...590667`](./contracts/base-8453/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | RouterTrampoline | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cba8a...37e0ee`](./contracts/ethereum-1/0x2cba8a85f44dd1da10a093cc0f96d93b3c37e0ee/) | SaddleVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0a668...23d254`](./contracts/ethereum-1/0xc0a668d27f344dc723abc87f88792722e623d254/) | SaddleVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17a67b...8813bc`](./contracts/ethereum-1/0x17a67bdb5cfb7a21781240997505d69a398813bc/) | SDLDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f5591...639d78`](./contracts/ethereum-1/0x6f559192134709585780e953013b864e00639d78/) | SDLDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ade1f...1eb73b`](./contracts/base-8453/0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b/) | SlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1dc7a0...d67bf1`](./contracts/base-8453/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/) | StakedSlipstreamAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbe07e...a6c125`](./contracts/ethereum-1/0xbbe07e335235b5be21d9ef413fc52aa250a6c125/) | TellerWithMultiAssetSupport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x393893...2b1382`](./contracts/base-8453/0x393893caeb06b5c16728bb1e354b6c36942b1382/) | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7cc801...34ba3a`](./contracts/base-8453/0x7cc8013e784418dc9771403dd057f55ceb34ba3a/) | TrancheWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x657d9a...c96dcb`](./contracts/ethereum-1/0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x512f50...19cc94`](./contracts/ethereum-1/0x512f50a1dc5ac087cd76195fe6388c7b2919cc94/) | VeRevenueConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | WeETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78e593...fd7535`](./contracts/ethereum-1/0x78e59309ba2779a5d3522e965fe9be2790fd7535/) | weEthExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17b582...409270`](./contracts/base-8453/0x17b5826382e3a5257b829cf0546a08bd77409270/) | WrappedAerodromeAM | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5a3cb...c46d35`](./contracts/ethereum-1/0xc5a3cb224b799b982706008a1081073fe0c46d35/) | WstEthExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc1e9b2...d551fc`](./contracts/base-8453/0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc/) | YieldClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1f75ab...d59105`](./contracts/base-8453/0x1f75abf8a24782053b351d9b4ea6d1236ed59105/) | YieldClaimerSlipstream | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ynETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x497bbe...eecfc2`](./contracts/ethereum-1/0x497bbe7d974b45e2e28cfbbdedf9e67646eecfc2/) | ZeroXAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 64 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2, extraction_exact=8

Zero-match audit list:

- [13257] docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit
- [16310] Hourglass_Audit_Report.pdf
- [16311] Hourglass_HFXB_Audit_Report.pdf
- [16312] Hourglass_Index_Audit_Report.pdf
- [16314] Hourglass_v2_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
