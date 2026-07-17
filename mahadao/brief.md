# Agentic Audit Brief: mahadao

## Project Overview

- Project: mahadao (`mahadao`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.314Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum, polygon
- Contract surface: 101 unique implementations (101 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 89 project-authored contract(s) across 3 chain(s); 9 ERC20 tokens, 2 ERC721 NFTs, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 11 common project-authored base contract(s) (basemath, operator, stakingrewardschild). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 101; live-surface contracts included: 101 (101 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/97 (0.0%)
- Deployed-live implementations: 101 of 101 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/101
- Verified + Unaudited implementations: 101
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 101
- Raw deployments: 101
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (101)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActivePool | unknown | ethereum | n/a | [`0x4e30b846db4ad7dac5794ec1d700cbd14fb742ad`](./contracts/ethereum-1/0x4e30b846db4ad7dac5794ec1d700cbd14fb742ad/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | polygon | n/a | [`0x170998b3df54f1dda3d88f3ec7fbfa4a0a93b6c1`](./contracts/polygon-137/0x170998b3df54f1dda3d88f3ec7fbfa4a0a93b6c1/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | polygon | n/a | [`0x89da855d94dd60396e585b19072a30397a9355a1`](./contracts/polygon-137/0x89da855d94dd60396e585b19072a30397a9355a1/) | ⚠️ Unaudited |
| ARTHBurner | unknown | ethereum | n/a | [`0x9a6a2527a54090121bd0b618e112bbee6ac5bfac`](./contracts/ethereum-1/0x9a6a2527a54090121bd0b618e112bbee6ac5bfac/) | ⚠️ Unaudited |
| ARTHETHTroveLP | unknown | ethereum | n/a | [`0x13bb21255525bd6ad287434086ae45064c38fe52`](./contracts/ethereum-1/0x13bb21255525bd6ad287434086ae45064c38fe52/) | ⚠️ Unaudited |
| ARTHETHWithdraw | unknown | ethereum | n/a | [`0x6af5e4acf1f3d9866caec5f451abb08a9ce9174a`](./contracts/ethereum-1/0x6af5e4acf1f3d9866caec5f451abb08a9ce9174a/) | ⚠️ Unaudited |
| ARTHFlashMinter | unknown | ethereum | n/a | [`0xc4bbefdc3066b919cd1a6b5901241e11282e625d`](./contracts/ethereum-1/0xc4bbefdc3066b919cd1a6b5901241e11282e625d/) | ⚠️ Unaudited |
| ARTHPriceKeeper | unknown | ethereum | n/a | [`0x07511aad8ff0933473dcdebb9f553803e56add71`](./contracts/ethereum-1/0x07511aad8ff0933473dcdebb9f553803e56add71/) | ⚠️ Unaudited |
| ARTHRedeemer | unknown | polygon | n/a | [`0x394f4f7db617a1e4612072345f9601235f64b326`](./contracts/polygon-137/0x394f4f7db617a1e4612072345f9601235f64b326/) | ⚠️ Unaudited |
| ArthUSDWrapper | unknown | bsc | n/a | [`0x7ee5010cbd5e499b7d66a7cba2ec3bde5fca8e00`](./contracts/bsc-56/0x7ee5010cbd5e499b7d66a7cba2ec3bde5fca8e00/) | ⚠️ Unaudited |
| ARTHValuecoin | unknown | bsc | n/a | [`0x85dab10c3ba20148ca60c2eb955e1f8ffe9eaa79`](./contracts/bsc-56/0x85dab10c3ba20148ca60c2eb955e1f8ffe9eaa79/) | ⚠️ Unaudited |
| AToken | unknown | polygon | n/a | [`0x0f50fa13505db4be1ed745f5f61e33afa0953ec0`](./contracts/polygon-137/0x0f50fa13505db4be1ed745f5f61e33afa0953ec0/) | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | polygon | n/a | [`0x2832025c330489492d830f67f06715e55853a3e2`](./contracts/polygon-137/0x2832025c330489492d830f67f06715e55853a3e2/) | ⚠️ Unaudited |
| BaseGaugeV2 | unknown | ethereum | n/a | [`0x2c2e08b03c6f0831dc44ef6d5f4cabfb4c46f2fc`](./contracts/ethereum-1/0x2c2e08b03c6f0831dc44ef6d5f4cabfb4c46f2fc/) | ⚠️ Unaudited |
| BaseGaugeV2UniV3 | unknown | ethereum | n/a | [`0x174327f7b7a624a87bd47b5d7e1899e3562646df`](./contracts/ethereum-1/0x174327f7b7a624a87bd47b5d7e1899e3562646df/) | ⚠️ Unaudited |
| BaseGaugeV3UniV3 | unknown | ethereum | n/a | [`0x0810001b0101b566c1497e60e7ec3ca1db462b84`](./contracts/ethereum-1/0x0810001b0101b566c1497e60e7ec3ca1db462b84/) | ⚠️ Unaudited |
| BaseV2Bribes | unknown | ethereum | n/a | [`0x122aca85d59c34effc1171e645be80c238aa4c24`](./contracts/ethereum-1/0x122aca85d59c34effc1171e645be80c238aa4c24/) | ⚠️ Unaudited |
| BaseV2Voter | unknown | ethereum | n/a | [`0x227a445ff220cc9c3584fe77b7dfef6af0b63e8e`](./contracts/ethereum-1/0x227a445ff220cc9c3584fe77b7dfef6af0b63e8e/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | bsc | n/a | [`0x05a70b8b0a6dc2446ee23868f7d7a66dae7276ea`](./contracts/bsc-56/0x05a70b8b0a6dc2446ee23868f7d7a66dae7276ea/) | ⚠️ Unaudited |
| CollSurplusPool | unknown | bsc | n/a | [`0x1377557baa6c78fa7d3c1623702c7c986f1a9aee`](./contracts/bsc-56/0x1377557baa6c78fa7d3c1623702c7c986f1a9aee/) | ⚠️ Unaudited |
| CommunityIssuance | unknown | bsc | n/a | [`0x375bcea28ee66175a47106977ffcd8a7beab0ea8`](./contracts/bsc-56/0x375bcea28ee66175a47106977ffcd8a7beab0ea8/) | ⚠️ Unaudited |
| CommunityVesting | unknown | ethereum | n/a | [`0xfdf0d51ddd34102472d7130c3d4831bc77386e78`](./contracts/ethereum-1/0xfdf0d51ddd34102472d7130c3d4831bc77386e78/) | ⚠️ Unaudited |
| DefaultPool | unknown | bsc | n/a | [`0x4194955c1035c7cefdc5cc5e54889920b4d862e9`](./contracts/bsc-56/0x4194955c1035c7cefdc5cc5e54889920b4d862e9/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | polygon | n/a | [`0x29c7c923382ee4a5135773aa9ca91d8e69a97839`](./contracts/polygon-137/0x29c7c923382ee4a5135773aa9ca91d8e69a97839/) | ⚠️ Unaudited |
| DotDotFinanceBribeKeeper | unknown | bsc | n/a | [`0x5b96c472619778ed2990f5939462fc981890f7a3`](./contracts/bsc-56/0x5b96c472619778ed2990f5939462fc981890f7a3/) | ⚠️ Unaudited |
| DSProxyFactory | unknown | polygon | n/a | [`0x4f1df69a95280b6bbedf89c5c7a9cfa712b995f9`](./contracts/polygon-137/0x4f1df69a95280b6bbedf89c5c7a9cfa712b995f9/) | ⚠️ Unaudited |
| DSProxyRegistry | unknown | polygon | n/a | [`0xb16fffa9e6f6489a2f8d77418eae58458efeff88`](./contracts/polygon-137/0xb16fffa9e6f6489a2f8d77418eae58458efeff88/) | ⚠️ Unaudited |
| EmissionController | unknown | ethereum | n/a | [`0x0fbd374bfdfa835f8f3601b6c29d15e9e546c517`](./contracts/ethereum-1/0x0fbd374bfdfa835f8f3601b6c29d15e9e546c517/) | ⚠️ Unaudited |
| EmissionControllerKeeper | unknown | ethereum | n/a | [`0x6818f17e4894cb1dae9fd115f6da280291193c7b`](./contracts/ethereum-1/0x6818f17e4894cb1dae9fd115f6da280291193c7b/) | ⚠️ Unaudited |
| EmissionManager | unknown | ethereum | n/a | [`0xb47ccb21fb288fe0171f7dce85ec304df218fe23`](./contracts/ethereum-1/0xb47ccb21fb288fe0171f7dce85ec304df218fe23/) | ⚠️ Unaudited |
| EmptyMetadataRegistry | unknown | polygon | n/a | [`0x68e7afcad844e119f6731e945b3cbaf441e3a41a`](./contracts/polygon-137/0x68e7afcad844e119f6731e945b3cbaf441e3a41a/) | ⚠️ Unaudited |
| ETHGMUOracle | unknown | ethereum | n/a | [`0x2711954fa2675496d5741da6965fa079bcde0679`](./contracts/ethereum-1/0x2711954fa2675496d5741da6965fa079bcde0679/) | ⚠️ Unaudited |
| ETHMahaXLocker | unknown | ethereum | n/a | [`0x391929522fed6ed633e6c432d030a381f8f85630`](./contracts/ethereum-1/0x391929522fed6ed633e6c432d030a381f8f85630/) | ⚠️ Unaudited |
| ETHTroveLogic | unknown | ethereum | n/a | [`0xc27ec472f97b5f97fe013e02c909e1551ee65361`](./contracts/ethereum-1/0xc27ec472f97b5f97fe013e02c909e1551ee65361/) | ⚠️ Unaudited |
| ETHTroveStrategy | unknown | ethereum | n/a | [`0x205dbeb79cad491ff5b5aa9e8ba926ce4681189e`](./contracts/ethereum-1/0x205dbeb79cad491ff5b5aa9e8ba926ce4681189e/) | ⚠️ Unaudited |
| FeeDistributor | unknown | ethereum | n/a | [`0x00b1d6c3838aee6bdf508b2d23178abdb23863d3`](./contracts/ethereum-1/0x00b1d6c3838aee6bdf508b2d23178abdb23863d3/) | ⚠️ Unaudited |
| FeesSplitter | unknown | ethereum | n/a | [`0x10bfe7219fa8521a3397b052ef87f99be47c562c`](./contracts/ethereum-1/0x10bfe7219fa8521a3397b052ef87f99be47c562c/) | ⚠️ Unaudited |
| FixedSwap | unknown | ethereum | n/a | [`0x71306c4a5acbc4a2a8fa84df957455c36f7b3503`](./contracts/ethereum-1/0x71306c4a5acbc4a2a8fa84df957455c36f7b3503/) | ⚠️ Unaudited |
| GasPool | unknown | ethereum | n/a | [`0x3b1a521cdf521cf94b57bd146a02acef84f58d00`](./contracts/ethereum-1/0x3b1a521cdf521cf94b57bd146a02acef84f58d00/) | ⚠️ Unaudited |
| GaugeLP | unknown | ethereum | n/a | [`0x9ee8110c0aacb7f9147252d7a2d95a5ff52f8496`](./contracts/ethereum-1/0x9ee8110c0aacb7f9147252d7a2d95a5ff52f8496/) | ⚠️ Unaudited |
| GaugeUniswapV3 | unknown | ethereum | n/a | [`0x1693380b4013b1bcedd6424157566f0dab79c9a3`](./contracts/ethereum-1/0x1693380b4013b1bcedd6424157566f0dab79c9a3/) | ⚠️ Unaudited |
| GMUOracle | unknown | ethereum | n/a | [`0x7ee5010cbd5e499b7d66a7cba2ec3bde5fca8e00`](./contracts/ethereum-1/0x7ee5010cbd5e499b7d66a7cba2ec3bde5fca8e00/) | ⚠️ Unaudited |
| GMUUSDAggregatorV3 | unknown | ethereum | n/a | [`0x5720dada44eefef046013334e1c61caa8b209f89`](./contracts/ethereum-1/0x5720dada44eefef046013334e1c61caa8b209f89/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0x05a70b8b0a6dc2446ee23868f7d7a66dae7276ea`](./contracts/ethereum-1/0x05a70b8b0a6dc2446ee23868f7d7a66dae7276ea/) | ⚠️ Unaudited |
| HintHelpers | unknown | ethereum | n/a | [`0x19069b7119d45ec67892c50a46a9ba1183932c29`](./contracts/ethereum-1/0x19069b7119d45ec67892c50a46a9ba1183932c29/) | ⚠️ Unaudited |
| InvestorVesting | unknown | ethereum | n/a | [`0x8bbe81735658cd78d58755f9c9631f448b62521c`](./contracts/ethereum-1/0x8bbe81735658cd78d58755f9c9631f448b62521c/) | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | polygon | n/a | [`0x1127824b64f3a4c8ed6387ecb691771ae97c76af`](./contracts/polygon-137/0x1127824b64f3a4c8ed6387ecb691771ae97c76af/) | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | polygon | n/a | [`0x0fa4ca8daa98cc740217783f52317b61b5a2f0b1`](./contracts/polygon-137/0x0fa4ca8daa98cc740217783f52317b61b5a2f0b1/) | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | polygon | n/a | [`0x1b3509377f1dc224fd3285ec835ee4e14ac8df38`](./contracts/polygon-137/0x1b3509377f1dc224fd3285ec835ee4e14ac8df38/) | ⚠️ Unaudited |
| LendingRateOracle | unknown | polygon | n/a | [`0x8166edea196e557cf70185d0ef3b75eb1b937da9`](./contracts/polygon-137/0x8166edea196e557cf70185d0ef3b75eb1b937da9/) | ⚠️ Unaudited |
| LeverageAccountFactory | unknown | polygon | n/a | [`0x41dc9140b72040991129534686f8b4e8612220ac`](./contracts/polygon-137/0x41dc9140b72040991129534686f8b4e8612220ac/) | ⚠️ Unaudited |
| LeverageAccountRegistry | unknown | polygon | n/a | [`0x3eff2cd823e6e9e220f60f83bf45e179fa0a831e`](./contracts/polygon-137/0x3eff2cd823e6e9e220f60f83bf45e179fa0a831e/) | ⚠️ Unaudited |
| LeverageLibrary | unknown | polygon | n/a | [`0x2add8472cc41dbee6c8e9af2c4a08a7256c5a088`](./contracts/polygon-137/0x2add8472cc41dbee6c8e9af2c4a08a7256c5a088/) | ⚠️ Unaudited |
| LockMigrator | unknown | ethereum | n/a | [`0x83b307d842778ce0f8a4d3fca8b2c40a62469361`](./contracts/ethereum-1/0x83b307d842778ce0f8a4d3fca8b2c40a62469361/) | ⚠️ Unaudited |
| LPPriceFeed | unknown | polygon | n/a | [`0x046929f6af256fb787023e38a4a1f268e983be4d`](./contracts/polygon-137/0x046929f6af256fb787023e38a4a1f268e983be4d/) | ⚠️ Unaudited |
| MahaKeeper | unknown | ethereum | n/a | [`0x5d0657bc3ea29044baa0d02e6baaad078305a479`](./contracts/ethereum-1/0x5d0657bc3ea29044baa0d02e6baaad078305a479/) | ⚠️ Unaudited |
| MAHAReferralV1 | unknown | ethereum | n/a | [`0x3a0815acbbd463a09492f6621b73de4b58200801`](./contracts/ethereum-1/0x3a0815acbbd463a09492f6621b73de4b58200801/) | ⚠️ Unaudited |
| MAHASplitKeeper | unknown | ethereum | n/a | [`0x5f7a88d09491b89f0e9a02e3cce3309ef1502ab8`](./contracts/ethereum-1/0x5f7a88d09491b89f0e9a02e3cce3309ef1502ab8/) | ⚠️ Unaudited |
| MAHATimelockController | unknown | ethereum | n/a | [`0x43c958affe41d44f0a02ae177b591e93c86adbea`](./contracts/ethereum-1/0x43c958affe41d44f0a02ae177b591e93c86adbea/) | ⚠️ Unaudited |
| MahaToken | unknown | ethereum | n/a | [`0x745407c86df8db893011912d3ab28e68b62e49b0`](./contracts/ethereum-1/0x745407c86df8db893011912d3ab28e68b62e49b0/) | ⚠️ Unaudited |
| MAHAX | unknown | polygon | n/a | [`0x139fe6bb62765c7e8208f84ffb4a67003ef6db2f`](./contracts/polygon-137/0x139fe6bb62765c7e8208f84ffb4a67003ef6db2f/) | ⚠️ Unaudited |
| MAHAXGovernor | unknown | ethereum | n/a | [`0x0fbd92ea11e23d959e1489a9abb84ae2e4778d31`](./contracts/ethereum-1/0x0fbd92ea11e23d959e1489a9abb84ae2e4778d31/) | ⚠️ Unaudited |
| MAHAXGovernorMaster | unknown | ethereum | n/a | [`0xadaa4758f532f3e7a6e2c0f08ed66362c3d118c2`](./contracts/ethereum-1/0xadaa4758f532f3e7a6e2c0f08ed66362c3d118c2/) | ⚠️ Unaudited |
| MAHAXLocker | unknown | ethereum | n/a | [`0x2dd0b4bcd086dc603e864a898c9125d2c22f00d4`](./contracts/ethereum-1/0x2dd0b4bcd086dc603e864a898c9125d2c22f00d4/) | ⚠️ Unaudited |
| MAHAXMint | unknown | ethereum | n/a | [`0x23b754578322797da3d33ba339bcec5922afa4a5`](./contracts/ethereum-1/0x23b754578322797da3d33ba339bcec5922afa4a5/) | ⚠️ Unaudited |
| MAHAXStaker | unknown | ethereum | n/a | [`0x40203fabb70d382797a2c544dae4793202931988`](./contracts/ethereum-1/0x40203fabb70d382797a2c544dae4793202931988/) | ⚠️ Unaudited |
| MAHAXVetoGovernor | unknown | ethereum | n/a | [`0x9a7e7b4c2abe3255dec67e3bf2e6b24b46223111`](./contracts/ethereum-1/0x9a7e7b4c2abe3255dec67e3bf2e6b24b46223111/) | ⚠️ Unaudited |
| MetadataManager | unknown | ethereum | n/a | [`0xf44d766229790ec8d1458981eaa9dcff72834aab`](./contracts/ethereum-1/0xf44d766229790ec8d1458981eaa9dcff72834aab/) | ⚠️ Unaudited |
| Multicall | unknown | bsc | n/a | [`0x2c360b513ae52947eeb37cfad57ac9b7c9373e1b`](./contracts/bsc-56/0x2c360b513ae52947eeb37cfad57ac9b7c9373e1b/) | ⚠️ Unaudited |
| MultiFeeDistributor | unknown | ethereum | n/a | [`0x2d2592539843e2c9bb6246b066a98993c3eda630`](./contracts/ethereum-1/0x2d2592539843e2c9bb6246b066a98993c3eda630/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | n/a | [`0x73fa8a3d0b2bbab3b8f93d90714820d389dbecba`](./contracts/ethereum-1/0x73fa8a3d0b2bbab3b8f93d90714820d389dbecba/) | ⚠️ Unaudited |
| PendingFeeDistributor | unknown | ethereum | n/a | [`0x03093674790726dcbf4884808538c9d807d14776`](./contracts/ethereum-1/0x03093674790726dcbf4884808538c9d807d14776/) | ⚠️ Unaudited |
| PoolToken | unknown | polygon | n/a | [`0x115318b43f88f0ce19f61b4292c646997dd9d0bc`](./contracts/polygon-137/0x115318b43f88f0ce19f61b4292c646997dd9d0bc/) | ⚠️ Unaudited |
| QuickswapUSDCUSDT | unknown | polygon | n/a | [`0x3e479a471839547f5e3fb9ef4627a426220e74b2`](./contracts/polygon-137/0x3e479a471839547f5e3fb9ef4627a426220e74b2/) | ⚠️ Unaudited |
| Registry | unknown | polygon | n/a | [`0x0c4a6fc01e8b2210d5f65a4878f5c58a7a1127f2`](./contracts/polygon-137/0x0c4a6fc01e8b2210d5f65a4878f5c58a7a1127f2/) | ⚠️ Unaudited |
| RenderingContract | unknown | ethereum | n/a | [`0x9d348281e16218cd8ede9cd8a1bca74e89b410e8`](./contracts/ethereum-1/0x9d348281e16218cd8ede9cd8a1bca74e89b410e8/) | ⚠️ Unaudited |
| ReserveLogic | unknown | polygon | n/a | [`0x400a81ecffb15e0b3c6f84d1340439e925cd1929`](./contracts/polygon-137/0x400a81ecffb15e0b3c6f84d1340439e925cd1929/) | ⚠️ Unaudited |
| ScallopRootToken | unknown | ethereum | n/a | [`0xdf47ff2e9386eba88f58878e085e680389f2db16`](./contracts/ethereum-1/0xdf47ff2e9386eba88f58878e085e680389f2db16/) | ⚠️ Unaudited |
| SCLPStakingPoolKeeper | unknown | bsc | n/a | [`0x9f9a7f9b8a8d1d3d3d9f810fd8b0d5d7bad363f9`](./contracts/bsc-56/0x9f9a7f9b8a8d1d3d3d9f810fd8b0d5d7bad363f9/) | ⚠️ Unaudited |
| SortedTroves | unknown | bsc | n/a | [`0x4e30b846db4ad7dac5794ec1d700cbd14fb742ad`](./contracts/bsc-56/0x4e30b846db4ad7dac5794ec1d700cbd14fb742ad/) | ⚠️ Unaudited |
| StabilityPool | unknown | ethereum | n/a | [`0x2c360b513ae52947eeb37cfad57ac9b7c9373e1b`](./contracts/ethereum-1/0x2c360b513ae52947eeb37cfad57ac9b7c9373e1b/) | ⚠️ Unaudited |
| StabilityPoolKeeper | unknown | ethereum | n/a | [`0x23c9ba9a19a4f3fcc7fdd3899c79ea5a1b42dcce`](./contracts/ethereum-1/0x23c9ba9a19a4f3fcc7fdd3899c79ea5a1b42dcce/) | ⚠️ Unaudited |
| StabilityPoolW | unknown | ethereum | n/a | [`0xfd547d8d415a558083384fb59ab94e608c870d11`](./contracts/ethereum-1/0xfd547d8d415a558083384fb59ab94e608c870d11/) | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | polygon | n/a | [`0x6d9ea5b773e73ba1db4702926dd70c4c8b1b5b5f`](./contracts/polygon-137/0x6d9ea5b773e73ba1db4702926dd70c4c8b1b5b5f/) | ⚠️ Unaudited |
| StableDebtToken | unknown | polygon | n/a | [`0x6b88e9b3958134158ba751c3c3db7a6432d12f0c`](./contracts/polygon-137/0x6b88e9b3958134158ba751c3c3db7a6432d12f0c/) | ⚠️ Unaudited |
| StakingRewardsKeeper | unknown | ethereum | n/a | [`0x2e8978ae41ec867a0eb5daf38a4e8b62858dbfcb`](./contracts/ethereum-1/0x2e8978ae41ec867a0eb5daf38a4e8b62858dbfcb/) | ⚠️ Unaudited |
| Storage | unknown | polygon | n/a | [`0x83996dfc5fc2e9070c4cbacf197dba7543eb2949`](./contracts/polygon-137/0x83996dfc5fc2e9070c4cbacf197dba7543eb2949/) | ⚠️ Unaudited |
| TeamVesting | unknown | ethereum | n/a | [`0x047c4077fa9620a3ca0e2a010ba2012dc13ec07d`](./contracts/ethereum-1/0x047c4077fa9620a3ca0e2a010ba2012dc13ec07d/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0xc435ee8d1b9984be6f0f9682c75fc9947ac4a7f0`](./contracts/ethereum-1/0xc435ee8d1b9984be6f0f9682c75fc9947ac4a7f0/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x32788ddb0f973cd968dfbe84455409e2edeeb274`](./contracts/ethereum-1/0x32788ddb0f973cd968dfbe84455409e2edeeb274/) | ⚠️ Unaudited |
| TroveLibrary | unknown | polygon | n/a | [`0x00328839b044a8d60d2c07dfe2538e7dd12bb49c`](./contracts/polygon-137/0x00328839b044a8d60d2c07dfe2538e7dd12bb49c/) | ⚠️ Unaudited |
| TroveManager | unknown | bsc | n/a | [`0x584d6d4ed000e7da13a695ab577f0adcf65528ac`](./contracts/bsc-56/0x584d6d4ed000e7da13a695ab577f0adcf65528ac/) | ⚠️ Unaudited |
| TWAPOracle | unknown | polygon | n/a | [`0x20d96c056e411b543326fb7da4eec09bf7d503e8`](./contracts/polygon-137/0x20d96c056e411b543326fb7da4eec09bf7d503e8/) | ⚠️ Unaudited |
| UiIncentiveDataProvider | unknown | polygon | n/a | [`0x404cba8acf1105073bf79cf10cc04ed4c7c9cc2d`](./contracts/polygon-137/0x404cba8acf1105073bf79cf10cc04ed4c7c9cc2d/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV2 | unknown | polygon | n/a | [`0x805baff949e97bb9f96af01d5fc5071db127e54c`](./contracts/polygon-137/0x805baff949e97bb9f96af01d5fc5071db127e54c/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV2V3 | unknown | polygon | n/a | [`0x2bf72a5fda4b4ae15d07f1ee4bb9a1c83908e46c`](./contracts/polygon-137/0x2bf72a5fda4b4ae15d07f1ee4bb9a1c83908e46c/) | ⚠️ Unaudited |
| USDCCurveStrategy | unknown | ethereum | n/a | [`0x5480e8beedb3eba5747a4a3aef0850a3759df9b4`](./contracts/ethereum-1/0x5480e8beedb3eba5747a4a3aef0850a3759df9b4/) | ⚠️ Unaudited |
| VariableDebtToken | unknown | polygon | n/a | [`0x1aa6c2be4ef370933970ad242e4646973d01ed06`](./contracts/polygon-137/0x1aa6c2be4ef370933970ad242e4646973d01ed06/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x1b84b58cf281d893212e7cbe5de1377be5fec79d`](./contracts/ethereum-1/0x1b84b58cf281d893212e7cbe5de1377be5fec79d/) | ⚠️ Unaudited |
| WMaticExposure | unknown | polygon | n/a | [`0x1c1686be471fb58d0e97f4ce2a36aaf8622932da`](./contracts/polygon-137/0x1c1686be471fb58d0e97f4ce2a36aaf8622932da/) | ⚠️ Unaudited |
| WStakingRewards | unknown | polygon | n/a | [`0xcfc5e66c35ce267f2d030d626270064a1342f058`](./contracts/polygon-137/0xcfc5e66c35ce267f2d030d626270064a1342f058/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4e30b846db4ad7dac5794ec1d700cbd14fb742ad`](./contracts/ethereum-1/0x4e30b846db4ad7dac5794ec1d700cbd14fb742ad/) | ActivePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a6a2527a54090121bd0b618e112bbee6ac5bfac`](./contracts/ethereum-1/0x9a6a2527a54090121bd0b618e112bbee6ac5bfac/) | ARTHBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13bb21255525bd6ad287434086ae45064c38fe52`](./contracts/ethereum-1/0x13bb21255525bd6ad287434086ae45064c38fe52/) | ARTHETHTroveLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6af5e4acf1f3d9866caec5f451abb08a9ce9174a`](./contracts/ethereum-1/0x6af5e4acf1f3d9866caec5f451abb08a9ce9174a/) | ARTHETHWithdraw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4bbefdc3066b919cd1a6b5901241e11282e625d`](./contracts/ethereum-1/0xc4bbefdc3066b919cd1a6b5901241e11282e625d/) | ARTHFlashMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07511aad8ff0933473dcdebb9f553803e56add71`](./contracts/ethereum-1/0x07511aad8ff0933473dcdebb9f553803e56add71/) | ARTHPriceKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x394f4f7db617a1e4612072345f9601235f64b326`](./contracts/polygon-137/0x394f4f7db617a1e4612072345f9601235f64b326/) | ARTHRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7ee5010cbd5e499b7d66a7cba2ec3bde5fca8e00`](./contracts/bsc-56/0x7ee5010cbd5e499b7d66a7cba2ec3bde5fca8e00/) | ArthUSDWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x85dab10c3ba20148ca60c2eb955e1f8ffe9eaa79`](./contracts/bsc-56/0x85dab10c3ba20148ca60c2eb955e1f8ffe9eaa79/) | ARTHValuecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f50fa13505db4be1ed745f5f61e33afa0953ec0`](./contracts/polygon-137/0x0f50fa13505db4be1ed745f5f61e33afa0953ec0/) | AToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2832025c330489492d830f67f06715e55853a3e2`](./contracts/polygon-137/0x2832025c330489492d830f67f06715e55853a3e2/) | ATokensAndRatesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2e08b03c6f0831dc44ef6d5f4cabfb4c46f2fc`](./contracts/ethereum-1/0x2c2e08b03c6f0831dc44ef6d5f4cabfb4c46f2fc/) | BaseGaugeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x174327f7b7a624a87bd47b5d7e1899e3562646df`](./contracts/ethereum-1/0x174327f7b7a624a87bd47b5d7e1899e3562646df/) | BaseGaugeV2UniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0810001b0101b566c1497e60e7ec3ca1db462b84`](./contracts/ethereum-1/0x0810001b0101b566c1497e60e7ec3ca1db462b84/) | BaseGaugeV3UniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x122aca85d59c34effc1171e645be80c238aa4c24`](./contracts/ethereum-1/0x122aca85d59c34effc1171e645be80c238aa4c24/) | BaseV2Bribes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x227a445ff220cc9c3584fe77b7dfef6af0b63e8e`](./contracts/ethereum-1/0x227a445ff220cc9c3584fe77b7dfef6af0b63e8e/) | BaseV2Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05a70b8b0a6dc2446ee23868f7d7a66dae7276ea`](./contracts/bsc-56/0x05a70b8b0a6dc2446ee23868f7d7a66dae7276ea/) | BorrowerOperations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1377557baa6c78fa7d3c1623702c7c986f1a9aee`](./contracts/bsc-56/0x1377557baa6c78fa7d3c1623702c7c986f1a9aee/) | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x375bcea28ee66175a47106977ffcd8a7beab0ea8`](./contracts/bsc-56/0x375bcea28ee66175a47106977ffcd8a7beab0ea8/) | CommunityIssuance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdf0d51ddd34102472d7130c3d4831bc77386e78`](./contracts/ethereum-1/0xfdf0d51ddd34102472d7130c3d4831bc77386e78/) | CommunityVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4194955c1035c7cefdc5cc5e54889920b4d862e9`](./contracts/bsc-56/0x4194955c1035c7cefdc5cc5e54889920b4d862e9/) | DefaultPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x29c7c923382ee4a5135773aa9ca91d8e69a97839`](./contracts/polygon-137/0x29c7c923382ee4a5135773aa9ca91d8e69a97839/) | DefaultReserveInterestRateStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b96c472619778ed2990f5939462fc981890f7a3`](./contracts/bsc-56/0x5b96c472619778ed2990f5939462fc981890f7a3/) | DotDotFinanceBribeKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4f1df69a95280b6bbedf89c5c7a9cfa712b995f9`](./contracts/polygon-137/0x4f1df69a95280b6bbedf89c5c7a9cfa712b995f9/) | DSProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb16fffa9e6f6489a2f8d77418eae58458efeff88`](./contracts/polygon-137/0xb16fffa9e6f6489a2f8d77418eae58458efeff88/) | DSProxyRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fbd374bfdfa835f8f3601b6c29d15e9e546c517`](./contracts/ethereum-1/0x0fbd374bfdfa835f8f3601b6c29d15e9e546c517/) | EmissionController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6818f17e4894cb1dae9fd115f6da280291193c7b`](./contracts/ethereum-1/0x6818f17e4894cb1dae9fd115f6da280291193c7b/) | EmissionControllerKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb47ccb21fb288fe0171f7dce85ec304df218fe23`](./contracts/ethereum-1/0xb47ccb21fb288fe0171f7dce85ec304df218fe23/) | EmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x68e7afcad844e119f6731e945b3cbaf441e3a41a`](./contracts/polygon-137/0x68e7afcad844e119f6731e945b3cbaf441e3a41a/) | EmptyMetadataRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2711954fa2675496d5741da6965fa079bcde0679`](./contracts/ethereum-1/0x2711954fa2675496d5741da6965fa079bcde0679/) | ETHGMUOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x391929522fed6ed633e6c432d030a381f8f85630`](./contracts/ethereum-1/0x391929522fed6ed633e6c432d030a381f8f85630/) | ETHMahaXLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc27ec472f97b5f97fe013e02c909e1551ee65361`](./contracts/ethereum-1/0xc27ec472f97b5f97fe013e02c909e1551ee65361/) | ETHTroveLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x205dbeb79cad491ff5b5aa9e8ba926ce4681189e`](./contracts/ethereum-1/0x205dbeb79cad491ff5b5aa9e8ba926ce4681189e/) | ETHTroveStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b1d6c3838aee6bdf508b2d23178abdb23863d3`](./contracts/ethereum-1/0x00b1d6c3838aee6bdf508b2d23178abdb23863d3/) | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10bfe7219fa8521a3397b052ef87f99be47c562c`](./contracts/ethereum-1/0x10bfe7219fa8521a3397b052ef87f99be47c562c/) | FeesSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71306c4a5acbc4a2a8fa84df957455c36f7b3503`](./contracts/ethereum-1/0x71306c4a5acbc4a2a8fa84df957455c36f7b3503/) | FixedSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b1a521cdf521cf94b57bd146a02acef84f58d00`](./contracts/ethereum-1/0x3b1a521cdf521cf94b57bd146a02acef84f58d00/) | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ee8110c0aacb7f9147252d7a2d95a5ff52f8496`](./contracts/ethereum-1/0x9ee8110c0aacb7f9147252d7a2d95a5ff52f8496/) | GaugeLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1693380b4013b1bcedd6424157566f0dab79c9a3`](./contracts/ethereum-1/0x1693380b4013b1bcedd6424157566f0dab79c9a3/) | GaugeUniswapV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ee5010cbd5e499b7d66a7cba2ec3bde5fca8e00`](./contracts/ethereum-1/0x7ee5010cbd5e499b7d66a7cba2ec3bde5fca8e00/) | GMUOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5720dada44eefef046013334e1c61caa8b209f89`](./contracts/ethereum-1/0x5720dada44eefef046013334e1c61caa8b209f89/) | GMUUSDAggregatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05a70b8b0a6dc2446ee23868f7d7a66dae7276ea`](./contracts/ethereum-1/0x05a70b8b0a6dc2446ee23868f7d7a66dae7276ea/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19069b7119d45ec67892c50a46a9ba1183932c29`](./contracts/ethereum-1/0x19069b7119d45ec67892c50a46a9ba1183932c29/) | HintHelpers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bbe81735658cd78d58755f9c9631f448b62521c`](./contracts/ethereum-1/0x8bbe81735658cd78d58755f9c9631f448b62521c/) | InvestorVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1127824b64f3a4c8ed6387ecb691771ae97c76af`](./contracts/polygon-137/0x1127824b64f3a4c8ed6387ecb691771ae97c76af/) | LendingPoolAddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0fa4ca8daa98cc740217783f52317b61b5a2f0b1`](./contracts/polygon-137/0x0fa4ca8daa98cc740217783f52317b61b5a2f0b1/) | LendingPoolAddressesProviderRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1b3509377f1dc224fd3285ec835ee4e14ac8df38`](./contracts/polygon-137/0x1b3509377f1dc224fd3285ec835ee4e14ac8df38/) | LendingPoolConfigurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8166edea196e557cf70185d0ef3b75eb1b937da9`](./contracts/polygon-137/0x8166edea196e557cf70185d0ef3b75eb1b937da9/) | LendingRateOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x41dc9140b72040991129534686f8b4e8612220ac`](./contracts/polygon-137/0x41dc9140b72040991129534686f8b4e8612220ac/) | LeverageAccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3eff2cd823e6e9e220f60f83bf45e179fa0a831e`](./contracts/polygon-137/0x3eff2cd823e6e9e220f60f83bf45e179fa0a831e/) | LeverageAccountRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2add8472cc41dbee6c8e9af2c4a08a7256c5a088`](./contracts/polygon-137/0x2add8472cc41dbee6c8e9af2c4a08a7256c5a088/) | LeverageLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83b307d842778ce0f8a4d3fca8b2c40a62469361`](./contracts/ethereum-1/0x83b307d842778ce0f8a4d3fca8b2c40a62469361/) | LockMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x046929f6af256fb787023e38a4a1f268e983be4d`](./contracts/polygon-137/0x046929f6af256fb787023e38a4a1f268e983be4d/) | LPPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d0657bc3ea29044baa0d02e6baaad078305a479`](./contracts/ethereum-1/0x5d0657bc3ea29044baa0d02e6baaad078305a479/) | MahaKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a0815acbbd463a09492f6621b73de4b58200801`](./contracts/ethereum-1/0x3a0815acbbd463a09492f6621b73de4b58200801/) | MAHAReferralV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f7a88d09491b89f0e9a02e3cce3309ef1502ab8`](./contracts/ethereum-1/0x5f7a88d09491b89f0e9a02e3cce3309ef1502ab8/) | MAHASplitKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43c958affe41d44f0a02ae177b591e93c86adbea`](./contracts/ethereum-1/0x43c958affe41d44f0a02ae177b591e93c86adbea/) | MAHATimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x745407c86df8db893011912d3ab28e68b62e49b0`](./contracts/ethereum-1/0x745407c86df8db893011912d3ab28e68b62e49b0/) | MahaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x139fe6bb62765c7e8208f84ffb4a67003ef6db2f`](./contracts/polygon-137/0x139fe6bb62765c7e8208f84ffb4a67003ef6db2f/) | MAHAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fbd92ea11e23d959e1489a9abb84ae2e4778d31`](./contracts/ethereum-1/0x0fbd92ea11e23d959e1489a9abb84ae2e4778d31/) | MAHAXGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadaa4758f532f3e7a6e2c0f08ed66362c3d118c2`](./contracts/ethereum-1/0xadaa4758f532f3e7a6e2c0f08ed66362c3d118c2/) | MAHAXGovernorMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dd0b4bcd086dc603e864a898c9125d2c22f00d4`](./contracts/ethereum-1/0x2dd0b4bcd086dc603e864a898c9125d2c22f00d4/) | MAHAXLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23b754578322797da3d33ba339bcec5922afa4a5`](./contracts/ethereum-1/0x23b754578322797da3d33ba339bcec5922afa4a5/) | MAHAXMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40203fabb70d382797a2c544dae4793202931988`](./contracts/ethereum-1/0x40203fabb70d382797a2c544dae4793202931988/) | MAHAXStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a7e7b4c2abe3255dec67e3bf2e6b24b46223111`](./contracts/ethereum-1/0x9a7e7b4c2abe3255dec67e3bf2e6b24b46223111/) | MAHAXVetoGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf44d766229790ec8d1458981eaa9dcff72834aab`](./contracts/ethereum-1/0xf44d766229790ec8d1458981eaa9dcff72834aab/) | MetadataManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d2592539843e2c9bb6246b066a98993c3eda630`](./contracts/ethereum-1/0x2d2592539843e2c9bb6246b066a98993c3eda630/) | MultiFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73fa8a3d0b2bbab3b8f93d90714820d389dbecba`](./contracts/ethereum-1/0x73fa8a3d0b2bbab3b8f93d90714820d389dbecba/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03093674790726dcbf4884808538c9d807d14776`](./contracts/ethereum-1/0x03093674790726dcbf4884808538c9d807d14776/) | PendingFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x115318b43f88f0ce19f61b4292c646997dd9d0bc`](./contracts/polygon-137/0x115318b43f88f0ce19f61b4292c646997dd9d0bc/) | PoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3e479a471839547f5e3fb9ef4627a426220e74b2`](./contracts/polygon-137/0x3e479a471839547f5e3fb9ef4627a426220e74b2/) | QuickswapUSDCUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0c4a6fc01e8b2210d5f65a4878f5c58a7a1127f2`](./contracts/polygon-137/0x0c4a6fc01e8b2210d5f65a4878f5c58a7a1127f2/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d348281e16218cd8ede9cd8a1bca74e89b410e8`](./contracts/ethereum-1/0x9d348281e16218cd8ede9cd8a1bca74e89b410e8/) | RenderingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x400a81ecffb15e0b3c6f84d1340439e925cd1929`](./contracts/polygon-137/0x400a81ecffb15e0b3c6f84d1340439e925cd1929/) | ReserveLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf47ff2e9386eba88f58878e085e680389f2db16`](./contracts/ethereum-1/0xdf47ff2e9386eba88f58878e085e680389f2db16/) | ScallopRootToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9f9a7f9b8a8d1d3d3d9f810fd8b0d5d7bad363f9`](./contracts/bsc-56/0x9f9a7f9b8a8d1d3d3d9f810fd8b0d5d7bad363f9/) | SCLPStakingPoolKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e30b846db4ad7dac5794ec1d700cbd14fb742ad`](./contracts/bsc-56/0x4e30b846db4ad7dac5794ec1d700cbd14fb742ad/) | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c360b513ae52947eeb37cfad57ac9b7c9373e1b`](./contracts/ethereum-1/0x2c360b513ae52947eeb37cfad57ac9b7c9373e1b/) | StabilityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23c9ba9a19a4f3fcc7fdd3899c79ea5a1b42dcce`](./contracts/ethereum-1/0x23c9ba9a19a4f3fcc7fdd3899c79ea5a1b42dcce/) | StabilityPoolKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd547d8d415a558083384fb59ab94e608c870d11`](./contracts/ethereum-1/0xfd547d8d415a558083384fb59ab94e608c870d11/) | StabilityPoolW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6d9ea5b773e73ba1db4702926dd70c4c8b1b5b5f`](./contracts/polygon-137/0x6d9ea5b773e73ba1db4702926dd70c4c8b1b5b5f/) | StableAndVariableTokensHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6b88e9b3958134158ba751c3c3db7a6432d12f0c`](./contracts/polygon-137/0x6b88e9b3958134158ba751c3c3db7a6432d12f0c/) | StableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e8978ae41ec867a0eb5daf38a4e8b62858dbfcb`](./contracts/ethereum-1/0x2e8978ae41ec867a0eb5daf38a4e8b62858dbfcb/) | StakingRewardsKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x83996dfc5fc2e9070c4cbacf197dba7543eb2949`](./contracts/polygon-137/0x83996dfc5fc2e9070c4cbacf197dba7543eb2949/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047c4077fa9620a3ca0e2a010ba2012dc13ec07d`](./contracts/ethereum-1/0x047c4077fa9620a3ca0e2a010ba2012dc13ec07d/) | TeamVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32788ddb0f973cd968dfbe84455409e2edeeb274`](./contracts/ethereum-1/0x32788ddb0f973cd968dfbe84455409e2edeeb274/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00328839b044a8d60d2c07dfe2538e7dd12bb49c`](./contracts/polygon-137/0x00328839b044a8d60d2c07dfe2538e7dd12bb49c/) | TroveLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x584d6d4ed000e7da13a695ab577f0adcf65528ac`](./contracts/bsc-56/0x584d6d4ed000e7da13a695ab577f0adcf65528ac/) | TroveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20d96c056e411b543326fb7da4eec09bf7d503e8`](./contracts/polygon-137/0x20d96c056e411b543326fb7da4eec09bf7d503e8/) | TWAPOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x404cba8acf1105073bf79cf10cc04ed4c7c9cc2d`](./contracts/polygon-137/0x404cba8acf1105073bf79cf10cc04ed4c7c9cc2d/) | UiIncentiveDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x805baff949e97bb9f96af01d5fc5071db127e54c`](./contracts/polygon-137/0x805baff949e97bb9f96af01d5fc5071db127e54c/) | UiIncentiveDataProviderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2bf72a5fda4b4ae15d07f1ee4bb9a1c83908e46c`](./contracts/polygon-137/0x2bf72a5fda4b4ae15d07f1ee4bb9a1c83908e46c/) | UiIncentiveDataProviderV2V3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5480e8beedb3eba5747a4a3aef0850a3759df9b4`](./contracts/ethereum-1/0x5480e8beedb3eba5747a4a3aef0850a3759df9b4/) | USDCCurveStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1aa6c2be4ef370933970ad242e4646973d01ed06`](./contracts/polygon-137/0x1aa6c2be4ef370933970ad242e4646973d01ed06/) | VariableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b84b58cf281d893212e7cbe5de1377be5fec79d`](./contracts/ethereum-1/0x1b84b58cf281d893212e7cbe5de1377be5fec79d/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1c1686be471fb58d0e97f4ce2a36aaf8622932da`](./contracts/polygon-137/0x1c1686be471fb58d0e97f4ce2a36aaf8622932da/) | WMaticExposure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcfc5e66c35ce267f2d030d626270064a1342f058`](./contracts/polygon-137/0xcfc5e66c35ce267f2d030d626270064a1342f058/) | WStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
