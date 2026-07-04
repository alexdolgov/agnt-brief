# Agentic Audit Brief: BTCD

## Project Overview

- Project: BTCD (`btcd`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:37.086Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum
- Contract surface: 83 unique implementations (83 raw deployments)
- DeFi Llama TVL: $1,133,883.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 80 project-authored contract(s) across 2 chain(s); 3 ERC4626 vaults, 8 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 22 common project-authored base contract(s) (reentrancyguarddeprecated, reentrancyguardtransient, pauseable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 83; live-surface contracts included: 83 (83 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/83 (6.0%)
- Deployed-live implementations: 83 of 83 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/83
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 83
- Raw deployments: 83
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 3 | 3.6% | 2025-10 |
| Omniscia | Tier 2 | 2 | 2.4% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BTCD | unknown | ethereum | n/a | [`0xc6694e...be4086`](./contracts/ethereum-1/0xc6694e05b750015f54ac646544a4a9d33cbe4086/) | ✅ Audited |
| BTCDMinting | unknown | ethereum | n/a | [`0x270e9e...56b45f`](./contracts/ethereum-1/0x270e9eef1ad5118f117547e6f809cbdc7a56b45f/) | ✅ Audited |
| BTCDStaking | unknown | ethereum | n/a | [`0x3bc801...abbd5f`](./contracts/ethereum-1/0x3bc801419479865b24b4d32fab0bf64638abbd5f/) | ✅ Audited |
| FISC | unknown | ethereum | n/a | [`0x68b8b9...03a27c`](./contracts/ethereum-1/0x68b8b995cfd068805158c1eaefa7bbfa7503a27c/) | ✅ Audited |
| FISCStaking | unknown | ethereum | n/a | [`0x9bcafa...f71187`](./contracts/ethereum-1/0x9bcafa98867bb972a9a2ae53bb228c96e3f71187/) | ✅ Audited |

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveCarryTradePositionManager | unknown | ethereum | n/a | [`0x7457af...563e4b`](./contracts/ethereum-1/0x7457af3cbc75e30042bf1b7da69cabc5d5563e4b/) | ⚠️ Unaudited |
| Agent | unknown | ethereum | n/a | [`0x46e6ad...21553a`](./contracts/ethereum-1/0x46e6ade9b7b59e151c5bcc877c9b90d50021553a/) | ⚠️ Unaudited |
| AgentUpgrader | unknown | ethereum | n/a | [`0x804739...c3953a`](./contracts/ethereum-1/0x804739d527b550260f633462dedab13399c3953a/) | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | ethereum | n/a | [`0xcc7e22...bd950c`](./contracts/ethereum-1/0xcc7e22e8c8fa860ff6cd7a90c34e466ee0bd950c/) | ⚠️ Unaudited |
| AMO | unknown | ethereum | n/a | [`0x4681a8...704e8f`](./contracts/ethereum-1/0x4681a847863f1d1a584c298ae5a7ac4343704e8f/) | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | ethereum | n/a | [`0xcb6daf...01ee0d`](./contracts/ethereum-1/0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d/) | ⚠️ Unaudited |
| ATokenOracle | unknown | ethereum | n/a | [`0x307874...074fcf`](./contracts/ethereum-1/0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf/) | ⚠️ Unaudited |
| BridgeManager | unknown | arbitrum | n/a | [`0x716fad...afc099`](./contracts/arbitrum-42161/0x716fad40899277e5914bf7fc5f2563caf1afc099/) | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | ethereum | n/a | [`0xe2a466...ba8cc8`](./contracts/ethereum-1/0xe2a466df120fb847520763461d99c22ea5ba8cc8/) | ⚠️ Unaudited |
| CrossChainDispatcher | unknown | ethereum | n/a | [`0x50361a...12a41c`](./contracts/ethereum-1/0x50361afaafd269c1e9b74866a14579bbc512a41c/) | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | ethereum | n/a | [`0x3cef1a...efbb79`](./contracts/ethereum-1/0x3cef1afc0e8324b57293a6e7ce663781bbefbb79/) | ⚠️ Unaudited |
| CurveSUsdsPositionManager | unknown | ethereum | n/a | [`0x81ae2c...eae814`](./contracts/ethereum-1/0x81ae2ce1a7af582e1f186c0d88415fd752eae814/) | ⚠️ Unaudited |
| CurveTriPoolPositionManager | unknown | ethereum | n/a | [`0x7c82b4...2c6543`](./contracts/ethereum-1/0x7c82b4a667bf5dd6a58dbfdb34ac3a4e0d2c6543/) | ⚠️ Unaudited |
| DebtToken | unknown | ethereum | n/a | [`0x7bf63d...7417bb`](./contracts/ethereum-1/0x7bf63dc91f68e0adf5692acf17cb632dc17417bb/) | ⚠️ Unaudited |
| DepositToken | unknown | ethereum | n/a | [`0x6f57db...41650a`](./contracts/ethereum-1/0x6f57db31ae6d62f75297c0f542e1567e0d41650a/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x023dcf...ec35fb`](./contracts/ethereum-1/0x023dcf516c349b615120ee731add909645ec35fb/) | ⚠️ Unaudited |
| ERC4626Adapter | unknown | ethereum | n/a | [`0x32cbc6...b5ff59`](./contracts/ethereum-1/0x32cbc628325eb5a3000d3182c72539c77eb5ff59/) | ⚠️ Unaudited |
| ERC4626TokenOracle | unknown | ethereum | n/a | [`0x288170...c60c97`](./contracts/ethereum-1/0x28817036451a4de34ac3df935a6762a2a1c60c97/) | ⚠️ Unaudited |
| FeeProvider | unknown | ethereum | n/a | [`0xa6a4db...077585`](./contracts/ethereum-1/0xa6a4db8d44769c0420742a750fc8a5c4ec077585/) | ⚠️ Unaudited |
| FluidLitePositionManager | unknown | ethereum | n/a | [`0xfdd022...25a0f9`](./contracts/ethereum-1/0xfdd0224cc556af301e06d46bbe27b5298d25a0f9/) | ⚠️ Unaudited |
| FluidLiteVaultProxy | unknown | ethereum | n/a | [`0x273da9...c29012`](./contracts/ethereum-1/0x273da948aca9261043fbdb2a857bc255ecc29012/) | ⚠️ Unaudited |
| GmPositionManager | unknown | arbitrum | n/a | [`0xaf3079...39f4d0`](./contracts/arbitrum-42161/0xaf307925e44bbac289c1ef6221a8ae36b839f4d0/) | ⚠️ Unaudited |
| HemiBTCRateProvider | unknown | ethereum | n/a | [`0x7d992c...6fc9e6`](./contracts/ethereum-1/0x7d992cf60870237c74eef68def2ba1f1906fc9e6/) | ⚠️ Unaudited |
| IbBtcTokenOracle | unknown | ethereum | n/a | [`0x656f1f...c9e4d0`](./contracts/ethereum-1/0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0/) | ⚠️ Unaudited |
| InfiniFiAdapter | unknown | ethereum | n/a | [`0xf974d7...f2fb41`](./contracts/ethereum-1/0xf974d7435e86db32d8a6d021934712ea51f2fb41/) | ⚠️ Unaudited |
| InifniFiAdapter | unknown | ethereum | n/a | [`0xa24b17...fe8416`](./contracts/ethereum-1/0xa24b17e30e88d8ea582a2c41d0d8c9208efe8416/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x98c23e...e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | ethereum | n/a | [`0xc4316d...6a0456`](./contracts/ethereum-1/0xc4316d27ec627e03bd4d176e570cd0018e6a0456/) | ⚠️ Unaudited |
| LitePSMSupplyFuse | unknown | ethereum | n/a | [`0x3e91c9...238183`](./contracts/ethereum-1/0x3e91c9ff0c495e1e50b470aedecc9b9da1238183/) | ⚠️ Unaudited |
| MainAndFallbackOracle | unknown | ethereum | n/a | [`0xe0af15...3d3017`](./contracts/ethereum-1/0xe0af15b4689cf81a9f1bfc6857d842f2813d3017/) | ⚠️ Unaudited |
| MaplePool | unknown | ethereum | n/a | [`0x80ac24...f5cc0b`](./contracts/ethereum-1/0x80ac24aa929eaf5013f6436cda2a7ba190f5cc0b/) | ⚠️ Unaudited |
| MasterOracle | unknown | ethereum | n/a | [`0xdb2d0b...2c3766`](./contracts/ethereum-1/0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766/) | ⚠️ Unaudited |
| MetAirdrop | unknown | ethereum | n/a | [`0x265714...842309`](./contracts/ethereum-1/0x265714b10b9309a8a7a505dbfa6cb6c39b842309/) | ⚠️ Unaudited |
| MintingProxy | unknown | ethereum | n/a | [`0x09d575...d1a79f`](./contracts/ethereum-1/0x09d575eaaf399c0f81b6ea2be4990512cbd1a79f/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoBlueSupplyPositionManager | unknown | ethereum | n/a | [`0x24313a...968319`](./contracts/ethereum-1/0x24313a5db051e08e8064582f8a5e2f5c52968319/) | ⚠️ Unaudited |
| MStableTokenOracle | unknown | ethereum | n/a | [`0xffd74e...2dfd09`](./contracts/ethereum-1/0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09/) | ⚠️ Unaudited |
| Multicall | unknown | ethereum | n/a | [`0x18f1fa...6961be`](./contracts/ethereum-1/0x18f1fac179feb0ee44f339a616fefb979a6961be/) | ⚠️ Unaudited |
| NativeTokenGateway | unknown | ethereum | n/a | [`0x186df6...743aa6`](./contracts/ethereum-1/0x186df63e79a7089dbb325567f587ebb5a3743aa6/) | ⚠️ Unaudited |
| OFT | unknown | ethereum | n/a | [`0x06ea69...ad9f00`](./contracts/ethereum-1/0x06ea695b91700071b161a434fed42d1dcbad9f00/) | ⚠️ Unaudited |
| OFTAdapter | unknown | ethereum | n/a | [`0x010f0b...340e94`](./contracts/ethereum-1/0x010f0bd6576949e6ac6eea11ed8c535388340e94/) | ⚠️ Unaudited |
| Operator | unknown | ethereum | n/a | [`0xc06d63...bad360`](./contracts/ethereum-1/0xc06d6347915f6b5e9dbb53fe17b988b99dbad360/) | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | ethereum | n/a | [`0x073a51...c74c4a`](./contracts/ethereum-1/0x073a51b50f49a82345ef8c3ae1bb1cfc0bc74c4a/) | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | [`0x1cb2a9...afaa27`](./contracts/ethereum-1/0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27/) | ⚠️ Unaudited |
| PoolRegistry | unknown | ethereum | n/a | [`0x01491b...45ae65`](./contracts/ethereum-1/0x01491b3598a90c080b9429f9a86764fa6845ae65/) | ⚠️ Unaudited |
| PositionRegistry | unknown | ethereum | n/a | [`0x1c8225...ef7435`](./contracts/ethereum-1/0x1c82257e30a73e268ec578f419f35dbce1ef7435/) | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | ethereum | n/a | [`0x32a21e...169a23`](./contracts/ethereum-1/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/) | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | ethereum | n/a | [`0x59633b...f76f40`](./contracts/ethereum-1/0x59633b825d4aa12cb0907616746d76dd88f76f40/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x262b12...853bdd`](./contracts/ethereum-1/0x262b12c5701ddf1edac2870ad6338d23d5853bdd/) | ⚠️ Unaudited |
| ProxyOFT | unknown | ethereum | n/a | [`0x1cacd2...4b7102`](./contracts/ethereum-1/0x1cacd2d64edccd5df47824a0b85a1dacca4b7102/) | ⚠️ Unaudited |
| PullOracle | unknown | ethereum | n/a | [`0x1f278b...3dd351`](./contracts/ethereum-1/0x1f278b7eff04add48ff81ae1a01cbc178b3dd351/) | ⚠️ Unaudited |
| PythMainnetPriceProvider | unknown | ethereum | n/a | [`0x7c2d5b...14e85c`](./contracts/ethereum-1/0x7c2d5b1e7d7be588389bdb94138cc37dc014e85c/) | ⚠️ Unaudited |
| Quoter | unknown | ethereum | n/a | [`0x5f6c71...406834`](./contracts/ethereum-1/0x5f6c71f41232a1aeae2623c4ac7b111c38406834/) | ⚠️ Unaudited |
| RedstoneMainnetPriceProvider | unknown | ethereum | n/a | [`0x2e597e...eeac6e`](./contracts/ethereum-1/0x2e597e6c827a8527413c19065ec0725e03eeac6e/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | ethereum | n/a | [`0x70845d...cf44d8`](./contracts/ethereum-1/0x70845de4d1cc8fa169c42574e329a298ebcf44d8/) | ⚠️ Unaudited |
| RoutedSwapper | unknown | ethereum | n/a | [`0x8f1561...9c0bb3`](./contracts/ethereum-1/0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3/) | ⚠️ Unaudited |
| SBTCDOracle | unknown | ethereum | n/a | [`0x332ebf...8a6d94`](./contracts/ethereum-1/0x332ebf042a7b7d87a8a2628186f8a5b12d8a6d94/) | ⚠️ Unaudited |
| SBTCDPegUsdcOracle | unknown | ethereum | n/a | [`0x2ed577...d408b7`](./contracts/ethereum-1/0x2ed5777431184d2fe33dd993a776960a2fd408b7/) | ⚠️ Unaudited |
| SiUsdTokenOracle | unknown | ethereum | n/a | [`0x37d8c0...74d931`](./contracts/ethereum-1/0x37d8c0afeef48aa9d925475cf6c73e4d8c74d931/) | ⚠️ Unaudited |
| SmartFarmingManager | unknown | ethereum | n/a | [`0x2b70e6...5f7c16`](./contracts/ethereum-1/0x2b70e663ba015c59556b6186822d90159d5f7c16/) | ⚠️ Unaudited |
| StableCoinProvider | unknown | ethereum | n/a | [`0xe55744...ef005a`](./contracts/ethereum-1/0xe55744ebb196d0e4ddea70204142eaf517ef005a/) | ⚠️ Unaudited |
| SUsdsPositionManager | unknown | ethereum | n/a | [`0x344e78...e2cf58`](./contracts/ethereum-1/0x344e78a1b267c19dfd6d53838e8815ac54e2cf58/) | ⚠️ Unaudited |
| Swapper | unknown | ethereum | n/a | [`0x9a02ae...e7e5eb`](./contracts/ethereum-1/0x9a02ae403d6ae970748b889bb4e36fd89ae7e5eb/) | ⚠️ Unaudited |
| SwapperUpgrader | unknown | ethereum | n/a | [`0xbde032...d2b2d6`](./contracts/ethereum-1/0xbde032fdf114b4005e5320881b96246347d2b2d6/) | ⚠️ Unaudited |
| SyntheticToken | unknown | ethereum | n/a | [`0xd8a7ce...2f3390`](./contracts/ethereum-1/0xd8a7ceccecbeded9f5350f4ca8faf55ab92f3390/) | ⚠️ Unaudited |
| SyrupSwap | unknown | ethereum | n/a | [`0xde128f...da9ba3`](./contracts/ethereum-1/0xde128f649634e7b3e4b6c372836d38f435da9ba3/) | ⚠️ Unaudited |
| TBYOracle | unknown | ethereum | n/a | [`0x21ce81...f9b4a3`](./contracts/ethereum-1/0x21ce811b3ee51344bf9c2d3595dae56960f9b4a3/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x142518...9bea5d`](./contracts/ethereum-1/0x1425188a9c286ad3cce85eef40d93ad1259bea5d/) | ⚠️ Unaudited |
| VariableDebtTokenInstance | unknown | ethereum | n/a | [`0x40aabe...6a8b7b`](./contracts/ethereum-1/0x40aabef1aa8f0eec637e0e7d92fbffb2f26a8b7b/) | ⚠️ Unaudited |
| VaultMinting | unknown | ethereum | n/a | [`0x700ac5...991af5`](./contracts/ethereum-1/0x700ac5f087468a253920818e662f08ad7d991af5/) | ⚠️ Unaudited |
| VesperVotingPowerV2 | unknown | ethereum | n/a | [`0xd74432...4d5b30`](./contracts/ethereum-1/0xd744320abd3bd4445dc3c90c889391bd454d5b30/) | ⚠️ Unaudited |
| VesperVotingPowerV3 | unknown | ethereum | n/a | [`0x707c24...412075`](./contracts/ethereum-1/0x707c243b59fedf29730cd3d1025fbeeea0412075/) | ⚠️ Unaudited |
| VetroArbitrage | unknown | ethereum | n/a | [`0x359902...982914`](./contracts/ethereum-1/0x359902b1e60574e56248ecdc57c1df1f20982914/) | ⚠️ Unaudited |
| VspMainnetOracle | unknown | ethereum | n/a | [`0x4ff907...c0f538`](./contracts/ethereum-1/0x4ff907f877e92ef39cdfba6d0db73e9e2ac0f538/) | ⚠️ Unaudited |
| VUSDArbitrage | unknown | ethereum | n/a | [`0x1c17cc...ff310a`](./contracts/ethereum-1/0x1c17cc10ddc5b352f7c6c5dda33b07769bff310a/) | ⚠️ Unaudited |
| YieldBasisStrategy | unknown | ethereum | n/a | [`0x174a18...bfca59`](./contracts/ethereum-1/0x174a18b8fdf9ae3ff5e841b69ca9a57d2ebfca59/) | ⚠️ Unaudited |
| YieldDistributor | unknown | ethereum | n/a | [`0x75e630...e91dc7`](./contracts/ethereum-1/0x75e6304d62385fd3590cb9c5ad5d7a729ae91dc7/) | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | ethereum | n/a | [`0x244f68...c88871`](./contracts/ethereum-1/0x244f683d988781545788ef97292cccdba8c88871/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Nethermind-BTCD-Audit-1.pdf](https://1304119658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FnIdk11PalG0VB24i5MDQ%2Fuploads%2FSam1sOy7RoQXOzxl8WHQ%2FNethermind-BTCD-Audit-1.pdf) | Nethermind | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |
| [Nethermind-BTCD-Audit-2.pdf](https://1304119658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FnIdk11PalG0VB24i5MDQ%2Fuploads%2FrWme4izaqYP4p8HHl0pE%2FNethermind-BTCD-Audit-2.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |
| [Omniscia BTCD Labs Audit.pdf](https://1304119658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FnIdk11PalG0VB24i5MDQ%2Fuploads%2FdaWV0PfiMzX77qe12Fu8%2FOmniscia%20BTCD%20Labs%20Audit.pdf) | Omniscia | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 83 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=7

Fork inheritance lineage and inherited audits are included when available.
