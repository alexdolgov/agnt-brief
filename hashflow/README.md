# Agentic Audit Brief: Hashflow

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Hashflow (`hashflow`)
- Website: [https://www.hashflow.com](https://www.hashflow.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, goerli, optimism, polygon, polygon-mumbai, sepolia
- Contract surface: 705 unique implementations (708 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $559,170.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Hashflow in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x55084ee0fef03f14a305cd24286359a35d735151`, chain 1)
- UnnamedContract (`0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1`, chain 1)
- UnnamedContract (`0xde828fdc3f497f16416d1bb645261c7c6a62dab5`, chain 1)
- UnnamedContract (`0x3efc75c8bef358669b31c5c2d1f54fae9d5de8fd`, chain 10)
- UnnamedContract (`0x6d551f4d999fac0984eb75b2b230ba7e7651bde7`, chain 10)
- UnnamedContract (`0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1`, chain 10)
- UnnamedContract (`0x55084ee0fef03f14a305cd24286359a35d735151`, chain 56)
- UnnamedContract (`0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1`, chain 56)
- UnnamedContract (`0xde828fdc3f497f16416d1bb645261c7c6a62dab5`, chain 56)
- UnnamedContract (`0x55084ee0fef03f14a305cd24286359a35d735151`, chain 137)
- UnnamedContract (`0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1`, chain 137)
- UnnamedContract (`0xde828fdc3f497f16416d1bb645261c7c6a62dab5`, chain 137)
- UnnamedContract (`0x55084ee0fef03f14a305cd24286359a35d735151`, chain 8453)
- UnnamedContract (`0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1`, chain 8453)
- UnnamedContract (`0xde828fdc3f497f16416d1bb645261c7c6a62dab5`, chain 8453)
- UnnamedContract (`0x55084ee0fef03f14a305cd24286359a35d735151`, chain 42161)
- UnnamedContract (`0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1`, chain 42161)
- UnnamedContract (`0xde828fdc3f497f16416d1bb645261c7c6a62dab5`, chain 42161)
- UnnamedContract (`0x55084ee0fef03f14a305cd24286359a35d735151`, chain 43114)
- UnnamedContract (`0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1`, chain 43114)
- UnnamedContract (`0xde828fdc3f497f16416d1bb645261c7c6a62dab5`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/31 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 21 own, 19 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 665 discovered implementations shown in the inventory but excluded from coverage (17 third-party/infra; 12 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 21 of 705 unique; 684 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/329
- Verified + Unaudited implementations: 329
- Verified by bytecode match: 0
- Unverified implementations: 376
- Unique implementations: 705
- Raw deployments: 708
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/hashflow/information))
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

### ⚠️ Verified + Unaudited (329)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveGenesisExecutor | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x797ae69562588dd893567ba22dfcf8e842686b53` | ⚠️ Unaudited |
| AaveGenesisProposalPayload | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x36ec8f61d077909b2166f78c488f2525bca62e94` | ⚠️ Unaudited |
| AaveIncentivesVault | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x238fcb066a2e4662078836237a62b59664d6f76d` | ⚠️ Unaudited |
| AavePropositionPower | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x72bbcfc20d355fc3e8ac4ce8fcaf63874f746631` | ⚠️ Unaudited |
| AaveProtoGovernance | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xda8ad436e1dfe962091d86a341e957c6a5168a9d` | ⚠️ Unaudited |
| AaveStrategy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x051caefa90adf261b8e8200920c83778b7b176b6` | ⚠️ Unaudited |
| AaveVoteStrategyToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa5e83c1a6e56f27f7764e5c5d99a9b8786e3a391` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e0541d87c6cbdbf2a6a8104248b4b922f629e` | ⚠️ Unaudited |
| AirdropGrapesToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f` | ⚠️ Unaudited |
| APROracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc33689380e6b56783a5442999b75a5b919361` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad5c0da888c93d8244261b67bd431b47ca14` | ⚠️ Unaudited |
| ArbFiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8` | ⚠️ Unaudited |
| ArbitrumExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4eee20f434bc3908a0b18da496348657133a7e` | ⚠️ Unaudited |
| Asset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x067a1eb5e383ed24b66d72aaf80d8d7db3d299a8` | ⚠️ Unaudited |
| AssetGiveaway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05831537ff42ac82ddf89790f81cb5c4664be9c1` | ⚠️ Unaudited |
| AssetSignedAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a` | ⚠️ Unaudited |
| AssetVotingWeightProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac493b8c2cef1f02f117b9ba2797e7da95574aa` | ⚠️ Unaudited |
| Astgik | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d224452801aced8b2f0aebe155379bb5d594381` | ⚠️ Unaudited |
| BalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91688f449478a47256990e4c609e000b5810b20a` | ⚠️ Unaudited |
| BeaconProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xae6aab43c4f3e0cea4ab83752c278f8debaba689` | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fe38087a94903a9d946fa1915e1772fe611000f` | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18` | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3` | ⚠️ Unaudited |
| BEP20Cardano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ee2200efb3400fabb9aacf31297cbdd1d435d47` | ⚠️ Unaudited |
| BEP20Cosmos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb3a705fc54725037cc9e008bdede697f62f335` | ⚠️ Unaudited |
| BEP20DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3` | ⚠️ Unaudited |
| BEP20EOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6fb708fc5732dec1afc8d8556423a2edccbd6` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ⚠️ Unaudited |
| BEP20LINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | ⚠️ Unaudited |
| BEP20Ontology | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd7b3a77848f1c2d67e05e54d78d174a0c850335` | ⚠️ Unaudited |
| BEP20Polkadot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7083609fce4d1d8dc0c979aab8c869ea2c873402` | ⚠️ Unaudited |
| BEP20Tezos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16939ef78684453bfdfb47825f8a5f714f12623a` | ⚠️ Unaudited |
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1fa4a73a3f0133f0025378af00236f3abdee5d63` | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x250632378e573c6be1ac2f97fcdf00515d0aa91b` | ⚠️ Unaudited |
| BEP20USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55d398326f99059ff775485246999027b3197955` | ⚠️ Unaudited |
| BEP20XRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe` | ⚠️ Unaudited |
| BEP20YFII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f70642d88cf1c4a3a7abb072b53b929b653eda5` | ⚠️ Unaudited |
| BEP20Zcash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd02326db6ebe095e0707e2973c9e045da3dc` | ⚠️ Unaudited |
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98` | ⚠️ Unaudited |
| CatalystMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d103f2a660114f7fa0e3d78f13acbcd13672e57` | ⚠️ Unaudited |
| CatalystRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7` | ⚠️ Unaudited |
| ChainlinkSourcesRegistry | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9e194d49b7ed0123f46b07d7e10013a335e0ed11` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1de9d660d3cb53031cfe1a58de40b171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac13f6403d19c95b6b75008b12fd21a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| CiaraDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629c1738efdf24958f7911339010b2a1ec0487dd` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a9a4d919943340b7e855e310489e16155f4ed29` | ⚠️ Unaudited |
| ClaimsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fd829c3365a225fb9226e75c97c3a114bd3199e` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8753a253bb314f1e8324c36f804d31b96c1` | ⚠️ Unaudited |
| CommonMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27b4c402ff602fac8248a895d325d45bf740643c` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb6c6d134903a0dedfc840128007b36aa870` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e133f7f56a574fc806e579e1355048039ca` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d03061705eb48fda6bc6e244c5eabe5d322e` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| DelegationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40730f34668afcb3884f050cbc3d376a444bbe44` | ⚠️ Unaudited |
| DForce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d8063df0319457f777a353efef0dc0189a15ba1` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0eaeb422efa44eac670aa2246a25ecfa017` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08313a290adf97d36a6f41f42bb19e368d6d` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4835b08babfc6ff92187971b3253e92640e` | ⚠️ Unaudited |
| DSToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| DydxGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb3b545adbe9dbc601eda8ff36f1c866d0ba812` | ⚠️ Unaudited |
| DydxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92d6c1e31e14520e676a687f0a93788b716beff5` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9efa7ed40a688044af22282fb19b64b5f60` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6503e8e5525d3de0c60855b6332af559ad4` | ⚠️ Unaudited |
| ERC20GroupCatalyst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fc246149b4b8d7bcef6188a10af1791380227f1` | ⚠️ Unaudited |
| ERC20GroupGem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ff2611da386de427fc96a8073963619c5851ba5` | ⚠️ Unaudited |
| ERC20SubToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe` | ⚠️ Unaudited |
| EstateSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe372ed8d188517ef4d4bc464c0c068d2002e2903` | ⚠️ Unaudited |
| EstateSaleWithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x089a55baf7052321cbce4bdbf3be568955648d9d` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64c7d40c07efabec2aafdc243bf59eaf2195c6dc` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e36efc9c7c6057c119ea2af40907159fef3f` | ⚠️ Unaudited |
| FantomToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e15361fd6b4bb609fa63c81a2be19d873717870` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2c537e5624e4af88a7ae4060c022609376c8d0eb` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a9be8a692de04bcb7ce5cddd03afca97d732c62` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b51ddbe8ba76e07be79975906c39aef2893a` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f0933ac403773d219cf0519de8082946dc10f` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| GAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5faa989af96af85384b8a938c2ede4a7378d9875` | ⚠️ Unaudited |
| GalxePassport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa32ea3769b0fec9d84ebe31a823b70e485053b1` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd217dcc5ce36ca6bc1489586ecb42b61081c` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| GenesisBouncer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48dee19c0e44c147934702c12dc98963ca831009` | ⚠️ Unaudited |
| GizerItems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c0f03411ab250f0a080a4420190b821affd4602` | ⚠️ Unaudited |
| GizerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db2d4a2e6d06f9afe906fc33036f77ebe87b59b` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212fc959bbb606f97036e8ac3da7aabf0cb735` | ⚠️ Unaudited |
| GovernanceParamsProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b2c28c7245c49ea5e6c6db98026f180b443a06` | ⚠️ Unaudited |
| GovernanceStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90dfd35f4a0bb2d30cdf66508085e33c353475d9` | ⚠️ Unaudited |
| Governor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a5ff78bfe0de04f5dc1b57d2e1095be697be76e` | ⚠️ Unaudited |
| GXY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159e309b2214b86fd8c29c461d46947685962ac9` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2e96061a1e3f51d152e32ccfab79ca1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06194062288575f35c0af45d5e7013b65e082f23` | ⚠️ Unaudited |
| HFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44ec807ce2f4a6f2737a92e985f318d035883e47` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705df56477ff301b71b176a2bd3151b9f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11f3e38dc35e06397689e45fa939eb3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d1d115862ca99253e5738590f6d31ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb4855b2a4a719097131016b573f95a867fa` | ⚠️ Unaudited |
| IdentityEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac16c08105de55a02e2b7462b1eec6085fa4d86` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8ab10daa9af1a9d2b878541f41b697268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029feae8d773a3fe25f1a3e35a526bb54744c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135fbd0b40d48fcef431ccdf6c7926450edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0b18e98674199829ddd2a6477ea25cd25eb` | ⚠️ Unaudited |
| IndaHashToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c2ea13d2bf1968a10722dc45900c8da0f78212` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x25f2226b597e8f9514b3f68f00f494cf4f286491` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x317625234562b1526ea2fac4030ea499c5291de4` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3b42cd463d247aaeffb38cff5d5ee42e9ddc4430` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4da27a545c0c5b758a6ba100e3a049001de870f5` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9c0435779f5e52cec404d957c9baa6f7d674c8ba` | ⚠️ Unaudited |
| InitializeGovernedUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a9257554c69c2187bafa6977d4953e0f2e4c10` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e63793e55c533fe98d0ed178992942863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772890c8b1564c5015a12c0dc6f18b0af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7deb279eaa11f234dff4931458d2c002d10d` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2924805aed2385f8b91849cab7fe95a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7396899638410094b3690f8bd2b56f07fdab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef201ba1ba0354d71848893dd6d56905924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73353801921417f465377c8d898c6f4c0270282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4f6d5314bb257540dc7702c326f97f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6531818456f29fc74011a3b1fb4b6132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be1ee5d345914976fd4ce9f4be65737880cb` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82` | ⚠️ Unaudited |
| KyberReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc82d6f13d96511977b21bcd9d60b7fc46191daf2` | ⚠️ Unaudited |
| Land | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f5474724e0ee42d9a4e711ccfb275809fd6d4a` | ⚠️ Unaudited |
| LandSaleWithETHAndDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47136343c616c3d6713b3ad4a223deda42839859` | ⚠️ Unaudited |
| LandSaleWithReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x126a3437f3b76155e5e574abdc048b54f2f4adaa` | ⚠️ Unaudited |
| LandWeightedSANDRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775672e4424c403f048ab08c7f56015c5d0f3` | ⚠️ Unaudited |
| LendVoteStrategyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0671ca7e039af2cf2d2c5e7f1aa261ae78b3ffdf` | ⚠️ Unaudited |
| LinkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13432a43f2779c9c64fe9e436c2576e5231f7abc` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d42356e225bf79b870a05aac79062a3e8ce` | ⚠️ Unaudited |
| LiquidityConversionRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9afeb4122240b58e67a55e11d55555b4ad73f4d5` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28832484e8124634a248f2bc520f26e8345a56cd` | ⚠️ Unaudited |
| LiquidityStakingV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5aa653a076c1dbb47cec8c1b4d152444cad91941`; ethereum `0xbe607a58206180fef691bf1b5ae9670174284388` | ⚠️ Unaudited |
| MANAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f5d2fb29fb7d3cfee444a200298f468908cc942` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2edad668740f1aa35e4d8f227fb8e17dca888cd` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MaticToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0` | ⚠️ Unaudited |
| MaticTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x164255531e730788cb1e68a93c81edb585419f5e` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25bbb81d1cec3f26598b3b300aedc23958988800` | ⚠️ Unaudited |
| MerkleDistributorV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x01d3348601968ab85b4bb028979006eac235a588`; ethereum `0xfe1d5439625a9524a80f66670733129e80e0c112` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa873b15ad496ba8116ce6cfec52ef30a9372` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818180acb9d300ffc023be2300addb6879d94830` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7f54b6dcf6cee86986edc18143a35f15505` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b` | ⚠️ Unaudited |
| MinuteTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52bebd3d7f37ec4284853fd5861ae71253a7f428` | ⚠️ Unaudited |
| MixOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4f5e7a1fe57f5ceb38bfce8653effa5e584458` | ⚠️ Unaudited |
| MockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68898604d950cc15ce524a5b8d95e4b91dd11eee` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| Multicall2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x842ec2c7d803033edf55e478f461fc547bc54eb2` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a9196b06f339ad9f3ee752c987b401f2e1e2718` | ⚠️ Unaudited |
| NativeMetaTransactionProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48ce889bdfc5164c309d03b9c6126133c85f396` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c051057b774cd75067dc48f8987c4eb97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5a41e85f4ce2433beef476305d307b9205d98d` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a2880f657793a1d839653c8f8cef52f3de7a28` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a67186965fd5fe582a64a8646ff058f023aa` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1774093e9240beb559f7a1300d291d86309` | ⚠️ Unaudited |
| OriginToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8207c1ffc5b6804f6024322ccf34f29c3541ae26` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1` | ⚠️ Unaudited |
| OUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ae95dd4eeae7ed03da79856c2d44ffa3318f805` | ⚠️ Unaudited |
| OVMFiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471` | ⚠️ Unaudited |
| PriorityExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa306989ba6bcacdeccf3c0614fff2b8c668e3cae` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x15774d4555fefd57c9fc8b11c8beba993eafcc13` | ⚠️ Unaudited |
| R256 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b2d94bf0f0a4eeb7d00d67524b251ffbb91c86a` | ⚠️ Unaudited |
| R256Basic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a520f13ab264a288f7736ddf11f2fcf3246c3` | ⚠️ Unaudited |
| RebaseHooks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dcd70e6a3fb474cfd7567a021864066fdef6c5c` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0739311a9725779f109706b48a56763a8ae8fe50` | ⚠️ Unaudited |
| RootChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4015ccad9218b109d3339b356392c6ee8438e5d0` | ⚠️ Unaudited |
| SafetyModuleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd249ad8fa4646c303028a8d29cf8568a38897c55` | ⚠️ Unaudited |
| SafetyModuleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x65f7ba4ec257af7c55fd5854e5f6356bbd0fb8ec` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40` | ⚠️ Unaudited |
| Sand | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3845badade8e6dff049820680d1f14bd3903a5d0` | ⚠️ Unaudited |
| SANDRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce7467531f0fa949e6cd09a3b8f39e287eec33b8` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27280fb9ed8c9473e856f93198f08696b9299798` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb15642d540a4521a7b2840dab01287081fc` | ⚠️ Unaudited |
| SikobaContinuousSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4994e81897a920c0fea235eb8cedeed3c6fff697` | ⚠️ Unaudited |
| SikobaPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ade7bc90c34e8b2ca92590e525305c85f2d03` | ⚠️ Unaudited |
| SikobaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b40089e6cba08696d9ae48f38e2b06faff81765` | ⚠️ Unaudited |
| SimpleERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4849d2a7fec8572f12f369659cf48a826601cc5c` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a` | ⚠️ Unaudited |
| sko_ping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d4c2f88f2e403ec2ae5079726a13873673683fc` | ⚠️ Unaudited |
| SkoSaleMVP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11d6ec05f4e1280a83540511d19cb131afd176f` | ⚠️ Unaudited |
| SmartBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4790a39d5615bfbdad0e91a58c8b7391d48ffb9a` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f648b18cf1c7f6aac66a35bf462539f3b27` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3` | ⚠️ Unaudited |
| SpaceStationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75cda57917e9f73705dc8bcf8a6b2f99adbdc5a5` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17da18288d1799643be1bb07fb939626f5f9` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d4bb4465cb4fc77a57b98a16787b3d834e7` | ⚠️ Unaudited |
| StakedAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481484ee9be4819842268487aeeb1f43810d03a1` | ⚠️ Unaudited |
| StakeUIHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06abcc3b98b7310f50197f0f9cec6cf6e176ae68` | ⚠️ Unaudited |
| StarkExHelperGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db9b3f7dd83e29c9bece8e5e1089ba4369e694a` | ⚠️ Unaudited |
| StarkExRemoverGovernorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcaac0f14dea11ede11afcb875f29130e1ad5ec0` | ⚠️ Unaudited |
| StarkProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x820ced132f703a53c72c0e78641509c68fe2be34` | ⚠️ Unaudited |
| StarkProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b2b08ac98a1568a34208121c26f4f41a9e0fbb6` | ⚠️ Unaudited |
| StarNFT721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12f837f1a2c96909c0b85fafb3af7eebf9ecff0d` | ⚠️ Unaudited |
| StarNFTV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0745eab680c1c596677eedecb7df38a986522e2a` | ⚠️ Unaudited |
| StarNFTV1Cap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140f678267283034a0fd88c24d39ce94756b0b03` | ⚠️ Unaudited |
| StarNFTV4NaiveFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99bde8367d7b99d2b1ae6fce12068b49aba47207` | ⚠️ Unaudited |
| StarterPackV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x157372f9d3c94609adfb967741a0afc0c1db1bbf` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d998c95de70d9a38b3d78e49751f10f9e88b` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98e3cce4f34c087a73dd3d05558733549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf07344428770b84973e049a1c18b5d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c771035bde631391ced5c083db424a4a64bd8` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a47820313da9c74b8f2295795da6e6e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a4836c172640fa1c02999b09c5d1069156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510ba285d5390cb5385a91a380d4268e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c409e67b6ce52180f97a8cddf7abc24ec989` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4c61b7619956e0b2015b5411f93cbba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca21dd2ad7edb3a027d543e617496820d8d6` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e668d13746bb92e675dea2868ff14da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93350d5102b6139abfc84a7d6ee70488797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055fec2b826ed4a7478ceddbeff82c1edfa70` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb916605402e5c7e81f7d609d0e2204841978f` | ⚠️ Unaudited |
| SushiToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6b3595068778dd592e39a122f4f5a5cf09c90fe2` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9cc2f41a150489da5fffba2060a2938ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf9d171d6c9c3876598b14732248b204c2cf` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6f1f5e396f6ab87407df637cce814e24a9f` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db51010dd1ade14dd3fb164e218805fdba1b` | ⚠️ Unaudited |
| ThreePoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641e3b5b081fb2fb8b43d5a163649312a28e23da` | ⚠️ Unaudited |
| ThreePoolStrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x67023c56548ba15ad3542e65493311f19adfdd6d`; ethereum `0xf92b0de25660c18bedaa55795986781d7899b0f9` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df93404574dff883e2b35911a684dab1760da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b59e02cd0d09d839b03660c205e88a929b81` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b8d693f6c446782c2c61ee357ec561dfb61` | ⚠️ Unaudited |
| TokenMintERC20Token | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce` | ⚠️ Unaudited |
| TokenReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9394839d4f394bb734752af52bddcaa092c6e1e2` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b318030c698fd4875726f2f08714a22b8c5f769` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x096760f208390250649e3e8763348e783aef5562` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x09e9222e96e7b4ae2a407b98d48e330053351eee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x10417734001162ea139e8b044dfe28dbb8b28ad0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x5288c571fd7ad117bea99bf60fe0846c4e84f933` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6c411ad3e74de3e7bd422b94a27770f5b86c623b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xe865df68133fced7c2285ff3896b406cafaa2db8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ada60e07717ab19e4a466f5f0ac68a66e3995ce` | ⚠️ Unaudited |
| TreasuryBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x639192d54431f8c816368d3fb4107bc168d0e871` | ⚠️ Unaudited |
| TreasuryMerkleClaimProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95eabb0248d013b9f59c5d5256ce11b0a8140b54` | ⚠️ Unaudited |
| TreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a62da5a14c80f265dabc077fcee437b1a0efde` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a90fe0741b7def03fb290cc7b273f1855767d8` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e379c9cff64944be82b849f8fd5972c7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0735a62b0b6e837fa67130589988436fd26f0e12` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02daefc2e8aad089d094579499508398e3057966` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b0808cea5281a912cd85421a6d12261d136` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xf68bb2d1aa914a4c43f00dfbe765bb7dc8167ec1` | ⚠️ Unaudited |
| USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | ⚠️ Unaudited |
| V00_Marketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79be524aeca16d117a0a9f0dfa6aec5e31802984` | ⚠️ Unaudited |
| V00_UserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265a48bc9bf5d274e8f88190c26d713524d61edd` | ⚠️ Unaudited |
| ValidatorShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x185486869e615f5a5644991a491212582caa08fb` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf251cb9129fdb7e9ca5cad097de3ea70cab9d8f9` | ⚠️ Unaudited |
| VaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69a8b2ae6a3606b766be99c42328459167f51b25` | ⚠️ Unaudited |
| VaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0660bf15a89d8e90cba1b3f0ccf493c415b1369d` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f59818105abe05ae793a8caedb39fc2bea7f03c` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7d59e327759acd5d11a8fb652bf4072d28ac04` | ⚠️ Unaudited |
| WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ⚠️ Unaudited |
| WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71e96f2ae777c679740d2d8dc15ed4231981` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e5c5775ca9dd02e30e67f545c36cff3690e` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae93e18aa23d31e3df53899547b986e419c5` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2af361e4b6a2892523d513df5245fc53b367` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd028bd027511482e701d08bae002cd6e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411a2d872945ee8c59e4ef5c3402ebe2a221c` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66f79191c86d7b7a7c0e2afae3ae943931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59092dae5ccf4a1e6439d611fd0653f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71990783442f68fb25e0b466196c7ca6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61025859c349dfbe6ef0dfca202ef3e84ca05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba482f2097eb47896a2ec5f3925637b73d99` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x41303e87db5be5b1c7a341440d04ec6a11343eeb` | ⚠️ Unaudited |
| YFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea6936b407514ebfc0754a37704eb8d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738fa41e83c5b5633f466f9aa11dae098340b` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b8168f960a12a8fd01406c9c78143d41380` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad987b743eb624662fe5c62b8f6015554203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052500105205d34daf004eab301916da8190f` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c0681dca0deb095f2f192c3ab64bf320af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea744e5b887e5205727f55dfbe8685e3b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118eec34240620ffd044dfa3aaa0a0f78b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6f268d0c09cdfffe6bceac5233ac2367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044deaa1e5a8593adcead599e8d66fb5d3f677b5` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06da56bb5675c54e4ed311c21e54c5025298` | ⚠️ Unaudited |
| Zorro01Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd716b424423bbc88362ce73ef976d37322eb744` | ⚠️ Unaudited |
| Zorro02Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba3c9f9a427d2bdb7e260353dce57a94cd8ddd8` | ⚠️ Unaudited |
| ZZZToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bca936670fbf15165312faa3c2eec997e42f4a2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (376)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ad752949daab60bd427dab66ed1366d1c56fa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0382e13794d7c163ac028d3171d3c90e84513aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05f4ae0ae089eba88db8b554b636b6f2fa43562d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0a09b370950f69adc4c2fbf8677c7b0047599c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca389eb320e4ec509dde88310b3c60953721a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f257714b2234c7865d5abe0ec656423bf8be88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16bec2d9a010e7d8b2d576d17893c52ddbfe4c06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ca757e2c2f2ebe87f871997eee9ea280a598a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19412fd36da873637dcfa60b716a4f749fe3fb12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19884438d005e3fb41b33382769405ded43c9ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a802826f12d5b0128aa2e21689fca84e8f57132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af44feeb5737736b6beb42fe8e5e6b7bb7391cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b67d81902608b9765b1b068b52ea46380c4ddfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd49b6a412476326bac4282b29128c1cb04c949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c5152797c3219132e905d51ba6f05d97f311e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c69d6bee307e726ca1164b93dfea512bdaeba2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca86b53017bf49b14eb9cefa79bb8e2dbbe3682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc7657c4d8d300544acc7f519cec11fd484dbee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cfd001bb3f832f05ae5b16be50f9ef98b7d35aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e666bf74fd9515e873db67c41b5ecb950c1d464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe0b698b02bbc7fc7029ee1fc15885389b53067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20188c2eff1fcc01eba983dc6a4c0bfb0645ba68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20f4b902b0b64c4cef75a67a811484b5aaa9cc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22e3f1b45a905776f98bf8f2a0d1f7b7949a2133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24baff446164b3947c0f151a92955bf9b0905fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266003afa9976d72565cac0bd840c276b01ae34f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2693c0eccb5734ebd3910e9c23a8039401a73c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x277e80f3e14e7fb3fc40a9d6184088e0241034bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b6683f3b4169667745ae8b264cf7857d5b506f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296dfd92359e6d27b1b9d4533f1508736bfae1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29954d99293c9018570957c1b6927844c49bb519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29bfd2e66e430826b0d0a4629c251bcd1a261dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8e1e676ec238d8a992307b495b45b3feaa5e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bedb429f94040ea4d150e9cba39b23ea362b1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d4e81c5835e0e88d2177d8fddcc6726ca9c0e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e259b03083678dc14a691824ae23429ea40e0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e648e88d13694c2b8f0de909f66342096282561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e95319eb7c9051225f1c23f4c8f211b3be91b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f50d538606fa9edd2b11e2446beb18c9d5846bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328d15f6b5eba1c30cde1a5f1f5a9e35b07f5424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32c85e56a82d66fa3c13e7df900682d63fcbaf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3364a8e0ce0c05cf333531fae764f06b98902718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b8a09751085d1a669fda1bf08d17e61ad490c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36c8dd8328bfd5c6e8544f11b652c2dd5f5c95fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f1bfa4eec9a89ea897e9e8b44462471106c10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37ab5e12d9bef0daa4399eae9cac62c6ba9e904b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38dd5226989756a2414fc9bcf669a8fd9ba1e35d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38f9e648383f2b28ca5afe45be2e8838e96941ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a6d6ea6014da52561bbe889a683bd86d1413ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b2a812c13ab8affb23cb6dc2aa87f2bd8a0a7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c09b440f9e46c0e4a665539aeca80fcaa92c36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d0c1626fa8f406459163cd31368afdcf3442cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d0e263ec34fdb9a0be2c437cc2bdb1b30db539b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dc6844d6c205ecc1b215dfb02748cb01bab117a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ddb21eff50640af57bcea41374001aff245bf28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6e9efb0a677a24f47093a22044dc5451a028cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eee9c3de463a518c528fd8cf22d2f8222dddca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f129162087dbdf50f28246610e085cbf3a04012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x403d5dacef8d38126d9d8960d52f62ded5fa6b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40d6992cbd03e0dc1c2de9606d29cb245e737a5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41df5d28c7e801c4df0ab33421e2ed6ce52d2567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41e3d4b3a79e464f65fffe18aa063de983ef97de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45994d68b77b37da4ce0a063547e4a733bc551a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x464cca5c9b5bdc19c3ccd2020afaf4712bb8081c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46ac83d74091dd54b503d89fa92b5c788bcd3886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4737bf05feea146fbf6fb53c12bfb5b1334275d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4832f2e18251a5a73f06c20d3e8c411f7502f22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4833051511f34d32d3432857df2cd62e864f0a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485bb413c9b480345f96d6052475fd68e41628db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x498a6cc92c5a3709c46ca4a0219c36434da153b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a0cb29bed18a9fdcd296ef1bbf0a9e908452b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a5020dc88541c4e0ed19fd7e1da2f6722012c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b30b16917d06a4550ae71f227ba078bf414787e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b37bc487a0e0bbb044378765c014fd51f1bf9c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9460e5c958f46a1fe129954a069a37972f16ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e2bfe3430d6d9a9ec897de50985715d324674ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec206b92e75f20b308893ee4a986faf2adb9d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5132f4f3d8a16797816190e2dd7cb06499b7ae87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52316f271ce49681f8dde01ae6c76010692b4509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x531f3be462f10386d01fbed7fad1d20a61ce7874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53b5f276a4b5a842b162b204f13c286a5c16c8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54624ba8cde15648bb1e29c27b99299644c146d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241705 | `0x55084ee0fef03f14a305cd24286359a35d735151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x553845f9c44c43224620055eca64c6cc79f5ddfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55b7b8f50e1d45d34981c2f251606e484a3f97fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575ccd8e2d300e2377b43478339e364000318e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596d32f9b7c1f2e73f5071c66b5e336e27d00da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59898541cc8b454e22f81ad21dfa3f51c8a6ec66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cb046747ff4ac1fce3c491d9896665b72eacd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d5a74b607c35b6d8e3eaf788c236350a8022f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f325436d79a3c7c466b5f111ce087884259a568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x628f645a5a6d36fde852b906ef18d38a128ed7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6335c32abc3a60688a80571399ece6f5691c0e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63ae536fec0b57bdeb1fd6a893191b4239f61bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64e3c23bfc40722d3b649844055f1d51c1ac041d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656acfd86be535353f0a08a327368ccf7304e819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f2ca02e22e3635fdec45b5360a4bb6832625c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f48f51c5f057581f783fb56a13edf6521f3e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c977434b2cd32498bef4bc112371b1988cd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679fcb9b33fc4ae10ff4f96caef49c1ae3f8fa67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68de1decce949cca4c3dcb32388a677e5a7da8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68fa887a758be6ee48fb2a8224f557752f4012ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69fb7c45726cfe2badee8317005d3f94be838840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aad0bcfbd91963cf2c8fb042091fd411fb05b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5cd3ad7a16ae207d221908e6b997d9b0dcd7b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ce6267fc45abc6051acee92bf2cc63dcc860a95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2b09bf82c976dbcb4eef21ba051467d3f86e96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8f6d1da6232d5e40b0b8758a0145d6c5123eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ee6b3524353739191ec12d573bd6c429a23632d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f112a94dbfe75ad78686d0768251139481446a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x705350c4bcd35c9441419ddd5d2f097d7a55410f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x717e67692908f4002915eb5e40e0503d333059f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72507949f40eb230bac7a12c9484f0c21b919b18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x732b4d30d7140268cfc651efba81ef95b342d6d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73aa6241a4e90c94070c47fef78bd3b094739dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75b1b104aaf8c60a60ddb0276356018498e68d51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75bc09f72db1663ed35925b89de2b5212b9b6cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7677bf119654d1fbcb46cb9014949bf16180b6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772c34049d8417eef82b546d0e42a45f356bdd2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7870fc5dba3251295077970b6e1425da62a8cdf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e899e576c3565c3219dbc9ea5042a9dbed36d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79b152da4ad8fb774700639bed68a965b0440644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79cdfd7bc46d577b95ed92bcdc8ababa1844af0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79e83695e63adf8ae749b3b9b9f78af37fde1ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7fc0157f070da05db78101b95f42c5ad337037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b29b5f2374812e4045173e0bc2cf15bcd57bac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c7cd62a9ab6ae50d21b9cad6dae15824bf9a86a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ca5b0a2910b33e9759dc7ddb0413949071d7575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cc4d3caaf2f8d0051f6274fa88bce4f7299c08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dd04cbae57eb4e1155685792742b2b5954e3a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e277614644409a69ea70df5cfcb114e4a51676d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e9b1672616ff6d6629ef2879419aae79a9018d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eaf99d4599c74ec4d3fe28f1918dec137612521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f416846d83aa953b4d4d951d5a25af94999b013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fbf5c9af42a6d146dcc18762f515692cd5f853b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe93e1f4ea4233bb2f4f921c109fb24a4c029d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80d6c1d4515e0fa811bccc3ab225c89e5348c582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x819bb9964b6ebf52361f1ae42cf4831b921510f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8371e04b9ba4465bd5086ceecf9446bb62850c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83a73b0c427dead5aa5f96e15c430fb766328510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8620f95606c383b7a83b43ee7a9ad4638e96e962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x864106c97520134f713a715a0f7a4adf6ed20a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870f3d5100ea58be65021880195f20a87ad52e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8793c0b5edb1fea27b1aac3f6fcbabd31b5a4ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881e59d120991f910ae0cccad63ea4b8f008dff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89aef982de66fe6df58ed0251e0841ccb2da6e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89afa608488592cef2f337f36eaf4cbfb05d9289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a30a5b340055742303b9ab6a62a4233182084bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bf121c1cba7096d505e9726abae34414e0e0a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c195f8889e4222e85efa9972bb0fee89b54159a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cfbd5098d778f919574f85e3ede3e4bd41d0229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d091c549a37b6cb6de092f0ca2f2df25e46dec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5cdcf159973689652fa2a3ebd48f09da713927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed76e942f4ab16f6fb971d2070acc18ba1625d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fef645719b53caa163cb937d1ed2970ddabcb14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e2c586f0fa91ca8e47148509a91f46a578e7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91b417bae2f17fbace1c0130c41f83fed42707bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91cc74cd9336108519860a2b2bdcb71e93e121b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x921fd42f147b26b51aa3c7fa3f2e2ce7704c2858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92e130d5ed0f14199edfa050071116ca60e99aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93093854d15c2f329d46954e6151db7d0895056a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939d2ab1c406d400c63bfe86d11033dddd226070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93cbc94b027894c0dfe6a250003d1380f765df31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x946a8d5fb1f12eef62a0d137abfa73f8563955be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95668f98017d3b40d50c38d376fd5f0a7dae36d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ad11d860772a3ffd4fa2a9f9a112a899b4c2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96e89b021e4d72b680bb0400ff504eb5f4a24327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x973f31e96f4920f84e5441a5553c4e708810834f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x980cb2cbeb59ca1fcd52be5e51770133abf0dee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9817a71ca8e309d654ee7e1999577bce6e6fd9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99cd145fc96897726bd71cb6b053925b2c19e2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b13ee7c26ef26062e08a2d6d69d3d0e5ea44ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cbcb549cd18eedbbe83e6ea361609c96f50ed38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cbd3e8beb7f11e93b0559a1b2543e974630a745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d09d9353bd7d76d4bf116a83d54a3f81f74df1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d51599a6b10f562619d8ef2efdca1b68ae80d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc7c23c569331f8fc74e96202cfd2959a91467b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa219008f38a698cc5df6074f0f147a5eab2a2ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c402120b747b38e683791bb735e42e5583c404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa342f5d851e866e18ff98f351f2c6637f4478db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4428439ec214cc68240552ec93298d1da391114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4e177abead6758567ef78ffc150741187838cac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa568c229bb963a172153ee178334a46db3d0952b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5d562c1f5dc561db10796f42b7f6933c5045152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7f26e9aeeea4fe16d9c4a6a0464af8258f437bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d40402883c8086d9edb5e367cbbe09101f1592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90996896660decc6e997655e065b23788857849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98242820ebf3a405d265ccd22a4ea8f64afb281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa4a294ac654553c28800c525c7b18954478ce80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab68b6213b091de92680ec57e879a20bbf12afda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac5d8bcd13da463bea96c75f9085c4e40037f790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacfaaa9da11e66a8cc8af8e3d844673968fff63f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0f262e569c84f39c95afaa20f79cf845e5e96b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae76daa689265999f7eaae259ae9cfd4f5095aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaeb94e6c052e93ac7f7914e655a81fbe39628fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf0512240806dc9e57315fe22bb7820e6d905580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf93fe4b2da55a723a1bf91ab67f9a09ea1bced2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11822c35a5ffda4b569e93173cb1fa865d6a666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1cdf8a789b3205d4a6b1bb7786495beb19c0f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1e4d410d5fa8a7d5573271b4418d55cca388281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1f2cdec61db658f091671f5f199635aef202cac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2fb1d91325d0211b1eb39e4cf2c9f3cf14508b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3999f658c0391d94a37f7ff328f3fec942bcadc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a9b7dc98cc563fa97487e91a3d74781f2fa055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c9494621cf6fb1da3f78eaf1b53e756ee40bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72b3f5523851c2eb0ca14137803ca4ac7295f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8cf20b0f809aa23d48a054286f746dd1afa081c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9431e19b29b952d9358025f680077c3fd37292f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95423e3ca13ce5336cb177b06cd4f647d2aad57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9beca40f6e28d27b1b49fd98ad5b2a3bc1d9a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e9b77c5a930903c4fb0c34b6e2bb2c7dc90d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb763809d70844763ff5d178f3c9f254776e2015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc1324c5f3c99c758b71a4ad64027c16a4d956fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc89cd85491d81c6ad2954e6d0362ee29fca8f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf096cd593f656fee04f54df955ebcf6e21d6d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf0f7012060fa8dca53fe8042256389b24763057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0558036701dc5cb01656e05dbc3bb0e85a39ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0cc675b4c9a209fce23f0fa976a495f9a1b0c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc107a1cbc0aacb89ed195b715e85e14d7060d824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc11a1e6fde432df9467d6d1a5454b54a63b86c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc27e00af539303f59ce5ff486e33c25298154a01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc37a236c1b27b7a3d8b8d57b9c770b70d8ccc566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ab64924e552646a0fa119dc4ff1b2cd8ab2d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5d3e4819ddf9a9458f21dcbcfc5dbff700bbbc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5edec657cd0b9718bc0d8b9937fd3f9c460e12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8f03241d10ca39a64492587aa443fb5ac660870` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241707 | `0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca71b28f7322806122c028b8ce44152679a88e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcabbac11782722450f436ad733b4f7b9b0562bf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb7fa3a2f47b62293cc2e1a4c7752fc72e49fce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbfe11b78c2e6cb25c6eda2c6ff46cd4755c8fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd18fba2d6b12aa1ece197428b2de14804e74db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdde64cfc40821b8804a42bd4bde22244d3dfc23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xced6498c0acfecb23dec7005d14fa0905ea1988e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf67e56965ad7cec05ebf88bad798a875e0460eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd061d61a4d941c39e5453435b6345dc261c2fce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd12bc8f6be3803b3bf8e7154a56c135c2bcafbfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2d43555134dc575bf7279f4ba18809645db0f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3386c31795be750824bb5b7e8614e4459cc4577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd33d83aac02456839400140d3e4c9a80347ac2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd533a949740bb3306d119cc777fa900ba034cd52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd66e157aa2f4e34c66c4f915c72b8c3dc9e15d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6ddba0b550633dc20238e4c71b7d12374bd5377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6e2d32196ee8f3019ea25bdc9e42d28decb35fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f3398cea0b1876ad50dcc92e3fbdb4eda67945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd98e7a71bacb6f11438a8271ddb2efd7f9361f52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99ad20c1c050100472babe7b3fd12146e9065a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e0f58486b5728195b28ee8df4273c170d865ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda8d9a6e0b291835b07ce321a138880fd6a08feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb82f88d572d99e4ebd10ed50e761c2ced00f380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba0f580521968895cca2b1fded2c5cd6d075882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcc584b02117d011107c472b43548531c42cd329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde5a0b8103bb22223a85466b5aab64f9a9d5a391` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241708 | `0xde828fdc3f497f16416d1bb645261c7c6a62dab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdee4f70f1fb52b0826e8642c944396ebab019c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe09b54f242d41018cbc456050867292be9295c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c07d040da3ce59c445026a9fc677bd12ab1be1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1645fd3cc20137f2ca62d454254125af0214f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16718eace44e0cb06b9cd164490a69a6425d1e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2e3441004e7d377a2d97142e75d465e0dd36af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe374b4df4cf95ecc0b7c93b49d465a1549f86cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3997288987e6297ad550a69b31439504f513267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe40e09cd6725e542001fcb900d9dfea447b529c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4315c1bfe09a9266ef75d3cb521600061865e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe638dc39b6adbee8526b5c22380b4b45daf46d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe710ced57456d3a16152c32835b5fb4e72d9ea5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe77ebe552ad1c9b94c08e10689cf646dc28ccd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7dd5b75a984fcb64eb7d3cbe22f124eb9539b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85f3b0773d614755f7668fe43b5339876d91171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec7f2d7e21a875aee53b05eb511473a385d90d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecae9bf44a21d00e2350a42127a377bf5856d84b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef38176e2daa62880b6d26b0787a66cd583c6184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0beeaf1e0fff7283824ee9753cee11c13b23d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1652d122facdb10eb2a605113db526ff99069dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22995a3ea2c83f6764c711115b23a88411cafdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3297c5892d21956184d41b4edd90cb13ade1e3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf54d26853de36ce772c04a4090e235ec71fb1e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf59ed1bba622271911f95b22ba42e9b76423589a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6a94dfd0e6ea9ddfdffe4762ad4236576136613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7dbc322d72c1788a1e37eee738e2ea9c7fa875e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82e527af09f97eaa327f2dd276a8a3bb75a3025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8648e6645b6257b40077cbd305e0f43fea9ec0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf955c3f1f0ed0376941e8857a402db6befd1e4b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa45dcdbec82c94082d283b62506320db8632054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa712ee4788c042e2b7bb55e6cb8ec569c4530c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbbe3090e06721168979818fe006a1fcb136e953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbc3d1c9a3a0b01d2040889b15d27eee9ac00628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfceea3923dd126d8fb3873389187307519c1de37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-241724 | `0x2524923e88cc8356b35753c270214a2e2d70745f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-241725 | `0x7d916a5b5a23a9fb583cd9b227b0a0b9c01eaa85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | goerli | n/a | `0xa4df5eb76f125cc2632cd27d9d959457abeb6c8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-241726 | `0xb56aaafd327e1a369085e689cad6df7a880e638c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241709 | `0x3efc75c8bef358669b31c5c2d1f54fae9d5de8fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241710 | `0x6d551f4d999fac0984eb75b2b230ba7e7651bde7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x7cdab80109d74372f1682ed0e4e65255f20ccbaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241711 | `0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x069a8629346c778d1df14c7698c3f64727aee5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0acffb0fb2cddd9bd35d03d359f3d899e32facc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1726c198cbaea900df7b7ca13bd35641ec381f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b58aeae3e9e3283e7d0a36ba4513e46be9174b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20d112c1c1805a0daaa95c44c4b1544284600c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x260c1a016c5708d96096ad2f653cce4b40092f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29bfd2e66e430826b0d0a4629c251bcd1a261dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x375e05f6e12028e933ce598ad1bed7f1194ab071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37ab5e12d9bef0daa4399eae9cac62c6ba9e904b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d6545b08693dae087e957cb1180ee38b9e3c25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fff9a58676584ba28e8780366d7d9cef0eb78ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43b4bf8758cae65e6b8242d2669e0e5e20ff693a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-241727 | `0x55084ee0fef03f14a305cd24286359a35d735151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x555fd47fb0ff098011f9f260e034b3798e04f699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e8297efe1a5d9064f5dd3bb525d84807440a90d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63ae536fec0b57bdeb1fd6a893191b4239f61bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x662c102ad1429821fbe314604bc0c7eab96cd3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66f48f51c5f057581f783fb56a13edf6521f3e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71fcfdb74a2358142fd87f0b054b8c734870a9c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x771cad61ec6dfde4a67891e982cf433aca1af7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7950865a9140cb519342433146ed5b40c6f210f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b0148fb6e44b9d1e1f7d05ee012e29d3dd97df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e277614644409a69ea70df5cfcb114e4a51676d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7eaf99d4599c74ec4d3fe28f1918dec137612521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fcb5741c568ad8c2efcad03c26c53969fdad930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86d0e7cc309e2806f5e87de0a50732651f594b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ee11bbd4139989e5f8bb92e8a9e01bc08df3011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x947950bcc74888a40ffa2593c5798f11fc9124c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99cd145fc96897726bd71cb6b053925b2c19e2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a2f5556e9a637e8fbce886d8e3cf8b316a1d8a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b726b1145a4773f68593cf171187d8ebe4d495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa98242820ebf3a405d265ccd22a4ea8f64afb281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab2d59ccc1a7ff8bcdc50432d0fcd2e167ed889d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5574750a786a37e300a916974ecd63f93fc6754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7f8cd00c5a06c0537e2abff0b58033d02e5e094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba9fe9470c2757d8f4469c803e10cd21940fe64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcf096cd593f656fee04f54df955ebcf6e21d6d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf0f7012060fa8dca53fe8042256389b24763057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf7c81fff98bbe61b40ed186e4afd6ddd01337fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-241728 | `0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd475c9c934dcd6d5f1cac530585aa5ba14185b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb55a66083e540c5f5dc9f024611549f1723da6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc1df355584bdaada533d1108ea75d307db946ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd3c817354e3855ef2b52d15ad2244793c50385a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-241729 | `0xde828fdc3f497f16416d1bb645261c7c6a62dab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf9148da7fddc654085c8d4dd597b01d26871012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf52637995c01ac88e7e7f55a8c8cc0a167120385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb6115445bff7b52feb98650c87f44907e58f802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbc3d1c9a3a0b01d2040889b15d27eee9ac00628` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241715 | `0x55084ee0fef03f14a305cd24286359a35d735151` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241716 | `0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241717 | `0xde828fdc3f497f16416d1bb645261c7c6a62dab5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xfafb0fc30140d1071606489ff36b9893f8db80bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241733 | `0x55084ee0fef03f14a305cd24286359a35d735151` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x6d551f4d999fac0984eb75b2b230ba7e7651bde7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241734 | `0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241735 | `0xde828fdc3f497f16416d1bb645261c7c6a62dab5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241718 | `0x55084ee0fef03f14a305cd24286359a35d735151` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xab24a3306748e72520db800c3e93d6c861d1ba49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241719 | `0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241720 | `0xde828fdc3f497f16416d1bb645261c7c6a62dab5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-241721 | `0x55084ee0fef03f14a305cd24286359a35d735151` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x771cad61ec6dfde4a67891e982cf433aca1af7c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-241722 | `0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-241723 | `0xde828fdc3f497f16416d1bb645261c7c6a62dab5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241730 | `0x2524923e88cc8356b35753c270214a2e2d70745f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-mumbai | n/a | `0x364a75c3769d234b8acfac3d3309a6a6a5a06d1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241731 | `0x7d916a5b5a23a9fb583cd9b227b0a0b9c01eaa85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241732 | `0xb56aaafd327e1a369085e689cad6df7a880e638c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0a93e8321154e1188ee1aabf2dfc6f9fe05a867e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3518e5059ad42d49f1e109d41e544938ae48187c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-241712 | `0x55084ee0fef03f14a305cd24286359a35d735151` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sepolia | n/a | `0x6d551f4d999fac0984eb75b2b230ba7e7651bde7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-241713 | `0xca310b1b942a30ff4b40a5e1b69ab4607ec79bc1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-241714 | `0xde828fdc3f497f16416d1bb645261c7c6a62dab5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 340
- Live contracts: 0
- Unknown liveness contracts: 340
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=1, unverified unclassified=339

Showing first 200 of 340 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x771cad61ec6dfde4a67891e982cf433aca1af7c8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xac6a83b29e5ff66fd558171ead7ed9d619b055d0` |
| unverified unclassified | UnnamedContract<br>`0x01ad752949daab60bd427dab66ed1366d1c56fa2` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x0382e13794d7c163ac028d3171d3c90e84513aec` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x05f4ae0ae089eba88db8b554b636b6f2fa43562d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x0ca389eb320e4ec509dde88310b3c60953721a21` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x13f257714b2234c7865d5abe0ec656423bf8be88` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x16bec2d9a010e7d8b2d576d17893c52ddbfe4c06` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x18ca757e2c2f2ebe87f871997eee9ea280a598a9` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x19412fd36da873637dcfa60b716a4f749fe3fb12` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x19884438d005e3fb41b33382769405ded43c9ed0` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x1a802826f12d5b0128aa2e21689fca84e8f57132` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x1af44feeb5737736b6beb42fe8e5e6b7bb7391cd` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x1b67d81902608b9765b1b068b52ea46380c4ddfc` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x1bd49b6a412476326bac4282b29128c1cb04c949` | non_address_book | unknown | unknown | unverified | n/a | `0xee34dcaf2f48f3158ef0be8d0a2d37078cc9729b` |
| unverified unclassified | UnnamedContract<br>`0x1c5152797c3219132e905d51ba6f05d97f311e5f` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x1c69d6bee307e726ca1164b93dfea512bdaeba2a` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x1ca86b53017bf49b14eb9cefa79bb8e2dbbe3682` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x1cc7657c4d8d300544acc7f519cec11fd484dbee` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x1cfd001bb3f832f05ae5b16be50f9ef98b7d35aa` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x1e666bf74fd9515e873db67c41b5ecb950c1d464` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x1fe0b698b02bbc7fc7029ee1fc15885389b53067` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x20188c2eff1fcc01eba983dc6a4c0bfb0645ba68` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x20f4b902b0b64c4cef75a67a811484b5aaa9cc2e` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x22e3f1b45a905776f98bf8f2a0d1f7b7949a2133` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x24baff446164b3947c0f151a92955bf9b0905fb0` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x266003afa9976d72565cac0bd840c276b01ae34f` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x2693c0eccb5734ebd3910e9c23a8039401a73c87` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x277e80f3e14e7fb3fc40a9d6184088e0241034bd` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x28b6683f3b4169667745ae8b264cf7857d5b506f` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x296dfd92359e6d27b1b9d4533f1508736bfae1f6` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x29954d99293c9018570957c1b6927844c49bb519` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x29bfd2e66e430826b0d0a4629c251bcd1a261dbc` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x2a8e1e676ec238d8a992307b495b45b3feaa5e86` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x2bedb429f94040ea4d150e9cba39b23ea362b1bd` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x2d4e81c5835e0e88d2177d8fddcc6726ca9c0e9d` | non_address_book | unknown | unknown | unverified | n/a | `0xee34dcaf2f48f3158ef0be8d0a2d37078cc9729b` |
| unverified unclassified | UnnamedContract<br>`0x2e259b03083678dc14a691824ae23429ea40e0b0` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x2e648e88d13694c2b8f0de909f66342096282561` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x2e95319eb7c9051225f1c23f4c8f211b3be91b68` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x2f50d538606fa9edd2b11e2446beb18c9d5846bb` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x328d15f6b5eba1c30cde1a5f1f5a9e35b07f5424` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x32c85e56a82d66fa3c13e7df900682d63fcbaf89` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x3364a8e0ce0c05cf333531fae764f06b98902718` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x36b8a09751085d1a669fda1bf08d17e61ad490c9` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x36c8dd8328bfd5c6e8544f11b652c2dd5f5c95fd` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x36f1bfa4eec9a89ea897e9e8b44462471106c10d` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x37ab5e12d9bef0daa4399eae9cac62c6ba9e904b` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x38dd5226989756a2414fc9bcf669a8fd9ba1e35d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x38f9e648383f2b28ca5afe45be2e8838e96941ff` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x3a6d6ea6014da52561bbe889a683bd86d1413ba3` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x3b2a812c13ab8affb23cb6dc2aa87f2bd8a0a7e8` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x3c09b440f9e46c0e4a665539aeca80fcaa92c36e` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x3d0c1626fa8f406459163cd31368afdcf3442cbb` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x3d0e263ec34fdb9a0be2c437cc2bdb1b30db539b` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x3dc6844d6c205ecc1b215dfb02748cb01bab117a` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x3ddb21eff50640af57bcea41374001aff245bf28` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x3e6e9efb0a677a24f47093a22044dc5451a028cf` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x3eee9c3de463a518c528fd8cf22d2f8222dddca3` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x3f129162087dbdf50f28246610e085cbf3a04012` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x403d5dacef8d38126d9d8960d52f62ded5fa6b4c` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x40d6992cbd03e0dc1c2de9606d29cb245e737a5d` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x41df5d28c7e801c4df0ab33421e2ed6ce52d2567` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x41e3d4b3a79e464f65fffe18aa063de983ef97de` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x45994d68b77b37da4ce0a063547e4a733bc551a7` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x464cca5c9b5bdc19c3ccd2020afaf4712bb8081c` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x46ac83d74091dd54b503d89fa92b5c788bcd3886` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x4737bf05feea146fbf6fb53c12bfb5b1334275d0` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x4832f2e18251a5a73f06c20d3e8c411f7502f22f` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x4833051511f34d32d3432857df2cd62e864f0a78` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x485bb413c9b480345f96d6052475fd68e41628db` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x498a6cc92c5a3709c46ca4a0219c36434da153b2` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x4a0cb29bed18a9fdcd296ef1bbf0a9e908452b94` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x4a5020dc88541c4e0ed19fd7e1da2f6722012c56` | non_address_book | unknown | unknown | unverified | n/a | `0x78655080b65f42e2cee5fa5673689cc44d4e1cfc` |
| unverified unclassified | UnnamedContract<br>`0x4b30b16917d06a4550ae71f227ba078bf414787e` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x4b37bc487a0e0bbb044378765c014fd51f1bf9c6` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x4d9460e5c958f46a1fe129954a069a37972f16ea` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x4e2bfe3430d6d9a9ec897de50985715d324674ee` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x4ec206b92e75f20b308893ee4a986faf2adb9d69` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x5132f4f3d8a16797816190e2dd7cb06499b7ae87` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x52316f271ce49681f8dde01ae6c76010692b4509` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x531f3be462f10386d01fbed7fad1d20a61ce7874` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x53b5f276a4b5a842b162b204f13c286a5c16c8b6` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x54624ba8cde15648bb1e29c27b99299644c146d5` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x553845f9c44c43224620055eca64c6cc79f5ddfd` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x55b7b8f50e1d45d34981c2f251606e484a3f97fe` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x575ccd8e2d300e2377b43478339e364000318e2c` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x596d32f9b7c1f2e73f5071c66b5e336e27d00da4` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x59898541cc8b454e22f81ad21dfa3f51c8a6ec66` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x5cb046747ff4ac1fce3c491d9896665b72eacd1b` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x5d5a74b607c35b6d8e3eaf788c236350a8022f24` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x5f325436d79a3c7c466b5f111ce087884259a568` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x628f645a5a6d36fde852b906ef18d38a128ed7d1` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x6335c32abc3a60688a80571399ece6f5691c0e26` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x63ae536fec0b57bdeb1fd6a893191b4239f61bff` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x64e3c23bfc40722d3b649844055f1d51c1ac041d` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x656acfd86be535353f0a08a327368ccf7304e819` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x65f2ca02e22e3635fdec45b5360a4bb6832625c2` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x66f48f51c5f057581f783fb56a13edf6521f3e27` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x676c977434b2cd32498bef4bc112371b1988cd8f` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x679fcb9b33fc4ae10ff4f96caef49c1ae3f8fa67` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x68de1decce949cca4c3dcb32388a677e5a7da8bc` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x68fa887a758be6ee48fb2a8224f557752f4012ea` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x69fb7c45726cfe2badee8317005d3f94be838840` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x6aad0bcfbd91963cf2c8fb042091fd411fb05b3c` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x6c5cd3ad7a16ae207d221908e6b997d9b0dcd7b0` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x6ce6267fc45abc6051acee92bf2cc63dcc860a95` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x6d2b09bf82c976dbcb4eef21ba051467d3f86e96` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x6e8f6d1da6232d5e40b0b8758a0145d6c5123eb7` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x6ee6b3524353739191ec12d573bd6c429a23632d` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x6f112a94dbfe75ad78686d0768251139481446a0` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x705350c4bcd35c9441419ddd5d2f097d7a55410f` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x717e67692908f4002915eb5e40e0503d333059f3` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x72507949f40eb230bac7a12c9484f0c21b919b18` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x732b4d30d7140268cfc651efba81ef95b342d6d1` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x73aa6241a4e90c94070c47fef78bd3b094739dd9` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x75b1b104aaf8c60a60ddb0276356018498e68d51` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x75bc09f72db1663ed35925b89de2b5212b9b6cb3` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x7677bf119654d1fbcb46cb9014949bf16180b6ae` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x772c34049d8417eef82b546d0e42a45f356bdd2a` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x7870fc5dba3251295077970b6e1425da62a8cdf9` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x78e899e576c3565c3219dbc9ea5042a9dbed36d3` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x79b152da4ad8fb774700639bed68a965b0440644` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x79cdfd7bc46d577b95ed92bcdc8ababa1844af0c` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x79e83695e63adf8ae749b3b9b9f78af37fde1ed6` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x7a7fc0157f070da05db78101b95f42c5ad337037` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x7b29b5f2374812e4045173e0bc2cf15bcd57bac4` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x7c7cd62a9ab6ae50d21b9cad6dae15824bf9a86a` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x7ca5b0a2910b33e9759dc7ddb0413949071d7575` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0x7cc4d3caaf2f8d0051f6274fa88bce4f7299c08e` | non_address_book | unknown | unknown | unverified | n/a | `0xee34dcaf2f48f3158ef0be8d0a2d37078cc9729b` |
| unverified unclassified | UnnamedContract<br>`0x7d26ae0838c4e15a87e9d3b26b03a0256c7554d8` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x7dd04cbae57eb4e1155685792742b2b5954e3a61` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x7e277614644409a69ea70df5cfcb114e4a51676d` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x7e9b1672616ff6d6629ef2879419aae79a9018d2` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x7eaf99d4599c74ec4d3fe28f1918dec137612521` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x7f416846d83aa953b4d4d951d5a25af94999b013` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x7fbf5c9af42a6d146dcc18762f515692cd5f853b` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x7fe93e1f4ea4233bb2f4f921c109fb24a4c029d6` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x80d6c1d4515e0fa811bccc3ab225c89e5348c582` | non_address_book | unknown | unknown | unverified | n/a | `0xb00ab6203ebaae6b1debc411eda8f95fd17e74c5` |
| unverified unclassified | UnnamedContract<br>`0x819bb9964b6ebf52361f1ae42cf4831b921510f9` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x8371e04b9ba4465bd5086ceecf9446bb62850c5e` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x83a73b0c427dead5aa5f96e15c430fb766328510` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x8620f95606c383b7a83b43ee7a9ad4638e96e962` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x864106c97520134f713a715a0f7a4adf6ed20a4d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x870f3d5100ea58be65021880195f20a87ad52e9b` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x8793c0b5edb1fea27b1aac3f6fcbabd31b5a4ee7` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x881e59d120991f910ae0cccad63ea4b8f008dff6` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x89aef982de66fe6df58ed0251e0841ccb2da6e4a` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x89afa608488592cef2f337f36eaf4cbfb05d9289` | non_address_book | unknown | unknown | unverified | n/a | `0xb00ab6203ebaae6b1debc411eda8f95fd17e74c5` |
| unverified unclassified | UnnamedContract<br>`0x8a30a5b340055742303b9ab6a62a4233182084bb` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x8bf121c1cba7096d505e9726abae34414e0e0a36` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x8c195f8889e4222e85efa9972bb0fee89b54159a` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x8cfbd5098d778f919574f85e3ede3e4bd41d0229` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x8d091c549a37b6cb6de092f0ca2f2df25e46dec6` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x8d5cdcf159973689652fa2a3ebd48f09da713927` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x8ed76e942f4ab16f6fb971d2070acc18ba1625d4` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x8fef645719b53caa163cb937d1ed2970ddabcb14` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x90e2c586f0fa91ca8e47148509a91f46a578e7cc` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x91b417bae2f17fbace1c0130c41f83fed42707bb` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x91cc74cd9336108519860a2b2bdcb71e93e121b0` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x921fd42f147b26b51aa3c7fa3f2e2ce7704c2858` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x92e130d5ed0f14199edfa050071116ca60e99aa5` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x93093854d15c2f329d46954e6151db7d0895056a` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x939d2ab1c406d400c63bfe86d11033dddd226070` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0x93cbc94b027894c0dfe6a250003d1380f765df31` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x946a8d5fb1f12eef62a0d137abfa73f8563955be` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x95668f98017d3b40d50c38d376fd5f0a7dae36d3` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x96ad11d860772a3ffd4fa2a9f9a112a899b4c2dd` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0x96e89b021e4d72b680bb0400ff504eb5f4a24327` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x973f31e96f4920f84e5441a5553c4e708810834f` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x980cb2cbeb59ca1fcd52be5e51770133abf0dee4` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x9817a71ca8e309d654ee7e1999577bce6e6fd9ac` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x99cd145fc96897726bd71cb6b053925b2c19e2ec` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x9b13ee7c26ef26062e08a2d6d69d3d0e5ea44ff4` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x9cbcb549cd18eedbbe83e6ea361609c96f50ed38` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x9cbd3e8beb7f11e93b0559a1b2543e974630a745` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0x9d09d9353bd7d76d4bf116a83d54a3f81f74df1d` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0x9d51599a6b10f562619d8ef2efdca1b68ae80d03` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0x9dc7c23c569331f8fc74e96202cfd2959a91467b` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0xa219008f38a698cc5df6074f0f147a5eab2a2ebe` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0xa2c402120b747b38e683791bb735e42e5583c404` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0xa342f5d851e866e18ff98f351f2c6637f4478db5` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0xa4428439ec214cc68240552ec93298d1da391114` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0xa4e177abead6758567ef78ffc150741187838cac` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0xa568c229bb963a172153ee178334a46db3d0952b` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0xa5d562c1f5dc561db10796f42b7f6933c5045152` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0xa7f26e9aeeea4fe16d9c4a6a0464af8258f437bb` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0xa8d40402883c8086d9edb5e367cbbe09101f1592` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0xa90996896660decc6e997655e065b23788857849` | non_address_book | unknown | unknown | unverified | n/a | `0xc4ad0ef33a0a4dda3461c479ccb6c36d1e4b7be4` |
| unverified unclassified | UnnamedContract<br>`0xa98242820ebf3a405d265ccd22a4ea8f64afb281` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0xaa4a294ac654553c28800c525c7b18954478ce80` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0xab68b6213b091de92680ec57e879a20bbf12afda` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0xac5d8bcd13da463bea96c75f9085c4e40037f790` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0xacfaaa9da11e66a8cc8af8e3d844673968fff63f` | non_address_book | unknown | unknown | unverified | n/a | `0xe8bc44ae4ba6eddb88c8c087fd9b479dff729850` |
| unverified unclassified | UnnamedContract<br>`0xad0f262e569c84f39c95afaa20f79cf845e5e96b` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0xae76daa689265999f7eaae259ae9cfd4f5095aab` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |
| unverified unclassified | UnnamedContract<br>`0xaeb94e6c052e93ac7f7914e655a81fbe39628fce` | non_address_book | unknown | unknown | unverified | n/a | `0xaed9fdc9681d61edb5f8b8e421f5cee8d7f4b04f` |
| unverified unclassified | UnnamedContract<br>`0xaf0512240806dc9e57315fe22bb7820e6d905580` | non_address_book | unknown | unknown | unverified | n/a | `0x301df37d653b281af83a1ddf4464ef21a622ec83` |
| unverified unclassified | UnnamedContract<br>`0xaf93fe4b2da55a723a1bf91ab67f9a09ea1bced2` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0xb11822c35a5ffda4b569e93173cb1fa865d6a666` | non_address_book | unknown | unknown | unverified | n/a | `0x18dd4e0eb8699ea4fee238de41ecfb95e32272f8` |
| unverified unclassified | UnnamedContract<br>`0xb1cdf8a789b3205d4a6b1bb7786495beb19c0f92` | non_address_book | unknown | unknown | unverified | n/a | `0xae4d2f063b6e75921938445c8ba78e45d268c783` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bug bounty](https://immunefi.com/bug-bounty/hashflow/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20495] Bug bounty — no match: The document is a bug bounty program description, not an audit report. No contracts are listed in scope; only website/app assets are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 300 |
| upstream | 12 |
| standard_library | 17 |
| needs_review | 376 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
