# Agentic Audit Brief: Lista DAO

## Project Overview

- Project: Lista DAO (`lista-dao`)
- Website: [https://lista.org/](https://lista.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.135Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc, ethereum
- Contract surface: 195 unique implementations (196 raw deployments)
- DeFi Llama TVL: $1,288,434,262.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 186 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 16 ERC20 tokens, 26 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (accesscontrolenumerableupgradeable, accesscontrolupgradeable, contextupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 196; live-surface contracts included: 196 (196 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 86/149 (57.7%)
- Deployed-live implementations: 195 of 195 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 86/195
- Verified + Unaudited implementations: 109
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 195
- Raw deployments: 196
- Audits discovered: 81 (81 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 74
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 40 fresh, 23 aging, 18 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 86 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 18.8% (OpenZeppelin, Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 39 | 20.0% | 2026-06 |
| Bailsec | Tier 2 | 31 | 15.9% | 2026-06 |
| PeckShield | Tier 2 | 20 | 10.3% | 2024-11 |
| BlockSec | Tier 2 | 17 | 8.7% | 2025-12 |
| Spearbit | Tier 1 | 16 | 8.2% | 2026-04 |
| OpenZeppelin | Tier 1 | 14 | 7.2% | 2025-10 |
| HashDit | Tier 2 | 13 | 6.7% | 2026-06 |
| Salus | Tier 2 | 13 | 6.7% | 2024-09 |
| Sherlock | Tier 1 | 6 | 3.1% | 2026-05 |
| Lista-Dao | Tier 2 | 2 | 1.0% | 2024-07 |
| Veridise | Tier 2 | 2 | 1.0% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (86)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| API3Oracle | unknown | bsc | n/a | [`0x35718b...05617d`](./contracts/bsc-56/0x35718b08323e9a466b7378f91af63f9c8f05617d/) | ✅ Audited |
| AsterRewards | unknown | bsc | n/a | [`0x2fbf35...f68705`](./contracts/bsc-56/0x2fbf35f9da8c5c1e16247afa02770a01f4f68705/) | ✅ Audited |
| AsterVault | unknown | bsc | n/a | [`0x5f97a1...87a12b`](./contracts/bsc-56/0x5f97a18f317abe825cf1023ff61452e4d387a12b/) | ✅ Audited |
| AtlasOracleAdaptor | unknown | bsc | n/a | [`0x095989...1dca8b`](./contracts/bsc-56/0x095989a71792ccf2ae5f34401fdede71461dca8b/) | ✅ Audited |
| BatchManagementUtils | unknown | bsc | n/a | [`0x10548a...36e00f`](./contracts/bsc-56/0x10548a32ad10ba55b1bbf082a1ac5e912036e00f/) | ✅ Audited |
| BnbOracle | unknown | bsc | n/a | [`0xd74508...ad2754`](./contracts/bsc-56/0xd74508ab3bdbedaa6589f913e0f89d98b2ad2754/) | ✅ Audited |
| BNBProvider | unknown | bsc | n/a | [`0x2def76...afb35d`](./contracts/bsc-56/0x2def76abf07ee5b1b12865578f7bd9514bafb35d/) | ✅ Audited |
| BoundValidator | unknown | ethereum | n/a | [`0x084bd8...9a33f7`](./contracts/ethereum-1/0x084bd8392eaebfca8b6c020c7c8ddf02909a33f7/) | ✅ Audited |
| BrokerInterestRelayer | unknown | bsc | n/a | [`0x262dd5...abbd54`](./contracts/bsc-56/0x262dd5e34d03605e6c7f76705497349e74abbd54/) | ✅ Audited |
| BrokerLiquidator | unknown | bsc | n/a | [`0x1cb5b9...27d8a7`](./contracts/bsc-56/0x1cb5b91e24fed296feec2bec8d09b653e327d8a7/) | ✅ Audited |
| CeToken | unknown | bsc | n/a | [`0x397a48...39004b`](./contracts/bsc-56/0x397a486183cb6608a3ccd1c74b6a7f024439004b/) | ✅ Audited |
| CreditBrokerInterestRelayer | unknown | bsc | n/a | [`0x315b29...c4c1a4`](./contracts/bsc-56/0x315b29b9e12b0c93f610a46c8995684db7c4c1a4/) | ✅ Audited |
| DynamicDutyCalculator | unknown | bsc | n/a | [`0x0aeb6c...6571f0`](./contracts/bsc-56/0x0aeb6cd202b8482a71215c844341ea1f3f6571f0/) | ✅ Audited |
| EarnPool | unknown | bsc | n/a | [`0x143c8b...164642`](./contracts/bsc-56/0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642/) | ✅ Audited |
| EmissionVoting | unknown | bsc | n/a | [`0x5d52bc...693736`](./contracts/bsc-56/0x5d52bcbf45c72f5fb8441959622c7e5dd4693736/) | ✅ Audited |
| ERC1967Proxy | unknown | bsc | n/a | 2 deployments: bsc [`0x2725d7...65aa57`](./contracts/bsc-56/0x2725d7336027773d7a958e10819a923dcd65aa57/); bsc `0x946e5c...e74c05` | ✅ Audited |
| EthOracle | unknown | bsc | n/a | [`0x9b4f67...af1e96`](./contracts/bsc-56/0x9b4f67fb43180085ea26e348200027670eaf1e96/) | ✅ Audited |
| EzEthOracle | unknown | bsc | n/a | [`0x209003...f7741b`](./contracts/bsc-56/0x209003905c94a67f766cbea529d2d5e1b3f7741b/) | ✅ Audited |
| HelioETHProvider | unknown | bsc | n/a | [`0xa16bb6...8e6ad9`](./contracts/bsc-56/0xa16bb61c80b29f7458d677009b3b5f4b868e6ad9/) | ✅ Audited |
| HelioProviderV2 | unknown | bsc | n/a | [`0x6c9f8c...f37c11`](./contracts/bsc-56/0x6c9f8c739843b5a5fd29da1a2bdf26811af37c11/) | ✅ Audited |
| IdleCollateralToken | unknown | bsc | n/a | [`0xb39d01...763fa3`](./contracts/bsc-56/0xb39d0107635686e6613dcd08018520c2fd763fa3/) | ✅ Audited |
| IdleOracle | unknown | bsc | n/a | [`0xc259ee...ff8733`](./contracts/bsc-56/0xc259ee9cb561dfb5dca010b29b57f12341ff8733/) | ✅ Audited |
| Interaction | unknown | bsc | n/a | [`0x2f9da6...0a509e`](./contracts/bsc-56/0x2f9da64252015a36e595dc02e05bac65880a509e/) | ✅ Audited |
| InterestRateModel | unknown | bsc | n/a | [`0x34f834...dc8141`](./contracts/bsc-56/0x34f8345b9ec201f8ba6144516fc3a213aedc8141/) | ✅ Audited |
| Jar | unknown | bsc | n/a | [`0x383a35...5b2130`](./contracts/bsc-56/0x383a3517c5d9259bcf43f4bf8612c6726b5b2130/) | ✅ Audited |
| LendingBroker | unknown | bsc | n/a | [`0x039c4a...36bbe9`](./contracts/bsc-56/0x039c4a60c53ff684b5113f0303a91f1d5336bbe9/) | ✅ Audited |
| Liquidator | unknown | bsc | n/a | [`0x534ae7...1973d0`](./contracts/bsc-56/0x534ae76dd9fccb0aa483f309b1a350d4f61973d0/) | ✅ Audited |
| LisAster | unknown | bsc | n/a | [`0x4183b7...4314b7`](./contracts/bsc-56/0x4183b7045cac1b56bc9cb3e694d1f551a84314b7/) | ✅ Audited |
| LisAsterDistributor | unknown | bsc | n/a | [`0x1c11b6...b55444`](./contracts/bsc-56/0x1c11b62fdabffa770cd14645305a0da7c2b55444/) | ✅ Audited |
| LisAsterStaking | unknown | bsc | n/a | [`0x2d0a2d...e4c3eb`](./contracts/bsc-56/0x2d0a2d15ce64afa586fceca4e8156087b6e4c3eb/) | ✅ Audited |
| ListaAirdrop | unknown | bsc | n/a | [`0x087b98...7d5089`](./contracts/bsc-56/0x087b9843155597bd447088c4eccde485357d5089/) | ✅ Audited |
| ListaOFTAdapter | unknown | bsc | n/a | [`0x82f5bc...413f02`](./contracts/bsc-56/0x82f5bcd1473bda5794239d01073797093a413f02/) | ✅ Audited |
| ListaToken | unknown | bsc | n/a | [`0xfceb31...9edc46`](./contracts/bsc-56/0xfceb31a79f71ac9cbdcf853519c1b12d379edc46/) | ✅ Audited |
| ListaV3Factory | unknown | bsc | n/a | [`0x081ce2...53d133`](./contracts/bsc-56/0x081ce2e21d2a7e7563ba4a71304eb2378b53d133/) | ✅ Audited |
| ListaVault | unknown | bsc | n/a | [`0x0fee40...36e05c`](./contracts/bsc-56/0x0fee401a16837b8a8c6c8b9f8d88744b5e36e05c/) | ✅ Audited |
| LisUSD | unknown | bsc | n/a | [`0xf5bd9b...c4d7f8`](./contracts/bsc-56/0xf5bd9b192092517d60e90c9af17b69b134c4d7f8/) | ✅ Audited |
| LpProxy | unknown | bsc | n/a | [`0x12b09b...1424c0`](./contracts/bsc-56/0x12b09bb62fb7bbcf732e6c2e166012dd7c1424c0/) | ✅ Audited |
| LpUsd | unknown | bsc | n/a | [`0x0a2381...8802de`](./contracts/bsc-56/0x0a23817c68a234425f7ebec215d4e8ea528802de/) | ✅ Audited |
| MerkleVerifier | unknown | bsc | n/a | [`0x084bd8...9a33f7`](./contracts/bsc-56/0x084bd8392eaebfca8b6c020c7c8ddf02909a33f7/) | ✅ Audited |
| Moolah | unknown | bsc | n/a | [`0x0af5cd...6bc34f`](./contracts/bsc-56/0x0af5cd9555bc52c34a5f7b20042109d0136bc34f/) | ✅ Audited |
| MoolahVault | unknown | bsc | n/a | [`0x0e5247...31c610`](./contracts/bsc-56/0x0e52472cc585f8e28322ca4536ebd7094431c610/) | ✅ Audited |
| mwBETHOracle | unknown | bsc | n/a | [`0x3605c7...db95b1`](./contracts/bsc-56/0x3605c70f8512f6c257bbe144e365f1a564db95b1/) | ✅ Audited |
| NonfungibleTokenPositionDescriptor | unknown | bsc | n/a | [`0x0ba7c9...b4ab3f`](./contracts/bsc-56/0x0ba7c9581c00b5629cbeb6d1074475a664b4ab3f/) | ✅ Audited |
| OracleCenter | unknown | bsc | n/a | [`0x47dbca...784a41`](./contracts/bsc-56/0x47dbcae9c5a8eb4ed847fa9283c3e42457784a41/) | ✅ Audited |
| PancakeStaking | unknown | bsc | n/a | [`0x811591...1c866b`](./contracts/bsc-56/0x81159173185c411ed61f6eb332d1a653bb1c866b/) | ✅ Audited |
| PancakeSwapV3LpProvider | unknown | bsc | n/a | [`0x104e7b...d42058`](./contracts/bsc-56/0x104e7b187a6455ebf79158a8d7140ea193d42058/) | ✅ Audited |
| PancakeSwapV3LpStakingHub | unknown | bsc | n/a | [`0x3da4f7...4b5606`](./contracts/bsc-56/0x3da4f7c6b5dc3c7b35fba746001542a4844b5606/) | ✅ Audited |
| PancakeSwapV3LpStakingVault | unknown | bsc | n/a | [`0x0998cd...71941d`](./contracts/bsc-56/0x0998cd70b60ee5cf5a41a69d7d121d065d71941d/) | ✅ Audited |
| PublicLiquidator | unknown | ethereum | n/a | [`0x275156...d4e544`](./contracts/ethereum-1/0x2751568e40c24149d689524f8f9a70139ed4e544/) | ✅ Audited |
| PumpBTCProvider | unknown | bsc | n/a | [`0xabdb46...09f4df`](./contracts/bsc-56/0xabdb46ba7b15ec01be368736bb7fe13ab209f4df/) | ✅ Audited |
| RateCalculator | unknown | bsc | n/a | [`0x3a8431...05c5de`](./contracts/bsc-56/0x3a84315d6e14291dace3fbc62d24f52c3505c5de/) | ✅ Audited |
| ResilientOracle | unknown | bsc | n/a | [`0x35c673...af4bbe`](./contracts/bsc-56/0x35c673a0a56edb743a8cf67bcd96d0eab8af4bbe/) | ✅ Audited |
| RewardHarvester | unknown | bsc | n/a | [`0xa0050e...9e5742`](./contracts/bsc-56/0xa0050e7d0ba04a7e80aa47d900241f48559e5742/) | ✅ Audited |
| RWAAdapter | unknown | bsc | n/a | [`0x0b116d...e350eb`](./contracts/bsc-56/0x0b116d1944e05348003479b517355b1ccee350eb/) | ✅ Audited |
| RWAEarnPool | unknown | bsc | n/a | [`0x505829...357a33`](./contracts/bsc-56/0x505829773ebda34d6f627bb493cf993a1e357a33/) | ✅ Audited |
| SlisBnbDistributor | unknown | bsc | n/a | [`0x9881cf...7c7e12`](./contracts/bsc-56/0x9881cfce5a072a107dcce7fd24e2c99b857c7e12/) | ✅ Audited |
| SlisBnbOracle | unknown | bsc | n/a | [`0x114742...80819b`](./contracts/bsc-56/0x11474297387d096ae101a272ff6ad79b7280819b/) | ✅ Audited |
| SlisBNBProvider | unknown | bsc | n/a | [`0x0aefec...820c70`](./contracts/bsc-56/0x0aefec58e6339c663e80306e38ffebbae0820c70/) | ✅ Audited |
| SlisXAUE | unknown | ethereum | n/a | [`0x0e2b8c...69af0a`](./contracts/ethereum-1/0x0e2b8cc54e2151dd8c2633a0e80b50de5169af0a/) | ✅ Audited |
| SmartProvider | unknown | ethereum | n/a | [`0x08d0b3...d7b583`](./contracts/ethereum-1/0x08d0b37dd3ff8e2ca557e91eea63cdf0cdd7b583/) | ✅ Audited |
| SolvBTCBBNOracle | unknown | bsc | n/a | [`0xb35d0f...99055d`](./contracts/bsc-56/0xb35d0f744ddcd92763d37ab3c58716183a99055d/) | ✅ Audited |
| SolvBtcOracle | unknown | bsc | n/a | [`0x08bcb6...540c5f`](./contracts/bsc-56/0x08bcb6030db9f3eb310b226ca94f9ab7a1540c5f/) | ✅ Audited |
| StableSwapFactory | unknown | bsc | n/a | [`0x63dc1c...c6378d`](./contracts/bsc-56/0x63dc1c139a62dea7bcc7736f9465c283dac6378d/) | ✅ Audited |
| StableSwapLP | unknown | bsc | n/a | [`0x7c43dc...87a84c`](./contracts/bsc-56/0x7c43dca54fdd9b43c1f627edfb9e24d5b387a84c/) | ✅ Audited |
| StableSwapPool | unknown | bsc | n/a | [`0x212b83...a3a126`](./contracts/bsc-56/0x212b836dc1ee8c8daefd1284bd27e96a2ea3a126/) | ✅ Audited |
| StableSwapPoolInfo | unknown | ethereum | n/a | [`0x2c3492...e1a767`](./contracts/ethereum-1/0x2c34920e01009b8970b2fecb3096b67869e1a767/) | ✅ Audited |
| StakeLisUSDListaDistributor | unknown | bsc | n/a | [`0x82c6fb...8a4491`](./contracts/bsc-56/0x82c6fb65aa044bb8463068e30d1146beb08a4491/) | ✅ Audited |
| StakingVault | unknown | bsc | n/a | [`0x0541ee...a1806a`](./contracts/bsc-56/0x0541eeef035709040728bedbfd7234298ba1806a/) | ✅ Audited |
| StoneOracle | unknown | bsc | n/a | [`0x3b2ff4...59ffb1`](./contracts/bsc-56/0x3b2ff473c2a10f7303230955a7fede931359ffb1/) | ✅ Audited |
| sUSDXPriceFeed | unknown | bsc | n/a | [`0x7da003...1265e0`](./contracts/bsc-56/0x7da003f123c48f42a2149bfff107ac5d531265e0/) | ✅ Audited |
| SwapRouter | unknown | bsc | n/a | [`0x660c94...750c6e`](./contracts/bsc-56/0x660c94cef2914b1235cc1e38b1699b4d48750c6e/) | ✅ Audited |
| ThenaStaking | unknown | bsc | n/a | [`0xcda44d...2c34b3`](./contracts/bsc-56/0xcda44d50fa7a806372926e521e6dde34612c34b3/) | ✅ Audited |
| Usd1Oracle | unknown | bsc | n/a | [`0x40d695...1b39fa`](./contracts/bsc-56/0x40d695986c4dd086c4e3a94392ab6c12781b39fa/) | ✅ Audited |
| UsdfOracle | unknown | bsc | n/a | [`0x070975...8c4aa2`](./contracts/bsc-56/0x0709755a26b78ce8e1f4cab598ac7477858c4aa2/) | ✅ Audited |
| USDTLpListaDistributor | unknown | bsc | n/a | [`0x24e5de...0d0bd9`](./contracts/bsc-56/0x24e5debbeba18237fdb65d0f6adfe73b4a0d0bd9/) | ✅ Audited |
| UsdtOracle | unknown | bsc | n/a | [`0x45575e...c1d92d`](./contracts/bsc-56/0x45575e5ccef6c784ae7ce28ccbef1fd6dcc1d92d/) | ✅ Audited |
| VaultAllocator | unknown | bsc | n/a | [`0x8eba9b...8fc7c2`](./contracts/bsc-56/0x8eba9befd7e0ed7e41f0b644be2b2e3be48fc7c2/) | ✅ Audited |
| VaultManager | unknown | bsc | n/a | [`0x15fc4e...727ec2`](./contracts/bsc-56/0x15fc4e6417c74577dee27aaafb2e2c5806727ec2/) | ✅ Audited |
| VeLista | unknown | bsc | n/a | [`0x765d17...70274e`](./contracts/bsc-56/0x765d17e43be4fa44b1cf75a01dc10ab95470274e/) | ✅ Audited |
| VeListaDistributor | unknown | bsc | n/a | [`0x006835...4ccfd6`](./contracts/bsc-56/0x0068358250759de8f50c83927c4a95847f4ccfd6/) | ✅ Audited |
| VenusAdapter | unknown | bsc | n/a | [`0xc1d3a2...3cacef`](./contracts/bsc-56/0xc1d3a2f48f1c025f80e32a54a4000a73633cacef/) | ✅ Audited |
| WBETHOracle | unknown | bsc | n/a | [`0x6f3da9...384584`](./contracts/bsc-56/0x6f3da9ee8965ef22228a103df4719a74b7384584/) | ✅ Audited |
| WeEthOracle | unknown | bsc | n/a | [`0x8f8075...afeee1`](./contracts/bsc-56/0x8f8075340ece10e74245d5f0e0e242500bafeee1/) | ✅ Audited |
| WstETHOracle | unknown | bsc | n/a | [`0x07399c...ee04b0`](./contracts/bsc-56/0x07399c1ca8e3e2aadd3858376cd7adaa16ee04b0/) | ✅ Audited |
| XAUEAdapter | unknown | ethereum | n/a | [`0x4c6a79...270399`](./contracts/ethereum-1/0x4c6a790e9e0c18c962cdb09ea62ccb0895270399/) | ✅ Audited |
| XAUTStaking | unknown | ethereum | n/a | [`0x33101e...18fa72`](./contracts/ethereum-1/0x33101e788c18f11f87d53b91de2672c63618fa72/) | ✅ Audited |

### ⚠️ Verified + Unaudited (109)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AsBnbPriceFeed | unknown | bsc | n/a | [`0xa13542...00704d`](./contracts/bsc-56/0xa13542f7e49e9852e5c333beaf8617c4cb00704d/) | ⚠️ Unaudited |
| AsterToken | unknown | bsc | n/a | [`0x000ae3...4f556a`](./contracts/bsc-56/0x000ae314e2a2172a039b26378814c252734f556a/) | ⚠️ Unaudited |
| AutoRefunder | unknown | bsc | n/a | [`0x9d1659...f46cea`](./contracts/bsc-56/0x9d16591537f939a341ca2a221781586b15f46cea/) | ⚠️ Unaudited |
| CDPLiquidator | unknown | bsc | n/a | [`0x1ce9c8...5123b5`](./contracts/bsc-56/0x1ce9c8884714bf6fc78d6e31e6d5b7b6af5123b5/) | ⚠️ Unaudited |
| CerosETHRouter | unknown | bsc | n/a | [`0xbaff57...2fb0c1`](./contracts/bsc-56/0xbaff578d16c9b0fc3a668408517bec1f9a2fb0c1/) | ⚠️ Unaudited |
| clisBNB | unknown | bsc | n/a | [`0x061178...80d195`](./contracts/bsc-56/0x061178fdfc399000c8023043f0f5b9578280d195/) | ⚠️ Unaudited |
| clisETH | unknown | bsc | n/a | [`0xe4f487...77181f`](./contracts/bsc-56/0xe4f48754e85f2d24361741885098453e2077181f/) | ⚠️ Unaudited |
| ClisToken | unknown | bsc | n/a | [`0x2544be...d355a8`](./contracts/bsc-56/0x2544be623743897b06d57707cf3016cccfd355a8/) | ⚠️ Unaudited |
| CollateralBorrowSnapshotRouter | unknown | bsc | n/a | [`0x57371f...8490f6`](./contracts/bsc-56/0x57371fb9311a7a0d6c712e9ee154dc8a718490f6/) | ⚠️ Unaudited |
| CreditBrokerInfo | unknown | bsc | n/a | [`0x20ea8f...c4af93`](./contracts/bsc-56/0x20ea8ff10d3d9e487570011c6c107a44aac4af93/) | ⚠️ Unaudited |
| EmergencyShutdown | unknown | bsc | n/a | [`0x4f6de1...00a5b1`](./contracts/bsc-56/0x4f6de11aa3dea237092e2101ec9f3ddb2800a5b1/) | ⚠️ Unaudited |
| EmergencySwitchHub | unknown | bsc | n/a | [`0x07e1e0...9cf40d`](./contracts/bsc-56/0x07e1e05274fee68d10484adc8405786c2c9cf40d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x01ccc0...cce29f`](./contracts/bsc-56/0x01ccc0f0ae8907bd3efa947b2ce841082bcce29f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x05ac03...8a4c9c`](./contracts/bsc-56/0x05ac03faeb31c8102a29dc1fa4365dc9e18a4c9c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x091e6e...15418d`](./contracts/bsc-56/0x091e6ed7794d74b73081d32cab59fa47ff15418d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x098a0c...cc9bfb`](./contracts/bsc-56/0x098a0c419915bffa99983abee5d960c193cc9bfb/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x19c329...facf2b`](./contracts/bsc-56/0x19c3295fd1c1956663b1a784e87eea3c02facf2b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x1a438f...67ac17`](./contracts/bsc-56/0x1a438f71bc56514f47142c96a8f580ab5767ac17/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x1afa15...11fad5`](./contracts/bsc-56/0x1afa1589a634be568d7872dcf1bbe6f79e11fad5/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x1f819b...73f7d9`](./contracts/bsc-56/0x1f819b91e29e3d28ca63f8370a0b367b7c73f7d9/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x1f9831...eb52d8`](./contracts/bsc-56/0x1f9831626ce85909794eeaa5c35bf34db3eb52d8/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x2073dd...9d9f1f`](./contracts/bsc-56/0x2073ddce6d268ebbfc541d7f5d418de9ca9d9f1f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x2959c4...73f11a`](./contracts/bsc-56/0x2959c423bfe5cc6e41516599d982a29c0773f11a/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x2b3e5b...21d0a4`](./contracts/bsc-56/0x2b3e5b695722756130a553e9bb5a45e16d21d0a4/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x2bb416...7b2462`](./contracts/bsc-56/0x2bb41616323994b4ada381ea40cb2d135f7b2462/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x37db1a...95d0bf`](./contracts/bsc-56/0x37db1ae9b24055d1f9fe973aea40b7eb2995d0bf/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x4837fb...58e5fd`](./contracts/bsc-56/0x4837fb5c9c84524cc0c93f066c1ac708a758e5fd/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x502131...d91aa9`](./contracts/bsc-56/0x5021319c1b8245e0680f19b7aa84a0f0f3d91aa9/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x80e663...b2641e`](./contracts/bsc-56/0x80e663ba9ef857d3f377f814c2f3d00187b2641e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x86e092...d8945c`](./contracts/bsc-56/0x86e09296aeda129d3b0b4c134b3202b84cd8945c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x8a016f...e2bb0b`](./contracts/bsc-56/0x8a016f1896dc2939ffdbb60f6e42bcc245e2bb0b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x8ebfa9...df3ec0`](./contracts/bsc-56/0x8ebfa9e687af71ec2e87a0380f73b9f57fdf3ec0/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x96146e...8959a2`](./contracts/bsc-56/0x96146ef4c6e1c42e05439ab037fc3d60188959a2/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0xaa57f3...72ec0c`](./contracts/bsc-56/0xaa57f36dd5ef2ac471863ec46277f976f272ec0c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0xb4678c...3a8498`](./contracts/bsc-56/0xb4678c3e8b49d2b95da48458f98805da193a8498/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0xe4153e...74ee76`](./contracts/bsc-56/0xe4153eb04417be05b8d6b2222e4cdd8ae674ee76/) | ⚠️ Unaudited |
| ETHProvider | unknown | ethereum | n/a | [`0x0218e1...bf77c4`](./contracts/ethereum-1/0x0218e1542f41e94c784998928f94e2789fbf77c4/) | ⚠️ Unaudited |
| FixedRateIrm | unknown | bsc | n/a | [`0x10c9cc...f08c82`](./contracts/bsc-56/0x10c9cc38a9117eaee1e0d0d24cf4de7804f08c82/) | ⚠️ Unaudited |
| LendingFeeRecipient | unknown | bsc | n/a | [`0x01e88f...35e208`](./contracts/bsc-56/0x01e88f69c798adf75120f4972539ac77fd35e208/) | ⚠️ Unaudited |
| LendingRevenueDistributor | unknown | bsc | n/a | [`0xe004ef...86fa21`](./contracts/bsc-56/0xe004efc1753ef845628b95d16058af1a9f86fa21/) | ⚠️ Unaudited |
| LendingRewardsDistributor | unknown | bsc | n/a | [`0x3e49ef...091959`](./contracts/bsc-56/0x3e49efd13693822507a8dfc0f9aa13ca14091959/) | ⚠️ Unaudited |
| LendingRewardsDistributorV2 | unknown | bsc | n/a | [`0x11691e...82a504`](./contracts/bsc-56/0x11691e3235541daace55c419fbea5ff12282a504/) | ⚠️ Unaudited |
| LinearDecrease | unknown | bsc | n/a | [`0x5faa44...20552e`](./contracts/bsc-56/0x5faa44a3f92eab686f6ad1d1ad15a1995b20552e/) | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | bsc | n/a | [`0x0f4c12...61d415`](./contracts/bsc-56/0x0f4c128a811a0b0da2845634c736ff1d9f61d415/) | ⚠️ Unaudited |
| ListaRevenueDistributor | unknown | bsc | n/a | [`0x1c56cc...9a7cc4`](./contracts/bsc-56/0x1c56ccf0727bac9d08494603da5d2594229a7cc4/) | ⚠️ Unaudited |
| lisUSDPriceFeed | unknown | bsc | n/a | [`0x989af6...d7c2c0`](./contracts/bsc-56/0x989af6aa3db449e49f1b3210b8750446bed7c2c0/) | ⚠️ Unaudited |
| MarketFactory | unknown | bsc | n/a | [`0x12bb76...a128e3`](./contracts/bsc-56/0x12bb76cd6a2a1ccf2ac2cff64072fed6d8a128e3/) | ⚠️ Unaudited |
| MasterVault | unknown | bsc | n/a | [`0x034f0a...929b37`](./contracts/bsc-56/0x034f0ae5d952c2ffe4247d396010c50ce6929b37/) | ⚠️ Unaudited |
| MockResilientOracle | unknown | bsc | n/a | [`0x4f1497...ae6a43`](./contracts/bsc-56/0x4f14975179419c0982a5cabed783ed5a81ae6a43/) | ⚠️ Unaudited |
| MoolahVaultFactory | unknown | bsc | n/a | [`0x0d1fac...b9fb52`](./contracts/bsc-56/0x0d1fac46e766aa64cf4a23c07fbb966937b9fb52/) | ⚠️ Unaudited |
| mXRPPriceFeed | unknown | bsc | n/a | [`0x0999ca...3f84bf`](./contracts/bsc-56/0x0999ca2e63fbb2923bc4c3853b37e371b33f84bf/) | ⚠️ Unaudited |
| NonTransferableLpERC20 | unknown | bsc | n/a | [`0x708252...cfb755`](./contracts/bsc-56/0x7082528e908bfd0c42d2134fe7065457cfcfb755/) | ⚠️ Unaudited |
| NpmImplDeployer | unknown | bsc | n/a | [`0xa0de3c...ae3a0e`](./contracts/bsc-56/0xa0de3cd98e4cb0a17d647df7d54ce38920ae3a0e/) | ⚠️ Unaudited |
| OracleAdaptor | unknown | bsc | n/a | [`0x00066f...e06fd4`](./contracts/bsc-56/0x00066f933bf16014143c284be85847a3a2e06fd4/) | ⚠️ Unaudited |
| PausableMock | unknown | bsc | n/a | [`0x7e8ef7...4a5ee0`](./contracts/bsc-56/0x7e8ef7053322c6e2fb5ff0304a620f8ce84a5ee0/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x8ce30a...4fa07b`](./contracts/bsc-56/0x8ce30a8d13d6d729708232aa415d7da46a4fa07b/) | ⚠️ Unaudited |
| PufETHPriceFeed | unknown | bsc | n/a | [`0x303cb4...efc61b`](./contracts/bsc-56/0x303cb4c83f98d806d5a5c1190908540999efc61b/) | ⚠️ Unaudited |
| SafeGuard | unknown | bsc | n/a | [`0x1b19bc...11b96e`](./contracts/bsc-56/0x1b19bc6394246d4795d16ceee9edc76b4d11b96e/) | ⚠️ Unaudited |
| SlisBnbPriceFeed | unknown | bsc | n/a | [`0x125bce...1dc1a3`](./contracts/bsc-56/0x125bcea7ae8ff45083e513faf4913a14bc1dc1a3/) | ⚠️ Unaudited |
| slisBNBx | unknown | bsc | n/a | [`0x44f987...64c5aa`](./contracts/bsc-56/0x44f987fe1fd3597abcf95b8790351d00ff64c5aa/) | ⚠️ Unaudited |
| SLisLibrary | unknown | bsc | n/a | [`0x64dbd2...6480c6`](./contracts/bsc-56/0x64dbd29ab153e7cf8806fb635ef95285e16480c6/) | ⚠️ Unaudited |
| SnBnb | unknown | bsc | n/a | [`0xaf8dc8...01cf81`](./contracts/bsc-56/0xaf8dc8a33b60173693590bd867d571d88501cf81/) | ⚠️ Unaudited |
| SnBnbYieldConverterStrategy | unknown | bsc | n/a | [`0x1101ff...923dc3`](./contracts/bsc-56/0x1101ff0f0545f3e2ed54fd986814295356923dc3/) | ⚠️ Unaudited |
| SnStakeManager | unknown | bsc | n/a | [`0x1144de...beb7dc`](./contracts/bsc-56/0x1144de70f02b516849486fa8fc8403637dbeb7dc/) | ⚠️ Unaudited |
| StableAsUsdfPriceFeed | unknown | bsc | n/a | [`0xd5342f...a60042`](./contracts/bsc-56/0xd5342ff1ae0621be72c11ecb620a5cec0aa60042/) | ⚠️ Unaudited |
| StableUsdtPriceFeed | unknown | bsc | n/a | [`0x6e6492...2e0b56`](./contracts/bsc-56/0x6e64923a9c1dc94e2b746c5dc58abebd2d2e0b56/) | ⚠️ Unaudited |
| StockOracle | unknown | bsc | n/a | [`0x1be38f...bce3d5`](./contracts/bsc-56/0x1be38f5d3b84cec3854f9fc4a9930594fabce3d5/) | ⚠️ Unaudited |
| StonePriceFeed | unknown | bsc | n/a | [`0xd6860a...55c4d8`](./contracts/bsc-56/0xd6860a2e20d7b158aac422a4030648bf2655c4d8/) | ⚠️ Unaudited |
| sUSD1PriceFeed | unknown | bsc | n/a | [`0x54e881...b380b3`](./contracts/bsc-56/0x54e8810cdde88f531485d2f04321a28e7db380b3/) | ⚠️ Unaudited |
| sUSDePriceFeed | unknown | bsc | n/a | [`0x1b7ccb...fa6d9b`](./contracts/bsc-56/0x1b7ccb0e6061d3a3bada5d97eedd252e39fa6d9b/) | ⚠️ Unaudited |
| sUSDXLiquidationPriceFeed | unknown | bsc | n/a | [`0x152624...7c81c0`](./contracts/bsc-56/0x1526249ef1501bb4207e1431c285ffc2e17c81c0/) | ⚠️ Unaudited |
| SyrupUSDTPriceFeed | unknown | bsc | n/a | [`0x573ca8...c5c308`](./contracts/bsc-56/0x573ca8c797f68fb8cc5aa96df5a19e3bb0c5c308/) | ⚠️ Unaudited |
| ThenaERC20LpProvidableListaDistributor | unknown | bsc | n/a | [`0xc998f1...cee150`](./contracts/bsc-56/0xc998f14f0692526824bfa3d299fd5cce04cee150/) | ⚠️ Unaudited |
| TimeLock | unknown | bsc | n/a | [`0x07d274...735253`](./contracts/bsc-56/0x07d274a68393e8b8a2ccf19a2ce4ba3518735253/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x01a6fc...eb8281`](./contracts/bsc-56/0x01a6fcc74852088c72862c12c54f992720eb8281/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x01b39e...b44e23`](./contracts/bsc-56/0x01b39e969a76d2f7c9a8a81ecd1b2f7116b44e23/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x031a6f...7c1461`](./contracts/bsc-56/0x031a6f543449d5fbf9c3e77f907043f7be7c1461/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x03db75...d63067`](./contracts/bsc-56/0x03db750d6212c6a0bca9258e8cb7cf46dfd63067/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x05570c...7115c3`](./contracts/bsc-56/0x05570c903a99f59e8f9913d4d628796bad7115c3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0ad764...669caa`](./contracts/bsc-56/0x0ad764098ff68b100d0976a8bcf2294b67669caa/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0aed86...7f4f3b`](./contracts/bsc-56/0x0aed860ca496600f6976219cb1acec435d7f4f3b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x117b4a...651063`](./contracts/bsc-56/0x117b4a02d1bb3a32f4bf5cd6103e633b2b651063/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x16c39b...0622a5`](./contracts/bsc-56/0x16c39b6ee97d3d92f570ad9403418e43ea0622a5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x1b8b3f...89d308`](./contracts/bsc-56/0x1b8b3ff07fefee784e3a5d208d34c12c6489d308/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x227716...f6c867`](./contracts/bsc-56/0x227716e5f6c59f961e091d35345b16ce09f6c867/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x2ea16e...b8fb5a`](./contracts/bsc-56/0x2ea16e082ca50eb6017bbfcb967cc7c6e2b8fb5a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x2eedc4...2d5642`](./contracts/bsc-56/0x2eedc4723b1ed2f24afcd9c0e3665061bd2d5642/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x316775...95f5dd`](./contracts/bsc-56/0x31677537685ebdf1b695eda46ec385845395f5dd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x31d558...b87aaf`](./contracts/bsc-56/0x31d558b899461d6ea498c3c1664a150a19b87aaf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x420a16...dde28b`](./contracts/bsc-56/0x420a16f03e7f623556ccee452d4caafe1fdde28b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x53c702...9a2fb1`](./contracts/bsc-56/0x53c7024411e5d12c0b17d412943c3dd5939a2fb1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x81a62b...5a46e8`](./contracts/bsc-56/0x81a62b329cc8939494d8613f614171a9955a46e8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x9a0530...c3bf5e`](./contracts/bsc-56/0x9a0530a81c83d3b0dae720bf91c9254fecc3bf5e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x9ba88e...4063cb`](./contracts/bsc-56/0x9ba88e6b20041750fd4e6271fea455f5d44063cb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xb0b84d...d14a1b`](./contracts/bsc-56/0xb0b84d294e0c75a6abe60171b70edeb2efd14a1b/) | ⚠️ Unaudited |
| uniBTCPriceFeed | unknown | bsc | n/a | [`0x150d8f...bbb936`](./contracts/bsc-56/0x150d8f804ebfd30202f59bc374301512e6bbb936/) | ⚠️ Unaudited |
| USDXLiquidationPriceFeed | unknown | bsc | n/a | [`0x7a4c41...626d2d`](./contracts/bsc-56/0x7a4c41f4479f42dc5ebe4aca94b12501e6626d2d/) | ⚠️ Unaudited |
| VaultDistributor | unknown | bsc | n/a | [`0x73b1b1...573f6c`](./contracts/bsc-56/0x73b1b172e2278a09d2b3bc116659d9d887573f6c/) | ⚠️ Unaudited |
| VeListaInterestRebater | unknown | bsc | n/a | [`0x40c34a...0818fe`](./contracts/bsc-56/0x40c34acecfc302a1dc3c3592ecea52e17a0818fe/) | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | bsc | n/a | [`0x321abb...19caee`](./contracts/bsc-56/0x321abb57a8355818211d460fc91ca9b79019caee/) | ⚠️ Unaudited |
| WBETHPriceFeed | unknown | ethereum | n/a | [`0x070975...8c4aa2`](./contracts/ethereum-1/0x0709755a26b78ce8e1f4cab598ac7477858c4aa2/) | ⚠️ Unaudited |
| wNLPUSDTPriceFeed | unknown | bsc | n/a | [`0xf86155...de4262`](./contracts/bsc-56/0xf86155a27b5cd958732a29829d80017727de4262/) | ⚠️ Unaudited |
| wsrUSDPriceFeed | unknown | bsc | n/a | [`0xfee2c5...76a46f`](./contracts/bsc-56/0xfee2c5ad734e64c8a63105187a5b465c3176a46f/) | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | ethereum | n/a | [`0x36b0ae...ce166d`](./contracts/ethereum-1/0x36b0ae9841c68db46d8435760680134089ce166d/) | ⚠️ Unaudited |
| wstUSRNewPriceFeed | unknown | bsc | n/a | [`0xdc3360...324104`](./contracts/bsc-56/0xdc3360252a4f94c1e0d93816ff1335440e324104/) | ⚠️ Unaudited |
| wstUSRPriceFeed | unknown | bsc | n/a | [`0x5439ec...4722c8`](./contracts/bsc-56/0x5439ec87e111b1ac0ae676dbf561cd66164722c8/) | ⚠️ Unaudited |
| xSolvBtcPriceFeed | unknown | bsc | n/a | [`0x267cbe...a0bc5e`](./contracts/bsc-56/0x267cbe0e9c37d7ab6c9f61ef4065a0ce8da0bc5e/) | ⚠️ Unaudited |
| yUSDFixedPriceFeed | unknown | bsc | n/a | [`0xaaff27...6d3365`](./contracts/bsc-56/0xaaff27ce7d8247d2d7725cdf5e590f72ca6d3365/) | ⚠️ Unaudited |
| yUSDPriceFeed | unknown | bsc | n/a | [`0x687c3e...e24a04`](./contracts/bsc-56/0x687c3ee02e0b6a26d025b1b5babd54c3a2e24a04/) | ⚠️ Unaudited |

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
| [Bailsec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Bailsec_SlisbnbProvider_Final_Report_241127.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | 3 | high |
| [Bailsec 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Bailsec_V3_LP_20Sept_2025.pdf) | OpenZeppelin | Audit | 2025-08 | fresh | Direct | contract_name | 8 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_060824_AMO_DynamicDutyCalculator_v1.0-signed.pdf) | BlockSec | Audit | 2024-08 | aging | Direct | contract_name | 2 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_OFT_190624.pdf) | PeckShield | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [BlockSec 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_V3_LP_04Sept_2025.pdf) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | contract_name | 6 | high |
| [CertiK 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/CertiK_V3_LP_04Sept_2025.pdf) | CertiK | Audit | 2025-09 | fresh | Direct | contract_name | 27 | high |
| [Certik_300522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Certik_300522.pdf) | CertiK | Audit | 2022-05 | stale | Direct | contract_name | 3 | high |
| [PeckShield_250522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_250522.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 1 | high |
| [PeckShield](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_300424.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |
| [PeckShield](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_OFT_190624.pdf) | PeckShield | Audit | 2024-06 | stale | Direct | contract_name | 2 | high |
| [PeckShield](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_slisBNBOracle_180424.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [Salus](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Salus_080824_AMO_DynamicDutyCalculator.pdf) | Salus | Audit | 2024-08 | aging | Direct | contract_name | 2 | high |
| [SlowMist_100522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/SlowMist_100522.pdf) | SlowMist | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [SlowMist_240522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/SlowMist_240522.pdf) | SlowMist | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Spearbit 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/SpearBit_V3_LP_01Sept_2025.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 4 | high |
| [Supremacy](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Supremacy-Audit-Report-ListaDAO_FlashBuy-v0.1.pdf) | Supremacy | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Veridise_270622.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Veridise_270622.pdf) | Veridise | Audit | 2022-06 | stale | Direct | contract_name | 2 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_emission_voting_211024.pdf) | PeckShield | Audit | 2024-10 | aging | Direct | contract_name | 2 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_lista_SlisbnbProvider-VotingIncentive_v1.0_signed_241127.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_lista_flashbuy_v1.0-signed.pdf) | BlockSec | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_psm_241122.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | 3 | high |
| [Salus](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/salus_PSM_241122.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | 3 | high |
| [Salus](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/salus_emission_voting_211024.pdf) | PeckShield | Audit | 2024-10 | aging | Direct | contract_name | 2 | high |
| [Bailsec-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-CollateralYieldVault-20260618.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | 2 | high |
| [Bailsec-Credit-Liquidation-20260303.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-Credit-Liquidation-20260303.pdf) | Bailsec | Audit | 2026-02 | fresh | Direct | contract_name | 1 | high |
| [Bailsec 2026-01](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-Credit-Loan-Jan2026.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | 2 | high |
| [Bailsec-FixedTerm-20260511.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-FixedTerm-20260511.pdf) | Bailsec | Audit | 2026-05 | fresh | Direct | contract_name | 5 | high |
| [Bailsec-FixedTerm-20260628.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-FixedTerm-20260628.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | 5 | high |
| [Bailsec 2025-04](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-AuditReport-20250410.pdf) | CertiK | Audit | 2025-03 | aging | Direct | contract_name | 5 | high |
| [Bailsec 2025-05](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-Provider-20250522.pdf) | Bailsec | Audit | 2025-03 | aging | Direct | contract_name | 4 | high |
| [Bailsec 2026-01](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-SlisBNBMinter-20260105.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | 1 | high |
| [Bailsec 2025-11](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-Smart-Collateral-and-Liquidators-20251124.pdf) | Bailsec | Audit | 2025-09 | fresh | Direct | contract_name | 8 | high |
| [Bailsec 2026-01](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-SmartPorvider-and-SlisBNBMinter-202601229.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | 1 | high |
| [Bailsec 2026-03](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-Position-Migrator-20260318.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | 3 | high |
| [Bailsec-YieldBuffer-AuditReport-20260611.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-YieldBuffer-AuditReport-20260611.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | 3 | high |
| [Bailsec__Fixed_Term_and_rate_Oct2025.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec__Fixed_Term_and_rate_Oct2025.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | 4 | high |
| [BlockSec 2025-04](https://github.com/lista-dao/moolah/blob/master/docs/audits/Blocksec-ListaLending-AuditReport-20250410.pdf) | CertiK | Audit | 2025-04 | aging | Direct | contract_name | 5 | high |
| [BlockSec 2025-05](https://github.com/lista-dao/moolah/blob/master/docs/audits/Blocksec-ListaLending-Provider-20250522.pdf) | BlockSec | Audit | 2025-05 | aging | Direct | contract_name | 4 | high |
| [BlockSec 2025-11](https://github.com/lista-dao/moolah/blob/master/docs/audits/Blocksec-ListaLending-SlisBNBxMinter-AuditReport-20251101.pdf) | BlockSec | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [Cantina 2026-03](https://github.com/lista-dao/moolah/blob/master/docs/audits/Cantina-Position-Migrator-20260318.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | 3 | high |
| [Cantina 2026-02](https://github.com/lista-dao/moolah/blob/master/docs/audits/Cantina_Credit_loan_04Feb2026.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | 2 | high |
| [Cantina_Fixed_Term_and_rate_12Nov2025.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Cantina_Fixed_Term_and_rate_12Nov2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | 4 | high |
| [CertiK-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/CertiK-CollateralYieldVault-20260618.pdf) | CertiK | Audit | 2026-06 | fresh | Direct | contract_name | 1 | high |
| [CertiK-REP-Lista-Dao-PositionManager-20260410.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/CertiK-REP-Lista-Dao-PositionManager-20260410.pdf) | CertiK | Audit | 2026-04 | fresh | Direct | contract_name | 2 | high |
| [HashDit-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-CollateralYieldVault-20260618.pdf) | HashDit | Audit | 2026-06 | fresh | Direct | contract_name | 1 | high |
| [HashDit-Idle-Market-20260526.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-Idle-Market-20260526.pdf) | HashDit | Audit | 2026-05 | fresh | Direct | contract_name | 4 | high |
| [HashDit-ListaLending-BrokerBatchOps-20260526.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-ListaLending-BrokerBatchOps-20260526.pdf) | HashDit | Audit | 2026-05 | fresh | Direct | contract_name | 1 | high |
| [HashDit-YieldBuffer-AuditReport-20260611.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-YieldBuffer-AuditReport-20260611.pdf) | HashDit | Audit | 2026-06 | fresh | Direct | contract_name | 4 | high |
| [OpenZeppelin 2025-10](https://github.com/lista-dao/moolah/blob/master/docs/audits/OpenZeppelin-ListaLending-Smart-Collateral-20251020.pdf) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | contract_name | 6 | high |
| [Spearbit 2026-03](https://github.com/lista-dao/moolah/blob/master/docs/audits/Spearbit-Credit-Liquidation-20260303.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | 1 | high |
| [WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf) | WarRoom | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [cantina_PositionManager_20260410.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/cantina_PositionManager_20260410.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | 1 | high |
| [CertiK 2025-04](https://github.com/lista-dao/lista-token/blob/master/audits/certik-lp-mint-clisbnb-17apr25.pdf) | CertiK | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [BlockSec 2025-04](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec-lp-mint-clisbnb-03apr25.pdf) | BlockSec | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Lista-Dao_Lista-token_audit_report_2024-07-12.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/Lista-Dao_Lista-token_audit_report_2024-07-12.pdf) | Lista-Dao | Audit | 2024-07 | stale | Direct | contract_name | 2 | high |
| [BlockSec](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_velista_v2.0-signed.pdf) | BlockSec | Audit | 2024-07 | stale | Direct | contract_name | 2 | high |
| [PeckShield](https://github.com/lista-dao/synclub-contracts/blob/master/audit/PeckShield-Audit-Report-ListaStakeManager-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [BlockSec](https://github.com/lista-dao/synclub-contracts/blob/master/audit/blocksec_listastakeManager_v1.0-signed.pdf) | BlockSec | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Bailsec](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Bailsec-lisAster-Audit-Report.pdf) | Bailsec | Audit | 2026-05 | fresh | Direct | contract_name | 4 | high |
| [Sherlock](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Sherlock-lisAster-Audit-Report.pdf) | Sherlock | Contest | 2026-05 | fresh | Direct | contract_name | 4 | high |
| [PeckShield](https://github.com/lista-dao/lista-token/blob/master/audits/PeckShield-Audit-Report-ListaAirdrop-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |
| [Supremacy](https://github.com/lista-dao/lista-token/blob/master/audits/Supremacy-Audit-Report-ListaDAO_Airdrop-v1.0.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | 2 | high |
| [BlockSec](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_ListaToken_v1.0-signed.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [Supremacy](https://github.com/lista-dao/lista-token/blob/master/audits/Supremacy-Audit-Report-ListaDAO_token-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [PeckShield](https://github.com/lista-dao/lista-token/blob/master/audits/PeckShield-Audit-Report-Restake-v1.0.pdf) | PeckShield | Audit | 2024-09 | aging | Direct | contract_name | 7 | high |
| [Salus](https://github.com/lista-dao/lista-token/blob/master/audits/Salus-Audit-Report-Restake-v1.0.pdf) | Salus | Audit | 2024-09 | aging | Direct | contract_name | 7 | high |
| [Bailsec](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Bailsec-RWA-Audit%20Report.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | 2 | high |
| [BlockSec](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/BlockSec-RWA-Audit%20Report.pdf) | BlockSec | Audit | 2025-10 | fresh | Direct | contract_name | 2 | high |
| [Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf) | Bailsec | Audit | 2024-11 | aging | Direct | contract_name | 3 | high |
| [260430-Cantina-Lista-V3-Final-Report.pdf](https://github.com/lista-dao/lista-v3/blob/master/audits/260430-Cantina-Lista-V3-Final-Report.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | 3 | high |
| [bailsec_lista_usdtLpdistributor_final_report.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/bailsec_lista_usdtLpdistributor_final_report.pdf) | Bailsec | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf) | BlockSec | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |
| [blocksec_lista_emission_v1.0.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_lista_emission_v1.0.pdf) | BlockSec | Audit | 2024-08 | aging | Direct | contract_name | 5 | high |
| [blocksec_lista_usdtLpdistributor_v1.0-signed.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_lista_usdtLpdistributor_v1.0-signed.pdf) | BlockSec | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [salus_lista_emission_v1.0.pdf (also discovered via alternate URL)](https://github.com/lista-dao/lista-token/blob/master/audits/salus_lista_emission_v1.0.pdf) | Salus | Audit | 2024-08 | aging | Direct | contract_name | 6 | high |
| [Bailsec-slisXAUE-Audit Report.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Bailsec-slisXAUE-Audit%20Report.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | 3 | high |
| [CertiK-slisXAUE-Audit Report.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/CertiK-slisXAUE-Audit%20Report.pdf) | CertiK | Audit | 2026-06 | fresh | Direct | contract_name | 3 | high |
| [HashDit-AsterRewards-20260615.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/HashDit-AsterRewards-20260615.pdf) | HashDit | Audit | 2026-06 | fresh | Direct | contract_name | 2 | high |
| [hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf) | HashDit | Audit | 2026-05 | fresh | Direct | contract_name | 1 | high |
| [260430-HashDit-Lista-V3-Final-Report.pdf](https://github.com/lista-dao/lista-v3/blob/master/audits/260430-HashDit-Lista-V3-Final-Report.pdf) | HashDit | Audit | 2026-04 | fresh | Direct | contract_name | 1 | high |
| [260515-Bailsec-Lista-V3-Differential-Final-Report.pdf](https://github.com/lista-dao/lista-v3/blob/master/audits/260515-Bailsec-Lista-V3-Differential-Final-Report.pdf) | Bailsec | Audit | 2026-05 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xa13542...00704d`](./contracts/bsc-56/0xa13542f7e49e9852e5c333beaf8617c4cb00704d/) | AsBnbPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x000ae3...4f556a`](./contracts/bsc-56/0x000ae314e2a2172a039b26378814c252734f556a/) | AsterToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9d1659...f46cea`](./contracts/bsc-56/0x9d16591537f939a341ca2a221781586b15f46cea/) | AutoRefunder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ce9c8...5123b5`](./contracts/bsc-56/0x1ce9c8884714bf6fc78d6e31e6d5b7b6af5123b5/) | CDPLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbaff57...2fb0c1`](./contracts/bsc-56/0xbaff578d16c9b0fc3a668408517bec1f9a2fb0c1/) | CerosETHRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x061178...80d195`](./contracts/bsc-56/0x061178fdfc399000c8023043f0f5b9578280d195/) | clisBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe4f487...77181f`](./contracts/bsc-56/0xe4f48754e85f2d24361741885098453e2077181f/) | clisETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2544be...d355a8`](./contracts/bsc-56/0x2544be623743897b06d57707cf3016cccfd355a8/) | ClisToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x57371f...8490f6`](./contracts/bsc-56/0x57371fb9311a7a0d6c712e9ee154dc8a718490f6/) | CollateralBorrowSnapshotRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20ea8f...c4af93`](./contracts/bsc-56/0x20ea8ff10d3d9e487570011c6c107a44aac4af93/) | CreditBrokerInfo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4f6de1...00a5b1`](./contracts/bsc-56/0x4f6de11aa3dea237092e2101ec9f3ddb2800a5b1/) | EmergencyShutdown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07e1e0...9cf40d`](./contracts/bsc-56/0x07e1e05274fee68d10484adc8405786c2c9cf40d/) | EmergencySwitchHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0218e1...bf77c4`](./contracts/ethereum-1/0x0218e1542f41e94c784998928f94e2789fbf77c4/) | ETHProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10c9cc...f08c82`](./contracts/bsc-56/0x10c9cc38a9117eaee1e0d0d24cf4de7804f08c82/) | FixedRateIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01e88f...35e208`](./contracts/bsc-56/0x01e88f69c798adf75120f4972539ac77fd35e208/) | LendingFeeRecipient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe004ef...86fa21`](./contracts/bsc-56/0xe004efc1753ef845628b95d16058af1a9f86fa21/) | LendingRevenueDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e49ef...091959`](./contracts/bsc-56/0x3e49efd13693822507a8dfc0f9aa13ca14091959/) | LendingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11691e...82a504`](./contracts/bsc-56/0x11691e3235541daace55c419fbea5ff12282a504/) | LendingRewardsDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5faa44...20552e`](./contracts/bsc-56/0x5faa44a3f92eab686f6ad1d1ad15a1995b20552e/) | LinearDecrease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f4c12...61d415`](./contracts/bsc-56/0x0f4c128a811a0b0da2845634c736ff1d9f61d415/) | ListaAutoBuyback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c56cc...9a7cc4`](./contracts/bsc-56/0x1c56ccf0727bac9d08494603da5d2594229a7cc4/) | ListaRevenueDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x989af6...d7c2c0`](./contracts/bsc-56/0x989af6aa3db449e49f1b3210b8750446bed7c2c0/) | lisUSDPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12bb76...a128e3`](./contracts/bsc-56/0x12bb76cd6a2a1ccf2ac2cff64072fed6d8a128e3/) | MarketFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x034f0a...929b37`](./contracts/bsc-56/0x034f0ae5d952c2ffe4247d396010c50ce6929b37/) | MasterVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4f1497...ae6a43`](./contracts/bsc-56/0x4f14975179419c0982a5cabed783ed5a81ae6a43/) | MockResilientOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d1fac...b9fb52`](./contracts/bsc-56/0x0d1fac46e766aa64cf4a23c07fbb966937b9fb52/) | MoolahVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0999ca...3f84bf`](./contracts/bsc-56/0x0999ca2e63fbb2923bc4c3853b37e371b33f84bf/) | mXRPPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x708252...cfb755`](./contracts/bsc-56/0x7082528e908bfd0c42d2134fe7065457cfcfb755/) | NonTransferableLpERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa0de3c...ae3a0e`](./contracts/bsc-56/0xa0de3cd98e4cb0a17d647df7d54ce38920ae3a0e/) | NpmImplDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00066f...e06fd4`](./contracts/bsc-56/0x00066f933bf16014143c284be85847a3a2e06fd4/) | OracleAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7e8ef7...4a5ee0`](./contracts/bsc-56/0x7e8ef7053322c6e2fb5ff0304a620f8ce84a5ee0/) | PausableMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x303cb4...efc61b`](./contracts/bsc-56/0x303cb4c83f98d806d5a5c1190908540999efc61b/) | PufETHPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b19bc...11b96e`](./contracts/bsc-56/0x1b19bc6394246d4795d16ceee9edc76b4d11b96e/) | SafeGuard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x125bce...1dc1a3`](./contracts/bsc-56/0x125bcea7ae8ff45083e513faf4913a14bc1dc1a3/) | SlisBnbPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x44f987...64c5aa`](./contracts/bsc-56/0x44f987fe1fd3597abcf95b8790351d00ff64c5aa/) | slisBNBx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64dbd2...6480c6`](./contracts/bsc-56/0x64dbd29ab153e7cf8806fb635ef95285e16480c6/) | SLisLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaf8dc8...01cf81`](./contracts/bsc-56/0xaf8dc8a33b60173693590bd867d571d88501cf81/) | SnBnb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1101ff...923dc3`](./contracts/bsc-56/0x1101ff0f0545f3e2ed54fd986814295356923dc3/) | SnBnbYieldConverterStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1144de...beb7dc`](./contracts/bsc-56/0x1144de70f02b516849486fa8fc8403637dbeb7dc/) | SnStakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd5342f...a60042`](./contracts/bsc-56/0xd5342ff1ae0621be72c11ecb620a5cec0aa60042/) | StableAsUsdfPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6e6492...2e0b56`](./contracts/bsc-56/0x6e64923a9c1dc94e2b746c5dc58abebd2d2e0b56/) | StableUsdtPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1be38f...bce3d5`](./contracts/bsc-56/0x1be38f5d3b84cec3854f9fc4a9930594fabce3d5/) | StockOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd6860a...55c4d8`](./contracts/bsc-56/0xd6860a2e20d7b158aac422a4030648bf2655c4d8/) | StonePriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x54e881...b380b3`](./contracts/bsc-56/0x54e8810cdde88f531485d2f04321a28e7db380b3/) | sUSD1PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b7ccb...fa6d9b`](./contracts/bsc-56/0x1b7ccb0e6061d3a3bada5d97eedd252e39fa6d9b/) | sUSDePriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x152624...7c81c0`](./contracts/bsc-56/0x1526249ef1501bb4207e1431c285ffc2e17c81c0/) | sUSDXLiquidationPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x573ca8...c5c308`](./contracts/bsc-56/0x573ca8c797f68fb8cc5aa96df5a19e3bb0c5c308/) | SyrupUSDTPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc998f1...cee150`](./contracts/bsc-56/0xc998f14f0692526824bfa3d299fd5cce04cee150/) | ThenaERC20LpProvidableListaDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07d274...735253`](./contracts/bsc-56/0x07d274a68393e8b8a2ccf19a2ce4ba3518735253/) | TimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x150d8f...bbb936`](./contracts/bsc-56/0x150d8f804ebfd30202f59bc374301512e6bbb936/) | uniBTCPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7a4c41...626d2d`](./contracts/bsc-56/0x7a4c41f4479f42dc5ebe4aca94b12501e6626d2d/) | USDXLiquidationPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73b1b1...573f6c`](./contracts/bsc-56/0x73b1b172e2278a09d2b3bc116659d9d887573f6c/) | VaultDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x40c34a...0818fe`](./contracts/bsc-56/0x40c34acecfc302a1dc3c3592ecea52e17a0818fe/) | VeListaInterestRebater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x321abb...19caee`](./contracts/bsc-56/0x321abb57a8355818211d460fc91ca9b79019caee/) | VeListaRewardsCourier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x070975...8c4aa2`](./contracts/ethereum-1/0x0709755a26b78ce8e1f4cab598ac7477858c4aa2/) | WBETHPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf86155...de4262`](./contracts/bsc-56/0xf86155a27b5cd958732a29829d80017727de4262/) | wNLPUSDTPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfee2c5...76a46f`](./contracts/bsc-56/0xfee2c5ad734e64c8a63105187a5b465c3176a46f/) | wsrUSDPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36b0ae...ce166d`](./contracts/ethereum-1/0x36b0ae9841c68db46d8435760680134089ce166d/) | WstETHPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdc3360...324104`](./contracts/bsc-56/0xdc3360252a4f94c1e0d93816ff1335440e324104/) | wstUSRNewPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5439ec...4722c8`](./contracts/bsc-56/0x5439ec87e111b1ac0ae676dbf561cd66164722c8/) | wstUSRPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x267cbe...a0bc5e`](./contracts/bsc-56/0x267cbe0e9c37d7ab6c9f61ef4065a0ce8da0bc5e/) | xSolvBtcPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaaff27...6d3365`](./contracts/bsc-56/0xaaff27ce7d8247d2d7725cdf5e590f72ca6d3365/) | yUSDFixedPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x687c3e...e24a04`](./contracts/bsc-56/0x687c3ee02e0b6a26d025b1b5babd54c3a2e24a04/) | yUSDPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 148 |
| upstream | 0 |
| standard_library | 47 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=74
- Match method counts: extraction_exact=231

Zero-match audit list:

- [17502] SlowMist_100522.pdf
- [17503] SlowMist_240522.pdf
- [17505] Supremacy
- [17509] BlockSec
- [17541] WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf
- [17547] PeckShield
- [17548] BlockSec

Fork inheritance lineage and inherited audits are included when available.
