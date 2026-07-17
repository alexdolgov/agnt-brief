# Agentic Audit Brief: Balmy

## Project Overview

- Project: Balmy (`balmy`)
- Website: [https://balmy.xyz](https://balmy.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:05.216Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum, optimism, polygon
- Contract surface: 134 unique implementations (134 raw deployments)
- DeFi Llama TVL: $163,588.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DCA Tools. Structurally: 131 project-authored contract(s) across 3 chain(s); 22 ERC20 tokens, 5 ERC721 NFTs, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 18 common project-authored base contract(s) (upgradeabilityproxy, proxy, cdelegatorinterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 134; live-surface contracts included: 134 (132 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/108 (2.8%)
- Deployed-live implementations: 132 of 134 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/134
- Verified + Unaudited implementations: 131
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 134
- Raw deployments: 134
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 1.5% | 2021-12 |
| Omniscia | Tier 2 | 1 | 0.7% | 2023-11 |
| Pessimistic | Tier 2 | 1 | 0.7% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DCAHub | unknown | polygon | n/a | [`0x059d306a25c4ce8d7437d25743a8b94520536bd5`](./contracts/polygon-137/0x059d306a25c4ce8d7437d25743a8b94520536bd5/) | ✅ Audited |
| DCAPermissionsManager | unknown | polygon | n/a | [`0xb4edfb45446c6a207643ea846bfa42021ce5ae11`](./contracts/polygon-137/0xb4edfb45446c6a207643ea846bfa42021ce5ae11/) | ✅ Audited |
| OracleAggregator | unknown | polygon | n/a | [`0x83d0e7265cab5c14d9306322262cdc477ff10db1`](./contracts/polygon-137/0x83d0e7265cab5c14d9306322262cdc477ff10db1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (131)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AavePoolController | unknown | ethereum | n/a | [`0x1821c1d8c74a3d8799170c35f2abb83ac3259c98`](./contracts/ethereum-1/0x1821c1d8c74a3d8799170c35f2abb83ac3259c98/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x00815e0e9d118769542ce24be95f8e21c60e5561`](./contracts/ethereum-1/0x00815e0e9d118769542ce24be95f8e21c60e5561/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x0833cfcb11a5ba89fbaf73a407831c98ad2d7648`](./contracts/ethereum-1/0x0833cfcb11a5ba89fbaf73a407831c98ad2d7648/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7`](./contracts/ethereum-1/0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6`](./contracts/ethereum-1/0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x7fd9da386f01f83cef3ebc01e13c040428c47ada`](./contracts/ethereum-1/0x7fd9da386f01f83cef3ebc01e13c040428c47ada/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x835482fe0532f169024d5e9410199369aad5c77e`](./contracts/ethereum-1/0x835482fe0532f169024d5e9410199369aad5c77e/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x9c0caeb986c003417d21a7daaf30221d61fc1043`](./contracts/ethereum-1/0x9c0caeb986c003417d21a7daaf30221d61fc1043/) | ⚠️ Unaudited |
| BadgerPriceOracle | unknown | ethereum | n/a | [`0xd0c86943e594640c4598086a2359a0e70b80ef8d`](./contracts/ethereum-1/0xd0c86943e594640c4598086a2359a0e70b80ef8d/) | ⚠️ Unaudited |
| BadgerSettLiquidator | unknown | ethereum | n/a | [`0xc743c9d1801ad9169be176761e8bb95c1298d817`](./contracts/ethereum-1/0xc743c9d1801ad9169be176761e8bb95c1298d817/) | ⚠️ Unaudited |
| BlockNumber | unknown | optimism | n/a | [`0x06d538690af257da524f25d0cd52fd85b1c2173e`](./contracts/optimism-10/0x06d538690af257da524f25d0cd52fd85b1c2173e/) | ⚠️ Unaudited |
| BondingCurve | unknown | optimism | n/a | [`0x693604e757ac7e2c4a8263594a18d69c35562341`](./contracts/optimism-10/0x693604e757ac7e2c4a8263594a18d69c35562341/) | ⚠️ Unaudited |
| Bridge | unknown | polygon | n/a | [`0x5771879f665e924a264f2fa4b99a0cc46feeb15f`](./contracts/polygon-137/0x5771879f665e924a264f2fa4b99a0cc46feeb15f/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x00ce8e3746240b0ca44046b550c8e54e848ae5b8`](./contracts/ethereum-1/0x00ce8e3746240b0ca44046b550c8e54e848ae5b8/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x037107c38a734f6e50f1db5f964056689e3e2cde`](./contracts/ethereum-1/0x037107c38a734f6e50f1db5f964056689e3e2cde/) | ⚠️ Unaudited |
| CEtherDelegator | unknown | ethereum | n/a | [`0x258592543a2d018e5bdd3bd74d422f952d4b3c1b`](./contracts/ethereum-1/0x258592543a2d018e5bdd3bd74d422f952d4b3c1b/) | ⚠️ Unaudited |
| CEtherDelegator | unknown | ethereum | n/a | [`0xc4bec59fc9d0dba42e85ca514abe8b9c0faf9876`](./contracts/ethereum-1/0xc4bec59fc9d0dba42e85ca514abe8b9c0faf9876/) | ⚠️ Unaudited |
| ChainlinkPriceOracle | unknown | ethereum | n/a | [`0x76f24e7155ff4472cb26e32c1213e515fc4b99d3`](./contracts/ethereum-1/0x76f24e7155ff4472cb26e32c1213e515fc4b99d3/) | ⚠️ Unaudited |
| ChainlinkPriceOracleV2 | unknown | ethereum | n/a | [`0xb0602af43ca042550ca9da3c33ba3ac375d20df4`](./contracts/ethereum-1/0xb0602af43ca042550ca9da3c33ba3ac375d20df4/) | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | unknown | ethereum | n/a | [`0x058c345d3240001088b6280e008f9e78b3b2112d`](./contracts/ethereum-1/0x058c345d3240001088b6280e008f9e78b3b2112d/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | polygon | n/a | [`0xafeea1de9d660d3cb53031cfe1a58de40b171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x004bae2ed0210e937327aaf199135393f64d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | polygon | n/a | [`0xbda6415502b0ddab9eda1d09f4f16286273fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | polygon | n/a | [`0x07280d3143311b012ad268a74f2aa791713952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | polygon | n/a | [`0xd4888fab8bd39a663b63161f5ee1eae31a25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| CompoundPoolController | unknown | ethereum | n/a | [`0xaf0d83ae6c62281cc1fa28dde0647b9bb16af3f4`](./contracts/ethereum-1/0xaf0d83ae6c62281cc1fa28dde0647b9bb16af3f4/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x8a78a9d35c9c61f9e0ff526c5d88ec28354543fe`](./contracts/ethereum-1/0x8a78a9d35c9c61f9e0ff526c5d88ec28354543fe/) | ⚠️ Unaudited |
| Converter | unknown | ethereum | n/a | [`0x6d4a43ee4770a2bab97460d3a3b783641d85d108`](./contracts/ethereum-1/0x6d4a43ee4770a2bab97460d3a3b783641d85d108/) | ⚠️ Unaudited |
| CryptoCabz | unknown | polygon | n/a | [`0x76bf9ac96fc75849c6872cf89f367e56feed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | ⚠️ Unaudited |
| CToken | unknown | ethereum | n/a | [`0x02beff6668a0c8b7b16c978de8807527d9342ad4`](./contracts/ethereum-1/0x02beff6668a0c8b7b16c978de8807527d9342ad4/) | ⚠️ Unaudited |
| CurveLpTokenPriceOracle | unknown | ethereum | n/a | [`0x43c534203339bbf15f62b8dde91e7d14195e7a60`](./contracts/ethereum-1/0x43c534203339bbf15f62b8dde91e7d14195e7a60/) | ⚠️ Unaudited |
| CurveTriCryptoLpTokenPriceOracle | unknown | ethereum | n/a | [`0xb2d16916d520d585ee49f08db1436b961b48fe60`](./contracts/ethereum-1/0xb2d16916d520d585ee49f08db1436b961b48fe60/) | ⚠️ Unaudited |
| DCAHubCompanion | unknown | polygon | n/a | [`0x9ba4b15f833c70a74e0fcc18f36d3c6157dcf687`](./contracts/polygon-137/0x9ba4b15f833c70a74e0fcc18f36d3c6157dcf687/) | ⚠️ Unaudited |
| DCAPair | unknown | ethereum | n/a | [`0x59acef0fc104ede425df5cd3a1677a09e7e025cd`](./contracts/ethereum-1/0x59acef0fc104ede425df5cd3a1677a09e7e025cd/) | ⚠️ Unaudited |
| DCATokenDescriptor | unknown | polygon | n/a | [`0x70ee0aa330e3590f6348fd54e71fd18ad3bc914f`](./contracts/polygon-137/0x70ee0aa330e3590f6348fd54e71fd18ad3bc914f/) | ⚠️ Unaudited |
| DragonLair | unknown | polygon | n/a | [`0xf28164a485b0b2c90639e47b0f377b4a438a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/) | ⚠️ Unaudited |
| DydxPoolController | unknown | ethereum | n/a | [`0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba`](./contracts/ethereum-1/0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba/) | ⚠️ Unaudited |
| ERC20Handler | unknown | polygon | n/a | [`0x3ea1f65cf49297ea6d265291a2b09d0f2ae649d6`](./contracts/polygon-137/0x3ea1f65cf49297ea6d265291a2b09d0f2ae649d6/) | ⚠️ Unaudited |
| ERC20PresetMinterPauser | unknown | polygon | n/a | [`0x083c56d87ead73d6231c165ec450c6e28f3399c9`](./contracts/polygon-137/0x083c56d87ead73d6231c165ec450c6e28f3399c9/) | ⚠️ Unaudited |
| ERC20PresetMinterPauserLimiter | unknown | polygon | n/a | [`0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d`](./contracts/polygon-137/0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d/) | ⚠️ Unaudited |
| Exchange | unknown | polygon | n/a | [`0xb0dce4ee2cf51b2e27a7c368ea36a4af16603b58`](./contracts/polygon-137/0xb0dce4ee2cf51b2e27a7c368ea36a4af16603b58/) | ⚠️ Unaudited |
| Factory | unknown | optimism | n/a | [`0xe3b53af74a4bf62ae5511055290838050bf764df`](./contracts/optimism-10/0xe3b53af74a4bf62ae5511055290838050bf764df/) | ⚠️ Unaudited |
| FixedEurPriceOracle | unknown | ethereum | n/a | [`0x817158553f4391b0d53d242fc332f2ef82463e2a`](./contracts/ethereum-1/0x817158553f4391b0d53d242fc332f2ef82463e2a/) | ⚠️ Unaudited |
| FixedTokenPriceOracle | unknown | ethereum | n/a | [`0x71fe48562b816d03ce9e2bbd5ab28674a8807cc5`](./contracts/ethereum-1/0x71fe48562b816d03ce9e2bbd5ab28674a8807cc5/) | ⚠️ Unaudited |
| FuseFeeDistributor | unknown | ethereum | n/a | [`0x50ce132ebe395d35b8cf6df6ce5f817107707583`](./contracts/ethereum-1/0x50ce132ebe395d35b8cf6df6ce5f817107707583/) | ⚠️ Unaudited |
| FusePoolController | unknown | ethereum | n/a | [`0x5959dbc5432c173cbea41ab79d5673d5aa375311`](./contracts/ethereum-1/0x5959dbc5432c173cbea41ab79d5673d5aa375311/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| FYToken | unknown | ethereum | n/a | [`0xef9bfa18f2c0954f1ff48b5ee9d8efed5975e650`](./contracts/ethereum-1/0xef9bfa18f2c0954f1ff48b5ee9d8efed5975e650/) | ⚠️ Unaudited |
| GelatoGUniPriceOracle | unknown | ethereum | n/a | [`0xea3633b38c747cea231adb74b511dc2ed3992b43`](./contracts/ethereum-1/0xea3633b38c747cea231adb74b511dc2ed3992b43/) | ⚠️ Unaudited |
| GenericHandler | unknown | polygon | n/a | [`0x205fa8a01383ab4a362dfef25b2f07f39423c85a`](./contracts/polygon-137/0x205fa8a01383ab4a362dfef25b2f07f39423c85a/) | ⚠️ Unaudited |
| GOhmPriceOracle | unknown | ethereum | n/a | [`0x057ecda7f61c73c3adcc36899d2626c7b79c3249`](./contracts/ethereum-1/0x057ecda7f61c73c3adcc36899d2626c7b79c3249/) | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | ethereum | n/a | [`0x4f60585a80cec402fffa1d85f152b522e7358b39`](./contracts/ethereum-1/0x4f60585a80cec402fffa1d85f152b522e7358b39/) | ⚠️ Unaudited |
| HarvestPriceOracle | unknown | ethereum | n/a | [`0x6141d9353bb1fb8131d07d358c112b372aa92514`](./contracts/ethereum-1/0x6141d9353bb1fb8131d07d358c112b372aa92514/) | ⚠️ Unaudited |
| HelloWorld | unknown | polygon | n/a | [`0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | ⚠️ Unaudited |
| InitializableClones | unknown | ethereum | n/a | [`0x91ce5566dc3170898c5aee4ae4dd314654b47415`](./contracts/ethereum-1/0x91ce5566dc3170898c5aee4ae4dd314654b47415/) | ⚠️ Unaudited |
| InterimRewards | unknown | ethereum | n/a | [`0x9dc44153bd326b24714e926173e247fe7f9d6e47`](./contracts/ethereum-1/0x9dc44153bd326b24714e926173e247fe7f9d6e47/) | ⚠️ Unaudited |
| JumpRateModel | unknown | ethereum | n/a | [`0x075538650a9c69ac8019507a7dd1bd879b12c1d7`](./contracts/ethereum-1/0x075538650a9c69ac8019507a7dd1bd879b12c1d7/) | ⚠️ Unaudited |
| L2CustomERC20 | unknown | optimism | n/a | [`0x1da650c3b2daa8aa9ff6f661d4156ce24d08a062`](./contracts/optimism-10/0x1da650c3b2daa8aa9ff6f661d4156ce24d08a062/) | ⚠️ Unaudited |
| L2StandardERC20 | unknown | optimism | n/a | [`0x00f932f0fe257456b32deda4758922e56a4f4b42`](./contracts/optimism-10/0x00f932f0fe257456b32deda4758922e56a4f4b42/) | ⚠️ Unaudited |
| LinearVesting | unknown | ethereum | n/a | [`0x8ce813218dffa5d15e9765f59898048e49149f2a`](./contracts/ethereum-1/0x8ce813218dffa5d15e9765f59898048e49149f2a/) | ⚠️ Unaudited |
| LinkTokenOptimism | unknown | optimism | n/a | [`0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6`](./contracts/optimism-10/0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6/) | ⚠️ Unaudited |
| LPStaking | unknown | optimism | n/a | [`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`](./contracts/optimism-10/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/) | ⚠️ Unaudited |
| LPStakingTime | unknown | optimism | n/a | [`0x4dea9e918c6289a52cd469cac652727b7b412cd2`](./contracts/optimism-10/0x4dea9e918c6289a52cd469cac652727b7b412cd2/) | ⚠️ Unaudited |
| MasterPriceOracle | unknown | ethereum | n/a | [`0x1887118e49e0f4a78bd71b792a49de03504a764d`](./contracts/ethereum-1/0x1887118e49e0f4a78bd71b792a49de03504a764d/) | ⚠️ Unaudited |
| MaticWETH | unknown | polygon | n/a | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| Merkle | unknown | ethereum | n/a | [`0x78e7eeadcb7489518bf88eb72352f6d232a2ad9f`](./contracts/ethereum-1/0x78e7eeadcb7489518bf88eb72352f6d232a2ad9f/) | ⚠️ Unaudited |
| MintableBurnableSyntheticTokenPermit | unknown | polygon | n/a | [`0x4e3decbb3645551b8a19f0ea1678079fcb33fb4c`](./contracts/polygon-137/0x4e3decbb3645551b8a19f0ea1678079fcb33fb4c/) | ⚠️ Unaudited |
| MintableToken | unknown | polygon | n/a | [`0x08193764bd81a742c15125e48f41b1232068c912`](./contracts/polygon-137/0x08193764bd81a742c15125e48f41b1232068c912/) | ⚠️ Unaudited |
| MStablePoolController | unknown | ethereum | n/a | [`0x2afe310485208476d5aa480905db4f7e90d5fa0e`](./contracts/ethereum-1/0x2afe310485208476d5aa480905db4f7e90d5fa0e/) | ⚠️ Unaudited |
| PreCommit | unknown | ethereum | n/a | [`0x0c6ad91dd183f953389d0bf5687025340a19e6e0`](./contracts/ethereum-1/0x0c6ad91dd183f953389d0bf5687025340a19e6e0/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x038e3fb79bbe37c804f6d5ee6b5323537c886298`](./contracts/ethereum-1/0x038e3fb79bbe37c804f6d5ee6b5323537c886298/) | ⚠️ Unaudited |
| ProxyERC20 | unknown | optimism | n/a | [`0x298b9b95708152ff6968aafd889c6586e9169f1d`](./contracts/optimism-10/0x298b9b95708152ff6968aafd889c6586e9169f1d/) | ⚠️ Unaudited |
| Quick | unknown | polygon | n/a | [`0x831753dd7087cac61ab5644b308642cc1c33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | ⚠️ Unaudited |
| QuickConverter | unknown | polygon | n/a | [`0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | ⚠️ Unaudited |
| RariFundController | unknown | ethereum | n/a | [`0x369855b051d1b2dbee88a792dcfc08614ff4e262`](./contracts/ethereum-1/0x369855b051d1b2dbee88a792dcfc08614ff4e262/) | ⚠️ Unaudited |
| RariFundProxy | unknown | ethereum | n/a | [`0x35ddefa2a30474e64314aaa7370abe14c042c6e8`](./contracts/ethereum-1/0x35ddefa2a30474e64314aaa7370abe14c042c6e8/) | ⚠️ Unaudited |
| RariFundToken | unknown | ethereum | n/a | [`0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d`](./contracts/ethereum-1/0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d/) | ⚠️ Unaudited |
| RariGovernanceToken | unknown | ethereum | n/a | [`0x54745fe0a4309f48d57550aeb6385dc8303596d9`](./contracts/ethereum-1/0x54745fe0a4309f48d57550aeb6385dc8303596d9/) | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | ethereum | n/a | [`0x5888e7e6d0fbfc8c1d214cab8441658e9266840c`](./contracts/ethereum-1/0x5888e7e6d0fbfc8c1d214cab8441658e9266840c/) | ⚠️ Unaudited |
| RgtTempPriceOracle | unknown | ethereum | n/a | [`0x0b43d7372e49ad2b04c7ab04bddd7f724480aaed`](./contracts/ethereum-1/0x0b43d7372e49ad2b04c7ab04bddd7f724480aaed/) | ⚠️ Unaudited |
| Router | unknown | optimism | n/a | [`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`](./contracts/optimism-10/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6/) | ⚠️ Unaudited |
| RouterETH | unknown | optimism | n/a | [`0xb49c4e680174e331cb0a7ff3ab58afc9738d5f8b`](./contracts/optimism-10/0xb49c4e680174e331cb0a7ff3ab58afc9738d5f8b/) | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | polygon | n/a | [`0xd80431859766ee0cc7574f485121f5fa70d06c07`](./contracts/polygon-137/0xd80431859766ee0cc7574f485121f5fa70d06c07/) | ⚠️ Unaudited |
| StakedFodlPriceOracle | unknown | ethereum | n/a | [`0x92cf2299680c063ccaf18f62a60c500a625e08e2`](./contracts/ethereum-1/0x92cf2299680c063ccaf18f62a60c500a625e08e2/) | ⚠️ Unaudited |
| StakedSpellPriceOracle | unknown | ethereum | n/a | [`0xb544f62045b96a60b398abb5a5c23bf04cb4ed9c`](./contracts/ethereum-1/0xb544f62045b96a60b398abb5a5c23bf04cb4ed9c/) | ⚠️ Unaudited |
| StakingProgram | unknown | optimism | n/a | [`0x17beeb02d168e9d8e3c517e7bba7d24301362e50`](./contracts/optimism-10/0x17beeb02d168e9d8e3c517e7bba7d24301362e50/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x2413e4594aade7513ab6dc43209d4c312cc35121`](./contracts/ethereum-1/0x2413e4594aade7513ab6dc43209d4c312cc35121/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | polygon | n/a | [`0x02a2d80ce5c021a40aec9062a6273bbc33537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | ⚠️ Unaudited |
| StakingRewardsGas | unknown | polygon | n/a | [`0x2acdaa5af60cfb352cbe81270c29aa3ec5e5cfae`](./contracts/polygon-137/0x2acdaa5af60cfb352cbe81270c29aa3ec5e5cfae/) | ⚠️ Unaudited |
| StakingRewardsStandalone | unknown | polygon | n/a | [`0x7f7a17aa18ddeb9a281776f406f2ff6bd06907f7`](./contracts/polygon-137/0x7f7a17aa18ddeb9a281776f406f2ff6bd06907f7/) | ⚠️ Unaudited |
| StakingRewardsStandaloneMul | unknown | polygon | n/a | [`0x33658140664e02814e6b0f32521498f03cb1380b`](./contracts/polygon-137/0x33658140664e02814e6b0f32521498f03cb1380b/) | ⚠️ Unaudited |
| StakingRewardsTiny | unknown | polygon | n/a | [`0xf38971255ac45bb72dccd0597ac16efb9f29da02`](./contracts/polygon-137/0xf38971255ac45bb72dccd0597ac16efb9f29da02/) | ⚠️ Unaudited |
| StargateToken | unknown | optimism | n/a | [`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`](./contracts/optimism-10/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/) | ⚠️ Unaudited |
| TimeLock | unknown | ethereum | n/a | [`0x0df9220aeaa28ce8ba06add7c5b3cc6e7c1cd511`](./contracts/ethereum-1/0x0df9220aeaa28ce8ba06add7c5b3cc6e7c1cd511/) | ⚠️ Unaudited |
| Transfer | unknown | polygon | n/a | [`0xfa38b8632153b2d083a94590e577298c0ae50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x014b220912f6a9fce68e82fa6c2e603a7a78f436`](./contracts/ethereum-1/0x014b220912f6a9fce68e82fa6c2e603a7a78f436/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6c806eddad78a5505fce27b18c6f859fc9739bec`](./contracts/ethereum-1/0x6c806eddad78a5505fce27b18c6f859fc9739bec/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6dc585ad66a10214ef0502492b0cc02f0e836eec`](./contracts/ethereum-1/0x6dc585ad66a10214ef0502492b0cc02f0e836eec/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x8a2afc7a4c2c19e81a79d9158d6bca3858a87b73`](./contracts/ethereum-1/0x8a2afc7a4c2c19e81a79d9158d6bca3858a87b73/) | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | n/a | [`0x490e379c9cff64944be82b849f8fd5972c7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x00032e33ac57c73f9d4e3e85a97488214cb5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x000de668684839f97d4845f32a43e913366ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UniswapLpTokenPriceOracle | unknown | ethereum | n/a | [`0x50f42c004bd9b0e5acc65c33da133fbfbe86c7c0`](./contracts/ethereum-1/0x50f42c004bd9b0e5acc65c33da133fbfbe86c7c0/) | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2 | unknown | ethereum | n/a | [`0x480bae4d1389889c7e0600399234e1d39d4fe79f`](./contracts/ethereum-1/0x480bae4d1389889c7e0600399234e1d39d4fe79f/) | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2Root | unknown | ethereum | n/a | [`0xf1860b3714f0163838cf9ee3adc287507824ebdb`](./contracts/ethereum-1/0xf1860b3714f0163838cf9ee3adc287507824ebdb/) | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2 | unknown | ethereum | n/a | [`0x29490a6f5b4a999601378547fe681d04d877d29b`](./contracts/ethereum-1/0x29490a6f5b4a999601378547fe681d04d877d29b/) | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2Factory | unknown | ethereum | n/a | [`0x8eed20f31e7d434648ff51114446b3cffd1ff9f1`](./contracts/ethereum-1/0x8eed20f31e7d434648ff51114446b3cffd1ff9f1/) | ⚠️ Unaudited |
| UnlockValidator | unknown | ethereum | n/a | [`0xfcc4bcb2924ee4a0334a5b0b2c6ad893e8ad3337`](./contracts/ethereum-1/0xfcc4bcb2924ee4a0334a5b0b2c6ad893e8ad3337/) | ⚠️ Unaudited |
| USDV | unknown | ethereum | n/a | [`0xea3fb6f331735252e7bfb0b24b3b761301293dbe`](./contracts/ethereum-1/0xea3fb6f331735252e7bfb0b24b3b761301293dbe/) | ⚠️ Unaudited |
| Vader | unknown | ethereum | n/a | [`0x0595af52e4022aebd794de267fc20c12c50c08f8`](./contracts/ethereum-1/0x0595af52e4022aebd794de267fc20c12c50c08f8/) | ⚠️ Unaudited |
| VaderBond | unknown | ethereum | n/a | [`0x1b96d82b8b13c75d4ce347a53284b10d93b63684`](./contracts/ethereum-1/0x1b96d82b8b13c75d4ce347a53284b10d93b63684/) | ⚠️ Unaudited |
| VaderMinterUpgradeable | unknown | ethereum | n/a | [`0xc33fe4a5c2990cc0a62ab26a74604ea57ad955aa`](./contracts/ethereum-1/0xc33fe4a5c2990cc0a62ab26a74604ea57ad955aa/) | ⚠️ Unaudited |
| VaderMinterUpgradeableV3 | unknown | ethereum | n/a | [`0x00aadc47d91fd9cac3369e6045042f9f99216b98`](./contracts/ethereum-1/0x00aadc47d91fd9cac3369e6045042f9f99216b98/) | ⚠️ Unaudited |
| VamToken | unknown | polygon | n/a | [`0x1512d268a94ce119eacbf80139ad7910eb9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | ⚠️ Unaudited |
| VotingEscrow | unknown | optimism | n/a | [`0x43d2761ed16c89a2c4342e2b16a3c61ccf88f05b`](./contracts/optimism-10/0x43d2761ed16c89a2c4342e2b16a3c61ccf88f05b/) | ⚠️ Unaudited |
| WidgetSwap | unknown | optimism | n/a | [`0x16419058f15a86795933f78dc624b384d09e3a4e`](./contracts/optimism-10/0x16419058f15a86795933f78dc624b384d09e3a4e/) | ⚠️ Unaudited |
| WithdrawalDeposits | unknown | optimism | n/a | [`0x30421c14e7d7a1b43cf6f95cf24a0c087b77e803`](./contracts/optimism-10/0x30421c14e7d7a1b43cf6f95cf24a0c087b77e803/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | n/a | [`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| WSTEthPriceOracle | unknown | ethereum | n/a | [`0xb11de4c003c80dc36a810254b433d727ac71c517`](./contracts/ethereum-1/0xb11de4c003c80dc36a810254b433d727ac71c517/) | ⚠️ Unaudited |
| XVader | unknown | ethereum | n/a | [`0x5a5f5fe4a4fcc425eeb8eb263355a4b3b4a87a2c`](./contracts/ethereum-1/0x5a5f5fe4a4fcc425eeb8eb263355a4b3b4a87a2c/) | ⚠️ Unaudited |
| ZapEth | unknown | ethereum | n/a | [`0x781b2844605298fb45c653dc1ef0d0b941293323`](./contracts/ethereum-1/0x781b2844605298fb45c653dc1ef0d0b941293323/) | ⚠️ Unaudited |
| ZapEthToPreCommit | unknown | ethereum | n/a | [`0xd936219f3aca9ca1fa675aa69752fad2be85a90a`](./contracts/ethereum-1/0xd936219f3aca9ca1fa675aa69752fad2be85a90a/) | ⚠️ Unaudited |
| ZERO | unknown | polygon | n/a | [`0xb67176655e7919a27aa34c279157124619adfd4b`](./contracts/polygon-137/0xb67176655e7919a27aa34c279157124619adfd4b/) | ⚠️ Unaudited |
| ZeroExExchangeController | unknown | ethereum | n/a | [`0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a`](./contracts/ethereum-1/0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a/) | ⚠️ Unaudited |
| ZEROFactory | unknown | polygon | n/a | [`0x6fd98cf211134081fe02f551d64cf89671d5443b`](./contracts/polygon-137/0x6fd98cf211134081fe02f551d64cf89671d5443b/) | ⚠️ Unaudited |
| ZeroRouter02 | unknown | polygon | n/a | [`0x9894b0f28ccfa0f5c5f74eac88f161110c5f8027`](./contracts/polygon-137/0x9894b0f28ccfa0f5c5f74eac88f161110c5f8027/) | ⚠️ Unaudited |

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
| [PeckShield.pdf (also discovered via alternate URL)](https://github.com/Mean-Finance/dca-v2-core/blob/main/audits/PeckShield.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 2 | high |
| [Pessimistic.pdf (also discovered via alternate URL)](https://github.com/Mean-Finance/dca-v2-core/blob/main/audits/Pessimistic.pdf) | Pessimistic | Audit | 2021-11 | stale | Direct | contract_name | 1 | medium |
| [Introduction](https://omniscia.io/reports/mean-finance-swappers-module) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-oracle-module) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-transformers-module) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-permit2-adapter-64ad40c224448c00148ee2f9) | Omniscia | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Introduction](https://omniscia.io/reports/mean-finance-nft-permission-system-65536361239be600181362f3) | Omniscia | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd0c86943e594640c4598086a2359a0e70b80ef8d`](./contracts/ethereum-1/0xd0c86943e594640c4598086a2359a0e70b80ef8d/) | BadgerPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc743c9d1801ad9169be176761e8bb95c1298d817`](./contracts/ethereum-1/0xc743c9d1801ad9169be176761e8bb95c1298d817/) | BadgerSettLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x06d538690af257da524f25d0cd52fd85b1c2173e`](./contracts/optimism-10/0x06d538690af257da524f25d0cd52fd85b1c2173e/) | BlockNumber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x693604e757ac7e2c4a8263594a18d69c35562341`](./contracts/optimism-10/0x693604e757ac7e2c4a8263594a18d69c35562341/) | BondingCurve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5771879f665e924a264f2fa4b99a0cc46feeb15f`](./contracts/polygon-137/0x5771879f665e924a264f2fa4b99a0cc46feeb15f/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00ce8e3746240b0ca44046b550c8e54e848ae5b8`](./contracts/ethereum-1/0x00ce8e3746240b0ca44046b550c8e54e848ae5b8/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x037107c38a734f6e50f1db5f964056689e3e2cde`](./contracts/ethereum-1/0x037107c38a734f6e50f1db5f964056689e3e2cde/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x258592543a2d018e5bdd3bd74d422f952d4b3c1b`](./contracts/ethereum-1/0x258592543a2d018e5bdd3bd74d422f952d4b3c1b/) | CEtherDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4bec59fc9d0dba42e85ca514abe8b9c0faf9876`](./contracts/ethereum-1/0xc4bec59fc9d0dba42e85ca514abe8b9c0faf9876/) | CEtherDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ChildChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafeea1de9d660d3cb53031cfe1a58de40b171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ChildChainManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x004bae2ed0210e937327aaf199135393f64d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbda6415502b0ddab9eda1d09f4f16286273fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ChildMintableERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07280d3143311b012ad268a74f2aa791713952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ChildMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4888fab8bd39a663b63161f5ee1eae31a25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ChildMintableERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a78a9d35c9c61f9e0ff526c5d88ec28354543fe`](./contracts/ethereum-1/0x8a78a9d35c9c61f9e0ff526c5d88ec28354543fe/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d4a43ee4770a2bab97460d3a3b783641d85d108`](./contracts/ethereum-1/0x6d4a43ee4770a2bab97460d3a3b783641d85d108/) | Converter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x76bf9ac96fc75849c6872cf89f367e56feed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | CryptoCabz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02beff6668a0c8b7b16c978de8807527d9342ad4`](./contracts/ethereum-1/0x02beff6668a0c8b7b16c978de8807527d9342ad4/) | CToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9ba4b15f833c70a74e0fcc18f36d3c6157dcf687`](./contracts/polygon-137/0x9ba4b15f833c70a74e0fcc18f36d3c6157dcf687/) | DCAHubCompanion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59acef0fc104ede425df5cd3a1677a09e7e025cd`](./contracts/ethereum-1/0x59acef0fc104ede425df5cd3a1677a09e7e025cd/) | DCAPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x70ee0aa330e3590f6348fd54e71fd18ad3bc914f`](./contracts/polygon-137/0x70ee0aa330e3590f6348fd54e71fd18ad3bc914f/) | DCATokenDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf28164a485b0b2c90639e47b0f377b4a438a16b1`](./contracts/polygon-137/0xf28164a485b0b2c90639e47b0f377b4a438a16b1/) | DragonLair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba`](./contracts/ethereum-1/0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba/) | DydxPoolController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3ea1f65cf49297ea6d265291a2b09d0f2ae649d6`](./contracts/polygon-137/0x3ea1f65cf49297ea6d265291a2b09d0f2ae649d6/) | ERC20Handler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x083c56d87ead73d6231c165ec450c6e28f3399c9`](./contracts/polygon-137/0x083c56d87ead73d6231c165ec450c6e28f3399c9/) | ERC20PresetMinterPauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d`](./contracts/polygon-137/0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d/) | ERC20PresetMinterPauserLimiter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb0dce4ee2cf51b2e27a7c368ea36a4af16603b58`](./contracts/polygon-137/0xb0dce4ee2cf51b2e27a7c368ea36a4af16603b58/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe3b53af74a4bf62ae5511055290838050bf764df`](./contracts/optimism-10/0xe3b53af74a4bf62ae5511055290838050bf764df/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x817158553f4391b0d53d242fc332f2ef82463e2a`](./contracts/ethereum-1/0x817158553f4391b0d53d242fc332f2ef82463e2a/) | FixedEurPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71fe48562b816d03ce9e2bbd5ab28674a8807cc5`](./contracts/ethereum-1/0x71fe48562b816d03ce9e2bbd5ab28674a8807cc5/) | FixedTokenPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50ce132ebe395d35b8cf6df6ce5f817107707583`](./contracts/ethereum-1/0x50ce132ebe395d35b8cf6df6ce5f817107707583/) | FuseFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5959dbc5432c173cbea41ab79d5673d5aa375311`](./contracts/ethereum-1/0x5959dbc5432c173cbea41ab79d5673d5aa375311/) | FusePoolController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef9bfa18f2c0954f1ff48b5ee9d8efed5975e650`](./contracts/ethereum-1/0xef9bfa18f2c0954f1ff48b5ee9d8efed5975e650/) | FYToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea3633b38c747cea231adb74b511dc2ed3992b43`](./contracts/ethereum-1/0xea3633b38c747cea231adb74b511dc2ed3992b43/) | GelatoGUniPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x205fa8a01383ab4a362dfef25b2f07f39423c85a`](./contracts/polygon-137/0x205fa8a01383ab4a362dfef25b2f07f39423c85a/) | GenericHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057ecda7f61c73c3adcc36899d2626c7b79c3249`](./contracts/ethereum-1/0x057ecda7f61c73c3adcc36899d2626c7b79c3249/) | GOhmPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f60585a80cec402fffa1d85f152b522e7358b39`](./contracts/ethereum-1/0x4f60585a80cec402fffa1d85f152b522e7358b39/) | GovernorBravoDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6141d9353bb1fb8131d07d358c112b372aa92514`](./contracts/ethereum-1/0x6141d9353bb1fb8131d07d358c112b372aa92514/) | HarvestPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | HelloWorld | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91ce5566dc3170898c5aee4ae4dd314654b47415`](./contracts/ethereum-1/0x91ce5566dc3170898c5aee4ae4dd314654b47415/) | InitializableClones | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dc44153bd326b24714e926173e247fe7f9d6e47`](./contracts/ethereum-1/0x9dc44153bd326b24714e926173e247fe7f9d6e47/) | InterimRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x075538650a9c69ac8019507a7dd1bd879b12c1d7`](./contracts/ethereum-1/0x075538650a9c69ac8019507a7dd1bd879b12c1d7/) | JumpRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1da650c3b2daa8aa9ff6f661d4156ce24d08a062`](./contracts/optimism-10/0x1da650c3b2daa8aa9ff6f661d4156ce24d08a062/) | L2CustomERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00f932f0fe257456b32deda4758922e56a4f4b42`](./contracts/optimism-10/0x00f932f0fe257456b32deda4758922e56a4f4b42/) | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ce813218dffa5d15e9765f59898048e49149f2a`](./contracts/ethereum-1/0x8ce813218dffa5d15e9765f59898048e49149f2a/) | LinearVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6`](./contracts/optimism-10/0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6/) | LinkTokenOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`](./contracts/optimism-10/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4dea9e918c6289a52cd469cac652727b7b412cd2`](./contracts/optimism-10/0x4dea9e918c6289a52cd469cac652727b7b412cd2/) | LPStakingTime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1887118e49e0f4a78bd71b792a49de03504a764d`](./contracts/ethereum-1/0x1887118e49e0f4a78bd71b792a49de03504a764d/) | MasterPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78e7eeadcb7489518bf88eb72352f6d232a2ad9f`](./contracts/ethereum-1/0x78e7eeadcb7489518bf88eb72352f6d232a2ad9f/) | Merkle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4e3decbb3645551b8a19f0ea1678079fcb33fb4c`](./contracts/polygon-137/0x4e3decbb3645551b8a19f0ea1678079fcb33fb4c/) | MintableBurnableSyntheticTokenPermit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08193764bd81a742c15125e48f41b1232068c912`](./contracts/polygon-137/0x08193764bd81a742c15125e48f41b1232068c912/) | MintableToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2afe310485208476d5aa480905db4f7e90d5fa0e`](./contracts/ethereum-1/0x2afe310485208476d5aa480905db4f7e90d5fa0e/) | MStablePoolController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c6ad91dd183f953389d0bf5687025340a19e6e0`](./contracts/ethereum-1/0x0c6ad91dd183f953389d0bf5687025340a19e6e0/) | PreCommit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x298b9b95708152ff6968aafd889c6586e9169f1d`](./contracts/optimism-10/0x298b9b95708152ff6968aafd889c6586e9169f1d/) | ProxyERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x831753dd7087cac61ab5644b308642cc1c33dc13`](./contracts/polygon-137/0x831753dd7087cac61ab5644b308642cc1c33dc13/) | Quick | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea`](./contracts/polygon-137/0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea/) | QuickConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369855b051d1b2dbee88a792dcfc08614ff4e262`](./contracts/ethereum-1/0x369855b051d1b2dbee88a792dcfc08614ff4e262/) | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35ddefa2a30474e64314aaa7370abe14c042c6e8`](./contracts/ethereum-1/0x35ddefa2a30474e64314aaa7370abe14c042c6e8/) | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d`](./contracts/ethereum-1/0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d/) | RariFundToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54745fe0a4309f48d57550aeb6385dc8303596d9`](./contracts/ethereum-1/0x54745fe0a4309f48d57550aeb6385dc8303596d9/) | RariGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5888e7e6d0fbfc8c1d214cab8441658e9266840c`](./contracts/ethereum-1/0x5888e7e6d0fbfc8c1d214cab8441658e9266840c/) | RariGovernanceTokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b43d7372e49ad2b04c7ab04bddd7f724480aaed`](./contracts/ethereum-1/0x0b43d7372e49ad2b04c7ab04bddd7f724480aaed/) | RgtTempPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`](./contracts/optimism-10/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb49c4e680174e331cb0a7ff3ab58afc9738d5f8b`](./contracts/optimism-10/0xb49c4e680174e331cb0a7ff3ab58afc9738d5f8b/) | RouterETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd80431859766ee0cc7574f485121f5fa70d06c07`](./contracts/polygon-137/0xd80431859766ee0cc7574f485121f5fa70d06c07/) | SimpleRewarderPerSec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92cf2299680c063ccaf18f62a60c500a625e08e2`](./contracts/ethereum-1/0x92cf2299680c063ccaf18f62a60c500a625e08e2/) | StakedFodlPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb544f62045b96a60b398abb5a5c23bf04cb4ed9c`](./contracts/ethereum-1/0xb544f62045b96a60b398abb5a5c23bf04cb4ed9c/) | StakedSpellPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x17beeb02d168e9d8e3c517e7bba7d24301362e50`](./contracts/optimism-10/0x17beeb02d168e9d8e3c517e7bba7d24301362e50/) | StakingProgram | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2413e4594aade7513ab6dc43209d4c312cc35121`](./contracts/ethereum-1/0x2413e4594aade7513ab6dc43209d4c312cc35121/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02a2d80ce5c021a40aec9062a6273bbc33537e1c`](./contracts/polygon-137/0x02a2d80ce5c021a40aec9062a6273bbc33537e1c/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2acdaa5af60cfb352cbe81270c29aa3ec5e5cfae`](./contracts/polygon-137/0x2acdaa5af60cfb352cbe81270c29aa3ec5e5cfae/) | StakingRewardsGas | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7f7a17aa18ddeb9a281776f406f2ff6bd06907f7`](./contracts/polygon-137/0x7f7a17aa18ddeb9a281776f406f2ff6bd06907f7/) | StakingRewardsStandalone | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x33658140664e02814e6b0f32521498f03cb1380b`](./contracts/polygon-137/0x33658140664e02814e6b0f32521498f03cb1380b/) | StakingRewardsStandaloneMul | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf38971255ac45bb72dccd0597ac16efb9f29da02`](./contracts/polygon-137/0xf38971255ac45bb72dccd0597ac16efb9f29da02/) | StakingRewardsTiny | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0df9220aeaa28ce8ba06add7c5b3cc6e7c1cd511`](./contracts/ethereum-1/0x0df9220aeaa28ce8ba06add7c5b3cc6e7c1cd511/) | TimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfa38b8632153b2d083a94590e577298c0ae50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | Transfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a2afc7a4c2c19e81a79d9158d6bca3858a87b73`](./contracts/ethereum-1/0x8a2afc7a4c2c19e81a79d9158d6bca3858a87b73/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x490e379c9cff64944be82b849f8fd5972c7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | UChildDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00032e33ac57c73f9d4e3e85a97488214cb5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000de668684839f97d4845f32a43e913366ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfcc4bcb2924ee4a0334a5b0b2c6ad893e8ad3337`](./contracts/ethereum-1/0xfcc4bcb2924ee4a0334a5b0b2c6ad893e8ad3337/) | UnlockValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea3fb6f331735252e7bfb0b24b3b761301293dbe`](./contracts/ethereum-1/0xea3fb6f331735252e7bfb0b24b3b761301293dbe/) | USDV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0595af52e4022aebd794de267fc20c12c50c08f8`](./contracts/ethereum-1/0x0595af52e4022aebd794de267fc20c12c50c08f8/) | Vader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b96d82b8b13c75d4ce347a53284b10d93b63684`](./contracts/ethereum-1/0x1b96d82b8b13c75d4ce347a53284b10d93b63684/) | VaderBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc33fe4a5c2990cc0a62ab26a74604ea57ad955aa`](./contracts/ethereum-1/0xc33fe4a5c2990cc0a62ab26a74604ea57ad955aa/) | VaderMinterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00aadc47d91fd9cac3369e6045042f9f99216b98`](./contracts/ethereum-1/0x00aadc47d91fd9cac3369e6045042f9f99216b98/) | VaderMinterUpgradeableV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1512d268a94ce119eacbf80139ad7910eb9cfbc8`](./contracts/polygon-137/0x1512d268a94ce119eacbf80139ad7910eb9cfbc8/) | VamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x43d2761ed16c89a2c4342e2b16a3c61ccf88f05b`](./contracts/optimism-10/0x43d2761ed16c89a2c4342e2b16a3c61ccf88f05b/) | VotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x16419058f15a86795933f78dc624b384d09e3a4e`](./contracts/optimism-10/0x16419058f15a86795933f78dc624b384d09e3a4e/) | WidgetSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x30421c14e7d7a1b43cf6f95cf24a0c087b77e803`](./contracts/optimism-10/0x30421c14e7d7a1b43cf6f95cf24a0c087b77e803/) | WithdrawalDeposits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | WMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb11de4c003c80dc36a810254b433d727ac71c517`](./contracts/ethereum-1/0xb11de4c003c80dc36a810254b433d727ac71c517/) | WSTEthPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a5f5fe4a4fcc425eeb8eb263355a4b3b4a87a2c`](./contracts/ethereum-1/0x5a5f5fe4a4fcc425eeb8eb263355a4b3b4a87a2c/) | XVader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x781b2844605298fb45c653dc1ef0d0b941293323`](./contracts/ethereum-1/0x781b2844605298fb45c653dc1ef0d0b941293323/) | ZapEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd936219f3aca9ca1fa675aa69752fad2be85a90a`](./contracts/ethereum-1/0xd936219f3aca9ca1fa675aa69752fad2be85a90a/) | ZapEthToPreCommit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb67176655e7919a27aa34c279157124619adfd4b`](./contracts/polygon-137/0xb67176655e7919a27aa34c279157124619adfd4b/) | ZERO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a`](./contracts/ethereum-1/0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a/) | ZeroExExchangeController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6fd98cf211134081fe02f551d64cf89671d5443b`](./contracts/polygon-137/0x6fd98cf211134081fe02f551d64cf89671d5443b/) | ZEROFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9894b0f28ccfa0f5c5f74eac88f161110c5f8027`](./contracts/polygon-137/0x9894b0f28ccfa0f5c5f74eac88f161110c5f8027/) | ZeroRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 110 |
| upstream | 13 |
| standard_library | 11 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: extraction_exact=9

Zero-match audit list:

- [16791] Introduction
- [16792] Introduction

Fork inheritance lineage and inherited audits are included when available.
