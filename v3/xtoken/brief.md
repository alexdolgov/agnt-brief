# Agentic Audit Brief: xToken

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: xToken (`xtoken`)
- Website: [https://xtokenterminal.io/](https://xtokenterminal.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, optimism, polygon
- Contract surface: 172 unique implementations (172 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $711,969.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for xToken in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...c78ba3`, chain 1)
- UnnamedContract (`0x1ba991...16d76e`, chain 1)
- UnnamedContract (`0x337842...1509d9`, chain 1)
- UnnamedContract (`0x3af134...4cf1a7`, chain 1)
- UnnamedContract (`0x4658c1...e329fe`, chain 1)
- UnnamedContract (`0x4b46ea...6d9a46`, chain 1)
- UnnamedContract (`0x4e9083...6dcde1`, chain 1)
- UnnamedContract (`0x7b96cd...07559a`, chain 1)
- UnnamedContract (`0xa348cf...983012`, chain 1)
- UnnamedContract (`0xb3999b...b1b614`, chain 1)
- UnnamedContract (`0xc9e814...d976ca`, chain 1)
- UnnamedContract (`0xea6f72...4ed378`, chain 1)
- UnnamedContract (`0xf24a81...9dcde8`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 159 discovered implementations excluded (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Deployed-live implementations: 13 of 172 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 172
- Raw deployments: 172
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (159)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x611660...3c83ae` | ⚠️ Unaudited |
| AlphaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1faa1...b40975` | ⚠️ Unaudited |
| BancorBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77a77e...34d924` | ⚠️ Unaudited |
| BancorChanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72a0f...270468` | ⚠️ Unaudited |
| BancorConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40a36b...252e16` | ⚠️ Unaudited |
| BancorConverterExtensions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf46002...9012f7` | ⚠️ Unaudited |
| BancorConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8079...f9b236` | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebf10...7c3d5c` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eeb95...c30cc5` | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0c11...3af6f2` | ⚠️ Unaudited |
| BancorGasPriceLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fd539...4daa6e` | ⚠️ Unaudited |
| BancorNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x568e7c...3e5e07` | ⚠️ Unaudited |
| BancorPriceFloor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec6a7...268549` | ⚠️ Unaudited |
| BancorQuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1cc6...49139b` | ⚠️ Unaudited |
| BinaryOptionMarketData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdadea8...0535a4` | ⚠️ Unaudited |
| BinaryOptionMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x211ba9...0f025c` | ⚠️ Unaudited |
| BinaryOptionMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x673e76...cf406d` | ⚠️ Unaudited |
| CLR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x048595...965610` | ⚠️ Unaudited |
| CLRDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa585...084163` | ⚠️ Unaudited |
| CollateralErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3812...7a0d46` | ⚠️ Unaudited |
| CollateralEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ff5c0...90729e` | ⚠️ Unaudited |
| CollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x067e39...10dcc6` | ⚠️ Unaudited |
| CollateralManagerState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x573e51...2bb52d` | ⚠️ Unaudited |
| CollateralShort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188c22...f84246` | ⚠️ Unaudited |
| CollateralState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d923...796107` | ⚠️ Unaudited |
| ContractFeatures | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x563172...6ce699` | ⚠️ Unaudited |
| ContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7148b1...e395e6` | ⚠️ Unaudited |
| CouncilDilution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ba35...fb2100` | ⚠️ Unaudited |
| CrowdsaleController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbc797...f89710` | ⚠️ Unaudited |
| DAONFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045671...2b77bf` | ⚠️ Unaudited |
| DappMaintenance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab0b2f...2732dd` | ⚠️ Unaudited |
| DebtCache | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08118e...41b89e` | ⚠️ Unaudited |
| DelegateApprovals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fd6e...42362f` | ⚠️ Unaudited |
| EmptyFuturesMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834ef6...0780d7` | ⚠️ Unaudited |
| EternalStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f7c20...31d3ba` | ⚠️ Unaudited |
| EtherCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7133af...49e272` | ⚠️ Unaudited |
| EtherCollateralsUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfed770...f57b82` | ⚠️ Unaudited |
| EtherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08294...2ce315` | ⚠️ Unaudited |
| EtherWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1aae9...1e747c` | ⚠️ Unaudited |
| ExchangeCircuitBreaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeacaed...005437` | ⚠️ Unaudited |
| Exchanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d53a1...b6f5d4` | ⚠️ Unaudited |
| ExchangeRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa68c60...9478ed` | ⚠️ Unaudited |
| ExchangeRatesWithDexPricing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9296...ba7752` | ⚠️ Unaudited |
| ExchangerWithFeeRecAlternatives | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a417c...d235f6` | ⚠️ Unaudited |
| ExchangerWithVirtualSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bfdc0...31f7de` | ⚠️ Unaudited |
| ExchangerWithVirtualSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x585fd1...1367e8` | ⚠️ Unaudited |
| FeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x013d16...c169c8` | ⚠️ Unaudited |
| FlexibleStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc757ac...2d85f5` | ⚠️ Unaudited |
| GrantsDAOV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cf117...037049` | ⚠️ Unaudited |
| iETHRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0333bd...b33139` | ⚠️ Unaudited |
| Implementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x736d22...455027` | ⚠️ Unaudited |
| ImplementationResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2206aa...d41843` | ⚠️ Unaudited |
| IssuanceEternalStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631e93...d6ba64` | ⚠️ Unaudited |
| Issuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0689b1...3a2c33` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9ca5d...259430` | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd974d...6bd200` | ⚠️ Unaudited |
| Liquidations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463387...8754a2` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e5fe1...e3c425` | ⚠️ Unaudited |
| LiquidatorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf79603...962c00` | ⚠️ Unaudited |
| LiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45eaad...f0adb2` | ⚠️ Unaudited |
| LMTerminal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x090559...b90374` | ⚠️ Unaudited |
| LPCompVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae009...f6cbc6` | ⚠️ Unaudited |
| MerkleClaimTree | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ca872...5ab28e` | ⚠️ Unaudited |
| Migration_Algol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaab72c...fb8b80` | ⚠️ Unaudited |
| Migration_Alkaid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8de68...139b53` | ⚠️ Unaudited |
| Migration_Alkaid_Supplemental | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6efd21...7efdc0` | ⚠️ Unaudited |
| Migration_Alnitak | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca903...1e4ecf` | ⚠️ Unaudited |
| Migration_Alphard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf41e17...0ef32e` | ⚠️ Unaudited |
| Migration_Alpheratz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda2168...2abe71` | ⚠️ Unaudited |
| Migration_Alsephina | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5bdd...d58b47` | ⚠️ Unaudited |
| Migration_Diphda | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d10dc...502985` | ⚠️ Unaudited |
| Migration_Hamal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656206...8723fa` | ⚠️ Unaudited |
| Migration_Kaus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73c9a0...2bc027` | ⚠️ Unaudited |
| Migration_Mirach | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x833501...86eb63` | ⚠️ Unaudited |
| Migration_Mirfak | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07961c...3ad740` | ⚠️ Unaudited |
| Migration_Mirzam | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe091...831ba9` | ⚠️ Unaudited |
| Migration_Mizar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6f74e...3be21f` | ⚠️ Unaudited |
| Migration_Peacock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f7e01...ea2681` | ⚠️ Unaudited |
| Migration_Rasalhague | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dfd2...94505a` | ⚠️ Unaudited |
| Migration_Saiph | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74bead...ce7636` | ⚠️ Unaudited |
| Migration_Tiaki | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b291a...8129f4` | ⚠️ Unaudited |
| MigrationLib_Diphda | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed621...d3f8ed` | ⚠️ Unaudited |
| MinimalProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3257b...49bc5b` | ⚠️ Unaudited |
| MultiCollateralSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005d19...3b6827` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005a4d...b19826` | ⚠️ Unaudited |
| NativeEtherWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3d89...7a7eeb` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b24a...0a48ec` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ae84...9294f3` | ⚠️ Unaudited |
| NonRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0673a2...8c0fd4` | ⚠️ Unaudited |
| NonRewardPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06bbd0...2f4337` | ⚠️ Unaudited |
| OneInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x111111...20c302` | ⚠️ Unaudited |
| OneNetAggregatorDebtRatio | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977d0d...5fa68d` | ⚠️ Unaudited |
| OneNetAggregatorIssuedSynths | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1405...78b9e1` | ⚠️ Unaudited |
| OneNetAggregatorsDEFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x646f23...884864` | ⚠️ Unaudited |
| OwnerRelayOnEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e16a6...640b8a` | ⚠️ Unaudited |
| PendingXTKRewardsSnapshot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x855711...70ae7e` | ⚠️ Unaudited |
| PrivateMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc76ff9...73365f` | ⚠️ Unaudited |
| Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1864ff...636444` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x21a3ed...b03169` | ⚠️ Unaudited |
| ProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035255...f9e2f4` | ⚠️ Unaudited |
| PurgeableSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0517a5...e68ec3` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27308...ce5ab6` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ffe0...30b21e` | ⚠️ Unaudited |
| ReadProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3b31...ba3ef2` | ⚠️ Unaudited |
| RebalanceBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5863cc...dd0068` | ⚠️ Unaudited |
| RebalancingSetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93e018...dbbddb` | ⚠️ Unaudited |
| RevenueController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f83f6...036d58` | ⚠️ Unaudited |
| RewardEscrowProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ac34f...2a45bb` | ⚠️ Unaudited |
| RewardEscrowProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40e8cb...6efcf2` | ⚠️ Unaudited |
| RewardEscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda4ef8...698876` | ⚠️ Unaudited |
| ShortingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12dc12...3e4c12` | ⚠️ Unaudited |
| SignedSafeDecimalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728a2b...0c7095` | ⚠️ Unaudited |
| SmartToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x164a12...172153` | ⚠️ Unaudited |
| SpartanCouncil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023c66...5817c5` | ⚠️ Unaudited |
| StakedCLRToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08b129...b209c2` | ⚠️ Unaudited |
| StakingDualRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb59e8d...fae93f` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0031b7...1c4642` | ⚠️ Unaudited |
| StakingRewardUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f139d...22b8f9` | ⚠️ Unaudited |
| SupplySchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d203c...cd91cf` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe59242...861564` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075b36...aa8a60` | ⚠️ Unaudited |
| Synth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02a8d7...eb107f` | ⚠️ Unaudited |
| Synthetix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08f30e...8d0564` | ⚠️ Unaudited |
| SynthetixAirdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa490...1f5daa` | ⚠️ Unaudited |
| SynthetixBridgeEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd79d...21ef9f` | ⚠️ Unaudited |
| SynthetixBridgeToOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045e50...aca8d6` | ⚠️ Unaudited |
| SynthetixDebtShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89fcb3...3a843f` | ⚠️ Unaudited |
| SynthRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53313...15e234` | ⚠️ Unaudited |
| SynthSummaryUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d6975...f09a54` | ⚠️ Unaudited |
| SynthUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81aee4...faf6c3` | ⚠️ Unaudited |
| SystemSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26c6c7...2d139c` | ⚠️ Unaudited |
| SystemSettingsLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307bdc...c94cfa` | ⚠️ Unaudited |
| SystemStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c86b3...ddb87e` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfd813...47f573` | ⚠️ Unaudited |
| TokenState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ada1...7b264a` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07d896...cc602b` | ⚠️ Unaudited |
| TradeAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f231...0c14b5` | ⚠️ Unaudited |
| TradingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629226...c20019` | ⚠️ Unaudited |
| UniswapLibrary | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x246ebb...628ef9` | ⚠️ Unaudited |
| USD1Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199921...1e2e7f` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa5644e...f92b34` | ⚠️ Unaudited |
| VirtualSynthMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02ce4...035775` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f9bc...8a9480` | ⚠️ Unaudited |
| xAssetCLR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x152169...2e7189` | ⚠️ Unaudited |
| xAssetCLRBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b6d2...b52394` | ⚠️ Unaudited |
| xAssetCLRProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f70a4...ef2298` | ⚠️ Unaudited |
| xBNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x104499...1d96e9` | ⚠️ Unaudited |
| xBNTaMerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x978090...27be52` | ⚠️ Unaudited |
| xINCH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x185991...62bb45` | ⚠️ Unaudited |
| xKNC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x06890d...819e81` | ⚠️ Unaudited |
| xMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5d6d...a5f627` | ⚠️ Unaudited |
| xSNX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bef8...f62a63` | ⚠️ Unaudited |
| xSNXAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2139a1...a68047` | ⚠️ Unaudited |
| xSNXaMerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de6cd...cabb1c` | ⚠️ Unaudited |
| xSNXCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293444...2ea6c3` | ⚠️ Unaudited |
| XTKProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7f3edc...b3adeb` | ⚠️ Unaudited |
| XTKRetroactiveClaimsContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11f103...5c6dfd` | ⚠️ Unaudited |
| xTokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c532...d0364d` | ⚠️ Unaudited |
| xU3LPStable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x107357...1dc094` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397356 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397358 | `0x1ba991...16d76e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397360 | `0x337842...1509d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397361 | `0x3af134...4cf1a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397362 | `0x4658c1...e329fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397363 | `0x4b46ea...6d9a46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397365 | `0x4e9083...6dcde1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397368 | `0x7b96cd...07559a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397370 | `0xa348cf...983012` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397372 | `0xb3999b...b1b614` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397374 | `0xc9e814...d976ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397376 | `0xea6f72...4ed378` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397378 | `0xf24a81...9dcde8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ABDK-audit.pdf](https://github.com/xtokenmarket/terminal-mining/blob/master/audits/ABDK-audit.pdf) | ABDK | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [certik-audit.pdf](https://github.com/xtokenmarket/terminal-mining/blob/master/audits/certik-audit.pdf) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18620] ABDK-audit.pdf — no match: The audit report explicitly lists 24 files in scope on page 21. The date is from the cover page: '10th March 2022'.
- [18621] certik-audit.pdf — no match: All contracts listed in the Audit Scope table are extracted. The audit date is explicitly given as 'Delivery Date Feb 04, 2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ABDK-audit.pdf | ICLR | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | ICLRDeployer | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IERC20Extended | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | ILMTerminal | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IProxyAdmin | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IRewardEscrow | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IStakedCLRToken | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IStakingRewards | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | IxTokenManager | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | UniswapLibrary | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | CLRProxy | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | LMTerminalProxy | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | StakedCLRTokenProxy | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | StakingRewardsProxy | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | RewardEscrow | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | StakingRewards | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | BlockLock | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | CLR | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | CLRDeployer | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | LMTerminal | unmatched — not counted | — | listed in scope | no |
| ABDK-audit.pdf | StakedCLRToken | unmatched — not counted | — | listed in scope | no |
| certik-audit.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IERC20Extended | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | ILMTerminal | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IRewardEscrow | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IStakedCLRToken | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IStakingRewards | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IxAssetCLR | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | IxTokenManager | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | ABDKMath64x64 | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | UniswapLibrary | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | Utils | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | LMTerminalProxy | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | StakedCLRTokenProxy | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | xAssetCLRProxy | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | StakingRewardsProxy | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | RewardEscrow | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | StakingRewards | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | BlockLock | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | CLRDeployer | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | LMTerminal | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | StakedCLRToken | unmatched — not counted | — | listed in scope table | no |
| certik-audit.pdf | xAssetCLR | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 156 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 46 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [18620] ABDK-audit.pdf
- [18621] certik-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
