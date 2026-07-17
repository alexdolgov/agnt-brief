# Agentic Audit Brief: Spark

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 72 (0 matched; 72 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Spark (`spark`)
- Website: [https://app.spark.fi/points/KNQ5HD](https://app.spark.fi/points/KNQ5HD)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum, gnosis, optimism, unichain
- Contract surface: 196 unique implementations (196 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $7,893,448,199.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Spark in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x28b3a8fb53b741a8fd78c0fb9a6b2393d896a43d`, chain 1)
- UnnamedContract (`0x592b7db9906e6f8924c4d74c2a0ab86ce44fdddf`, chain 1)
- UnnamedContract (`0x74cb54e082411cfcaeadb00a0765625b10410daa`, chain 1)
- UnnamedContract (`0xe2e7a17dff93280dec073c995595155283e3c372`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 192 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 4 of 196 unique; 192 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/192
- Verified + Unaudited implementations: 192
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 196
- Raw deployments: 196
- Audits discovered: 59 (59 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 23 fresh, 21 aging, 13 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (192)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda135cd78a086025bcdc87b038a1c462032b510c` | ⚠️ Unaudited |
| Aggor_ETH_USD_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00480cd3ed33de45555410ba71b2f932a14b1cf2` | ⚠️ Unaudited |
| Aggor_ETH_USD_3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69115a2826eb47fe9dfd1d5ca8d8642697c8b68a` | ⚠️ Unaudited |
| Aggor_ETH_USD_4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb20a1374efcafa32f701ab14316fa2e5b3400ed5` | ⚠️ Unaudited |
| AllocatorBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e9681d7a05abfd33efafd43e5dd3afc0093f1d` | ⚠️ Unaudited |
| AllocatorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf275110dfe7b80df66a762f968f59b70babe2b29` | ⚠️ Unaudited |
| AllowList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x42d75c8fdbbf046df0fe1ff388da16ff99de8149` | ⚠️ Unaudited |
| ALMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1601843c5e9bc251a3272907010afa41fa18347e` | ⚠️ Unaudited |
| ALMProxyFreezable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95bc36638750d9506c00934ea90e6b917daea1f7` | ⚠️ Unaudited |
| ArbitrumReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x212871a1c235892f86cab30e937e18c94aed8474` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x212871a1c235892f86cab30e937e18c94aed8474` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2634a7554343350f3ff974eb76bcc378c6e05e19` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c54924711e479e639032704146b865e12f0c6d1` | ⚠️ Unaudited |
| CapAutomator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1341636721b8b687647920b2e9481f3ab1f2ee` | ⚠️ Unaudited |
| CapAutomatorResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c489f8b87f988d4cb56c40c03e5770dc36560de` | ⚠️ Unaudited |
| CappedFallbackRateSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc99f366d2be1f4e5b8dfc0f561a751dd836246` | ⚠️ Unaudited |
| CBBTCRatioOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64b157212c21097002920d57322b671b88dfccbc` | ⚠️ Unaudited |
| CollectorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92ef091c5a1e01b3ce1ba0d0150c84412d818f7a` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe10adc43aa2fd72a402e13afd4153ceca14e6e1f` | ⚠️ Unaudited |
| Create2Spark | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59cd53e57cd3a2486795788a9e7731b4db426c31` | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00836fe54625be242bcfa286207795405ca4fd10` | ⚠️ Unaudited |
| D3M4626TypePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c259f14e5d9f35a0434cd3c4abbbcaa2f1f7f7e` | ⚠️ Unaudited |
| D3MOperatorPlan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x374b5f915aaed790cbdd341e6f406910d648fd39` | ⚠️ Unaudited |
| D3MOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5aa14dee8c8204e424a55776e53bfff413b02af` | ⚠️ Unaudited |
| D3MResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12f00746b7630f3603c93d34476d8ad46f70a1bd` | ⚠️ Unaudited |
| DaiInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04a65f8f15fcb8f3d5da106ca4e79fcaaed097ce` | ⚠️ Unaudited |
| DaiInterestRateStrategyResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290657bbec18a7fa6bb9b58ed27cbc068ee8881c` | ⚠️ Unaudited |
| DaiJugInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x191e97623b1733369290ee5d018d0b068bc0400d` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d56700c90a690d8795d6c148acd94b12932f4e3` | ⚠️ Unaudited |
| DSRAuthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15acee5f73b36762ab1a6b7c98787b8148447898` | ⚠️ Unaudited |
| DSROracleForwarderArbitrumOne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b62fd9bb00b2c730ec7ea3d4c32fccc6be9933f` | ⚠️ Unaudited |
| DSROracleForwarderBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66bcacc9e7add388c4254950df59bfec7cc4e6ad` | ⚠️ Unaudited |
| DSROracleForwarderGnosis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35956b98d441edc00cc04c776dbff6ba9884cf27` | ⚠️ Unaudited |
| DSROracleForwarderOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f9605751b55dd3414bfd39d7ecac9bc2b45082d` | ⚠️ Unaudited |
| DSROracleForwarderWorldChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa34437daae56a7cc6dc757048933d7777b3e547b` | ⚠️ Unaudited |
| DSROracleReceiverArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17` | ⚠️ Unaudited |
| DSROracleReceiverOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33a3ab524a43e69f30bfd9ae97d1ec679ff00b64` | ⚠️ Unaudited |
| DssSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8f5979a93ba0412677a9d315451de1570b3d03` | ⚠️ Unaudited |
| DssVestMintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072c31c6c82c466b4b23ca0fdb487080ec1c190d` | ⚠️ Unaudited |
| DssVestTransferrable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bad07722818ceff1deacc33280dbbfda4939a09` | ⚠️ Unaudited |
| EmergencySpell_SparkLend_FreezeAllAssets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2890bf7f8d5568cc9e5092e67ba00c8da3e97f` | ⚠️ Unaudited |
| EmergencySpell_SparkLend_FreezeSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f9149c4d6018a5999ada5b592e372845cfec725` | ⚠️ Unaudited |
| EmergencySpell_SparkLend_PauseAllAssets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x216738c7b1e83cc1a1ffcd3433226b0a3b174484` | ⚠️ Unaudited |
| EmergencySpell_SparkLend_PauseSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b94e2f3818e1d657be2a62d37560514b52db17f` | ⚠️ Unaudited |
| EmergencySpell_SparkLend_RemoveMultisig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe47ab4919f6f5459dcbbfbe4264bd4630c0169a9` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf09e48dd4ca8e76f63a57add428bb06fee7932a4` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef5e645fb31a441180e97d074b6fe73e2af5044` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x15f4a4b19baaa168ac0b6092d310ae9725741211` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x29bd15f2c80f2807c29d2428aa835f2be1098a62` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | unichain | n/a | `0x14d9143becc348920b68d123687045db49a016c6` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x205216d89a00feb2a73273ceecd297baf89d576d` | ⚠️ Unaudited |
| EZETHExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52e85eb49e07df74c8a9466d2164b4c4ca60014a` | ⚠️ Unaudited |
| FixedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32f5820f1a67419bd46e0f973b85ab0e0f17b62a` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3e6550d6eb18f7a85e62e546b6df475a939a89` | ⚠️ Unaudited |
| ForeignController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e4c4b62ce87a2862f9ffff29a059afd86f1313b` | ⚠️ Unaudited |
| fToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf62e339f21d8018940f188f6987bcdf02a849619` | ⚠️ Unaudited |
| ImmutableBeaconProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x38464507e02c983f20428a6e8566693fe9e422a9` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x77e11453a99a7770b04f7921ffccd3ee9761ba6c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x4e65fe4dba92790696d040ac24aa414708f5c0ab` | ⚠️ Unaudited |
| KillSwitchOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x909a86f78e1cded68f9c2fe2c9cd922c401abe82` | ⚠️ Unaudited |
| KillSwitchResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ee8eda1dd9412e04f2abab3b23353e8dcfe3a83` | ⚠️ Unaudited |
| LiquidateLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8fc41696f2a230b03f77d258db39069e9e55f56` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aea92693c527bc2c7b3171c6f2598d67d619088` | ⚠️ Unaudited |
| LZReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5079f43464d7ec7b0eaecb0a883ddd4324e0cd6b` | ⚠️ Unaudited |
| MainnetController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08c830bc14b52a65e7e62abc7365e1c53933d4bf` | ⚠️ Unaudited |
| MaplePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x356b8d89c1e1239cbbb9de4815c39a1474d5ba7d` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca9ef7f3404b23c77a2a0dee8ab54b3338d35eae` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e65dbd630f90604062f6e02fab9138e713edd9` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a76b428244a50513ec81e225a293d128fd581d` | ⚠️ Unaudited |
| MigrationActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86141a5657cf52aeb3e30ebcca5ad3a8f714b89` | ⚠️ Unaudited |
| MockAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e6bcba7d5dafbfa4a92daf08d3d7512820c30c` | ⚠️ Unaudited |
| MockJug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c20dc38d8e978955b12217d82692d448239c005` | ⚠️ Unaudited |
| MockUsdsJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00df3c06aed70d70e1fa2996ceeae40bd515a69b` | ⚠️ Unaudited |
| MockVat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2157802ce1172b7bae5540b0d20d8b4337b535c2` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ⚠️ Unaudited |
| MyOApp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4d18d67d126211455b81f0d08bfe919adc5e2c` | ⚠️ Unaudited |
| OptimismReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04a65f8f15fcb8f3d5da106ca4e79fcaaed097ce` | ⚠️ Unaudited |
| OTCBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1851c64bbfad132cbe75481f1690c381288ea492` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae329203e00f76891094dcfedd5aca082a50e1b` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02c3ea4e34c0cbd694d2adfa2c690eecbc1793ee` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cfa0c4622ff84e50e75062683f44c9587e6cc1` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca61540ec2ac74e6954fa558b4af836d95ecb91b` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17` | ⚠️ Unaudited |
| PotRateSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b122a1d1ea2082c47c3fb70e788c168e96afd8` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8d325c0af19697b8454481602097f93aa9040f` | ⚠️ Unaudited |
| PSM3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1601843c5e9bc251a3272907010afa41fa18347e` | ⚠️ Unaudited |
| PSMVariant1Actions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d298ff9e77e71c2eb1992260520e7b15257d99` | ⚠️ Unaudited |
| PSMWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ae8fee20ef86c38aef060100bfbc6a016a2911` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11aac1ca5822cf8ba6d06b0d84901940c0ee36d8` | ⚠️ Unaudited |
| RateLimits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838` | ⚠️ Unaudited |
| RateTargetBaseInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a961acc1d79e743e479eb4b1473f62d3df07770` | ⚠️ Unaudited |
| RateTargetKinkInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f1a9a787b4103ef5929121cd9399224c6455dd6` | ⚠️ Unaudited |
| RETHExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11af58f13419fd3ce4d3a90372200c80bc62f140` | ⚠️ Unaudited |
| RETHRatioOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b378da552d06b6d3497e4b5ba2a83418f78d06` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ee554f6a1f7a4cb4f82d4c124ddc2ad3e37fde1` | ⚠️ Unaudited |
| RSETHExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70942d6b580741cf50a7906f4100063ee037b8eb` | ⚠️ Unaudited |
| SavingsDaiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e6dbfa4de19cced908bcbfe1d015190678ab5f` | ⚠️ Unaudited |
| SavingsVaultIntents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f409754d98b2c3b3c9d17646fb15de44ec03e5` | ⚠️ Unaudited |
| SDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc20059e0317de91738d13af027dfc4a50781b066` | ⚠️ Unaudited |
| SparkArbitrumOne_20250220 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x930e7efc310f1e62ff3dfc7b60a8ff06d4046887` | ⚠️ Unaudited |
| SparkArbitrumOne_20250320 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d54a093b8fddfcc6fbb411d9af31d96e034b3d5` | ⚠️ Unaudited |
| SparkArbitrumOne_20250403 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x545eeec8ca599085ce86ada51eb8c0c35af1e9d6` | ⚠️ Unaudited |
| SparkArbitrumOne_20250417 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab465726a358c004c22bb8136d43716e1936afa6` | ⚠️ Unaudited |
| SparkAvalanche_20251016 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0546efebb465c33a49d3e592b218e0b00fa51bf1` | ⚠️ Unaudited |
| SparkBase_20241114 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838` | ⚠️ Unaudited |
| SparkBase_20250109 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02c3ea4e34c0cbd694d2adfa2c690eecbc1793ee` | ⚠️ Unaudited |
| SparkBase_20250220 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e59bbdbd97dda3e72a65061ecefef428f5efb9a` | ⚠️ Unaudited |
| SparkBase_20250320 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x356f19cb575cf40c7ff33a5117f9a9264c23f6e8` | ⚠️ Unaudited |
| SparkBase_20250403 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43d32d791c35d34d28fa8c33cfb8ca3c6ae0d02d` | ⚠️ Unaudited |
| SparkBase_20251211 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c07e5e977b6db3a2a776028158359fce212f04a` | ⚠️ Unaudited |
| SparkEthereum_20230525 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d7c79ae5ecba7428283f66998dedfd84451e0e` | ⚠️ Unaudited |
| SparkEthereum_20230712 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843a0539ca7466abcb769f1c1d30c8423e13a297` | ⚠️ Unaudited |
| SparkEthereum_20230816 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60cc45dab5f0b17789c77d5fe990f1ad80e9dd65` | ⚠️ Unaudited |
| SparkEthereum_20230927 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fffbc278119ad854b58c3d219212849e8b54ef8` | ⚠️ Unaudited |
| SparkEthereum_20231129 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68a075249fa77173b8d1b92750c9920423997e2b` | ⚠️ Unaudited |
| SparkEthereum_20240110 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f2c514137173bc98b3699a0d291f7593637c596` | ⚠️ Unaudited |
| SparkEthereum_20240221 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9406f377e6afebae18552806ea327ec7b10000` | ⚠️ Unaudited |
| SparkEthereum_20240306 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3449d6d5827f0f6e0ee4a941f058307056d3736` | ⚠️ Unaudited |
| SparkEthereum_20240403 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d91ee41b18d8a8fdf2b49bd5154339a38c7ee8f` | ⚠️ Unaudited |
| SparkEthereum_20240417 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x151d5fa7b3ed50098fffdd61db29cb928ae04c0e` | ⚠️ Unaudited |
| SparkEthereum_20240516 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901e4450f01ae1a2615e384b9104888cb9cb02ff` | ⚠️ Unaudited |
| SparkEthereum_20240530 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bcdd1c8641f8a0ef98572427fddd8c26d642256` | ⚠️ Unaudited |
| SparkEthereum_20240808 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4622245a1aaf0fb752f9cac0a29616792b33f089` | ⚠️ Unaudited |
| SparkEthereum_20240926 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80621140bee6a105c180ae7cb0a084c2409c738` | ⚠️ Unaudited |
| SparkEthereum_20241114 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a3aaeac45cf3d76cf82b0e4c63ccfa8c72bdca7` | ⚠️ Unaudited |
| SparkEthereum_20250109 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fb2967cdc6816dc508f35c5a6cb035c8b6507ec` | ⚠️ Unaudited |
| SparkEthereum_20250220 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eaa8d72bd731be8ed71d768a912f6832492071e` | ⚠️ Unaudited |
| SparkEthereum_20250320 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e865856d8f97fb34fbb0edbf63f53e29a676ab6` | ⚠️ Unaudited |
| SparkEthereum_20250403 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b34c0e12c84338f494effbf49534745dde2f24b` | ⚠️ Unaudited |
| SparkEthereum_20250417 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8ff99ac98fc0c3322f639a9591257518514455c` | ⚠️ Unaudited |
| SparkEthereum_20250515 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08aba599bd82e4de7b78516077cdf1cb24788cc1` | ⚠️ Unaudited |
| SparkEthereum_20250529 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3968a022d955bbb7927cc011a48601b65a33f346` | ⚠️ Unaudited |
| SparkEthereum_20250612 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf485e3351a4c3d7d1f89b1842af625fd0dfb90c8` | ⚠️ Unaudited |
| SparkEthereum_20250626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e1ba852c864d689562b5977eedcb127fde0c9f` | ⚠️ Unaudited |
| SparkEthereum_20250724 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41edbf09cd2f272175c7facb857b767859543d15` | ⚠️ Unaudited |
| SparkEthereum_20250807 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb12057500eb57c3c43b91171d52b6db141cca01a` | ⚠️ Unaudited |
| SparkEthereum_20250821 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa57d3ea3ababd57ed1a1d91cd998a68fb490b95e` | ⚠️ Unaudited |
| SparkEthereum_20250904 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7782847ef825ff37662ef2f426f2d8c5d904121` | ⚠️ Unaudited |
| SparkEthereum_20250918 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b28f4bdd7208fe80916ebc58611eb72fb6a09ed` | ⚠️ Unaudited |
| SparkEthereum_20251002 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41579864efb2b32d787bba76d64dca4a3acdfef9` | ⚠️ Unaudited |
| SparkEthereum_20251030 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71059eaab41d6fda3e916bc9d76cb44e96818654` | ⚠️ Unaudited |
| SparkEthereum_20251113 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63fa202a7020e8ee0837196783f0fb768cbfe2f1` | ⚠️ Unaudited |
| SparkEthereum_20251127 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9e477313ec440fe4ab6c98529da2793e6890f2` | ⚠️ Unaudited |
| SparkEthereum_20251211 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb9fa737603cb650d4919937a36ea732acfe963` | ⚠️ Unaudited |
| SparkEthereum_20260129 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa091bed493c27efaa4d6e06e32684eca0325adca` | ⚠️ Unaudited |
| SparkEthereum_20260212 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42db2a32c5f99034c90dac07bf790f738b127e93` | ⚠️ Unaudited |
| SparkEthereum_20260226 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf655f6e7843685bfd8cfa4523d43f2b9922bbd77` | ⚠️ Unaudited |
| SparkEthereum_20260312 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ffadcf3afb43c1af4ec1d9b6b0405f1fbcf94d6` | ⚠️ Unaudited |
| SparkEthereum_20260326 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe854ce4a58ec1baf997cca483de26b0935ae0f45` | ⚠️ Unaudited |
| SparkEthereum_20260409 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa5fc020311fcc1a467fec5886640c7dd746deaa` | ⚠️ Unaudited |
| SparkEthereum_20260423 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x160158d029697fea486df8968f3be17a706df0f0` | ⚠️ Unaudited |
| SparkEthereum_20260507 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c18f92818c955e15892506cfb0d9394c213ab8a` | ⚠️ Unaudited |
| SparkEthereum_20260604 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab385ec0df225d5a37f5245d2ae43d53fe4fed20` | ⚠️ Unaudited |
| SparkLendFreezerMom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237e3985dd7e373f2ec878ec1ac48a228cf2e7a3` | ⚠️ Unaudited |
| SparkMigrationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8899e0510a152144826385d44c9c963b5168c7d8` | ⚠️ Unaudited |
| SparkOptimism_20250529 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08aba599bd82e4de7b78516077cdf1cb24788cc1` | ⚠️ Unaudited |
| SparkOptimism_20251030 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x45d91340b3b7b96985a72b5c678f7d9e8d664b62` | ⚠️ Unaudited |
| SparkOptimism_20251127 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f66666fb60c038f10948e9645ca969bb397e2d5` | ⚠️ Unaudited |
| SparkRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ac96180c4d6b2a328d3a19ac059d0e7fc3c6d41` | ⚠️ Unaudited |
| SparkUnichain_20250529 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xbf5a7cfaf47fd1ad75c9c613b1d4c196ee1b4eef` | ⚠️ Unaudited |
| SparkUnichain_20251030 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9c19c1e58a98a23e1363977c08085fd5dae92af0` | ⚠️ Unaudited |
| SparkUnichain_20251127 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x41edbf09cd2f272175c7facb857b767859543d15` | ⚠️ Unaudited |
| SSRAuthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x08aba599bd82e4de7b78516077cdf1cb24788cc1` | ⚠️ Unaudited |
| SSRBalancerRateProviderAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x92d7b06e5844e67174ae9e86bdcb06428482ddf9` | ⚠️ Unaudited |
| SSRChainlinkRateProviderAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xc40611ac4fff8572dc5f02a238176edcf15ea7ba` | ⚠️ Unaudited |
| SSROracleForwarderArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a229adbac83a948226783f2a3257b52006247d5` | ⚠️ Unaudited |
| SSROracleForwarderOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x217844cf0a39b8fdab388047a9361c15fb9de3bf` | ⚠️ Unaudited |
| SSRRateSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57027b6262083e3ac3c8b2eb99f7e8005f669973` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026a5b6114431d8f3ef2fa0e1b2edddcca9c540e` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00ee9a7624324c0b6cd948f022d584a80f25fec9` | ⚠️ Unaudited |
| SubProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3300f198988e4c9c63f75df86de36421f06af8c4` | ⚠️ Unaudited |
| SubProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x643de481d5ea4db0f1b2e5101796824d8854a65c` | ⚠️ Unaudited |
| SuperstateTokenV5_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14d60e7fdc0d71d8611742720e4c50e7a974020c` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5b30d7c74f605c9f22d29f8bb80de3ba853a9b` | ⚠️ Unaudited |
| TransparentProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777803cbdd89d5d5bc1ddd2151b51b0b07f6bf37` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205216d89a00feb2a73273ceecd297baf89d576d` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81a5b3657605fb2b9d8b35b17bfe27d3bd6219d` | ⚠️ Unaudited |
| USCC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41feb4943df07f6793c059f98f28ed0e15f6852b` | ⚠️ Unaudited |
| USCCv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1` | ⚠️ Unaudited |
| USTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3986a1475f3c7786973e1b83cd6240521c51a1af` | ⚠️ Unaudited |
| USTBv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ee7037db155b6fa18c9727169d39f63a8794da` | ⚠️ Unaudited |
| V3RateStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a42b609362655e1290ec3b77fcea304d1cba99` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b05f8e1cacc6974fd79a673a341fe1f58d27266` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0c424116172b55cbb6dd3136f5989f7959e5b91` | ⚠️ Unaudited |
| VestedRewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b287963668b9565ca1aa11a21ec4b973d4fc0f` | ⚠️ Unaudited |
| VestedRewardsDistributionJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6464c34a02dd155dd0c630ce233dd6e21c24f9a5` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x339a7c4e51e385ee22084c77456dedf58d742396` | ⚠️ Unaudited |
| WEETHExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28897036f8459bfba886083dd6b4ce4d2f14a57f` | ⚠️ Unaudited |
| WEETHRatioOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c805fd3c64b79840d36813fc90c165bf77bb7e4` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61baf0ce69d23c8318c786e161d1cac285aa4ea3` | ⚠️ Unaudited |
| WSTETHExchangeRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf77e132799dbb0d83a4fb7df10da04849340311a` | ⚠️ Unaudited |
| XChainDSROracleResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23913dcae97046a577a2c7cc9595e1c06768ecdf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392784 | `0x28b3a8fb53b741a8fd78c0fb9a6b2393d896a43d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392785 | `0x592b7db9906e6f8924c4d74c2a0ab86ce44fdddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392786 | `0x74cb54e082411cfcaeadb00a0765625b10410daa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392787 | `0xe2e7a17dff93280dec073c995595155283e3c372` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [You can find the audits of Aave v3 here.](https://aave.com/security) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [01-11-2021_OpenZeppelin_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [07-01-2022_TrailOfBits_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [09-12-2022_PeckShield_AaveV3-0-1.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/09-12-2022_PeckShield_AaveV3-0-1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [14-01-2022_PeckShield_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [19-04-2023_SigmaPrime_AaveV3-0-2.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/19-04-2023_SigmaPrime_AaveV3-0-2.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [23-12-2022_SigmaPrime_AaveV3-0-1.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/23-12-2022_SigmaPrime_AaveV3-0-1.pdf) | Sigma Prime | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [27-01-2022_ABDK_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 60 | high |
| [27-01-2022_SigmaPrime_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/27-01-2022_SigmaPrime_AaveV3.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [ChainSecurity_Sparklend_Core_Updates_audit.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/ChainSecurity_Sparklend_Core_Updates_audit.pdf) | ChainSecurity | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [v150-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/sparklend-advanced/blob/master/audits/v150-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [v160-cantina-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/sparklend-advanced/blob/master/audits/v160-cantina-audit.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low|medium |
| [v160-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/sparklend-advanced/blob/master/audits/v160-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 35 | high |
| [v100-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/sparklend-cap-automator/blob/master/audits/v100-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [v110-cantina-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/sparklend-cap-automator/blob/master/audits/v110-cantina-audit.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high|medium |
| [v110-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/sparklend-cap-automator/blob/master/audits/v110-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [v100-cantina-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v100-cantina-audit.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | medium |
| [v100-cantina-beta-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v100-cantina-beta-audit.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [v1100-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v1100-cantina-audit.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [v1100-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v1100-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [v130-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v130-cantina-audit.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [v130-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v130-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [v140-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v140-cantina-audit.pdf) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [v140-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v140-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [v150-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v150-cantina-audit.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | medium |
| [v170-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v170-cantina-audit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [v170-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v170-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [v180-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v180-cantina-audit.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [v180-certora-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v180-certora-audit.pdf) | Certora | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [v190-cantina-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v190-cantina-audit.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [v190-certora-audit.pdf](https://github.com/sparkdotfi/spark-alm-controller/blob/master/audits/v190-certora-audit.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [v120-cantina-audit.pdf](https://github.com/sparkdotfi/xchain-helpers/blob/master/audits/v120-cantina-audit.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [v120-chainsecurity-audit.pdf](https://github.com/sparkdotfi/xchain-helpers/blob/master/audits/v120-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [20260514-cantina-report-sky-xchain-ssr-oracle.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/20260514-cantina-report-sky-xchain-ssr-oracle.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf) | ChainSecurity | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [report-maker-review-0916-xchain-ssr-oracle.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/report-maker-review-0916-xchain-ssr-oracle.pdf) | Maker (internal review) | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [report-review-makerdao-xchain-dsr-oracle.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/report-review-makerdao-xchain-dsr-oracle.pdf) | MakerDAO (internal review) | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [v101-cantina-audit.pdf](https://github.com/sparkdotfi/spark-gov-relay/blob/master/audits/v101-cantina-audit.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [20240909-cantina-audit.pdf](https://github.com/sparkdotfi/spark-psm/blob/master/audits/20240909-cantina-audit.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [20241022-chainsecurity-audit.pdf](https://github.com/sparkdotfi/spark-psm/blob/master/audits/20241022-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [20241023-cantina-audit.pdf](https://github.com/sparkdotfi/spark-psm/blob/master/audits/20241023-cantina-audit.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [v100-cantina.pdf](https://github.com/sparkdotfi/spark-vaults-v2/blob/dev/audits/v100-cantina.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [v100-chainsecurity.pdf](https://github.com/sparkdotfi/spark-vaults-v2/blob/dev/audits/v100-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [v101-cantina.pdf](https://github.com/sparkdotfi/spark-vaults-v2/blob/dev/audits/v101-cantina.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [v101-chainsecurity.pdf](https://github.com/sparkdotfi/spark-vaults-v2/blob/dev/audits/v101-chainsecurity.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [20240926-cantina-report-maker-susds.pdf](https://github.com/sky-ecosystem/sdai/blob/susds/audit/20240926-cantina-report-maker-susds.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf](https://github.com/sky-ecosystem/sdai/blob/susds/audit/20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf) | ChainSecurity | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit_1.pdf](https://github.com/sky-ecosystem/sdai/blob/master/audits/ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit_1.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20250812-ChainSecurity_Sky_stUSDS_audit.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20250812-ChainSecurity_Sky_stUSDS_audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [20250818-cantina-report-sky-stusds.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20250818-cantina-report-sky-stusds.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [20260504-cantina-report-sky-stusdsmom.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20260504-cantina-report-sky-stusdsmom.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [* **Audit**: [ChainSecurity MakerDAO USDS Wrappers audit]()](https://github.com/sky-ecosystem/usds-wrappers/blob/dev/audit/20240904-ChainSecurity_MakerDAO_USDS_Wrappers_audit.pdf) | ChainSecurity | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ChainSecurity_MakerDAO_PSM_Lite_audit.pdf](https://github.com/sky-ecosystem/dss-lite-psm/blob/main/audits/ChainSecurity_MakerDAO_PSM_Lite_audit.pdf) | ChainSecurity | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [report-review-makerdao-dss-lite-psm.pdf](https://github.com/sky-ecosystem/dss-lite-psm/blob/main/audits/report-review-makerdao-dss-lite-psm.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf](https://github.com/makerdao/endgame-toolkit/blob/e6c3a783614748717b4cb8d671c907a1feb71121/audits/ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [ChainSecurity_MakerDAO_Endgame_Toolkit_contracts_audit.pdf](https://github.com/makerdao/endgame-toolkit/blob/e6c3a783614748717b4cb8d671c907a1feb71121/audits/ChainSecurity_MakerDAO_Endgame_Toolkit_contracts_audit.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [report-review-makerdao-endgametoolkit_2024-08-27.pdf](https://github.com/makerdao/endgame-toolkit/blob/e6c3a783614748717b4cb8d671c907a1feb71121/audits/report-review-makerdao-endgametoolkit_2024-08-27.pdf) | Unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf](https://github.com/makerdao/endgame-toolkit/blob/e6c3a783614748717b4cb8d671c907a1feb71121/audits/report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18141] You can find the audits of Aave v3 here. — no match: The provided text is a marketing/overview page for Aave's security posture, listing many past audits but not specifying which contracts are in scope for a particular audit. No scope section or contract file paths were found.
- [18142] 01-11-2021_OpenZeppelin_AaveV3.pdf — no match: Scope includes all files in protocol and interfaces directories of aave-v3-core repository at commit 14f6148e21b477d78347db6a1603039c9559e275. No audit date found in the provided text.
- [18143] 07-01-2022_TrailOfBits_AaveV3.pdf — no match: Extracted contracts from scope sections and file paths in the audit report. The audit date is the date of the final report (January 21, 2022) as indicated in the changelog.
- [18144] 09-12-2022_PeckShield_AaveV3-0-1.pdf — no match: No explicit scope section; contracts extracted from findings targets.
- [18145] 14-01-2022_PeckShield_AaveV3.pdf — no match: The audit report covers Aave V3 smart contracts. The scope is implicitly defined by the findings which target specific contracts. The audit date is explicitly stated on the cover page and in the document properties.
- [18146] 19-04-2023_SigmaPrime_AaveV3-0-2.pdf — no match: The report does not have a clear scope section listing contracts. Only ScaledBalanceTokenBase.sol is explicitly referenced in findings. The report mentions 'aave-v3-core repository' and PRs but no specific contract files. The date is inferred from 'April, 2023' on the cover page.
- [18147] 23-12-2022_SigmaPrime_AaveV3-0-1.pdf — no match: The report does not have a clear scope section listing contracts. Only ScaledBalanceTokenBase.sol is explicitly referenced in findings. The report mentions the aave-v3-core repository and PR #701 but does not list specific files in scope.
- [18148] 27-01-2022_ABDK_AaveV3.pdf — no match: The audit report explicitly lists 59 files in scope, from which contract names were extracted. The audit date is clearly stated on the cover page and in document properties.
- [18149] 27-01-2022_SigmaPrime_AaveV3.pdf — no match: Extracted contract names from findings and scope description. Audit date from cover page: 'April, 2023' -> last day of month.
- [18150] ChainSecurity_Sparklend_Core_Updates_audit.pdf — no match: Scope explicitly lists four files; audit date from title page.
- [18151] v150-chainsecurity-audit.pdf — no match: All contracts explicitly listed in scope section of the audit report.
- [18152] v160-cantina-audit.pdf — no match: Only one contract name explicitly mentioned in findings; no scope section found.
- [18153] v160-chainsecurity-audit.pdf — no match: Extracted 18 contracts from scope tables and versioned scope extensions. Audit date from cover page.
- [18154] v100-chainsecurity-audit.pdf — no match: Two contracts in scope: CapAutomator and ICapAutomator. Audit date from cover page.
- [18155] v110-cantina-audit.pdf — no match: Only one contract (CapAutomator) is explicitly referenced in the report. No formal scope table or file listing is present, but the report title and findings indicate CapAutomator is the audited contract.
- [18156] v110-chainsecurity-audit.pdf — no match: Extracted 4 contracts from scope table and version notes. Audit date from cover page.
- [18157] v100-cantina-audit.pdf — no match: No explicit scope section; contracts inferred from findings and summary.
- [18158] v100-cantina-beta-audit.pdf — no match: No explicit scope section; contracts inferred from findings context. Audit date from cover page.
- [18162] v1100-cantina-audit.pdf — no match: Extracted contract names from file paths and context in findings. Audit date from cover page.
- [18163] v1100-chainsecurity-audit.pdf — no match: Extracted from scope section listing new and changed files. Audit date from cover page.
- [18164] v130-cantina-audit.pdf — no match: The audit report covers the spark-alm-controller repository with directories src and deploy. The only contract explicitly referenced in findings is MainnetController.sol. Other contracts (BUIDL, Centrifuge, Maple) are third-party integrations, not in scope.
- [18165] v130-chainsecurity-audit.pdf — no match: Extracted contract names from the scope table and version notes. Audit date from cover page.
- [18166] v140-cantina-audit.pdf — no match: Only one contract (MainnetController) is explicitly mentioned in the scope. The report covers spark-alm-controller repository, but no other contract files are listed.
- [18167] v140-chainsecurity-audit.pdf — no match: Extracted 13 contract names from the scope table and file paths. Audit date found on cover page and in version table.
- [18168] v150-cantina-audit.pdf — no match: No explicit scope section found; contract names extracted from findings context and file references. Audit date from cover page: July23,2025.
- [18172] v170-cantina-audit.pdf — no match: Only MainnetController is explicitly referenced in findings. No explicit scope table or file listing provided.
- [18173] v170-chainsecurity-audit.pdf — no match: Extracted contract names from scope section listing files in src/, interfaces/, deploy/, and libraries/ directories. Audit date from cover page.
- [18174] v180-cantina-audit.pdf — no match: Extracted from report title page and findings context. The report covers spark-alm-controller with contracts OTCBuffer, MainnetController, ForeignControllerInit, MainnetControllerInit.
- [18175] v180-certora-audit.pdf — no match: Scope explicitly states all contracts in spark-alm-controller/src/ folder. Extracted contract names from file paths and findings.
- [18176] v190-cantina-audit.pdf — no match: No explicit scope section found; contracts extracted from findings context and file paths mentioned in the report.
- [18177] v190-certora-audit.pdf — no match: All contracts listed in the Project Scope section of the report.
- [18182] v120-cantina-audit.pdf — no match: No explicit scope section; contracts inferred from findings context. Audit date from cover page.
- [18183] v120-chainsecurity-audit.pdf — no match: All contracts listed in scope table on page 5. Date from cover page: May 06, 2026.
- [18184] 20260514-cantina-report-sky-xchain-ssr-oracle.pdf — no match: Only one contract name found in findings; no explicit scope section.
- [18185] 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf — no match: Extracted all contracts explicitly listed in scope, including renamed versions and those added/removed across versions. Audit date from cover page: May 15, 2025.
- [18186] report-maker-review-0916-xchain-ssr-oracle.pdf — no match: No contracts in scope were explicitly listed in the report. The report mentions 'xchain-ssr-oracle' as a project name but no specific contract files or names.
- [18187] report-review-makerdao-xchain-dsr-oracle.pdf — no match: Extracted contract names from context references in findings and the security review summary. The audit date is from the cover page: September 9, 2024.
- [18189] v101-cantina-audit.pdf — no match: No explicit scope section; contracts inferred from findings context. Audit date from cover page.
- [18190] 20240909-cantina-audit.pdf — no match: No explicit scope section found; contracts inferred from findings context. Audit date from cover page.
- [18191] 20241022-chainsecurity-audit.pdf — no match: Scope section explicitly lists src/PSM3.sol, interfaces/IPSM3.sol, interfaces/IRateProviderLike.sol, and deploy/PSM3Deploy.sol (added in version 2). Audit date from cover page: October 22, 2024.
- [18192] 20241023-cantina-audit.pdf — no match: The report does not have a dedicated scope section. Contract names were extracted from findings context: PSM3.sol and IPSM3.sol are referenced. The audit date is from the cover page.
- [18193] v100-cantina.pdf — no match: Extracted contract names from findings context. Audit date from cover page.
- [18194] v100-chainsecurity.pdf — no match: Scope section explicitly lists two files: src/ISparkVault.sol and src/SparkVault.sol. Audit date is September 09, 2025 from the cover page.
- [18195] v101-cantina.pdf — no match: No explicit scope section; contracts inferred from findings context. Audit date from cover page.
- [18196] v101-chainsecurity.pdf — no match: Scope section explicitly lists two files: src/ISparkVault.sol and src/SparkVault.sol. Audit date from cover page: October 01, 2025.
- [18199] 20240926-cantina-report-maker-susds.pdf — no match: Scope table lists three files: ERC1967Proxy.sol, SUsds.sol, SUsdsDeploy.sol. Contract names extracted from filenames.
- [18200] 20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf — no match: Scope includes ISNst.sol, SNst.sol, ISUsds.sol, SUsds.sol, and L2 SUsds.sol. Audit date from cover page.
- [18201] ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit_1.pdf — no match: Only one contract in scope: SavingsDai.sol. Audit date from cover page: January 12, 2023.
- [18202] 20250812-ChainSecurity_Sky_stUSDS_audit.pdf — no match: Scope table lists 6 files: src/StUsds.sol, src/StUsdsMom.sol, src/StUsdsRateSetter.sol, deploy/StUsdsDeploy.sol, deploy/StUsdsInit.sol, deploy/StUsdsInstance.sol. Audit date from cover page: August 12, 2025.
- [18203] 20250818-cantina-report-sky-stusds.pdf — no match: Only one contract (StUsds) is explicitly referenced in the findings context. No explicit scope section listing all contracts was found.
- [18204] 20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf — no match: Scope section explicitly lists 6 source files. Audit date from cover page.
- [18205] 20260504-cantina-report-sky-stusdsmom.pdf — no match: Only one contract name (StUsdsMom) is explicitly mentioned as the audited target. No scope table or file paths provided.
- [18206] * **Audit**: [ChainSecurity MakerDAO USDS Wrappers audit]() — no match: Two contracts in scope: NstPsmWrapper (initial version) and UsdsPsmWrapper (renamed version). Audit date from cover page.
- [18207] ChainSecurity_MakerDAO_PSM_Lite_audit.pdf — no match: Extracted 10 contract names from scope section and file paths. Audit date from cover page.
- [18208] report-review-makerdao-dss-lite-psm.pdf — no match: Extracted contract names from finding contexts. Audit date from cover page: June 26, 2024.
- [18209] ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf — no match: Extracted contract names from scope section listing deployment scripts and dependencies. Audit date from cover page.
- [18210] ChainSecurity_MakerDAO_Endgame_Toolkit_contracts_audit.pdf — no match: Scope explicitly lists four contracts: SDAO, SubProxy, VestedRewardsDistribution, StakingRewards. Audit date from cover page.
- [18211] report-review-makerdao-endgametoolkit_2024-08-27.pdf — no match: Extracted contract names from finding contexts and file references. No explicit scope section found, but contracts are clearly audited.
- [18212] report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf — no match: No explicit scope section; contracts inferred from findings context. Audit date from cover page: September 9, 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 01-11-2021_OpenZeppelin_AaveV3.pdf | Pool | unmatched — not counted | — | listed in scope as upgradeable contract | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope as upgradeable contract | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | AToken | unmatched — not counted | — | listed in scope as upgradeable contract | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | listed in scope as upgradeable contract | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope as upgradeable contract | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | PoolAddressesProvider | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | ACLManager | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | PriceOracleSentinel | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | BaseImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | InitializableUpgradeabilityProxy | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | GenericLogic | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | MathUtils | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | ReserveConfiguration | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | ReserveConfigurationMap | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | DataTypes | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | Errors | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IPoolAddressesProvider | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IStableDebtToken | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IVariableDebtToken | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IFlashloanReceiver | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IAToken | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IScaledBalanceToken | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | IncentivizedERC20 | unmatched — not counted | — | mentioned in findings | no |
| 01-11-2021_OpenZeppelin_AaveV3.pdf | PoolStorage | unmatched — not counted | — | mentioned in findings | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | PoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | ACLManager | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | EModeLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | GenericLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | AaveOracle | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 07-01-2022_TrailOfBits_AaveV3.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| 09-12-2022_PeckShield_AaveV3-0-1.pdf | LiquidationLogic | unmatched — not counted | — | Target in finding PVE-001 | no |
| 09-12-2022_PeckShield_AaveV3-0-1.pdf | ScaledBalanceTokenBase | unmatched — not counted | — | Target in finding PVE-002 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | PriceOracleSentinel | unmatched — not counted | — | Mentioned in finding PVE-001 as target contract | no |
| 14-01-2022_PeckShield_AaveV3.pdf | AaveOracle | unmatched — not counted | — | Mentioned in finding PVE-001 as target contract | no |
| 14-01-2022_PeckShield_AaveV3.pdf | ACLManager | unmatched — not counted | — | Mentioned in finding PVE-001 as target contract | no |
| 14-01-2022_PeckShield_AaveV3.pdf | Pool | unmatched — not counted | — | Target of findings PVE-002 and PVE-007 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | Target of finding PVE-003 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | Target of finding PVE-003 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | Target of finding PVE-003 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | Target of findings PVE-004 and PVE-008 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | Target of finding PVE-005 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | GenericLogic | unmatched — not counted | — | Target of finding PVE-006 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | Target of findings PVE-008 and PVE-009 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | EModeLogic | unmatched — not counted | — | Target of finding PVE-010 | no |
| 14-01-2022_PeckShield_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | Target of finding PVE-011 | no |
| 19-04-2023_SigmaPrime_AaveV3-0-2.pdf | ScaledBalanceTokenBase | unmatched — not counted | — | mentioned in finding AV301-01 | no |
| 23-12-2022_SigmaPrime_AaveV3-0-1.pdf | ScaledBalanceTokenBase | unmatched — not counted | — | mentioned in finding AV301-01 as the file containing the _transfer function | no |
| 27-01-2022_ABDK_AaveV3.pdf | IFlashLoanReceiver | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IFlashLoanSimpleReceiver | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IAaveIncentivesController | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IACLManager | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IAToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IChainlinkAggregator | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ICreditDelegationToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IDelegationToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IERC20WithPermit | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IInitializableAToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IInitializableDebtToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPool | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPoolDataProvider | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPriceOracleGetter | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IPriceOracleSentinel | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IScaledBalanceToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ISequencerOracle | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IStableDebtToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ACLManager | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PriceOracleSentinel | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | BaseImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | InitializableImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | VersionedInitializable | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | EModeLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | GenericLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | ConfiguratorInputTypes | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | PoolStorage | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | DelegationAwareAToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_ABDK_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | mentioned in findings AAV3-04, AAV3-08, AAV3-12 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | AToken | unmatched — not counted | — | mentioned in findings AAV3-04, AAV3-08 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | mentioned in findings AAV3-04, AAV3-08 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | mentioned in findings AAV3-04, AAV3-08 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | WadRayMath | unmatched — not counted | — | mentioned in finding AAV3-02 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | PercentageMath | unmatched — not counted | — | mentioned in finding AAV3-02 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | AssetLiquidationLogic | unmatched — not counted | — | mentioned in finding AAV3-03 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | AssetBridgeLogic | unmatched — not counted | — | mentioned in finding AAV3-05 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | AssetDefaultReserveInterestRateStrategy | unmatched — not counted | — | mentioned in findings AAV3-06, AAV3-10 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | mentioned in findings AAV3-07, AAV3-09 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | DataTypes | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | ConfiguratorInputTypes | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | Errors | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | ConfiguratorLogic | unmatched — not counted | — | mentioned in finding AAV3-08 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | mentioned in finding AAV3-11 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | mentioned in findings AAV3-11, AAV3-12 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | Helpers | unmatched — not counted | — | mentioned in finding AAV3-11 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | Pool | unmatched — not counted | — | mentioned in finding AAV3-12 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | mentioned in finding AAV3-12 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | IScaledBalanceToken | unmatched — not counted | — | mentioned in finding AAV3-12 | no |
| 27-01-2022_SigmaPrime_AaveV3.pdf | IAToken | unmatched — not counted | — | mentioned in finding AAV3-12 | no |
| ChainSecurity_Sparklend_Core_Updates_audit.pdf | IPool | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Sparklend_Core_Updates_audit.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Sparklend_Core_Updates_audit.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Sparklend_Core_Updates_audit.pdf | Pool | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | CappedOracle | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | FixedPriceOracle | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | PotRateSource | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | RateTargetBaseInterestRateStrategy | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | RateTargetKinkInterestRateStrategy | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | VariableBorrowInterestRateStrategy | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | RETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | WSTETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | WEETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | MorphoUpgradableOracle | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | CappedFallbackRateSource | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | SSRRateSource | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | EZETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | RSETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v150-chainsecurity-audit.pdf | ALMProxy | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | ControllerInit | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | ForeignControllerInit | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | MainnetControllerInit | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | ILayerZero | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | CCTPLib | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | CurveLib | unmatched — not counted | — | listed in scope | no |
| v150-chainsecurity-audit.pdf | PSMLib | unmatched — not counted | — | listed in scope | no |
| v160-cantina-audit.pdf | RSETHExchangeRateOracle | unmatched — not counted | — | mentioned in finding context as RSETHExchangeRateOracle.sol#L31-L40 | no |
| v160-cantina-audit.pdf | MainnetController | unmatched — not counted | — | Referenced in findings context (MainnetController.sol#L319, #L878) as the audited contract. | no |
| v160-chainsecurity-audit.pdf | CappedOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | FixedPriceOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | PotRateSource | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | RateTargetBaseInterestRateStrategy | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | RateTargetKinkInterestRateStrategy | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | VariableBorrowInterestRateStrategy | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | RETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | WSTETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | WEETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | MorphoUpgradableOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CappedFallbackRateSource | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | SSRRateSource | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | EZETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | RSETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CBBTCRatioOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | RETHRatioOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | SPETHExchangeRateOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | WEETHRatioOracle | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ALMProxy | unmatched — not counted | — | listed in scope | no |
| v160-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope | no |
| v160-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope | no |
| v160-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope | no |
| v160-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope | no |
| v160-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope | no |
| v160-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope | no |
| v160-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope | no |
| v160-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | added in version 3 | no |
| v160-chainsecurity-audit.pdf | ControllerInit | unmatched — not counted | — | added in version 3 | no |
| v160-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | added in version 3 | no |
| v160-chainsecurity-audit.pdf | ForeignControllerInit | unmatched — not counted | — | added in version 10 | no |
| v160-chainsecurity-audit.pdf | MainnetControllerInit | unmatched — not counted | — | added in version 10 | no |
| v160-chainsecurity-audit.pdf | ILayerZero | unmatched — not counted | — | added in version 15 | no |
| v160-chainsecurity-audit.pdf | CCTPLib | unmatched — not counted | — | added in version 15 | no |
| v160-chainsecurity-audit.pdf | CurveLib | unmatched — not counted | — | added in version 15 | no |
| v160-chainsecurity-audit.pdf | PSMLib | unmatched — not counted | — | added in version 15 | no |
| v100-chainsecurity-audit.pdf | CapAutomator | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | ICapAutomator | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | ALMProxy | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | added in version 3 scope | no |
| v100-chainsecurity-audit.pdf | ControllerInit | unmatched — not counted | — | added in version 3 scope | no |
| v100-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | added in version 3 scope | no |
| v100-chainsecurity-audit.pdf | AMBForwarder | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | ArbitrumForwarder | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | CCTPForwarder | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | OptimismForwarder | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | AMBReceiver | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | ArbitrumReceiver | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | CCTPReceiver | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | OptimismReceiver | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | Executor | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | IExecutor | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | IERC4626Like | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | ISavingsVaultIntents | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | SavingsVaultIntents | unmatched — not counted | — | listed in scope table | no |
| v110-cantina-audit.pdf | CapAutomator | unmatched — not counted | — | mentioned in findings context and as the main contract of sparklend-cap-automator | no |
| v110-cantina-audit.pdf | MainnetController | unmatched — not counted | — | Referenced in findings (e.g., MainnetController.sol#L385, L266, L404-L433, L419, L386) and described as the contract under review. | no |
| v110-cantina-audit.pdf | LZForwarder | unmatched — not counted | — | Listed in findings context and scope summary | no |
| v110-cantina-audit.pdf | LZReceiver | unmatched — not counted | — | Listed in findings context and scope summary | no |
| v110-chainsecurity-audit.pdf | CapAutomator | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | ICapAutomator | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | IAAVEV3 | unmatched — not counted | — | added to scope in version 3 | no |
| v110-chainsecurity-audit.pdf | Common | unmatched — not counted | — | added to scope in version 3 | no |
| v110-chainsecurity-audit.pdf | ALMProxy | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | added to scope in version 3 | no |
| v110-chainsecurity-audit.pdf | ControllerInit | unmatched — not counted | — | added to scope in version 3 | no |
| v110-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | added to scope in version 3 | no |
| v110-chainsecurity-audit.pdf | AMBForwarder | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | ArbitrumForwarder | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | CCTPForwarder | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | OptimismForwarder | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | AMBReceiver | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | ArbitrumReceiver | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | CCTPReceiver | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | OptimismReceiver | unmatched — not counted | — | listed in scope table | no |
| v110-chainsecurity-audit.pdf | LZForwarder | unmatched — not counted | — | added in Version 2, listed in scope | no |
| v110-chainsecurity-audit.pdf | LZReceiver | unmatched — not counted | — | added in Version 2, listed in scope | no |
| v100-cantina-audit.pdf | MainnetController | unmatched — not counted | — | mentioned in findings context | no |
| v100-cantina-audit.pdf | ForeignController | unmatched — not counted | — | mentioned in findings context | no |
| v100-cantina-audit.pdf | ControllerInit | unmatched — not counted | — | mentioned in findings context | no |
| v100-cantina-audit.pdf | Executor | unmatched — not counted | — | mentioned in findings context | no |
| v100-cantina-audit.pdf | OptimismForwarder | unmatched — not counted | — | mentioned in finding 3.1.4 | no |
| v100-cantina-audit.pdf | ArbitrumForwarder | unmatched — not counted | — | mentioned in finding 3.1.5 | no |
| v100-cantina-audit.pdf | IExecutor | unmatched — not counted | — | mentioned in finding 3.1.6 | no |
| v100-cantina-audit.pdf | SavingsVaultIntents | unmatched — not counted | — | mentioned in findings context and scope | no |
| v100-cantina-beta-audit.pdf | MainnetController | unmatched — not counted | — | mentioned in findings context | no |
| v100-cantina-beta-audit.pdf | ForeignController | unmatched — not counted | — | mentioned in findings context | no |
| v100-cantina-beta-audit.pdf | ALMProxy | unmatched — not counted | — | mentioned in findings context | no |
| v100-cantina-beta-audit.pdf | IRateLimits | unmatched — not counted | — | mentioned in findings context | no |
| v100-cantina-beta-audit.pdf | IALMProxy | unmatched — not counted | — | mentioned in findings context | no |
| v1100-cantina-audit.pdf | SparkALMController | unmatched — not counted | — | audit title and scope | no |
| v1100-cantina-audit.pdf | UniswapV4Lib | unmatched — not counted | — | finding context | no |
| v1100-cantina-audit.pdf | WEETHLib | unmatched — not counted | — | finding context | no |
| v1100-cantina-audit.pdf | LayerZeroLib | unmatched — not counted | — | finding context | no |
| v1100-cantina-audit.pdf | WEETHModule | unmatched — not counted | — | finding context | no |
| v1100-cantina-audit.pdf | ForeignController | unmatched — not counted | — | finding context | no |
| v1100-cantina-audit.pdf | MainnetController | unmatched — not counted | — | finding context | no |
| v1100-chainsecurity-audit.pdf | WEETHModule | unmatched — not counted | — | listed in scope table | no |
| v1100-chainsecurity-audit.pdf | LayerZeroLib | unmatched — not counted | — | listed in scope table | no |
| v1100-chainsecurity-audit.pdf | WEETHLib | unmatched — not counted | — | listed in scope table | no |
| v1100-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v1100-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v1100-chainsecurity-audit.pdf | OTCBuffer | unmatched — not counted | — | listed in scope table | no |
| v1100-chainsecurity-audit.pdf | ApproveLib | unmatched — not counted | — | listed in scope table | no |
| v1100-chainsecurity-audit.pdf | CurveLib | unmatched — not counted | — | listed in scope table | no |
| v1100-chainsecurity-audit.pdf | ERC4626Lib | unmatched — not counted | — | listed in scope table | no |
| v1100-chainsecurity-audit.pdf | PSMLib | unmatched — not counted | — | listed in scope table | no |
| v1100-chainsecurity-audit.pdf | UniswapV4Lib | unmatched — not counted | — | listed in scope table | no |
| v130-cantina-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope as part of spark-alm-controller repository | no |
| v130-chainsecurity-audit.pdf | ALMProxy | unmatched — not counted | — | listed in scope table | no |
| v130-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v130-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v130-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope table | no |
| v130-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope table | no |
| v130-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope table | no |
| v130-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope table | no |
| v130-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope table | no |
| v130-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | added in version 3 scope | no |
| v130-chainsecurity-audit.pdf | ControllerInit | unmatched — not counted | — | added in version 3 scope, removed in version 10 | no |
| v130-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | added in version 3 scope | no |
| v130-chainsecurity-audit.pdf | ForeignControllerInit | unmatched — not counted | — | added in version 10 scope | no |
| v130-chainsecurity-audit.pdf | MainnetControllerInit | unmatched — not counted | — | added in version 10 scope | no |
| v140-cantina-audit.pdf | MainnetController | unmatched — not counted | — | Listed in scope context lines throughout findings (e.g., MainnetController.sol#L685) | no |
| v140-chainsecurity-audit.pdf | ALMProxy | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | ControllerInit | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | ForeignControllerInit | unmatched — not counted | — | listed in scope table | no |
| v140-chainsecurity-audit.pdf | MainnetControllerInit | unmatched — not counted | — | listed in scope table | no |
| v150-cantina-audit.pdf | ForeignController | unmatched — not counted | — | Context in findings: ForeignController.sol#L239, ForeignController.sol#L270-L274 | no |
| v150-cantina-audit.pdf | MainnetController | unmatched — not counted | — | Context in findings: MainnetController.sol#L813, MainnetController.sol#L846-L857, MainnetController.sol#L861, MainnetController.sol#L810-L814, MainnetController.sol#L11, MainnetController.sol#L7-9 | no |
| v150-cantina-audit.pdf | CurveLib | unmatched — not counted | — | Context in findings: CurveLib.sol#L5, CurveLib.sol#L97 | no |
| v150-cantina-audit.pdf | PSMLib | unmatched — not counted | — | Context in findings: PSMLib.sol#L9, PSMLib.sol#L156-L162 | no |
| v150-cantina-audit.pdf | ILayerZero | unmatched — not counted | — | Context in findings: ILayerZero.sol#L61 | no |
| v150-cantina-audit.pdf | IALMProxy | unmatched — not counted | — | Referenced in _approve function context | no |
| v150-cantina-audit.pdf | IERC20 | unmatched — not counted | — | Referenced in _approve function context | no |
| v150-cantina-audit.pdf | IERC4626 | unmatched — not counted | — | Recommendation to use OpenZeppelin interfaces | no |
| v150-cantina-audit.pdf | IERC7540 | unmatched — not counted | — | Recommendation to define in interfaces directory | no |
| v150-cantina-audit.pdf | IMetaMorpho | unmatched — not counted | — | Unused import in MainnetController.sol#L11 | no |
| v150-cantina-audit.pdf | AccessControl | unmatched — not counted | — | Unused import in CurveLib.sol#L5 | no |
| v150-cantina-audit.pdf | RateLimitHelpers | unmatched — not counted | — | Unused import in PSMLib.sol#L9 | no |
| v150-cantina-audit.pdf | IATokenWithPool | unmatched — not counted | — | Defined in both Mainnet and Foreign controllers | no |
| v150-cantina-audit.pdf | IRateLimits | unmatched — not counted | — | Referenced in PSMLib.sol#L156-L162 | no |
| v150-cantina-audit.pdf | CCTPLib | unmatched — not counted | — | Referenced in PSMLib finding for consistency | no |
| v170-cantina-audit.pdf | MainnetController | unmatched — not counted | — | mentioned in findings context | no |
| v170-chainsecurity-audit.pdf | ALMProxy | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | ControllerInit | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | ForeignControllerInit | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | MainnetControllerInit | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | ILayerZero | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | CCTPLib | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | CurveLib | unmatched — not counted | — | listed in scope | no |
| v170-chainsecurity-audit.pdf | PSMLib | unmatched — not counted | — | listed in scope | no |
| v180-cantina-audit.pdf | SparkALMController | unmatched — not counted | — | scope section mentions spark-alm-controller | no |
| v180-cantina-audit.pdf | OTCBuffer | unmatched — not counted | — | findings reference OTCBuffer.sol | no |
| v180-cantina-audit.pdf | MainnetController | unmatched — not counted | — | findings reference MainnetController.sol | no |
| v180-cantina-audit.pdf | ForeignControllerInit | unmatched — not counted | — | findings reference ForeignControllerInit.sol | no |
| v180-cantina-audit.pdf | MainnetControllerInit | unmatched — not counted | — | findings reference MainnetControllerInit.sol | no |
| v180-certora-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope and findings | no |
| v180-certora-audit.pdf | ForeignController | unmatched — not counted | — | mentioned in findings | no |
| v180-certora-audit.pdf | OTCBuffer | unmatched — not counted | — | mentioned in findings | no |
| v180-certora-audit.pdf | ALMProxy | unmatched — not counted | — | mentioned in findings | no |
| v180-certora-audit.pdf | RateLimits | unmatched — not counted | — | mentioned in findings | no |
| v180-certora-audit.pdf | CurveLib | unmatched — not counted | — | mentioned in findings | no |
| v180-certora-audit.pdf | PSMLib | unmatched — not counted | — | mentioned in findings | no |
| v180-certora-audit.pdf | ILayerZero | unmatched — not counted | — | mentioned in findings | no |
| v190-cantina-audit.pdf | UniswapV4Lib | unmatched — not counted | — | mentioned in findings context | no |
| v190-cantina-audit.pdf | ForeignController | unmatched — not counted | — | mentioned in findings context | no |
| v190-cantina-audit.pdf | MainnetController | unmatched — not counted | — | mentioned in findings context | no |
| v190-cantina-audit.pdf | PSMLib | unmatched — not counted | — | mentioned in findings context | no |
| v190-cantina-audit.pdf | CCTPLib | unmatched — not counted | — | mentioned in findings context | no |
| v190-certora-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | UniswapV4Lib | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | ERC4626Lib | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | CCTPLib | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | PSMLib | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | ApproveLib | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | AaveLib | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | CurveLib | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | ALMProxyFreezable | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | ILayerZero | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | UniswapV4 | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | Common | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | OTCBuffer | unmatched — not counted | — | listed in scope | no |
| v190-certora-audit.pdf | ALMProxy | unmatched — not counted | — | listed in scope | no |
| v120-cantina-audit.pdf | LZComposeReceiver | unmatched — not counted | — | mentioned in findings context | no |
| v120-cantina-audit.pdf | LZReceiver | unmatched — not counted | — | mentioned in findings context | no |
| v120-chainsecurity-audit.pdf | AMBForwarder | unmatched — not counted | — | listed in scope table | no |
| v120-chainsecurity-audit.pdf | ArbitrumForwarder | unmatched — not counted | — | listed in scope table | no |
| v120-chainsecurity-audit.pdf | CCTPForwarder | unmatched — not counted | — | listed in scope table | no |
| v120-chainsecurity-audit.pdf | OptimismForwarder | unmatched — not counted | — | listed in scope table | no |
| v120-chainsecurity-audit.pdf | AMBReceiver | unmatched — not counted | — | listed in scope table | no |
| v120-chainsecurity-audit.pdf | ArbitrumReceiver | unmatched — not counted | — | listed in scope table | no |
| v120-chainsecurity-audit.pdf | CCTPReceiver | unmatched — not counted | — | listed in scope table | no |
| v120-chainsecurity-audit.pdf | OptimismReceiver | unmatched — not counted | — | listed in scope table | no |
| v120-chainsecurity-audit.pdf | LZForwarder | unmatched — not counted | — | added in Version 2, listed in scope | no |
| v120-chainsecurity-audit.pdf | LZReceiver | unmatched — not counted | — | added in Version 2, listed in scope | no |
| v120-chainsecurity-audit.pdf | LZComposeReceiver | unmatched — not counted | — | added in Version 5, listed in scope | no |
| 20260514-cantina-report-sky-xchain-ssr-oracle.pdf | SSROracleForwarderLZ | unmatched — not counted | — | mentioned in findings context | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSRAuthOracle | unmatched — not counted | — | listed in scope | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSROracleReceiverOptimism | unmatched — not counted | — | listed in scope | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSROracleReceiverGnosis | unmatched — not counted | — | listed in scope | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSRBalancerRateProviderAdapter | unmatched — not counted | — | listed in scope | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSROracleForwarderGnosis | unmatched — not counted | — | listed in scope | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSROracleForwarderBase | unmatched — not counted | — | listed in scope | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSROracleForwarderOptimism | unmatched — not counted | — | listed in scope | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSROracleForwarder | unmatched — not counted | — | listed in scope | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSRMainnetOracle | unmatched — not counted | — | listed in scope | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSROracleBase | unmatched — not counted | — | listed in scope | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSROracleReceiverArbitrum | unmatched — not counted | — | added in version 4 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSROracleForwarderArbitrumOne | unmatched — not counted | — | added in version 4 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | DSROracleForwarderBaseChain | unmatched — not counted | — | renamed in version 4, removed in version 7 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | SSRAuthOracle | unmatched — not counted | — | renamed from DSRAuthOracle in version 7 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | SSRBalancerRateProviderAdapter | unmatched — not counted | — | renamed from DSRBalancerRateProviderAdapter in version 7 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | SSROracleForwarderGnosis | unmatched — not counted | — | renamed from DSROracleForwarderGnosis in version 7 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | SSROracleForwarderOptimism | unmatched — not counted | — | renamed from DSROracleForwarderOptimism in version 7 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | SSROracleForwarderBase | unmatched — not counted | — | renamed from DSROracleForwarderBase in version 7 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | SSRMainnetOracle | unmatched — not counted | — | renamed from DSRMainnetOracle in version 7 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | SSROracleBase | unmatched — not counted | — | renamed from DSROracleBase in version 7 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | SSROracleForwarderArbitrum | unmatched — not counted | — | renamed from DSROracleForwarderArbitrumOne in version 7 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | SSRChainlinkRateProviderAdapter | unmatched — not counted | — | added in version 9 | no |
| 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf | SSROracleForwarderLZ | unmatched — not counted | — | added in version 11 | no |
| report-review-makerdao-xchain-dsr-oracle.pdf | DSRAuthOracle | unmatched — not counted | — | Context: DSRAuthOracle.sol#L68, DSRAuthOracle.sol#L23, DSRAuthOracle.sol#L34-L65 | no |
| report-review-makerdao-xchain-dsr-oracle.pdf | DSROracleBase | unmatched — not counted | — | Context: DSROracleBase.sol#L49, DSROracleBase.sol#L52, DSROracleBase.sol#L70, DSROracleBase.sol#L112, DSROracleBase.sol#L48 | no |
| report-review-makerdao-xchain-dsr-oracle.pdf | DSROracleForwarderBase | unmatched — not counted | — | Context: DSROracleForwarderBase.sol#L27-L29 | no |
| report-review-makerdao-xchain-dsr-oracle.pdf | DSRBalancerRateProviderAdapter | unmatched — not counted | — | Context: DSRBalancerRateProviderAdapter.sol#L23 | no |
| report-review-makerdao-xchain-dsr-oracle.pdf | IDSROracle | unmatched — not counted | — | Context: IDSROracle.sol#L12 | no |
| v101-cantina-audit.pdf | Executor | unmatched — not counted | — | mentioned in findings context | no |
| v101-cantina-audit.pdf | OptimismForwarder | unmatched — not counted | — | mentioned in finding 3.1.4 | no |
| v101-cantina-audit.pdf | ArbitrumForwarder | unmatched — not counted | — | mentioned in finding 3.1.5 | no |
| v101-cantina-audit.pdf | IExecutor | unmatched — not counted | — | mentioned in finding 3.1.6 | no |
| 20240909-cantina-audit.pdf | PSM3 | unmatched — not counted | — | mentioned in findings context | no |
| 20240909-cantina-audit.pdf | LpHandler | unmatched — not counted | — | mentioned in findings context | no |
| 20240909-cantina-audit.pdf | SwapHandler | unmatched — not counted | — | mentioned in findings context | no |
| 20240909-cantina-audit.pdf | PSM3Deploy | unmatched — not counted | — | mentioned in findings context | no |
| 20240909-cantina-audit.pdf | IPSM3 | unmatched — not counted | — | mentioned in findings context | no |
| 20241022-chainsecurity-audit.pdf | PSM3 | unmatched — not counted | — | listed in scope table | no |
| 20241022-chainsecurity-audit.pdf | IPSM3 | unmatched — not counted | — | listed in scope table | no |
| 20241022-chainsecurity-audit.pdf | IRateProviderLike | unmatched — not counted | — | listed in scope table | no |
| 20241022-chainsecurity-audit.pdf | PSM3Deploy | unmatched — not counted | — | added in version 2 scope | no |
| 20241023-cantina-audit.pdf | PSM3 | unmatched — not counted | — | mentioned in findings context | no |
| 20241023-cantina-audit.pdf | IPSM3 | unmatched — not counted | — | mentioned in findings context | no |
| v100-cantina.pdf | SparkVault | unmatched — not counted | — | Context: SparkVault.sol#L428-L433 | no |
| v100-cantina.pdf | ISparkVault | unmatched — not counted | — | Context: ISparkVault.sol | no |
| v100-chainsecurity.pdf | ISparkVault | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity.pdf | SparkVault | unmatched — not counted | — | listed in scope table | no |
| v101-cantina.pdf | SparkVault | unmatched — not counted | — | Context in findings | no |
| v101-cantina.pdf | ISparkVault | unmatched — not counted | — | Context in findings | no |
| v101-chainsecurity.pdf | ISparkVault | unmatched — not counted | — | listed in scope table | no |
| v101-chainsecurity.pdf | SparkVault | unmatched — not counted | — | listed in scope table | no |
| 20240926-cantina-report-maker-susds.pdf | SUsds | unmatched — not counted | — | listed in scope table | no |
| 20240926-cantina-report-maker-susds.pdf | SUsdsDeploy | unmatched — not counted | — | listed in scope table | no |
| 20240926-cantina-report-maker-susds.pdf | ERC1967Proxy | unmatched — not counted | — | listed in scope table | no |
| 20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf | ISNst | unmatched — not counted | — | listed in scope | no |
| 20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf | SNst | unmatched — not counted | — | listed in scope | no |
| 20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf | ISUsds | unmatched — not counted | — | listed in scope | no |
| 20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf | SUsds | unmatched — not counted | — | listed in scope | no |
| 20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf | SUsdsL2 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit_1.pdf | SavingsDai | unmatched — not counted | — | listed in scope section: 'The following files from the repository src folder were part of the assessment scope: SavingsDai.sol' | no |
| 20250812-ChainSecurity_Sky_stUSDS_audit.pdf | StUsds | unmatched — not counted | — | listed in scope table | no |
| 20250812-ChainSecurity_Sky_stUSDS_audit.pdf | StUsdsMom | unmatched — not counted | — | listed in scope table | no |
| 20250812-ChainSecurity_Sky_stUSDS_audit.pdf | StUsdsRateSetter | unmatched — not counted | — | listed in scope table | no |
| 20250812-ChainSecurity_Sky_stUSDS_audit.pdf | StUsdsDeploy | unmatched — not counted | — | listed in scope table | no |
| 20250812-ChainSecurity_Sky_stUSDS_audit.pdf | StUsdsInit | unmatched — not counted | — | listed in scope table | no |
| 20250812-ChainSecurity_Sky_stUSDS_audit.pdf | StUsdsInstance | unmatched — not counted | — | listed in scope table | no |
| 20250818-cantina-report-sky-stusds.pdf | StUsds | unmatched — not counted | — | Context: StUsds.sol#L429-L436 in finding | no |
| 20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf | StUsds | unmatched — not counted | — | listed in scope table | no |
| 20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf | StUsdsMom | unmatched — not counted | — | listed in scope table | no |
| 20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf | StUsdsRateSetter | unmatched — not counted | — | listed in scope table | no |
| 20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf | StUsdsDeploy | unmatched — not counted | — | listed in scope table | no |
| 20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf | StUsdsInit | unmatched — not counted | — | listed in scope table | no |
| 20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf | StUsdsInstance | unmatched — not counted | — | listed in scope table | no |
| 20260504-cantina-report-sky-stusdsmom.pdf | StUsdsMom | unmatched — not counted | — | mentioned in title and summary as the subject of the review | no |
| * **Audit**: [ChainSecurity MakerDAO USDS Wrappers audit]() | NstPsmWrapper | unmatched — not counted | — | listed in scope table | no |
| * **Audit**: [ChainSecurity MakerDAO USDS Wrappers audit]() | UsdsPsmWrapper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MakerDAO_PSM_Lite_audit.pdf | DssLitePsm | unmatched — not counted | — | listed in scope section: ../src/DssLitePsm.sol | no |
| ChainSecurity_MakerDAO_PSM_Lite_audit.pdf | DssPocket | unmatched — not counted | — | listed in scope section: ../src/DssPocket.sol (later removed) | no |
| ChainSecurity_MakerDAO_PSM_Lite_audit.pdf | DssLitePsmMom | unmatched — not counted | — | listed in scope section: ./src/DssLitePsmMom.sol added in version 5 | no |
| ChainSecurity_MakerDAO_PSM_Lite_audit.pdf | DssLitePsmDeploy | unmatched — not counted | — | listed in scope section: deployment/DssLitePsmDeploy.sol | no |
| ChainSecurity_MakerDAO_PSM_Lite_audit.pdf | DssLitePsmInit | unmatched — not counted | — | listed in scope section: deployment/DssLitePsmInit.sol | no |
| ChainSecurity_MakerDAO_PSM_Lite_audit.pdf | DssLitePsmInstance | unmatched — not counted | — | listed in scope section: deployment/DssLitePsmInstance.sol | no |
| ChainSecurity_MakerDAO_PSM_Lite_audit.pdf | DssLitePsmMigration | unmatched — not counted | — | listed in scope section: deployment/DssLitePsmMigration.sol | no |
| ChainSecurity_MakerDAO_PSM_Lite_audit.pdf | DssLitePsmMigrationPhase1 | unmatched — not counted | — | listed in scope section: deployment/phase-1/DssLitePsmMigrationPhase1.sol | no |
| ChainSecurity_MakerDAO_PSM_Lite_audit.pdf | DssLitePsmMigrationPhase2 | unmatched — not counted | — | listed in scope section: deployment/phase-2/DssLitePsmMigrationPhase2.sol | no |
| ChainSecurity_MakerDAO_PSM_Lite_audit.pdf | DssLitePsmMigrationPhase3 | unmatched — not counted | — | listed in scope section: deployment/phase-3/DssLitePsmMigrationPhase3.sol | no |
| report-review-makerdao-dss-lite-psm.pdf | DssLitePsm | unmatched — not counted | — | Context in findings: DssLitePsm.sol | no |
| report-review-makerdao-dss-lite-psm.pdf | DssPocket | unmatched — not counted | — | Context in finding 3.1.1: DssPocket.sol | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | SDAODeploy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | StakingRewardsDeploy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | StakingRewardsInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | SubProxyDeploy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | SubProxyInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | VestInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | VestedRewardsDistributionDeploy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | VestedRewardsDistributionInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | FarmingInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | Usds01PreFarmingInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | UsdsSkyFarmingInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | LsmkrSpkFarmingInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | SkySpkFarmingInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | SpkSkyFarmingInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf | UsdsSpkFarmingInit | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_Endgame_Toolkit_contracts_audit.pdf | SDAO | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_Endgame_Toolkit_contracts_audit.pdf | SubProxy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_Endgame_Toolkit_contracts_audit.pdf | VestedRewardsDistribution | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_MakerDAO_Endgame_Toolkit_contracts_audit.pdf | StakingRewards | unmatched — not counted | — | listed in scope | no |
| report-review-makerdao-endgametoolkit_2024-08-27.pdf | StakingRewards | unmatched — not counted | — | Context in findings: StakingRewards.sol | no |
| report-review-makerdao-endgametoolkit_2024-08-27.pdf | SubProxy | unmatched — not counted | — | Context in findings: SubProxy.sol | no |
| report-review-makerdao-endgametoolkit_2024-08-27.pdf | VestedRewardsDistribution | unmatched — not counted | — | Context in findings: VestedRewardsDistribution.sol | no |
| report-review-makerdao-endgametoolkit_2024-08-27.pdf | SDAO | unmatched — not counted | — | Context in findings: SDAO.sol | no |
| report-review-makerdao-endgametoolkit_2024-08-27.pdf | Pausable | unmatched — not counted | — | Context in findings: Pausable.sol | no |
| report-review-makerdao-endgametoolkit_2024-08-27.pdf | Owned | unmatched — not counted | — | Context in findings: Owned.sol | no |
| report-review-makerdao-endgametoolkit_2024-08-27.pdf | CheckStakingRewardsDeploy | unmatched — not counted | — | Context in findings: CheckStakingRewardsDeploy.s.sol | no |
| report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf | UsdsSkyFarmingInit | unmatched — not counted | — | mentioned in findings context | no |
| report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf | Usds01PreFarmingInit | unmatched — not counted | — | mentioned in findings context | no |
| report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf | StakingRewards | unmatched — not counted | — | mentioned as farm contract | no |
| report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf | DssVestWithGemLike | unmatched — not counted | — | mentioned in findings | no |
| report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf | DssVestMintable | unmatched — not counted | — | mentioned in findings | no |
| report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf | Phase1b_UsdsSkyFarmingCheckScript | unmatched — not counted | — | mentioned in findings | no |
| report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf | 03-UsdsSkyFarmingCheck | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 182 |
| upstream | 4 |
| standard_library | 6 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 59
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 549 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=39, low=7, medium=15
- Match method counts: n/a

Zero-match audit list:

- [18141] You can find the audits of Aave v3 here.
- [18142] 01-11-2021_OpenZeppelin_AaveV3.pdf
- [18143] 07-01-2022_TrailOfBits_AaveV3.pdf
- [18144] 09-12-2022_PeckShield_AaveV3-0-1.pdf
- [18145] 14-01-2022_PeckShield_AaveV3.pdf
- [18146] 19-04-2023_SigmaPrime_AaveV3-0-2.pdf
- [18147] 23-12-2022_SigmaPrime_AaveV3-0-1.pdf
- [18148] 27-01-2022_ABDK_AaveV3.pdf
- [18149] 27-01-2022_SigmaPrime_AaveV3.pdf
- [18150] ChainSecurity_Sparklend_Core_Updates_audit.pdf
- [18151] v150-chainsecurity-audit.pdf
- [18152] v160-cantina-audit.pdf
- [18153] v160-chainsecurity-audit.pdf
- [18154] v100-chainsecurity-audit.pdf
- [18155] v110-cantina-audit.pdf
- [18156] v110-chainsecurity-audit.pdf
- [18157] v100-cantina-audit.pdf
- [18158] v100-cantina-beta-audit.pdf
- [18162] v1100-cantina-audit.pdf
- [18163] v1100-chainsecurity-audit.pdf
- [18164] v130-cantina-audit.pdf
- [18165] v130-chainsecurity-audit.pdf
- [18166] v140-cantina-audit.pdf
- [18167] v140-chainsecurity-audit.pdf
- [18168] v150-cantina-audit.pdf
- [18172] v170-cantina-audit.pdf
- [18173] v170-chainsecurity-audit.pdf
- [18174] v180-cantina-audit.pdf
- [18175] v180-certora-audit.pdf
- [18176] v190-cantina-audit.pdf
- [18177] v190-certora-audit.pdf
- [18182] v120-cantina-audit.pdf
- [18183] v120-chainsecurity-audit.pdf
- [18184] 20260514-cantina-report-sky-xchain-ssr-oracle.pdf
- [18185] 20260515-ChainSecurity_Sky_XChain_SSR_Oracle_Audit.pdf
- [18186] report-maker-review-0916-xchain-ssr-oracle.pdf
- [18187] report-review-makerdao-xchain-dsr-oracle.pdf
- [18189] v101-cantina-audit.pdf
- [18190] 20240909-cantina-audit.pdf
- [18191] 20241022-chainsecurity-audit.pdf
- [18192] 20241023-cantina-audit.pdf
- [18193] v100-cantina.pdf
- [18194] v100-chainsecurity.pdf
- [18195] v101-cantina.pdf
- [18196] v101-chainsecurity.pdf
- [18199] 20240926-cantina-report-maker-susds.pdf
- [18200] 20240930-ChainSecurity_MakerDAO_Savings_USDS_audit.pdf
- [18201] ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit_1.pdf
- [18202] 20250812-ChainSecurity_Sky_stUSDS_audit.pdf
- [18203] 20250818-cantina-report-sky-stusds.pdf
- [18204] 20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf
- [18205] 20260504-cantina-report-sky-stusdsmom.pdf
- [18206] * **Audit**: [ChainSecurity MakerDAO USDS Wrappers audit]()
- [18207] ChainSecurity_MakerDAO_PSM_Lite_audit.pdf
- [18208] report-review-makerdao-dss-lite-psm.pdf
- [18209] ChainSecurity_MakerDAO_EndGame_Toolkit_scripts_audit.pdf
- [18210] ChainSecurity_MakerDAO_Endgame_Toolkit_contracts_audit.pdf
- [18211] report-review-makerdao-endgametoolkit_2024-08-27.pdf
- [18212] report-review-makerdao-endgametoolkit_updates_2024-09-09.pdf

Fork inheritance lineage and inherited audits are included when available.
