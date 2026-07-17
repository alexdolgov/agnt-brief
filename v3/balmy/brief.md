# Agentic Audit Brief: Balmy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Balmy (`balmy`)
- Website: [https://balmy.xyz](https://balmy.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, gnosis, moonbeam, optimism, polygon
- Contract surface: 152 unique implementations (152 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $163,588.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Balmy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum, optimism, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 19 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 133 discovered implementations shown in the inventory but excluded from coverage (19 third-party/infra; 10 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/134
- Verified + Unaudited implementations: 134
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 152
- Raw deployments: 152
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (134)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AavePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1821c1d8c74a3d8799170c35f2abb83ac3259c98` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x00815e0e9d118769542ce24be95f8e21c60e5561` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0833cfcb11a5ba89fbaf73a407831c98ad2d7648` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7fd9da386f01f83cef3ebc01e13c040428c47ada` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x835482fe0532f169024d5e9410199369aad5c77e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9c0caeb986c003417d21a7daaf30221d61fc1043` | ⚠️ Unaudited |
| BadgerPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c86943e594640c4598086a2359a0e70b80ef8d` | ⚠️ Unaudited |
| BadgerSettLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc743c9d1801ad9169be176761e8bb95c1298d817` | ⚠️ Unaudited |
| BlockNumber | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ⚠️ Unaudited |
| BondingCurve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5771879f665e924a264f2fa4b99a0cc46feeb15f` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00ce8e3746240b0ca44046b550c8e54e848ae5b8` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037107c38a734f6e50f1db5f964056689e3e2cde` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x258592543a2d018e5bdd3bd74d422f952d4b3c1b` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bec59fc9d0dba42e85ca514abe8b9c0faf9876` | ⚠️ Unaudited |
| ChainlinkPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f24e7155ff4472cb26e32c1213e515fc4b99d3` | ⚠️ Unaudited |
| ChainlinkPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0602af43ca042550ca9da3c33ba3ac375d20df4` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x058c345d3240001088b6280e008f9e78b3b2112d` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1de9d660d3cb53031cfe1a58de40b171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x004bae2ed0210e937327aaf199135393f64d5b57` | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda6415502b0ddab9eda1d09f4f16286273fdbb6` | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07280d3143311b012ad268a74f2aa791713952ea` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| CompoundPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf0d83ae6c62281cc1fa28dde0647b9bb16af3f4` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a78a9d35c9c61f9e0ff526c5d88ec28354543fe` | ⚠️ Unaudited |
| Converter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d4a43ee4770a2bab97460d3a3b783641d85d108` | ⚠️ Unaudited |
| CryptoCabz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76bf9ac96fc75849c6872cf89f367e56feed5c30` | ⚠️ Unaudited |
| CToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02beff6668a0c8b7b16c978de8807527d9342ad4` | ⚠️ Unaudited |
| CurveLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43c534203339bbf15f62b8dde91e7d14195e7a60` | ⚠️ Unaudited |
| CurveTriCryptoLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2d16916d520d585ee49f08db1436b961b48fe60` | ⚠️ Unaudited |
| DCAHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x059d306a25c4ce8d7437d25743a8b94520536bd5` | ⚠️ Unaudited |
| DCAHubCompanion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ba4b15f833c70a74e0fcc18f36d3c6157dcf687` | ⚠️ Unaudited |
| DCAPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59acef0fc104ede425df5cd3a1677a09e7e025cd` | ⚠️ Unaudited |
| DCAPermissionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4edfb45446c6a207643ea846bfa42021ce5ae11` | ⚠️ Unaudited |
| DCATokenDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70ee0aa330e3590f6348fd54e71fd18ad3bc914f` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf28164a485b0b2c90639e47b0f377b4a438a16b1` | ⚠️ Unaudited |
| DydxPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba` | ⚠️ Unaudited |
| ERC20Handler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ea1f65cf49297ea6d265291a2b09d0f2ae649d6` | ⚠️ Unaudited |
| ERC20PresetMinterPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x083c56d87ead73d6231c165ec450c6e28f3399c9` | ⚠️ Unaudited |
| ERC20PresetMinterPauserLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0dce4ee2cf51b2e27a7c368ea36a4af16603b58` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3b53af74a4bf62ae5511055290838050bf764df` | ⚠️ Unaudited |
| FixedEurPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817158553f4391b0d53d242fc332f2ef82463e2a` | ⚠️ Unaudited |
| FixedTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fe48562b816d03ce9e2bbd5ab28674a8807cc5` | ⚠️ Unaudited |
| FuseFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ce132ebe395d35b8cf6df6ce5f817107707583` | ⚠️ Unaudited |
| FusePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5959dbc5432c173cbea41ab79d5673d5aa375311` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| FYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9bfa18f2c0954f1ff48b5ee9d8efed5975e650` | ⚠️ Unaudited |
| GelatoGUniPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3633b38c747cea231adb74b511dc2ed3992b43` | ⚠️ Unaudited |
| GenericHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x205fa8a01383ab4a362dfef25b2f07f39423c85a` | ⚠️ Unaudited |
| GOhmPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057ecda7f61c73c3adcc36899d2626c7b79c3249` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f60585a80cec402fffa1d85f152b522e7358b39` | ⚠️ Unaudited |
| HarvestPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6141d9353bb1fb8131d07d358c112b372aa92514` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98` | ⚠️ Unaudited |
| InitializableClones | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ce5566dc3170898c5aee4ae4dd314654b47415` | ⚠️ Unaudited |
| InterimRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc44153bd326b24714e926173e247fe7f9d6e47` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075538650a9c69ac8019507a7dd1bd879b12c1d7` | ⚠️ Unaudited |
| L2CustomERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1da650c3b2daa8aa9ff6f661d4156ce24d08a062` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00f932f0fe257456b32deda4758922e56a4f4b42` | ⚠️ Unaudited |
| LinearVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ce813218dffa5d15e9765f59898048e49149f2a` | ⚠️ Unaudited |
| LinkTokenOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6` | ⚠️ Unaudited |
| LPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ⚠️ Unaudited |
| LPStakingTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4dea9e918c6289a52cd469cac652727b7b412cd2` | ⚠️ Unaudited |
| MasterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1887118e49e0f4a78bd71b792a49de03504a764d` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e7eeadcb7489518bf88eb72352f6d232a2ad9f` | ⚠️ Unaudited |
| MintableBurnableSyntheticTokenPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e3decbb3645551b8a19f0ea1678079fcb33fb4c` | ⚠️ Unaudited |
| MintableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08193764bd81a742c15125e48f41b1232068c912` | ⚠️ Unaudited |
| MStablePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2afe310485208476d5aa480905db4f7e90d5fa0e` | ⚠️ Unaudited |
| OracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83d0e7265cab5c14d9306322262cdc477ff10db1` | ⚠️ Unaudited |
| PreCommit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6ad91dd183f953389d0bf5687025340a19e6e0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038e3fb79bbe37c804f6d5ee6b5323537c886298` | ⚠️ Unaudited |
| ProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x298b9b95708152ff6968aafd889c6586e9169f1d` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753dd7087cac61ab5644b308642cc1c33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea` | ⚠️ Unaudited |
| RariFundController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369855b051d1b2dbee88a792dcfc08614ff4e262` | ⚠️ Unaudited |
| RariFundProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ddefa2a30474e64314aaa7370abe14c042c6e8` | ⚠️ Unaudited |
| RariFundToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d` | ⚠️ Unaudited |
| RariGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54745fe0a4309f48d57550aeb6385dc8303596d9` | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5888e7e6d0fbfc8c1d214cab8441658e9266840c` | ⚠️ Unaudited |
| RgtTempPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b43d7372e49ad2b04c7ab04bddd7f724480aaed` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ⚠️ Unaudited |
| RouterETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb49c4e680174e331cb0a7ff3ab58afc9738d5f8b` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd80431859766ee0cc7574f485121f5fa70d06c07` | ⚠️ Unaudited |
| StakedFodlPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cf2299680c063ccaf18f62a60c500a625e08e2` | ⚠️ Unaudited |
| StakedSpellPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb544f62045b96a60b398abb5a5c23bf04cb4ed9c` | ⚠️ Unaudited |
| StakingProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17beeb02d168e9d8e3c517e7bba7d24301362e50` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2413e4594aade7513ab6dc43209d4c312cc35121` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d80ce5c021a40aec9062a6273bbc33537e1c` | ⚠️ Unaudited |
| StakingRewardsGas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2acdaa5af60cfb352cbe81270c29aa3ec5e5cfae` | ⚠️ Unaudited |
| StakingRewardsStandalone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f7a17aa18ddeb9a281776f406f2ff6bd06907f7` | ⚠️ Unaudited |
| StakingRewardsStandaloneMul | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33658140664e02814e6b0f32521498f03cb1380b` | ⚠️ Unaudited |
| StakingRewardsTiny | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf38971255ac45bb72dccd0597ac16efb9f29da02` | ⚠️ Unaudited |
| StargateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0df9220aeaa28ce8ba06add7c5b3cc6e7c1cd511` | ⚠️ Unaudited |
| Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa38b8632153b2d083a94590e577298c0ae50698` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x014b220912f6a9fce68e82fa6c2e603a7a78f436` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6c806eddad78a5505fce27b18c6f859fc9739bec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6dc585ad66a10214ef0502492b0cc02f0e836eec` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2afc7a4c2c19e81a79d9158d6bca3858a87b73` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e379c9cff64944be82b849f8fd5972c7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00032e33ac57c73f9d4e3e85a97488214cb5f25b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de668684839f97d4845f32a43e913366ec08c` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | unit-228719 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| UniswapLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f42c004bd9b0e5acc65c33da133fbfbe86c7c0` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480bae4d1389889c7e0600399234e1d39d4fe79f` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1860b3714f0163838cf9ee3adc287507824ebdb` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29490a6f5b4a999601378547fe681d04d877d29b` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eed20f31e7d434648ff51114446b3cffd1ff9f1` | ⚠️ Unaudited |
| UnlockValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcc4bcb2924ee4a0334a5b0b2c6ad893e8ad3337` | ⚠️ Unaudited |
| USDV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3fb6f331735252e7bfb0b24b3b761301293dbe` | ⚠️ Unaudited |
| Vader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0595af52e4022aebd794de267fc20c12c50c08f8` | ⚠️ Unaudited |
| VaderBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b96d82b8b13c75d4ce347a53284b10d93b63684` | ⚠️ Unaudited |
| VaderMinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc33fe4a5c2990cc0a62ab26a74604ea57ad955aa` | ⚠️ Unaudited |
| VaderMinterUpgradeableV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00aadc47d91fd9cac3369e6045042f9f99216b98` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d268a94ce119eacbf80139ad7910eb9cfbc8` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x43d2761ed16c89a2c4342e2b16a3c61ccf88f05b` | ⚠️ Unaudited |
| WidgetSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16419058f15a86795933f78dc624b384d09e3a4e` | ⚠️ Unaudited |
| WithdrawalDeposits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30421c14e7d7a1b43cf6f95cf24a0c087b77e803` | ⚠️ Unaudited |
| WMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ⚠️ Unaudited |
| WSTEthPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11de4c003c80dc36a810254b433d727ac71c517` | ⚠️ Unaudited |
| XVader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a5f5fe4a4fcc425eeb8eb263355a4b3b4a87a2c` | ⚠️ Unaudited |
| ZapEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781b2844605298fb45c653dc1ef0d0b941293323` | ⚠️ Unaudited |
| ZapEthToPreCommit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd936219f3aca9ca1fa675aa69752fad2be85a90a` | ⚠️ Unaudited |
| ZERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb67176655e7919a27aa34c279157124619adfd4b` | ⚠️ Unaudited |
| ZeroExExchangeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a` | ⚠️ Unaudited |
| ZEROFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fd98cf211134081fe02f551d64cf89671d5443b` | ⚠️ Unaudited |
| ZeroRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9894b0f28ccfa0f5c5f74eac88f161110c5f8027` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x20bdae1413659f47416f769a4b27044946bc9923` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x49c590f6a2dfb0f809e82b9e2bf788c0dd1c31f9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5ad2fed59e8df461c6164c31b4267efb7cbaf9c0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6810e776880c02933d47db1b9fc05908e5386b96` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6c615481e96806edbd9987b6e522a4ea85d13659` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x749fc5a81b2fe1470e54e1bf452b71a4fb0e1bbf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9ba4b15f833c70a74e0fcc18f36d3c6157dcf687` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa5adc5484f9997fbf7d405b9aa62a7d88883c345` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb4edfb45446c6a207643ea846bfa42021ce5ae11` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdf0dbc66f85979a1d54671c4d9e439f306be27ee` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xff970a61a04b1ca14834a43f5de4533ebddb5cc8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield.pdf (also discovered via alternate URL)](https://github.com/Mean-Finance/dca-v2-core/blob/main/audits/PeckShield.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Pessimistic.pdf (also discovered via alternate URL)](https://github.com/Mean-Finance/dca-v2-core/blob/main/audits/Pessimistic.pdf) | Pessimistic | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high|medium |
| [Introduction](https://omniscia.io/reports/mean-finance-swappers-module) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-oracle-module) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-transformers-module) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-permit2-adapter-64ad40c224448c00148ee2f9) | Omniscia | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-nft-permission-system-65536361239be600181362f3) | Omniscia | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16784] PeckShield.pdf — no match: No explicit scope section; contracts extracted from findings targets and code snippets.
- [16785] Pessimistic.pdf — no match: No explicit scope section; contracts extracted from findings and notes. Audit date from report footer.
- [16788] Introduction — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope'.
- [16789] Introduction — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope'.
- [16790] Introduction — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope'.
- [16791] Introduction — no match: Extracted 6 contract names from the 'Contracts Assessed' scope table. Audit date is July 24th 2023 from the revision table.
- [16792] Introduction — no match: The report mentions 'NFT Permission System' as the module under audit but does not list specific contract names or file paths. The date is taken from the latest revision date (November 23rd 2023).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield.pdf | DCAPermissionsManager | unmatched — not counted | — | Target of finding PVE-001 | no |
| PeckShield.pdf | ChainlinkOracle | unmatched — not counted | — | Target of finding PVE-002 | no |
| PeckShield.pdf | UniswapV3Oracle | unmatched — not counted | — | Target of finding PVE-002 | no |
| PeckShield.pdf | OracleAggregator | unmatched — not counted | — | Target of finding PVE-002 | no |
| PeckShield.pdf | DCAHubConfigHandler | unmatched — not counted | — | Target of finding PVE-003 | no |
| Pessimistic.pdf | PermissionMath | unmatched — not counted | — | mentioned in Bug finding | no |
| Pessimistic.pdf | ChainlinkOracle | unmatched — not counted | — | mentioned in Use of deprecated function, Tests issue, Notes | no |
| Pessimistic.pdf | DCAHubConfigHandler | unmatched — not counted | — | mentioned in Code quality finding | no |
| Pessimistic.pdf | DCAHubSwapHandler | unmatched — not counted | — | mentioned in Code quality finding | no |
| Pessimistic.pdf | DCAHubPositionHandler | unmatched — not counted | — | mentioned in Code quality finding | no |
| Introduction | CollectableWithGovernor | unmatched — not counted | — | listed in scope table | no |
| Introduction | Governable | unmatched — not counted | — | listed in scope table | no |
| Introduction | GetBalances | unmatched — not counted | — | listed in scope table | no |
| Introduction | RunSwap | unmatched — not counted | — | listed in scope table | no |
| Introduction | RevokableWithGovernor | unmatched — not counted | — | listed in scope table | no |
| Introduction | Shared | unmatched — not counted | — | listed in scope table | no |
| Introduction | SwapProxy | unmatched — not counted | — | listed in scope table | no |
| Introduction | SwapAdapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | SwapperRegistry | unmatched — not counted | — | listed in scope table | no |
| Introduction | TakeAndRunSwap | unmatched — not counted | — | listed in scope table | no |
| Introduction | TakeRunSwapAndTransfer | unmatched — not counted | — | listed in scope table | no |
| Introduction | TakeRunSwapsAndTransferMany | unmatched — not counted | — | listed in scope table | no |
| Introduction | TakeManyRunSwapAndTransferMany | unmatched — not counted | — | listed in scope table | no |
| Introduction | TakeManyRunSwapsAndTransferMany | unmatched — not counted | — | listed in scope table | no |
| Introduction | BaseOracle | unmatched — not counted | — | listed in scope table | no |
| Introduction | IdentityOracle | unmatched — not counted | — | listed in scope table | no |
| Introduction | OracleAggregator | unmatched — not counted | — | listed in scope table | no |
| Introduction | SimpleOracle | unmatched — not counted | — | listed in scope table | no |
| Introduction | StatefulChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| Introduction | TokenSorting | unmatched — not counted | — | listed in scope table | no |
| Introduction | TransformerOracle | unmatched — not counted | — | listed in scope table | no |
| Introduction | UniswapV3Adapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | BaseTransformer | unmatched — not counted | — | listed in scope table | no |
| Introduction | CollectableDust | unmatched — not counted | — | listed in scope table | no |
| Introduction | ERC4626Transformer | unmatched — not counted | — | listed in scope table | no |
| Introduction | Governable | unmatched — not counted | — | listed in scope table | no |
| Introduction | Multicall | unmatched — not counted | — | listed in scope table | no |
| Introduction | ProtocolTokenWrapperTransformer | unmatched — not counted | — | listed in scope table | no |
| Introduction | TransformerRegistry | unmatched — not counted | — | listed in scope table | no |
| Introduction | ArbitraryExecutionPermit2Adapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | BasePermit2Adapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | Permit2Transfers | unmatched — not counted | — | listed in scope table | no |
| Introduction | SwapPermit2Adapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | Token | unmatched — not counted | — | listed in scope table | no |
| Introduction | UniversalPermit2Adapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | NFT Permission System | unmatched — not counted | — | mentioned as the module being audited in the overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 110 |
| upstream | 13 |
| standard_library | 11 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 46 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1, medium=2
- Match method counts: n/a

Zero-match audit list:

- [16784] PeckShield.pdf
- [16785] Pessimistic.pdf
- [16788] Introduction
- [16789] Introduction
- [16790] Introduction
- [16791] Introduction
- [16792] Introduction

Fork inheritance lineage and inherited audits are included when available.
