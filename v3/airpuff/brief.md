# Agentic Audit Brief: AirPuff

## Project Overview

- Project: AirPuff (`airpuff`)
- Website: [https://www.airpuff.io](https://www.airpuff.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:24.924Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, ethereum, mantle
- Contract surface: 183 unique implementations (183 raw deployments)
- DeFi Llama TVL: $432,648.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Leveraged Farming. Structurally: 179 project-authored contract(s) across 3 chain(s); 5 ERC4626 vaults, 47 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 37 common project-authored base contract(s) (proxy, erc1967upgrade, accesscontrolupgradeable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Veda** (`veda`) in the CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter subsystem.
15 audits inherited from `veda`, scoped to that subsystem.

Total inherited audits: 15. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 183; live-surface contracts included: 183 (182 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/182 (5.5%)
- Deployed-live implementations: 182 of 183 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/183
- Verified + Unaudited implementations: 173
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 183
- Raw deployments: 183
- Audits discovered: 17 (2 direct, 15 inherited from forked code)
- Scoreable audits (matched contracts): 17
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 8 fresh, 0 aging, 2 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 2.2% (Certora, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 6 | 3.3% | 2024-03 |
| 0xMacro | Tier 2 | 4 | 2.2% | 2026-06 |
| certora | Tier 1 | 4 | 2.2% | 2026-04 |
| sigma-prime | Tier 2 | 4 | 2.2% | 2025-12 |
| Spearbit | Tier 1 | 4 | 2.2% | n/a |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirPuffHandler | unknown | arbitrum | n/a | [`0x15f6cb...d57133`](./contracts/arbitrum-42161/0x15f6cb41a5196d14c8754e2e582721d01fd57133/) | ✅ Audited |
| AirPuffLendingARB | unknown | arbitrum | n/a | [`0x529f94...217517`](./contracts/arbitrum-42161/0x529f94bcd37896b6a38452497c62b2f0a8217517/) | ✅ Audited |
| AirPuffVault | unknown | arbitrum | n/a | [`0x0770c1...94db6d`](./contracts/arbitrum-42161/0x0770c120f1bf0ed4f9aa88974ab1af272294db6d/) | ✅ Audited |
| AirPuffVaultezETH | unknown | arbitrum | n/a | [`0x2a678f...435673`](./contracts/arbitrum-42161/0x2a678fc5dee446c11d092d9012e3fabdcd435673/) | ✅ Audited |
| AirPuffVaultrsETH | unknown | arbitrum | n/a | [`0x3a30b3...f1a8c5`](./contracts/arbitrum-42161/0x3a30b36e0daaa96f0d50775c4479b5261df1a8c5/) | ✅ Audited |
| AirPuffVaultweETH | unknown | arbitrum | n/a | [`0x123b00...6ef4a6`](./contracts/arbitrum-42161/0x123b001be63d77840213be689a9090a0c46ef4a6/) | ✅ Audited |
| CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport | unknown | ethereum | n/a | [`0xea1a63...06a221`](./contracts/ethereum-1/0xea1a6307d9b18f8d1cbf1c3dd6aad8416c06a221/) | ✅ Audited |
| FeesAndReserves | unknown | ethereum | n/a | [`0x8a2295...02ec74`](./contracts/ethereum-1/0x8a22951e3b5133844e37959cc75fce9b3502ec74/) | ✅ Audited |
| FeesAndReservesAdaptor | unknown | ethereum | n/a | [`0x5d84ec...b358da`](./contracts/ethereum-1/0x5d84ec98c476b159f3e107709f224d5bbbb358da/) | ✅ Audited |
| PriceRouter | unknown | ethereum | n/a | [`0x693799...a4fff5`](./contracts/ethereum-1/0x693799805b502264f9365440b93c113d86a4fff5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (173)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | unknown | ethereum | n/a | [`0xc6f89c...622d8f`](./contracts/ethereum-1/0xc6f89cc0551c944ceae872997a4060dc95622d8f/) | ⚠️ Unaudited |
| AddressMapping | unknown | mantle | n/a | [`0x3ff715...78998f`](./contracts/mantle-5000/0x3ff715ace052dacb2ef9f3a7f875cbb92078998f/) | ⚠️ Unaudited |
| AirPuff1XAPUFF | unknown | ethereum | n/a | [`0x17bf16...04177f`](./contracts/ethereum-1/0x17bf16afd417cd1eeb3230bce1fda4e2b704177f/) | ⚠️ Unaudited |
| AirPuff1XEmmETHM | unknown | ethereum | n/a | [`0x239661...9efc3f`](./contracts/ethereum-1/0x239661aa77a4cad7e8ac20da6932173b239efc3f/) | ⚠️ Unaudited |
| AirPuff1XETHM | unknown | ethereum | n/a | [`0x43d10b...0bdbb5`](./contracts/ethereum-1/0x43d10bfb9f1625827ee8ee7a461ede28340bdbb5/) | ⚠️ Unaudited |
| AirPuff1XezETH | unknown | arbitrum | n/a | [`0x0bac1a...cff781`](./contracts/arbitrum-42161/0x0bac1a3d569c16d8ad9d3ab37f61daf18dcff781/) | ⚠️ Unaudited |
| AirPuff1XezETH26DEC2024M | unknown | ethereum | n/a | [`0x3d4673...e55ae8`](./contracts/ethereum-1/0x3d467331e5f6318f6764aed329930ce7a9e55ae8/) | ⚠️ Unaudited |
| AirPuff1XezETHM | unknown | ethereum | n/a | [`0xa6550c...c558f5`](./contracts/ethereum-1/0xa6550cb1c5a06d41c3ed2ca6d52a12a5e1c558f5/) | ⚠️ Unaudited |
| AirPuff1XezETHM260924 | unknown | ethereum | n/a | [`0x73996a...c1bab0`](./contracts/ethereum-1/0x73996ac6aa1d898450e8b01790f4a96101c1bab0/) | ⚠️ Unaudited |
| AirPuff1XkrsETHM | unknown | ethereum | n/a | [`0x9c70d4...446f88`](./contracts/ethereum-1/0x9c70d497814f1eba863758020da7bdc815446f88/) | ⚠️ Unaudited |
| AirPuff1XmstETHM | unknown | ethereum | n/a | [`0x4f3925...d6ec75`](./contracts/ethereum-1/0x4f3925f1cb3684c0d59a3e027178f05e16d6ec75/) | ⚠️ Unaudited |
| AirPuff1XmswETH | unknown | ethereum | n/a | [`0x110019...fe572c`](./contracts/ethereum-1/0x1100195fbda2f22aa6f394e6c65f168779fe572c/) | ⚠️ Unaudited |
| AirPuff1XmwbETHM | unknown | ethereum | n/a | [`0x932af7...a652d8`](./contracts/ethereum-1/0x932af71317414c053baa84ba03d088bcc1a652d8/) | ⚠️ Unaudited |
| AirPuff1XPtENAM | unknown | ethereum | n/a | [`0xde69fb...88bcfd`](./contracts/ethereum-1/0xde69fbd8a2aa124078e364e1222752f2eb88bcfd/) | ⚠️ Unaudited |
| AirPuff1XPtUSDe | unknown | ethereum | n/a | [`0x37710e...eddee7`](./contracts/ethereum-1/0x37710e035bc9b0249632be8c98cd29d76beddee7/) | ⚠️ Unaudited |
| AirPuff1XrsETH | unknown | ethereum | n/a | [`0x15a692...120843`](./contracts/ethereum-1/0x15a692f5986e9b3cd0af02d0f5c78a37cb120843/) | ⚠️ Unaudited |
| AirPuff1XrsETHM | unknown | ethereum | n/a | [`0x83a162...a9e29f`](./contracts/ethereum-1/0x83a162da8df54ff845773169f019fd1505a9e29f/) | ⚠️ Unaudited |
| AirPuff1XrsETHM260924 | unknown | ethereum | n/a | [`0x76338f...17c634`](./contracts/ethereum-1/0x76338fca82925fe2df2c4f2c6e9545247617c634/) | ⚠️ Unaudited |
| AirPuff1XrswETHM | unknown | ethereum | n/a | [`0x9977ee...64e2f5`](./contracts/ethereum-1/0x9977eea94d74cc31eb0e2870c356d599cd64e2f5/) | ⚠️ Unaudited |
| AirPuff1XStakingezETHM220824 | unknown | ethereum | n/a | [`0x0c18d2...79f8c3`](./contracts/ethereum-1/0x0c18d2c7c72e4b16093da3c773c030dac479f8c3/) | ⚠️ Unaudited |
| AirPuff1XstTAOM | unknown | ethereum | n/a | [`0xc9710e...5212b5`](./contracts/ethereum-1/0xc9710ea04a0adabb80e4215dff38da13005212b5/) | ⚠️ Unaudited |
| AirPuff1XsvETH | unknown | ethereum | n/a | [`0x060fea...65247f`](./contracts/ethereum-1/0x060feab7904378e2a487974e7ba98251ad65247f/) | ⚠️ Unaudited |
| AirPuff1XuniETH | unknown | ethereum | n/a | [`0x4d35b4...efb410`](./contracts/ethereum-1/0x4d35b450a9a4a9e8cd4eb12a72d3388a8cefb410/) | ⚠️ Unaudited |
| AirPuff1XUSDeM | unknown | ethereum | n/a | [`0x1f53c5...a7c0c2`](./contracts/ethereum-1/0x1f53c5474250dce45b64b32b4917b5473fa7c0c2/) | ⚠️ Unaudited |
| AirPuff1XweETH | unknown | arbitrum | n/a | [`0x0cdf98...39ab23`](./contracts/arbitrum-42161/0x0cdf9832e2d168f5b514e7e0b8b03b5dbe39ab23/) | ⚠️ Unaudited |
| AirPuff1XweETHM | unknown | ethereum | n/a | [`0x83886a...8a6ac4`](./contracts/ethereum-1/0x83886af55dac462dc7840cdb0157bb3e7d8a6ac4/) | ⚠️ Unaudited |
| AirPuff1XweETHM260924 | unknown | ethereum | n/a | [`0x9988bf...ff8850`](./contracts/ethereum-1/0x9988bfef718c17f39f074801a511cd0890ff8850/) | ⚠️ Unaudited |
| AirPuff1XZircuitrsETHM220824 | unknown | ethereum | n/a | [`0x67cb2a...31d372`](./contracts/ethereum-1/0x67cb2a4f3854361c5b85c6567e930360b331d372/) | ⚠️ Unaudited |
| AirPuff1XZircuitweETHM220824 | unknown | ethereum | n/a | [`0x1692de...f1695e`](./contracts/ethereum-1/0x1692de10a490556f832154b4885e437c98f1695e/) | ⚠️ Unaudited |
| AirPuffClaimer | unknown | ethereum | n/a | [`0x278c59...2738e8`](./contracts/ethereum-1/0x278c59472c90e0cb02feb757ab91f8e6be2738e8/) | ⚠️ Unaudited |
| AirPuffLendingETH | unknown | ethereum | n/a | [`0x025347...d38ad8`](./contracts/ethereum-1/0x025347f0e979ca18a3ade6ae917926a937d38ad8/) | ⚠️ Unaudited |
| AirPuffLendingUSDC | unknown | arbitrum | n/a | [`0x38583d...b8b7a6`](./contracts/arbitrum-42161/0x38583dd3173929b164025a8db8d7aab209b8b7a6/) | ⚠️ Unaudited |
| AirPuffLendingUSDCe | unknown | arbitrum | n/a | [`0x3b9e25...f89c27`](./contracts/arbitrum-42161/0x3b9e25544c5a388175c24a00a8bdce8982f89c27/) | ⚠️ Unaudited |
| AirPuffLendingUSDT | unknown | arbitrum | n/a | [`0x17e9d6...3aab04`](./contracts/arbitrum-42161/0x17e9d664a1c0e1deb03cc2bc50cab910253aab04/) | ⚠️ Unaudited |
| AirPuffLendingwstETH | unknown | arbitrum | n/a | [`0x064559...5ca834`](./contracts/arbitrum-42161/0x0645598baca1a28546f74cf3d87a0146945ca834/) | ⚠️ Unaudited |
| AirPuffptezETH | unknown | ethereum | n/a | [`0x679eb9...bfebd6`](./contracts/ethereum-1/0x679eb9b7c57d9b98684034cdafc2f4a72abfebd6/) | ⚠️ Unaudited |
| AirPuffptrsETH | unknown | ethereum | n/a | [`0x72da01...c493ad`](./contracts/ethereum-1/0x72da018b1c7faaceaa141dec753f1ffe88c493ad/) | ⚠️ Unaudited |
| AirPuffptweETH | unknown | ethereum | n/a | [`0x02c888...d2e93b`](./contracts/ethereum-1/0x02c888ddcde83fcaee897eed2a6052746cd2e93b/) | ⚠️ Unaudited |
| AirPuffVaultEPM | unknown | ethereum | n/a | [`0x2baff9...e42b75`](./contracts/ethereum-1/0x2baff917cc452367ad741a674036da2b22e42b75/) | ⚠️ Unaudited |
| AirPuffVaultezETHM | unknown | ethereum | n/a | [`0x252951...7b338c`](./contracts/ethereum-1/0x2529516f8b9fc513c78cde1e324adbc8c97b338c/) | ⚠️ Unaudited |
| AirPuffVaultLiquidM | unknown | ethereum | n/a | [`0x029ec2...ea8f4f`](./contracts/ethereum-1/0x029ec25fafba9c281f1f7447b639179ebeea8f4f/) | ⚠️ Unaudited |
| AirPuffVaultMNT | unknown | mantle | n/a | [`0x1002c6...cb4cec`](./contracts/mantle-5000/0x1002c6e1dc4c593b7f980e5566b453f730cb4cec/) | ⚠️ Unaudited |
| AirPuffVaultrsETHM | unknown | ethereum | n/a | [`0x0219e8...04561a`](./contracts/ethereum-1/0x0219e83a4156780954203c6837fcdb866d04561a/) | ⚠️ Unaudited |
| AirPuffVaultsUSDEM | unknown | ethereum | n/a | [`0x686e7e...eeb554`](./contracts/ethereum-1/0x686e7e13373804353c7fb71ce154202f50eeb554/) | ⚠️ Unaudited |
| AirPuffVaultuniETHM | unknown | ethereum | n/a | [`0x0934a8...5034b8`](./contracts/ethereum-1/0x0934a8ece0a62913993b4333154efb38925034b8/) | ⚠️ Unaudited |
| AirPuffVaultVectorM | unknown | ethereum | n/a | [`0x97fa26...567768`](./contracts/ethereum-1/0x97fa2600eb3c4bc3ab8c3a1d07cf71a09d567768/) | ⚠️ Unaudited |
| AirPuffVaultweETHM | unknown | ethereum | n/a | [`0x298144...3219f3`](./contracts/ethereum-1/0x2981444f3bc2641fe2d2a79b69356bfc983219f3/) | ⚠️ Unaudited |
| AllocateRegister | unknown | mantle | n/a | [`0x0c2b8c...200cf2`](./contracts/mantle-5000/0x0c2b8cc7db1fde42b386259f7ae4b578a9200cf2/) | ⚠️ Unaudited |
| ApuffToken | unknown | arbitrum | n/a | [`0x2be056...5307d9`](./contracts/arbitrum-42161/0x2be056e595110b30ddd5eaf674bdac54615307d9/) | ⚠️ Unaudited |
| ApuffTokenMain | unknown | ethereum | n/a | [`0x2be056...5307d9`](./contracts/ethereum-1/0x2be056e595110b30ddd5eaf674bdac54615307d9/) | ⚠️ Unaudited |
| ApxETHSY | unknown | ethereum | n/a | [`0x440d08...02d239`](./contracts/ethereum-1/0x440d08d85cb12352dabac2971de81e9be702d239/) | ⚠️ Unaudited |
| ArcticArchitectureLens | unknown | ethereum | n/a | [`0xe12eef...faa54a`](./contracts/ethereum-1/0xe12eef08bfef01579d22895cd790f32d94faa54a/) | ⚠️ Unaudited |
| AtomicQueue | unknown | ethereum | n/a | [`0xd45884...5dea07`](./contracts/ethereum-1/0xd45884b592e316eb816199615a95c182f75dea07/) | ⚠️ Unaudited |
| AtomicSolverV2 | unknown | ethereum | n/a | [`0x5b744e...1a2d7a`](./contracts/ethereum-1/0x5b744e93bbf5caf38df34f3ba14a40024d1a2d7a/) | ⚠️ Unaudited |
| AuraERC4626Adaptor | unknown | ethereum | n/a | [`0x0f3f8c...2bb162`](./contracts/ethereum-1/0x0f3f8cab8d3888281033faf7a6c0b74de62bb162/) | ⚠️ Unaudited |
| BoringVault | unknown | ethereum | n/a | [`0xc79cc4...5952ea`](./contracts/ethereum-1/0xc79cc44dc8a91330872d7815ae9cfb04405952ea/) | ⚠️ Unaudited |
| CCIPPeer | unknown | ethereum | n/a | [`0x17ea3d...908ee1`](./contracts/ethereum-1/0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1/) | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | ethereum | n/a | [`0x7c3f1f...465c95`](./contracts/ethereum-1/0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95/) | ⚠️ Unaudited |
| ChefIncentivesController | unknown | arbitrum | n/a | [`0x35dd41...6aa7d8`](./contracts/arbitrum-42161/0x35dd4138f92a607bbf78a66726ab76e3996aa7d8/) | ⚠️ Unaudited |
| Conversion | unknown | mantle | n/a | [`0x57f4c0...9ff713`](./contracts/mantle-5000/0x57f4c044b588c86270629c5e7fc810c5b89ff713/) | ⚠️ Unaudited |
| DapiProxy | unknown | ethereum | n/a | [`0x1250bb...1aa67d`](./contracts/ethereum-1/0x1250bbacbc9302d2c0b5f4e48cc9907a6c1aa67d/) | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | ethereum | n/a | [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/) | ⚠️ Unaudited |
| Dinero | unknown | ethereum | n/a | [`0x6df0e6...0c14d3`](./contracts/ethereum-1/0x6df0e641fc9847c0c6fde39be6253045440c14d3/) | ⚠️ Unaudited |
| DineroOFTLockbox | unknown | ethereum | n/a | [`0x1cd5b7...cef208`](./contracts/ethereum-1/0x1cd5b73d12cb23b2835c873e4faffe83bbcef208/) | ⚠️ Unaudited |
| directBTC | unknown | ethereum | n/a | [`0x11964b...09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/) | ⚠️ Unaudited |
| DirectBTCMinter | unknown | ethereum | n/a | [`0x704a2f...9481ee`](./contracts/ethereum-1/0x704a2f4de8628e180fffa0e89203468dcc9481ee/) | ⚠️ Unaudited |
| DirectStaking | unknown | ethereum | n/a | [`0x07a5d3...0eef57`](./contracts/ethereum-1/0x07a5d37823c5c7963042fab79ed4747ab60eef57/) | ⚠️ Unaudited |
| DistributeYieldERC20Upgradeable | unknown | mantle | n/a | [`0x713db7...c67d56`](./contracts/mantle-5000/0x713db747488b767a75fd46762a34c5d119c67d56/) | ⚠️ Unaudited |
| Distributor | unknown | ethereum | n/a | [`0xc93ab6...6a21b3`](./contracts/ethereum-1/0xc93ab6aca2c14422a65a31010ac2b4baa86a21b3/) | ⚠️ Unaudited |
| eEthExtension | unknown | ethereum | n/a | [`0x4ec6e3...740d5b`](./contracts/ethereum-1/0x4ec6e3b0933cc90fdb274267dff1a57db9740d5b/) | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | arbitrum | n/a | [`0x7b0378...354951`](./contracts/arbitrum-42161/0x7b037835bbd546dbf76a3658758b9a95d2354951/) | ⚠️ Unaudited |
| EmptyContract | unknown | mantle | n/a | [`0x012aa8...f8510f`](./contracts/mantle-5000/0x012aa88a0fb6292b185fd367253e8c0050f8510f/) | ⚠️ Unaudited |
| EmptyImplementation | unknown | mantle | n/a | [`0x7a3c0c...62cebb`](./contracts/mantle-5000/0x7a3c0c5fadde89185947639f256a3ac3d162cebb/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | mantle | n/a | [`0x6199cc...82f58e`](./contracts/mantle-5000/0x6199ccd9273a1e0e41e2cc18d9dacd1e9382f58e/) | ⚠️ Unaudited |
| ERC20Adaptor | unknown | ethereum | n/a | [`0x7a5b17...81331d`](./contracts/ethereum-1/0x7a5b17e0ad1e0f37061fcc7f90512c367981331d/) | ⚠️ Unaudited |
| ERC4626Adaptor | unknown | ethereum | n/a | [`0xb1761a...a681e2`](./contracts/ethereum-1/0xb1761a7c7799cb429eb5bf2db16d88534da681e2/) | ⚠️ Unaudited |
| ERC4626SharePriceOracle | unknown | ethereum | n/a | [`0x9d3eb5...8014b0`](./contracts/ethereum-1/0x9d3eb50ed4540135a78facd70063bccc988014b0/) | ⚠️ Unaudited |
| FBTCProxy | unknown | ethereum | n/a | [`0xa3a30f...85b1ae`](./contracts/ethereum-1/0xa3a30f627dbc02aff3c0a736a065443a0e85b1ae/) | ⚠️ Unaudited |
| Fiat24CardAuthorizationMarqeta | unknown | mantle | n/a | [`0x1b56ea...017821`](./contracts/mantle-5000/0x1b56ea9c73076f909172271c3e6ef668de017821/) | ⚠️ Unaudited |
| Fiat24CryptoDeposit | unknown | mantle | n/a | [`0x31b6f0...349f74`](./contracts/mantle-5000/0x31b6f06f2c12bd288ad6aad7073f21cb57349f74/) | ⚠️ Unaudited |
| Fiat24CryptoRelay | unknown | mantle | n/a | [`0xcb9176...46d450`](./contracts/mantle-5000/0xcb917643b10814186e6e214ac9e2b84dd946d450/) | ⚠️ Unaudited |
| gVEC | unknown | ethereum | n/a | [`0xb2d007...dfa2e6`](./contracts/ethereum-1/0xb2d007293a421471586d6bc3fbfeb1990fdfa2e6/) | ⚠️ Unaudited |
| gVECOFTAdapter | unknown | ethereum | n/a | [`0xc00a7e...036057`](./contracts/ethereum-1/0xc00a7efa3c59abd91be95accb8cdc9c50e036057/) | ⚠️ Unaudited |
| IncentiveDistributor | unknown | ethereum | n/a | [`0xf0164d...0f8780`](./contracts/ethereum-1/0xf0164d48b308c42ae028e3379b2fb620e70f8780/) | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | n/a | [`0x5a7b3c...4ca033`](./contracts/mantle-5000/0x5a7b3cde8ac8d780af4797bf1517464ac54ca033/) | ⚠️ Unaudited |
| L2Cook | unknown | mantle | n/a | [`0x4a5982...a5e28b`](./contracts/mantle-5000/0x4a59822fd29c7ea55b13f81835e4ab8b23a5e28b/) | ⚠️ Unaudited |
| L2CookMessagingStatus | unknown | mantle | n/a | [`0xfcbbf8...39bec0`](./contracts/mantle-5000/0xfcbbf8dce630abbeec86962ce136bbd83839bec0/) | ⚠️ Unaudited |
| L2MessagingStatus | unknown | mantle | n/a | [`0xf9ca01...edcb81`](./contracts/mantle-5000/0xf9ca011167f38e8344658b1c7063ed0b42edcb81/) | ⚠️ Unaudited |
| ManagerWithMerkleVerification | unknown | ethereum | n/a | [`0x048a50...4d0a17`](./contracts/ethereum-1/0x048a5002e57166a78dd060b3b36ded2f404d0a17/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | mantle | n/a | [`0x6c0766...79545d`](./contracts/mantle-5000/0x6c0766bc11f81c3761a806e4e21dec095e79545d/) | ⚠️ Unaudited |
| METHL2 | unknown | mantle | n/a | [`0x47501d...9cdcc5`](./contracts/mantle-5000/0x47501ddd1f8023da2b29e45f5d41299f819cdcc5/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0x218c92...371e63`](./contracts/ethereum-1/0x218c927f9159aa2a485bbd164e70b6d0b7371e63/) | ⚠️ Unaudited |
| MJAirdrop | unknown | mantle | n/a | [`0xf9e5cb...09bc72`](./contracts/mantle-5000/0xf9e5cb8d801faabd5e0bb1ed990168175b09bc72/) | ⚠️ Unaudited |
| MntStakeV2Contract | unknown | mantle | n/a | [`0x9f39dc...0d1e4f`](./contracts/mantle-5000/0x9f39dc8ea0a73ab462d23104699afae9c30d1e4f/) | ⚠️ Unaudited |
| MsgReceiveEndpointUpg | unknown | arbitrum | n/a | [`0x90272f...15a595`](./contracts/arbitrum-42161/0x90272f9ce8eb5834a190d5898a17b2f93615a595/) | ⚠️ Unaudited |
| MsgSendEndpointUpg | unknown | ethereum | n/a | [`0x690090...ab62f8`](./contracts/ethereum-1/0x69009083e73a19c168b1b5d1ad2a2a4f36ab62f8/) | ⚠️ Unaudited |
| MShards | unknown | mantle | n/a | [`0xd7782b...dbb111`](./contracts/mantle-5000/0xd7782b99671dd23203ebd4584fc71cf2b3dbb111/) | ⚠️ Unaudited |
| OneInchAdaptor | unknown | ethereum | n/a | [`0x5f7de9...c58d43`](./contracts/ethereum-1/0x5f7de90fb222d37225dd8929672e427699c58d43/) | ⚠️ Unaudited |
| OracleAdapter | unknown | ethereum | n/a | [`0x15f120...eb44fc`](./contracts/ethereum-1/0x15f1203afb3ba2bff383dc0a3d5a781dedeb44fc/) | ⚠️ Unaudited |
| Pauser | unknown | mantle | n/a | [`0x8255c1...ab503b`](./contracts/mantle-5000/0x8255c1b177605a0d76fc7e74d60576f16cab503b/) | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | ethereum | n/a | [`0x094be6...3d7e67`](./contracts/ethereum-1/0x094be6bd31d7b860f7d2c1f280fd09f0463d7e67/) | ⚠️ Unaudited |
| PirexEth | unknown | ethereum | n/a | [`0xd664b7...8b02b0`](./contracts/ethereum-1/0xd664b74274dfeb538d9bac494f3a4760828b02b0/) | ⚠️ Unaudited |
| PirexFees | unknown | ethereum | n/a | [`0x177d68...717fdb`](./contracts/ethereum-1/0x177d685384aa1ac5aba41b7e649f9fa0be717fdb/) | ⚠️ Unaudited |
| PodOwner | unknown | ethereum | n/a | [`0x0ac774...e76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/) | ⚠️ Unaudited |
| PowderMapping | unknown | mantle | n/a | [`0x7083c5...c479ea`](./contracts/mantle-5000/0x7083c54e15cf50a05033b7c7d3801d0d1ac479ea/) | ⚠️ Unaudited |
| PriceProviderMain | unknown | ethereum | n/a | [`0x9c9082...268e1c`](./contracts/ethereum-1/0x9c90825568c9c57754065425c3340a89f6268e1c/) | ⚠️ Unaudited |
| PriceProviderSide | unknown | arbitrum | n/a | [`0x1019cd...a931ec`](./contracts/arbitrum-42161/0x1019cd5042bbb4568cc79027604bd98d6aa931ec/) | ⚠️ Unaudited |
| ProtocolFeeCollector | unknown | ethereum | n/a | [`0xdfb286...e42524`](./contracts/ethereum-1/0xdfb286d16f9cd8c5cf4d5180501c190519e42524/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x0aa581...b078c0`](./contracts/ethereum-1/0x0aa581b0970e82c9863b1fd3fcc3dde6d7b078c0/) | ⚠️ Unaudited |
| pxETHvETHBond | unknown | ethereum | n/a | [`0x054b28...dec947`](./contracts/ethereum-1/0x054b28d847c566a6b991de34afeada8bb8dec947/) | ⚠️ Unaudited |
| Redeem | unknown | ethereum | n/a | [`0x6882ae...57497d`](./contracts/ethereum-1/0x6882ae88956f676a15efe3e9f920aabaaa57497d/) | ⚠️ Unaudited |
| RedstoneEthPriceFeedExtension | unknown | ethereum | n/a | [`0xdb4b77...63ae84`](./contracts/ethereum-1/0xdb4b778085ed412518cb64207259a746f363ae84/) | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | [`0x37912f...059bbd`](./contracts/ethereum-1/0x37912f4c0f0d916890ebd755bf6d1f0a0e059bbd/) | ⚠️ Unaudited |
| Restaking | unknown | ethereum | n/a | [`0x04f744...b7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/) | ⚠️ Unaudited |
| RewardPool | unknown | ethereum | n/a | [`0x29b06c...50a415`](./contracts/ethereum-1/0x29b06ce31449a9f89719137a705cff395450a415/) | ⚠️ Unaudited |
| RewardRecipient | unknown | ethereum | n/a | [`0xcd6152...c76b78`](./contracts/ethereum-1/0xcd615270ab3a7a3a262a4e49935d002278c76b78/) | ⚠️ Unaudited |
| RockXETH | unknown | ethereum | n/a | [`0x3376eb...61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/) | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | n/a | [`0x3774af...4ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/) | ⚠️ Unaudited |
| RockXRestaking | unknown | ethereum | n/a | [`0x351eea...69a098`](./contracts/ethereum-1/0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098/) | ⚠️ Unaudited |
| RolesAuthority | unknown | ethereum | n/a | [`0x6a4abb...c67d73`](./contracts/ethereum-1/0x6a4abbee0a07f358c7706c78fd7cc2702fc67d73/) | ⚠️ Unaudited |
| RSClaim | unknown | mantle | n/a | [`0x7c7219...9668c3`](./contracts/mantle-5000/0x7c7219cc981468324e070434afb59b83ca9668c3/) | ⚠️ Unaudited |
| Sigma | unknown | ethereum | n/a | [`0x18d0d9...d021b5`](./contracts/ethereum-1/0x18d0d914913ac720a6421cc809f3f44697d021b5/) | ⚠️ Unaudited |
| StakedDinero | unknown | ethereum | n/a | [`0x2f412f...94a0e0`](./contracts/ethereum-1/0x2f412f33d8dd91dc6a1c76901499d6c2b194a0e0/) | ⚠️ Unaudited |
| StakedVectorETH | unknown | ethereum | n/a | [`0x6733f0...0fd2bc`](./contracts/ethereum-1/0x6733f0283711f225a447e759d859a70b0c0fd2bc/) | ⚠️ Unaudited |
| StakedVECVesting | unknown | ethereum | n/a | [`0x5291d0...5d26a0`](./contracts/ethereum-1/0x5291d0b8b7d0329ef6895cc759b6fd87125d26a0/) | ⚠️ Unaudited |
| StakingCOOK | unknown | mantle | n/a | [`0x4b7485...2c5159`](./contracts/mantle-5000/0x4b7485b34ab066408568f39e658b86bf7a2c5159/) | ⚠️ Unaudited |
| StakingMETH | unknown | mantle | n/a | [`0x1766be...9d3b82`](./contracts/mantle-5000/0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82/) | ⚠️ Unaudited |
| StakingMNT | unknown | mantle | n/a | [`0x9cdbde...ddad9b`](./contracts/mantle-5000/0x9cdbde30e4f3f0f0e4ead9d7074bebcb99ddad9b/) | ⚠️ Unaudited |
| SubRedManagementAdapterFactory | unknown | mantle | n/a | [`0x6d827c...ddbb40`](./contracts/mantle-5000/0x6d827ca00b26817286a94abfce7aa83418ddbb40/) | ⚠️ Unaudited |
| sVEC | unknown | ethereum | n/a | [`0x66d5c6...9b3365`](./contracts/ethereum-1/0x66d5c66e7c83e0682d947176534242c9f19b3365/) | ⚠️ Unaudited |
| sVECVesting | unknown | ethereum | n/a | [`0x91c894...812733`](./contracts/ethereum-1/0x91c894635d8cfd2c501763394fd66dc237812733/) | ⚠️ Unaudited |
| svETHRateProvider | unknown | ethereum | n/a | [`0xad4bfa...7a1879`](./contracts/ethereum-1/0xad4bfafae75ecd3fed5cfad4e4e9847cd47a1879/) | ⚠️ Unaudited |
| svETHZap | unknown | ethereum | n/a | [`0x6e2875...ec1314`](./contracts/ethereum-1/0x6e28754fe97c306b6adcbc9dd4f6cc5ee7ec1314/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | unknown | ethereum | n/a | [`0xbbe07e...a6c125`](./contracts/ethereum-1/0xbbe07e335235b5be21d9ef413fc52aa250a6c125/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x55148d...13924c`](./contracts/ethereum-1/0x55148d7e3983a54c9f9d1e0c2c2039e2d513924c/) | ⚠️ Unaudited |
| Token | unknown | ethereum | n/a | [`0x2baf3a...77f117`](./contracts/ethereum-1/0x2baf3a2b667a5027a83101d218a9e8b73577f117/) | ⚠️ Unaudited |
| TransferProxy | unknown | ethereum | n/a | [`0xf0ab75...bc342b`](./contracts/ethereum-1/0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x02e3e2...af25ea`](./contracts/ethereum-1/0x02e3e2c644601b18ad67a6f09155fe5581af25ea/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x047d41...10d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1419b4...0e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2ec37d...8f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x4befa2...269e9d`](./contracts/ethereum-1/0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x552b0c...42fa05`](./contracts/ethereum-1/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xe54291...abc716`](./contracts/ethereum-1/0xe542919e4b281f10b437f947c8ba224ddfabc716/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x004560...c24296`](./contracts/mantle-5000/0x0045601c3c4c561012c108ea84a81e36eac24296/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x067e07...eb257b`](./contracts/mantle-5000/0x067e0764ccdc91cf645310c697903c1811eb257b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x08ccf7...d5c978`](./contracts/mantle-5000/0x08ccf72358b44d9d45438fc703962a0a2fd5c978/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0xca4a76...3b6d54`](./contracts/mantle-5000/0xca4a76b437f41b58b2e4d405f264fa04163b6d54/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x04528d...3f8520`](./contracts/arbitrum-42161/0x04528d1bf4a7d47bb02a2f046faf83079a3f8520/) | ⚠️ Unaudited |
| UniV3LiquidityFreezer | unknown | ethereum | n/a | [`0x2805b7...88646d`](./contracts/ethereum-1/0x2805b780759f9c187cad2919d26e90d66688646d/) | ⚠️ Unaudited |
| UpxEth | unknown | ethereum | n/a | [`0x5bf241...c43868`](./contracts/ethereum-1/0x5bf2419a33f82f4c1f075b4006d7fc4104c43868/) | ⚠️ Unaudited |
| ValidatorQueue | unknown | ethereum | n/a | [`0x9e0d7d...c0bbdb`](./contracts/ethereum-1/0x9e0d7d79735e1c63333128149c7b616a0dc0bbdb/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0x078452...98880e`](./contracts/ethereum-1/0x078452351df0bd418ade7328bb693a2eb698880e/) | ⚠️ Unaudited |
| VaultFactory | unknown | mantle | n/a | [`0xaa5c9c...454840`](./contracts/mantle-5000/0xaa5c9c993d960349f18a8ed4e88dc107c3454840/) | ⚠️ Unaudited |
| VECStaking | unknown | ethereum | n/a | [`0xfdc28c...9be9b1`](./contracts/ethereum-1/0xfdc28cd1bfebf3033870c0344b4e0bee639be9b1/) | ⚠️ Unaudited |
| Vector | unknown | ethereum | n/a | [`0x1bb9b6...5d8447`](./contracts/ethereum-1/0x1bb9b64927e0c5e207c9db4093b3738eef5d8447/) | ⚠️ Unaudited |
| VectorBonding | unknown | ethereum | n/a | [`0x3abcf9...13c969`](./contracts/ethereum-1/0x3abcf9dc9e221ac78b31cd1b9d9f5721a513c969/) | ⚠️ Unaudited |
| VectorETH | unknown | ethereum | n/a | [`0x38d64c...6fb4a0`](./contracts/ethereum-1/0x38d64ce1bdf1a9f24e0ec469c9cade61236fb4a0/) | ⚠️ Unaudited |
| VectorETHManagement | unknown | ethereum | n/a | [`0x2d476b...476bcf`](./contracts/ethereum-1/0x2d476be2269dedaaa99d9c50686a8e1000476bcf/) | ⚠️ Unaudited |
| VectorOracle | unknown | ethereum | n/a | [`0xc2afda...a9527d`](./contracts/ethereum-1/0xc2afda6ac5ae6f43f0ab26c3f9a9347edba9527d/) | ⚠️ Unaudited |
| VectorTreasury | unknown | ethereum | n/a | [`0x2dd568...371064`](./contracts/ethereum-1/0x2dd568028682ff2961cc341a4849f1b32f371064/) | ⚠️ Unaudited |
| VectorVest | unknown | ethereum | n/a | [`0xaa9d91...f88a8c`](./contracts/ethereum-1/0xaa9d911947122cc49cc8e0226e808c1a87f88a8c/) | ⚠️ Unaudited |
| VECVest | unknown | ethereum | n/a | [`0x7abcfd...75f1f8`](./contracts/ethereum-1/0x7abcfda9adb27d2291a189d7153af91d5975f1f8/) | ⚠️ Unaudited |
| vETHOFTAdapter | unknown | ethereum | n/a | [`0xa508e8...4107b0`](./contracts/ethereum-1/0xa508e87a4c362bf53c3ebab11ea78f57094107b0/) | ⚠️ Unaudited |
| VeTokenChef | unknown | ethereum | n/a | [`0x2e8147...adeb6d`](./contracts/ethereum-1/0x2e814738604069d11425a70988633dc412adeb6d/) | ⚠️ Unaudited |
| VotingEscrowMainchain | unknown | ethereum | n/a | [`0x476319...ac4369`](./contracts/ethereum-1/0x4763198bf561d1ceba80158ee3f494f304ac4369/) | ⚠️ Unaudited |
| VotingEscrowSidechain | unknown | arbitrum | n/a | [`0x56153f...eb0464`](./contracts/arbitrum-42161/0x56153fdcf2af38725379c7f849c29b69ebeb0464/) | ⚠️ Unaudited |
| weEthExtension | unknown | ethereum | n/a | [`0x78e593...fd7535`](./contracts/ethereum-1/0x78e59309ba2779a5d3522e965fe9be2790fd7535/) | ⚠️ Unaudited |
| WrappedFeedPXETH | unknown | ethereum | n/a | [`0xe463e9...7ff4e9`](./contracts/ethereum-1/0xe463e93f599693669c24dcf6292653d28c7ff4e9/) | ⚠️ Unaudited |
| WstEthExtension | unknown | ethereum | n/a | [`0xc5a3cb...c46d35`](./contracts/ethereum-1/0xc5a3cb224b799b982706008a1081073fe0c46d35/) | ⚠️ Unaudited |
| ZeroXAdaptor | unknown | ethereum | n/a | [`0x497bbe...eecfc2`](./contracts/ethereum-1/0x497bbe7d974b45e2e28cfbbdedf9e67646eecfc2/) | ⚠️ Unaudited |

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
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | n/a | unknown | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | n/a | unknown | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [spearbit-boring-vault-arctic-0.pdf (also discovered via alternate URL)](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | n/a | unknown | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [sevenSeas-1.html](https://0xmacro.com/library/audits/sevenSeas-1.html) | 0xMacro | Audit | n/a | unknown | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [sevenSeas-2.html](https://0xmacro.com/library/audits/sevenSeas-2.html) | 0xMacro | Audit | n/a | unknown | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [sevenSeas-3.html](https://0xmacro.com/library/audits/sevenSeas-3.html) | 0xMacro | Audit | n/a | unknown | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [0xmacro-sevenSeas-10.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-10.pdf) | 0xMacro | Audit | n/a | unknown | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [CD Security Audit Report](https://github.com/Airpuff/Audit-Report/blob/main/AirPuff-Report.pdf) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | 1 | medium |
| [Zokyo Audit Report](https://github.com/Airpuff/Audit-Report/blob/main/Zokyo%20Audit%20Report.pdf) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | 6 | high |
| [0xmacro-veda-90.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-90.pdf) | 0xMacro | Audit | 2026-06 | fresh | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [0xmacro-veda-84.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-84.pdf) | 0xMacro | Audit | 2026-05 | fresh | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [0xmacro-veda-85.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-85.pdf) | 0xMacro | Audit | 2026-05 | fresh | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [0xmacro-veda-83.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-83.pdf) | 0xMacro | Audit | 2026-05 | fresh | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [certora-boring-vault-2.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-2.pdf) | certora | Audit | 2026-04 | fresh | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [certora-boring-vault-3.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-3.pdf) | certora | Audit | 2026-02 | fresh | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [certora-boring-vault-1.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-1.pdf) | certora | Audit | 2026-01 | fresh | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |
| [sigma-prime-boring-vault-0.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/sigma-prime-boring-vault-0.pdf) | sigma-prime | Audit | 2025-12 | fresh | Inherited from Veda — forked code, scoped to CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport, FeesAndReserves, FeesAndReservesAdaptor, PriceRouter | inherited | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 183 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=7, inherited_name_remap=64

Fork inheritance lineage and inherited audits are included when available.
