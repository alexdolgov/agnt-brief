# Agentic Audit Brief: Hashflow

## Project Overview

- Project: Hashflow (`hashflow`)
- Website: [https://www.hashflow.com](https://www.hashflow.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.314Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, avalanche, bsc, ethereum, optimism, polygon
- Contract surface: 329 unique implementations (329 raw deployments)
- DeFi Llama TVL: $559,170.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 319 project-authored contract(s) across 5 chain(s); 94 ERC20 tokens, 9 ERC721 NFTs, 4 ERC1155 multi-tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 55 common project-authored base contract(s) (baseupgradeabilityproxy, proxy, erc20detailed). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Stake DAO** (`stake-dao`) in the APROracle, APRWithPoolOracle, DSSLeverage, Governance, IEarnAPR, IEarnAPRWithPool, … subsystem.
5 audits inherited from `stake-dao`, scoped to that subsystem.

Total inherited audits: 5. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 329; live-surface contracts included: 329 (325 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 26/297 (8.8%)
- Deployed-live implementations: 325 of 329 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 26/329
- Verified + Unaudited implementations: 303
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 329
- Raw deployments: 329
- Audits discovered: 6 (1 direct, 5 inherited from forked code)
- Scoreable audits (matched contracts): 5
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/hashflow/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 26 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 26 | 7.9% | 2025-09 |
| Pashov Audit Group | Tier 2 | 26 | 7.9% | 2025-08 |
| Trust Security | Tier 2 | 26 | 7.9% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| APROracle | unknown | ethereum | n/a | [`0x4ddc33689380e6b56783a5442999b75a5b919361`](./contracts/ethereum-1/0x4ddc33689380e6b56783a5442999b75a5b919361/) | ✅ Audited |
| APRWithPoolOracle | unknown | ethereum | n/a | [`0x044dad5c0da888c93d8244261b67bd431b47ca14`](./contracts/ethereum-1/0x044dad5c0da888c93d8244261b67bd431b47ca14/) | ✅ Audited |
| DSSLeverage | unknown | ethereum | n/a | [`0x050cd4835b08babfc6ff92187971b3253e92640e`](./contracts/ethereum-1/0x050cd4835b08babfc6ff92187971b3253e92640e/) | ✅ Audited |
| Governance | unknown | ethereum | n/a | [`0xc7212fc959bbb606f97036e8ac3da7aabf0cb735`](./contracts/ethereum-1/0xc7212fc959bbb606f97036e8ac3da7aabf0cb735/) | ✅ Audited |
| iCollateral | unknown | ethereum | n/a | [`0x78705df56477ff301b71b176a2bd3151b9f4e025`](./contracts/ethereum-1/0x78705df56477ff301b71b176a2bd3151b9f4e025/) | ✅ Audited |
| iCollateralVaultProxy | unknown | ethereum | n/a | [`0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1`](./contracts/ethereum-1/0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1/) | ✅ Audited |
| iDAI | unknown | ethereum | n/a | [`0x6c5f9d1d115862ca99253e5738590f6d31ca35a0`](./contracts/ethereum-1/0x6c5f9d1d115862ca99253e5738590f6d31ca35a0/) | ✅ Audited |
| IEarnAPR | unknown | ethereum | n/a | [`0x9cad8ab10daa9af1a9d2b878541f41b697268eec`](./contracts/ethereum-1/0x9cad8ab10daa9af1a9d2b878541f41b697268eec/) | ✅ Audited |
| IEarnAPRWithPool | unknown | ethereum | n/a | [`0x029feae8d773a3fe25f1a3e35a526bb54744c9bb`](./contracts/ethereum-1/0x029feae8d773a3fe25f1a3e35a526bb54744c9bb/) | ✅ Audited |
| IEarnManager | unknown | ethereum | n/a | [`0x318135fbd0b40d48fcef431ccdf6c7926450edfb`](./contracts/ethereum-1/0x318135fbd0b40d48fcef431ccdf6c7926450edfb/) | ✅ Audited |
| iTrade | unknown | ethereum | n/a | [`0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e`](./contracts/ethereum-1/0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e/) | ✅ Audited |
| Keep3r | unknown | ethereum | n/a | [`0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1`](./contracts/ethereum-1/0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1/) | ✅ Audited |
| Keep3rV1 | unknown | ethereum | n/a | [`0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ✅ Audited |
| Keep3rV1Library | unknown | ethereum | n/a | [`0xdaef201ba1ba0354d71848893dd6d56905924c93`](./contracts/ethereum-1/0xdaef201ba1ba0354d71848893dd6d56905924c93/) | ✅ Audited |
| Keep3rV1Oracle | unknown | ethereum | n/a | [`0x73353801921417f465377c8d898c6f4c0270282c`](./contracts/ethereum-1/0x73353801921417f465377c8d898c6f4c0270282c/) | ✅ Audited |
| Keep3rV1Volatility | unknown | ethereum | n/a | [`0x173ed6531818456f29fc74011a3b1fb4b6132dc9`](./contracts/ethereum-1/0x173ed6531818456f29fc74011a3b1fb4b6132dc9/) | ✅ Audited |
| StableCreditHelper | unknown | ethereum | n/a | [`0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb`](./contracts/ethereum-1/0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb/) | ✅ Audited |
| yBUSD | unknown | ethereum | n/a | [`0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae`](./contracts/ethereum-1/0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae/) | ✅ Audited |
| yCollateralVaultProxy | unknown | ethereum | n/a | [`0x24dd028bd027511482e701d08bae002cd6e82a5d`](./contracts/ethereum-1/0x24dd028bd027511482e701d08bae002cd6e82a5d/) | ✅ Audited |
| yDAI | unknown | ethereum | n/a | [`0x16de59092dae5ccf4a1e6439d611fd0653f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/) | ✅ Audited |
| yDelegatedVault | unknown | ethereum | n/a | [`0x2088ba482f2097eb47896a2ec5f3925637b73d99`](./contracts/ethereum-1/0x2088ba482f2097eb47896a2ec5f3925637b73d99/) | ✅ Audited |
| ySUSD | unknown | ethereum | n/a | [`0x36324b8168f960a12a8fd01406c9c78143d41380`](./contracts/ethereum-1/0x36324b8168f960a12a8fd01406c9c78143d41380/) | ✅ Audited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052500105205d34daf004eab301916da8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ✅ Audited |
| yUSDC | unknown | ethereum | n/a | [`0x26ea744e5b887e5205727f55dfbe8685e3b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/) | ✅ Audited |
| yUSDT | unknown | ethereum | n/a | [`0x3118eec34240620ffd044dfa3aaa0a0f78b9aade`](./contracts/ethereum-1/0x3118eec34240620ffd044dfa3aaa0a0f78b9aade/) | ✅ Audited |
| yWBTC | unknown | ethereum | n/a | [`0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (303)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveGenesisExecutor | unknown | ethereum | n/a | [`0x797ae69562588dd893567ba22dfcf8e842686b53`](./contracts/ethereum-1/0x797ae69562588dd893567ba22dfcf8e842686b53/) | ⚠️ Unaudited |
| AaveGenesisProposalPayload | unknown | ethereum | n/a | [`0x36ec8f61d077909b2166f78c488f2525bca62e94`](./contracts/ethereum-1/0x36ec8f61d077909b2166f78c488f2525bca62e94/) | ⚠️ Unaudited |
| AaveIncentivesVault | unknown | ethereum | n/a | [`0x238fcb066a2e4662078836237a62b59664d6f76d`](./contracts/ethereum-1/0x238fcb066a2e4662078836237a62b59664d6f76d/) | ⚠️ Unaudited |
| AavePropositionPower | unknown | ethereum | n/a | [`0x72bbcfc20d355fc3e8ac4ce8fcaf63874f746631`](./contracts/ethereum-1/0x72bbcfc20d355fc3e8ac4ce8fcaf63874f746631/) | ⚠️ Unaudited |
| AaveProtoGovernance | unknown | ethereum | n/a | [`0xda8ad436e1dfe962091d86a341e957c6a5168a9d`](./contracts/ethereum-1/0xda8ad436e1dfe962091d86a341e957c6a5168a9d/) | ⚠️ Unaudited |
| AaveStrategy | unknown | ethereum | n/a | [`0x051caefa90adf261b8e8200920c83778b7b176b6`](./contracts/ethereum-1/0x051caefa90adf261b8e8200920c83778b7b176b6/) | ⚠️ Unaudited |
| AaveVoteStrategyToken | unknown | ethereum | n/a | [`0xa5e83c1a6e56f27f7764e5c5d99a9b8786e3a391`](./contracts/ethereum-1/0xa5e83c1a6e56f27f7764e5c5d99a9b8786e3a391/) | ⚠️ Unaudited |
| Address | unknown | ethereum | n/a | [`0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab`](./contracts/ethereum-1/0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab/) | ⚠️ Unaudited |
| AHv2Repayment | unknown | ethereum | n/a | [`0x141e0541d87c6cbdbf2a6a8104248b4b922f629e`](./contracts/ethereum-1/0x141e0541d87c6cbdbf2a6a8104248b4b922f629e/) | ⚠️ Unaudited |
| AirdropGrapesToken | unknown | ethereum | n/a | [`0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f`](./contracts/ethereum-1/0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f/) | ⚠️ Unaudited |
| ArbFiatToken | unknown | arbitrum | n/a | [`0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8`](./contracts/arbitrum-42161/0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8/) | ⚠️ Unaudited |
| ArbitrumExtension | unknown | arbitrum | n/a | [`0xba4eee20f434bc3908a0b18da496348657133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/) | ⚠️ Unaudited |
| Asset | unknown | ethereum | n/a | [`0x067a1eb5e383ed24b66d72aaf80d8d7db3d299a8`](./contracts/ethereum-1/0x067a1eb5e383ed24b66d72aaf80d8d7db3d299a8/) | ⚠️ Unaudited |
| AssetGiveaway | unknown | ethereum | n/a | [`0x05831537ff42ac82ddf89790f81cb5c4664be9c1`](./contracts/ethereum-1/0x05831537ff42ac82ddf89790f81cb5c4664be9c1/) | ⚠️ Unaudited |
| AssetSignedAuction | unknown | ethereum | n/a | [`0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a`](./contracts/ethereum-1/0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a/) | ⚠️ Unaudited |
| AssetVotingWeightProvider | unknown | ethereum | n/a | [`0x5ac493b8c2cef1f02f117b9ba2797e7da95574aa`](./contracts/ethereum-1/0x5ac493b8c2cef1f02f117b9ba2797e7da95574aa/) | ⚠️ Unaudited |
| Astgik | unknown | ethereum | n/a | [`0x4d224452801aced8b2f0aebe155379bb5d594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| BalanceChecker | unknown | bsc | n/a | [`0x91688f449478a47256990e4c609e000b5810b20a`](./contracts/bsc-56/0x91688f449478a47256990e4c609e000b5810b20a/) | ⚠️ Unaudited |
| BeaconProxy | unknown | arbitrum | n/a | [`0xae6aab43c4f3e0cea4ab83752c278f8debaba689`](./contracts/arbitrum-42161/0xae6aab43c4f3e0cea4ab83752c278f8debaba689/) | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | arbitrum | n/a | [`0x3fe38087a94903a9d946fa1915e1772fe611000f`](./contracts/arbitrum-42161/0x3fe38087a94903a9d946fa1915e1772fe611000f/) | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | bsc | n/a | [`0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | bsc | n/a | [`0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3`](./contracts/bsc-56/0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3/) | ⚠️ Unaudited |
| BEP20Cardano | unknown | bsc | n/a | [`0x3ee2200efb3400fabb9aacf31297cbdd1d435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | ⚠️ Unaudited |
| BEP20Cosmos | unknown | bsc | n/a | [`0x0eb3a705fc54725037cc9e008bdede697f62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | ⚠️ Unaudited |
| BEP20DAI | unknown | bsc | n/a | [`0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | ⚠️ Unaudited |
| BEP20EOS | unknown | bsc | n/a | [`0x56b6fb708fc5732dec1afc8d8556423a2edccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | ⚠️ Unaudited |
| BEP20Ethereum | unknown | bsc | n/a | [`0x2170ed0880ac9a755fd29b2688956bd959f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20Ontology | unknown | bsc | n/a | [`0xfd7b3a77848f1c2d67e05e54d78d174a0c850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | ⚠️ Unaudited |
| BEP20Polkadot | unknown | bsc | n/a | [`0x7083609fce4d1d8dc0c979aab8c869ea2c873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | ⚠️ Unaudited |
| BEP20Tezos | unknown | bsc | n/a | [`0x16939ef78684453bfdfb47825f8a5f714f12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | ⚠️ Unaudited |
| BEP20Token | unknown | bsc | n/a | [`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | bsc | n/a | [`0x1fa4a73a3f0133f0025378af00236f3abdee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/) | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | bsc | n/a | [`0x250632378e573c6be1ac2f97fcdf00515d0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | ⚠️ Unaudited |
| BEP20USDT | unknown | bsc | n/a | [`0x55d398326f99059ff775485246999027b3197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BEP20XRP | unknown | bsc | n/a | [`0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | ⚠️ Unaudited |
| BEP20YFII | unknown | bsc | n/a | [`0x7f70642d88cf1c4a3a7abb072b53b929b653eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | ⚠️ Unaudited |
| BEP20Zcash | unknown | bsc | n/a | [`0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | ethereum | n/a | [`0x8b4fd02326db6ebe095e0707e2973c9e045da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | ⚠️ Unaudited |
| BridgeToken | unknown | avalanche | n/a | [`0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | ⚠️ Unaudited |
| CatalystMinter | unknown | ethereum | n/a | [`0x4d103f2a660114f7fa0e3d78f13acbcd13672e57`](./contracts/ethereum-1/0x4d103f2a660114f7fa0e3d78f13acbcd13672e57/) | ⚠️ Unaudited |
| CatalystRegistry | unknown | ethereum | n/a | [`0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7`](./contracts/ethereum-1/0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7/) | ⚠️ Unaudited |
| ChainlinkSourcesRegistry | unknown | ethereum | n/a | [`0x9e194d49b7ed0123f46b07d7e10013a335e0ed11`](./contracts/ethereum-1/0x9e194d49b7ed0123f46b07d7e10013a335e0ed11/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | polygon | n/a | [`0xafeea1de9d660d3cb53031cfe1a58de40b171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x6ebeac13f6403d19c95b6b75008b12fd21a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | polygon | n/a | [`0xd4888fab8bd39a663b63161f5ee1eae31a25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| CiaraDAO | unknown | ethereum | n/a | [`0x629c1738efdf24958f7911339010b2a1ec0487dd`](./contracts/ethereum-1/0x629c1738efdf24958f7911339010b2a1ec0487dd/) | ⚠️ Unaudited |
| Claimer | unknown | ethereum | n/a | [`0x1a9a4d919943340b7e855e310489e16155f4ed29`](./contracts/ethereum-1/0x1a9a4d919943340b7e855e310489e16155f4ed29/) | ⚠️ Unaudited |
| ClaimsProxy | unknown | ethereum | n/a | [`0x0fd829c3365a225fb9226e75c97c3a114bd3199e`](./contracts/ethereum-1/0x0fd829c3365a225fb9226e75c97c3a114bd3199e/) | ⚠️ Unaudited |
| CollateralMaximizer | unknown | ethereum | n/a | [`0x494ba8753a253bb314f1e8324c36f804d31b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/) | ⚠️ Unaudited |
| CommonMinter | unknown | ethereum | n/a | [`0x27b4c402ff602fac8248a895d325d45bf740643c`](./contracts/ethereum-1/0x27b4c402ff602fac8248a895d325d45bf740643c/) | ⚠️ Unaudited |
| CompensationEscrow | unknown | ethereum | n/a | [`0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | ⚠️ Unaudited |
| COMPfarming | unknown | ethereum | n/a | [`0x1532eb6c6d134903a0dedfc840128007b36aa870`](./contracts/ethereum-1/0x1532eb6c6d134903a0dedfc840128007b36aa870/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8`](./contracts/ethereum-1/0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8/) | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | ethereum | n/a | [`0x98158e133f7f56a574fc806e579e1355048039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ⚠️ Unaudited |
| CRON | unknown | ethereum | n/a | [`0x8e14d03061705eb48fda6bc6e244c5eabe5d322e`](./contracts/ethereum-1/0x8e14d03061705eb48fda6bc6e244c5eabe5d322e/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c1103d765f62a0d909499d7b615c382cdb072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b175474e89094c44da98b954eedeac495271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DelegationProxy | unknown | ethereum | n/a | [`0x40730f34668afcb3884f050cbc3d376a444bbe44`](./contracts/ethereum-1/0x40730f34668afcb3884f050cbc3d376a444bbe44/) | ⚠️ Unaudited |
| DForce | unknown | arbitrum | n/a | [`0x5d8063df0319457f777a353efef0dc0189a15ba1`](./contracts/arbitrum-42161/0x5d8063df0319457f777a353efef0dc0189a15ba1/) | ⚠️ Unaudited |
| DistributeYFI | unknown | ethereum | n/a | [`0x812ac0eaeb422efa44eac670aa2246a25ecfa017`](./contracts/ethereum-1/0x812ac0eaeb422efa44eac670aa2246a25ecfa017/) | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | ethereum | n/a | [`0x4b1b08313a290adf97d36a6f41f42bb19e368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84d6ade1e7fffee039a35ef5f19f13057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca05e174a523709e556080e227f734a8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083069ed92da4c5291dba52d8912abfcc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| DydxGovernor | unknown | ethereum | n/a | [`0x0cb3b545adbe9dbc601eda8ff36f1c866d0ba812`](./contracts/ethereum-1/0x0cb3b545adbe9dbc601eda8ff36f1c866d0ba812/) | ⚠️ Unaudited |
| DydxToken | unknown | ethereum | n/a | [`0x92d6c1e31e14520e676a687f0a93788b716beff5`](./contracts/ethereum-1/0x92d6c1e31e14520e676a687f0a93788b716beff5/) | ⚠️ Unaudited |
| DynamicSwap | unknown | ethereum | n/a | [`0x035fb9efa7ed40a688044af22282fb19b64b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | [`0x4ccea6503e8e5525d3de0c60855b6332af559ad4`](./contracts/ethereum-1/0x4ccea6503e8e5525d3de0c60855b6332af559ad4/) | ⚠️ Unaudited |
| ERC20GroupCatalyst | unknown | ethereum | n/a | [`0x2fc246149b4b8d7bcef6188a10af1791380227f1`](./contracts/ethereum-1/0x2fc246149b4b8d7bcef6188a10af1791380227f1/) | ⚠️ Unaudited |
| ERC20GroupGem | unknown | ethereum | n/a | [`0x8ff2611da386de427fc96a8073963619c5851ba5`](./contracts/ethereum-1/0x8ff2611da386de427fc96a8073963619c5851ba5/) | ⚠️ Unaudited |
| ERC20SubToken | unknown | ethereum | n/a | [`0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe`](./contracts/ethereum-1/0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe/) | ⚠️ Unaudited |
| EstateSale | unknown | ethereum | n/a | [`0xe372ed8d188517ef4d4bc464c0c068d2002e2903`](./contracts/ethereum-1/0xe372ed8d188517ef4d4bc464c0c068d2002e2903/) | ⚠️ Unaudited |
| EstateSaleWithFee | unknown | ethereum | n/a | [`0x089a55baf7052321cbce4bdbf3be568955648d9d`](./contracts/ethereum-1/0x089a55baf7052321cbce4bdbf3be568955648d9d/) | ⚠️ Unaudited |
| Executor | unknown | ethereum | n/a | [`0x64c7d40c07efabec2aafdc243bf59eaf2195c6dc`](./contracts/ethereum-1/0x64c7d40c07efabec2aafdc243bf59eaf2195c6dc/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | ethereum | n/a | [`0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | ⚠️ Unaudited |
| Faketroller | unknown | ethereum | n/a | [`0x6257e36efc9c7c6057c119ea2af40907159fef3f`](./contracts/ethereum-1/0x6257e36efc9c7c6057c119ea2af40907159fef3f/) | ⚠️ Unaudited |
| FantomToken | unknown | ethereum | n/a | [`0x4e15361fd6b4bb609fa63c81a2be19d873717870`](./contracts/ethereum-1/0x4e15361fd6b4bb609fa63c81a2be19d873717870/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0x2c537e5624e4af88a7ae4060c022609376c8d0eb`](./contracts/ethereum-1/0x2c537e5624e4af88a7ae4060c022609376c8d0eb/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | ethereum | n/a | [`0x1a9be8a692de04bcb7ce5cddd03afca97d732c62`](./contracts/ethereum-1/0x1a9be8a692de04bcb7ce5cddd03afca97d732c62/) | ⚠️ Unaudited |
| fKRW | unknown | ethereum | n/a | [`0x5c08b51ddbe8ba76e07be79975906c39aef2893a`](./contracts/ethereum-1/0x5c08b51ddbe8ba76e07be79975906c39aef2893a/) | ⚠️ Unaudited |
| fUSD | unknown | ethereum | n/a | [`0x3d7f0933ac403773d219cf0519de8082946dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GAL | unknown | ethereum | n/a | [`0x5faa989af96af85384b8a938c2ede4a7378d9875`](./contracts/ethereum-1/0x5faa989af96af85384b8a938c2ede4a7378d9875/) | ⚠️ Unaudited |
| GalxePassport | unknown | ethereum | n/a | [`0xfa32ea3769b0fec9d84ebe31a823b70e485053b1`](./contracts/ethereum-1/0xfa32ea3769b0fec9d84ebe31a823b70e485053b1/) | ⚠️ Unaudited |
| GaugeProxy | unknown | ethereum | n/a | [`0x823fd217dcc5ce36ca6bc1489586ecb42b61081c`](./contracts/ethereum-1/0x823fd217dcc5ce36ca6bc1489586ecb42b61081c/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e935209d79706b5866eb42137a3491d845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e44a9c70a67d5b79d95795aba299083c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| GenesisBouncer | unknown | ethereum | n/a | [`0x48dee19c0e44c147934702c12dc98963ca831009`](./contracts/ethereum-1/0x48dee19c0e44c147934702c12dc98963ca831009/) | ⚠️ Unaudited |
| GizerItems | unknown | ethereum | n/a | [`0x6c0f03411ab250f0a080a4420190b821affd4602`](./contracts/ethereum-1/0x6c0f03411ab250f0a080a4420190b821affd4602/) | ⚠️ Unaudited |
| GizerToken | unknown | ethereum | n/a | [`0x5db2d4a2e6d06f9afe906fc33036f77ebe87b59b`](./contracts/ethereum-1/0x5db2d4a2e6d06f9afe906fc33036f77ebe87b59b/) | ⚠️ Unaudited |
| GovernanceParamsProvider | unknown | ethereum | n/a | [`0xf3b2c28c7245c49ea5e6c6db98026f180b443a06`](./contracts/ethereum-1/0xf3b2c28c7245c49ea5e6c6db98026f180b443a06/) | ⚠️ Unaudited |
| GovernanceStrategy | unknown | ethereum | n/a | [`0x90dfd35f4a0bb2d30cdf66508085e33c353475d9`](./contracts/ethereum-1/0x90dfd35f4a0bb2d30cdf66508085e33c353475d9/) | ⚠️ Unaudited |
| Governor | unknown | ethereum | n/a | [`0x8a5ff78bfe0de04f5dc1b57d2e1095be697be76e`](./contracts/ethereum-1/0x8a5ff78bfe0de04f5dc1b57d2e1095be697be76e/) | ⚠️ Unaudited |
| GXY | unknown | ethereum | n/a | [`0x159e309b2214b86fd8c29c461d46947685962ac9`](./contracts/ethereum-1/0x159e309b2214b86fd8c29c461d46947685962ac9/) | ⚠️ Unaudited |
| HegicERCPool | unknown | ethereum | n/a | [`0x7224f2e96061a1e3f51d152e32ccfab79ca1345a`](./contracts/ethereum-1/0x7224f2e96061a1e3f51d152e32ccfab79ca1345a/) | ⚠️ Unaudited |
| HegicOptions | unknown | ethereum | n/a | [`0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70`](./contracts/ethereum-1/0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70/) | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | ethereum | n/a | [`0x06194062288575f35c0af45d5e7013b65e082f23`](./contracts/ethereum-1/0x06194062288575f35c0af45d5e7013b65e082f23/) | ⚠️ Unaudited |
| HFT | unknown | bsc | n/a | [`0x44ec807ce2f4a6f2737a92e985f318d035883e47`](./contracts/bsc-56/0x44ec807ce2f4a6f2737a92e985f318d035883e47/) | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | ethereum | n/a | [`0xb10e11f3e38dc35e06397689e45fa939eb3b0f69`](./contracts/ethereum-1/0xb10e11f3e38dc35e06397689e45fa939eb3b0f69/) | ⚠️ Unaudited |
| iDAIZapSwap | unknown | ethereum | n/a | [`0x260fbb4855b2a4a719097131016b573f95a867fa`](./contracts/ethereum-1/0x260fbb4855b2a4a719097131016b573f95a867fa/) | ⚠️ Unaudited |
| IdentityEvents | unknown | ethereum | n/a | [`0x8ac16c08105de55a02e2b7462b1eec6085fa4d86`](./contracts/ethereum-1/0x8ac16c08105de55a02e2b7462b1eec6085fa4d86/) | ⚠️ Unaudited |
| IEarnProvider | unknown | ethereum | n/a | [`0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4`](./contracts/ethereum-1/0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4/) | ⚠️ Unaudited |
| IEther | unknown | ethereum | n/a | [`0x75a4d0b18e98674199829ddd2a6477ea25cd25eb`](./contracts/ethereum-1/0x75a4d0b18e98674199829ddd2a6477ea25cd25eb/) | ⚠️ Unaudited |
| IndaHashToken | unknown | ethereum | n/a | [`0xb5c2ea13d2bf1968a10722dc45900c8da0f78212`](./contracts/ethereum-1/0xb5c2ea13d2bf1968a10722dc45900c8da0f78212/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x25f2226b597e8f9514b3f68f00f494cf4f286491`](./contracts/ethereum-1/0x25f2226b597e8f9514b3f68f00f494cf4f286491/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x317625234562b1526ea2fac4030ea499c5291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x3b42cd463d247aaeffb38cff5d5ee42e9ddc4430`](./contracts/ethereum-1/0x3b42cd463d247aaeffb38cff5d5ee42e9ddc4430/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x4da27a545c0c5b758a6ba100e3a049001de870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9`](./contracts/ethereum-1/0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x9c0435779f5e52cec404d957c9baa6f7d674c8ba`](./contracts/ethereum-1/0x9c0435779f5e52cec404d957c9baa6f7d674c8ba/) | ⚠️ Unaudited |
| InitializeGovernedUpgradeabilityProxy | unknown | ethereum | n/a | [`0x41a9257554c69c2187bafa6977d4953e0f2e4c10`](./contracts/ethereum-1/0x41a9257554c69c2187bafa6977d4953e0f2e4c10/) | ⚠️ Unaudited |
| insuredVault | unknown | ethereum | n/a | [`0xa53e9e63793e55c533fe98d0ed178992942863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | ⚠️ Unaudited |
| insurerVault | unknown | ethereum | n/a | [`0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | ⚠️ Unaudited |
| Keep3rHelper | unknown | ethereum | n/a | [`0xb41772890c8b1564c5015a12c0dc6f18b0af955e`](./contracts/ethereum-1/0xb41772890c8b1564c5015a12c0dc6f18b0af955e/) | ⚠️ Unaudited |
| Keep3rJob | unknown | ethereum | n/a | [`0xb68e7deb279eaa11f234dff4931458d2c002d10d`](./contracts/ethereum-1/0xb68e7deb279eaa11f234dff4931458d2c002d10d/) | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | ethereum | n/a | [`0x1530a2924805aed2385f8b91849cab7fe95a5df9`](./contracts/ethereum-1/0x1530a2924805aed2385f8b91849cab7fe95a5df9/) | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | ethereum | n/a | [`0x7396899638410094b3690f8bd2b56f07fdab620c`](./contracts/ethereum-1/0x7396899638410094b3690f8bd2b56f07fdab620c/) | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | ethereum | n/a | [`0x0a03b4f6d5314bb257540dc7702c326f97f5c080`](./contracts/ethereum-1/0x0a03b4f6d5314bb257540dc7702c326f97f5c080/) | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | ethereum | n/a | [`0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0`](./contracts/ethereum-1/0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0/) | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | ethereum | n/a | [`0x2266be1ee5d345914976fd4ce9f4be65737880cb`](./contracts/ethereum-1/0x2266be1ee5d345914976fd4ce9f4be65737880cb/) | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | ethereum | n/a | [`0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82`](./contracts/ethereum-1/0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82/) | ⚠️ Unaudited |
| KyberReserve | unknown | ethereum | n/a | [`0xc82d6f13d96511977b21bcd9d60b7fc46191daf2`](./contracts/ethereum-1/0xc82d6f13d96511977b21bcd9d60b7fc46191daf2/) | ⚠️ Unaudited |
| Land | unknown | ethereum | n/a | [`0x50f5474724e0ee42d9a4e711ccfb275809fd6d4a`](./contracts/ethereum-1/0x50f5474724e0ee42d9a4e711ccfb275809fd6d4a/) | ⚠️ Unaudited |
| LandSaleWithETHAndDAI | unknown | ethereum | n/a | [`0x47136343c616c3d6713b3ad4a223deda42839859`](./contracts/ethereum-1/0x47136343c616c3d6713b3ad4a223deda42839859/) | ⚠️ Unaudited |
| LandSaleWithReferral | unknown | ethereum | n/a | [`0x126a3437f3b76155e5e574abdc048b54f2f4adaa`](./contracts/ethereum-1/0x126a3437f3b76155e5e574abdc048b54f2f4adaa/) | ⚠️ Unaudited |
| LandWeightedSANDRewardPool | unknown | ethereum | n/a | [`0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6`](./contracts/ethereum-1/0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6/) | ⚠️ Unaudited |
| LazyHarvest | unknown | ethereum | n/a | [`0x9ea775672e4424c403f048ab08c7f56015c5d0f3`](./contracts/ethereum-1/0x9ea775672e4424c403f048ab08c7f56015c5d0f3/) | ⚠️ Unaudited |
| LendVoteStrategyToken | unknown | ethereum | n/a | [`0x0671ca7e039af2cf2d2c5e7f1aa261ae78b3ffdf`](./contracts/ethereum-1/0x0671ca7e039af2cf2d2c5e7f1aa261ae78b3ffdf/) | ⚠️ Unaudited |
| LinkToken | unknown | ethereum | n/a | [`0x13432a43f2779c9c64fe9e436c2576e5231f7abc`](./contracts/ethereum-1/0x13432a43f2779c9c64fe9e436c2576e5231f7abc/) | ⚠️ Unaudited |
| LiquidationOracle | unknown | ethereum | n/a | [`0xd82f6d42356e225bf79b870a05aac79062a3e8ce`](./contracts/ethereum-1/0xd82f6d42356e225bf79b870a05aac79062a3e8ce/) | ⚠️ Unaudited |
| LiquidityConversionRates | unknown | ethereum | n/a | [`0x9afeb4122240b58e67a55e11d55555b4ad73f4d5`](./contracts/ethereum-1/0x9afeb4122240b58e67a55e11d55555b4ad73f4d5/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x28832484e8124634a248f2bc520f26e8345a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| LiquidityStakingV1 | unknown | ethereum | n/a | [`0x5aa653a076c1dbb47cec8c1b4d152444cad91941`](./contracts/ethereum-1/0x5aa653a076c1dbb47cec8c1b4d152444cad91941/) | ⚠️ Unaudited |
| MANAToken | unknown | ethereum | n/a | [`0x0f5d2fb29fb7d3cfee444a200298f468908cc942`](./contracts/ethereum-1/0x0f5d2fb29fb7d3cfee444a200298f468908cc942/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xc2edad668740f1aa35e4d8f227fb8e17dca888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MaticToken | unknown | ethereum | n/a | [`0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0`](./contracts/ethereum-1/0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0/) | ⚠️ Unaudited |
| MaticTokenVesting | unknown | ethereum | n/a | [`0x164255531e730788cb1e68a93c81edb585419f5e`](./contracts/ethereum-1/0x164255531e730788cb1e68a93c81edb585419f5e/) | ⚠️ Unaudited |
| MaticWETH | unknown | polygon | n/a | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| Members | unknown | ethereum | n/a | [`0x3e8640574aa764763291ed733672d3a105107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x25bbb81d1cec3f26598b3b300aedc23958988800`](./contracts/ethereum-1/0x25bbb81d1cec3f26598b3b300aedc23958988800/) | ⚠️ Unaudited |
| MerkleDistributorV1 | unknown | ethereum | n/a | [`0x01d3348601968ab85b4bb028979006eac235a588`](./contracts/ethereum-1/0x01d3348601968ab85b4bb028979006eac235a588/) | ⚠️ Unaudited |
| MetaKeep3r | unknown | ethereum | n/a | [`0x93dfa873b15ad496ba8116ce6cfec52ef30a9372`](./contracts/ethereum-1/0x93dfa873b15ad496ba8116ce6cfec52ef30a9372/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0x818180acb9d300ffc023be2300addb6879d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | ethereum | n/a | [`0x003ea7f54b6dcf6cee86986edc18143a35f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | ⚠️ Unaudited |
| Minter | unknown | ethereum | n/a | [`0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b`](./contracts/ethereum-1/0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b/) | ⚠️ Unaudited |
| MinuteTimelock | unknown | ethereum | n/a | [`0x52bebd3d7f37ec4284853fd5861ae71253a7f428`](./contracts/ethereum-1/0x52bebd3d7f37ec4284853fd5861ae71253a7f428/) | ⚠️ Unaudited |
| MixOracle | unknown | ethereum | n/a | [`0x4d4f5e7a1fe57f5ceb38bfce8653effa5e584458`](./contracts/ethereum-1/0x4d4f5e7a1fe57f5ceb38bfce8653effa5e584458/) | ⚠️ Unaudited |
| MockToken | unknown | ethereum | n/a | [`0x68898604d950cc15ce524a5b8d95e4b91dd11eee`](./contracts/ethereum-1/0x68898604d950cc15ce524a5b8d95e4b91dd11eee/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a206ece672e3198086c5d21f7858ad03669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| Multicall2 | unknown | arbitrum | n/a | [`0x842ec2c7d803033edf55e478f461fc547bc54eb2`](./contracts/arbitrum-42161/0x842ec2c7d803033edf55e478f461fc547bc54eb2/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | arbitrum | n/a | [`0x4a9196b06f339ad9f3ee752c987b401f2e1e2718`](./contracts/arbitrum-42161/0x4a9196b06f339ad9f3ee752c987b401f2e1e2718/) | ⚠️ Unaudited |
| NativeMetaTransactionProcessor | unknown | ethereum | n/a | [`0xb48ce889bdfc5164c309d03b9c6126133c85f396`](./contracts/ethereum-1/0xb48ce889bdfc5164c309d03b9c6126133c85f396/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | n/a | [`0xcc80c051057b774cd75067dc48f8987c4eb97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x8d5a41e85f4ce2433beef476305d307b9205d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | ⚠️ Unaudited |
| NexusMutualCover | unknown | ethereum | n/a | [`0x93a2880f657793a1d839653c8f8cef52f3de7a28`](./contracts/ethereum-1/0x93a2880f657793a1d839653c8f8cef52f3de7a28/) | ⚠️ Unaudited |
| Normalizer | unknown | ethereum | n/a | [`0x9214a67186965fd5fe582a64a8646ff058f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/) | ⚠️ Unaudited |
| OptionsV1Library | unknown | ethereum | n/a | [`0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | ethereum | n/a | [`0x00fbd1774093e9240beb559f7a1300d291d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/) | ⚠️ Unaudited |
| OriginToken | unknown | ethereum | n/a | [`0x8207c1ffc5b6804f6024322ccf34f29c3541ae26`](./contracts/ethereum-1/0x8207c1ffc5b6804f6024322ccf34f29c3541ae26/) | ⚠️ Unaudited |
| OSMedianizer | unknown | ethereum | n/a | [`0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1`](./contracts/ethereum-1/0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1/) | ⚠️ Unaudited |
| OUSD | unknown | ethereum | n/a | [`0x1ae95dd4eeae7ed03da79856c2d44ffa3318f805`](./contracts/ethereum-1/0x1ae95dd4eeae7ed03da79856c2d44ffa3318f805/) | ⚠️ Unaudited |
| OVMFiatToken | unknown | optimism | n/a | [`0x7f5c764cbc14f9669b88837ca1490cca17c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| PriceProxy | unknown | ethereum | n/a | [`0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | ⚠️ Unaudited |
| PriorityExecutor | unknown | ethereum | n/a | [`0xa306989ba6bcacdeccf3c0614fff2b8c668e3cae`](./contracts/ethereum-1/0xa306989ba6bcacdeccf3c0614fff2b8c668e3cae/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x15774d4555fefd57c9fc8b11c8beba993eafcc13`](./contracts/ethereum-1/0x15774d4555fefd57c9fc8b11c8beba993eafcc13/) | ⚠️ Unaudited |
| R256 | unknown | ethereum | n/a | [`0x5b2d94bf0f0a4eeb7d00d67524b251ffbb91c86a`](./contracts/ethereum-1/0x5b2d94bf0f0a4eeb7d00d67524b251ffbb91c86a/) | ⚠️ Unaudited |
| R256Basic | unknown | ethereum | n/a | [`0xcb8a520f13ab264a288f7736ddf11f2fcf3246c3`](./contracts/ethereum-1/0xcb8a520f13ab264a288f7736ddf11f2fcf3246c3/) | ⚠️ Unaudited |
| RebaseHooks | unknown | ethereum | n/a | [`0x3dcd70e6a3fb474cfd7567a021864066fdef6c5c`](./contracts/ethereum-1/0x3dcd70e6a3fb474cfd7567a021864066fdef6c5c/) | ⚠️ Unaudited |
| RiskOracle | unknown | ethereum | n/a | [`0x0739311a9725779f109706b48a56763a8ae8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/) | ⚠️ Unaudited |
| RootChainManager | unknown | ethereum | n/a | [`0x4015ccad9218b109d3339b356392c6ee8438e5d0`](./contracts/ethereum-1/0x4015ccad9218b109d3339b356392c6ee8438e5d0/) | ⚠️ Unaudited |
| SafetyModuleV1 | unknown | ethereum | n/a | [`0xd249ad8fa4646c303028a8d29cf8568a38897c55`](./contracts/ethereum-1/0xd249ad8fa4646c303028a8d29cf8568a38897c55/) | ⚠️ Unaudited |
| SafetyModuleV2 | unknown | ethereum | n/a | [`0x65f7ba4ec257af7c55fd5854e5f6356bbd0fb8ec`](./contracts/ethereum-1/0x65f7ba4ec257af7c55fd5854e5f6356bbd0fb8ec/) | ⚠️ Unaudited |
| SafetyRedundancy | unknown | ethereum | n/a | [`0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/) | ⚠️ Unaudited |
| Sand | unknown | ethereum | n/a | [`0x3845badade8e6dff049820680d1f14bd3903a5d0`](./contracts/ethereum-1/0x3845badade8e6dff049820680d1f14bd3903a5d0/) | ⚠️ Unaudited |
| SANDRewardPool | unknown | ethereum | n/a | [`0xce7467531f0fa949e6cd09a3b8f39e287eec33b8`](./contracts/ethereum-1/0xce7467531f0fa949e6cd09a3b8f39e287eec33b8/) | ⚠️ Unaudited |
| SignatureChecker | unknown | ethereum | n/a | [`0x27280fb9ed8c9473e856f93198f08696b9299798`](./contracts/ethereum-1/0x27280fb9ed8c9473e856f93198f08696b9299798/) | ⚠️ Unaudited |
| Signer | unknown | ethereum | n/a | [`0x10d7cb15642d540a4521a7b2840dab01287081fc`](./contracts/ethereum-1/0x10d7cb15642d540a4521a7b2840dab01287081fc/) | ⚠️ Unaudited |
| SikobaContinuousSale | unknown | ethereum | n/a | [`0x4994e81897a920c0fea235eb8cedeed3c6fff697`](./contracts/ethereum-1/0x4994e81897a920c0fea235eb8cedeed3c6fff697/) | ⚠️ Unaudited |
| SikobaPresale | unknown | ethereum | n/a | [`0x812ade7bc90c34e8b2ca92590e525305c85f2d03`](./contracts/ethereum-1/0x812ade7bc90c34e8b2ca92590e525305c85f2d03/) | ⚠️ Unaudited |
| SikobaToken | unknown | ethereum | n/a | [`0x6b40089e6cba08696d9ae48f38e2b06faff81765`](./contracts/ethereum-1/0x6b40089e6cba08696d9ae48f38e2b06faff81765/) | ⚠️ Unaudited |
| SimpleERC20 | unknown | ethereum | n/a | [`0x4849d2a7fec8572f12f369659cf48a826601cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | ⚠️ Unaudited |
| SingleSidedAMM | unknown | ethereum | n/a | [`0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a`](./contracts/ethereum-1/0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a/) | ⚠️ Unaudited |
| sko_ping | unknown | ethereum | n/a | [`0x5d4c2f88f2e403ec2ae5079726a13873673683fc`](./contracts/ethereum-1/0x5d4c2f88f2e403ec2ae5079726a13873673683fc/) | ⚠️ Unaudited |
| SkoSaleMVP | unknown | ethereum | n/a | [`0xb11d6ec05f4e1280a83540511d19cb131afd176f`](./contracts/ethereum-1/0xb11d6ec05f4e1280a83540511d19cb131afd176f/) | ⚠️ Unaudited |
| SmartBalance | unknown | ethereum | n/a | [`0x4790a39d5615bfbdad0e91a58c8b7391d48ffb9a`](./contracts/ethereum-1/0x4790a39d5615bfbdad0e91a58c8b7391d48ffb9a/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x173f5f648b18cf1c7f6aac66a35bf462539f3b27`](./contracts/ethereum-1/0x173f5f648b18cf1c7f6aac66a35bf462539f3b27/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/) | ⚠️ Unaudited |
| SpaceStationV2 | unknown | ethereum | n/a | [`0x75cda57917e9f73705dc8bcf8a6b2f99adbdc5a5`](./contracts/ethereum-1/0x75cda57917e9f73705dc8bcf8a6b2f99adbdc5a5/) | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/) | ⚠️ Unaudited |
| StableCreditProtocol | unknown | ethereum | n/a | [`0x15fe17da18288d1799643be1bb07fb939626f5f9`](./contracts/ethereum-1/0x15fe17da18288d1799643be1bb07fb939626f5f9/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | [`0x11980d4bb4465cb4fc77a57b98a16787b3d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | ⚠️ Unaudited |
| StakedAave | unknown | ethereum | n/a | [`0x481484ee9be4819842268487aeeb1f43810d03a1`](./contracts/ethereum-1/0x481484ee9be4819842268487aeeb1f43810d03a1/) | ⚠️ Unaudited |
| StakeUIHelper | unknown | ethereum | n/a | [`0x06abcc3b98b7310f50197f0f9cec6cf6e176ae68`](./contracts/ethereum-1/0x06abcc3b98b7310f50197f0f9cec6cf6e176ae68/) | ⚠️ Unaudited |
| StarkExHelperGovernor | unknown | ethereum | n/a | [`0x0db9b3f7dd83e29c9bece8e5e1089ba4369e694a`](./contracts/ethereum-1/0x0db9b3f7dd83e29c9bece8e5e1089ba4369e694a/) | ⚠️ Unaudited |
| StarkExRemoverGovernorV2 | unknown | ethereum | n/a | [`0xfcaac0f14dea11ede11afcb875f29130e1ad5ec0`](./contracts/ethereum-1/0xfcaac0f14dea11ede11afcb875f29130e1ad5ec0/) | ⚠️ Unaudited |
| StarkProxyV1 | unknown | ethereum | n/a | [`0x820ced132f703a53c72c0e78641509c68fe2be34`](./contracts/ethereum-1/0x820ced132f703a53c72c0e78641509c68fe2be34/) | ⚠️ Unaudited |
| StarkProxyV2 | unknown | ethereum | n/a | [`0x0b2b08ac98a1568a34208121c26f4f41a9e0fbb6`](./contracts/ethereum-1/0x0b2b08ac98a1568a34208121c26f4f41a9e0fbb6/) | ⚠️ Unaudited |
| StarNFT721 | unknown | ethereum | n/a | [`0x12f837f1a2c96909c0b85fafb3af7eebf9ecff0d`](./contracts/ethereum-1/0x12f837f1a2c96909c0b85fafb3af7eebf9ecff0d/) | ⚠️ Unaudited |
| StarNFTV1 | unknown | ethereum | n/a | [`0x0745eab680c1c596677eedecb7df38a986522e2a`](./contracts/ethereum-1/0x0745eab680c1c596677eedecb7df38a986522e2a/) | ⚠️ Unaudited |
| StarNFTV1Cap | unknown | ethereum | n/a | [`0x140f678267283034a0fd88c24d39ce94756b0b03`](./contracts/ethereum-1/0x140f678267283034a0fd88c24d39ce94756b0b03/) | ⚠️ Unaudited |
| StarNFTV4NaiveFactory | unknown | ethereum | n/a | [`0x99bde8367d7b99d2b1ae6fce12068b49aba47207`](./contracts/ethereum-1/0x99bde8367d7b99d2b1ae6fce12068b49aba47207/) | ⚠️ Unaudited |
| StarterPackV1 | unknown | ethereum | n/a | [`0x157372f9d3c94609adfb967741a0afc0c1db1bbf`](./contracts/ethereum-1/0x157372f9d3c94609adfb967741a0afc0c1db1bbf/) | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | ethereum | n/a | [`0x2be5d998c95de70d9a38b3d78e49751f10f9e88b`](./contracts/ethereum-1/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b/) | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | ethereum | n/a | [`0x40bd98e3cce4f34c087a73dd3d05558733549afb`](./contracts/ethereum-1/0x40bd98e3cce4f34c087a73dd3d05558733549afb/) | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | ethereum | n/a | [`0xd643cf07344428770b84973e049a1c18b5d47ede`](./contracts/ethereum-1/0xd643cf07344428770b84973e049a1c18b5d47ede/) | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | ethereum | n/a | [`0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c`](./contracts/ethereum-1/0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c/) | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | ethereum | n/a | [`0x787c771035bde631391ced5c083db424a4a64bd8`](./contracts/ethereum-1/0x787c771035bde631391ced5c083db424a4a64bd8/) | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | ethereum | n/a | [`0x28e5a47820313da9c74b8f2295795da6e6e083a5`](./contracts/ethereum-1/0x28e5a47820313da9c74b8f2295795da6e6e083a5/) | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | ethereum | n/a | [`0x31641a4836c172640fa1c02999b09c5d1069156f`](./contracts/ethereum-1/0x31641a4836c172640fa1c02999b09c5d1069156f/) | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | ethereum | n/a | [`0x442510ba285d5390cb5385a91a380d4268e0b81c`](./contracts/ethereum-1/0x442510ba285d5390cb5385a91a380d4268e0b81c/) | ⚠️ Unaudited |
| StrategyProxy | unknown | ethereum | n/a | [`0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a`](./contracts/ethereum-1/0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a/) | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | ethereum | n/a | [`0x2288c409e67b6ce52180f97a8cddf7abc24ec989`](./contracts/ethereum-1/0x2288c409e67b6ce52180f97a8cddf7abc24ec989/) | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | ethereum | n/a | [`0x35cee4c61b7619956e0b2015b5411f93cbba817a`](./contracts/ethereum-1/0x35cee4c61b7619956e0b2015b5411f93cbba817a/) | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | ethereum | n/a | [`0x25faca21dd2ad7edb3a027d543e617496820d8d6`](./contracts/ethereum-1/0x25faca21dd2ad7edb3a027d543e617496820d8d6/) | ⚠️ Unaudited |
| StrategyYffi | unknown | ethereum | n/a | [`0xbe197e668d13746bb92e675dea2868ff14da0b73`](./contracts/ethereum-1/0xbe197e668d13746bb92e675dea2868ff14da0b73/) | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | ethereum | n/a | [`0x395f93350d5102b6139abfc84a7d6ee70488797c`](./contracts/ethereum-1/0x395f93350d5102b6139abfc84a7d6ee70488797c/) | ⚠️ Unaudited |
| StrategyYfii | unknown | ethereum | n/a | [`0x2de055fec2b826ed4a7478ceddbeff82c1edfa70`](./contracts/ethereum-1/0x2de055fec2b826ed4a7478ceddbeff82c1edfa70/) | ⚠️ Unaudited |
| SupplyFactory | unknown | ethereum | n/a | [`0xf2eb916605402e5c7e81f7d609d0e2204841978f`](./contracts/ethereum-1/0xf2eb916605402e5c7e81f7d609d0e2204841978f/) | ⚠️ Unaudited |
| SushiToken | unknown | ethereum | n/a | [`0x6b3595068778dd592e39a122f4f5a5cf09c90fe2`](./contracts/ethereum-1/0x6b3595068778dd592e39a122f4f5a5cf09c90fe2/) | ⚠️ Unaudited |
| Synthetic | unknown | ethereum | n/a | [`0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | ethereum | n/a | [`0xaa90d9cc2f41a150489da5fffba2060a2938ffdc`](./contracts/ethereum-1/0xaa90d9cc2f41a150489da5fffba2060a2938ffdc/) | ⚠️ Unaudited |
| SynthetixAMM | unknown | ethereum | n/a | [`0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be`](./contracts/ethereum-1/0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be/) | ⚠️ Unaudited |
| SynthetixExchange | unknown | ethereum | n/a | [`0x0691cf9d171d6c9c3876598b14732248b204c2cf`](./contracts/ethereum-1/0x0691cf9d171d6c9c3876598b14732248b204c2cf/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c420c2a2b461034becbb41d4888b68951f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| TendiesFarm | unknown | ethereum | n/a | [`0x101dd6f1f5e396f6ab87407df637cce814e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x0e98db51010dd1ade14dd3fb164e218805fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | ⚠️ Unaudited |
| ThreePoolStrategy | unknown | ethereum | n/a | [`0x641e3b5b081fb2fb8b43d5a163649312a28e23da`](./contracts/ethereum-1/0x641e3b5b081fb2fb8b43d5a163649312a28e23da/) | ⚠️ Unaudited |
| ThreePoolStrategyProxy | unknown | ethereum | n/a | [`0x67023c56548ba15ad3542e65493311f19adfdd6d`](./contracts/ethereum-1/0x67023c56548ba15ad3542e65493311f19adfdd6d/) | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | ethereum | n/a | [`0x2df93404574dff883e2b35911a684dab1760da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x1994b59e02cd0d09d839b03660c205e88a929b81`](./contracts/ethereum-1/0x1994b59e02cd0d09d839b03660c205e88a929b81/) | ⚠️ Unaudited |
| TimelockGovernance | unknown | ethereum | n/a | [`0x026d4b8d693f6c446782c2c61ee357ec561dfb61`](./contracts/ethereum-1/0x026d4b8d693f6c446782c2c61ee357ec561dfb61/) | ⚠️ Unaudited |
| TokenMintERC20Token | unknown | ethereum | n/a | [`0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce`](./contracts/ethereum-1/0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce/) | ⚠️ Unaudited |
| TokenReward | unknown | ethereum | n/a | [`0x9394839d4f394bb734752af52bddcaa092c6e1e2`](./contracts/ethereum-1/0x9394839d4f394bb734752af52bddcaa092c6e1e2/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x0b318030c698fd4875726f2f08714a22b8c5f769`](./contracts/ethereum-1/0x0b318030c698fd4875726f2f08714a22b8c5f769/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20f7499aae7bdadc4e52fd72e49663733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x096760f208390250649e3e8763348e783aef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x09e9222e96e7b4ae2a407b98d48e330053351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x10417734001162ea139e8b044dfe28dbb8b28ad0`](./contracts/arbitrum-42161/0x10417734001162ea139e8b044dfe28dbb8b28ad0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x5288c571fd7ad117bea99bf60fe0846c4e84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x6c411ad3e74de3e7bd422b94a27770f5b86c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xe865df68133fced7c2285ff3896b406cafaa2db8`](./contracts/arbitrum-42161/0xe865df68133fced7c2285ff3896b406cafaa2db8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x0ada60e07717ab19e4a466f5f0ac68a66e3995ce`](./contracts/ethereum-1/0x0ada60e07717ab19e4a466f5f0ac68a66e3995ce/) | ⚠️ Unaudited |
| TreasuryBridge | unknown | ethereum | n/a | [`0x639192d54431f8c816368d3fb4107bc168d0e871`](./contracts/ethereum-1/0x639192d54431f8c816368d3fb4107bc168d0e871/) | ⚠️ Unaudited |
| TreasuryMerkleClaimProxy | unknown | ethereum | n/a | [`0x95eabb0248d013b9f59c5d5256ce11b0a8140b54`](./contracts/ethereum-1/0x95eabb0248d013b9f59c5d5256ce11b0a8140b54/) | ⚠️ Unaudited |
| TreasuryVault | unknown | ethereum | n/a | [`0x93a62da5a14c80f265dabc077fcee437b1a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x08a90fe0741b7def03fb290cc7b273f1855767d8`](./contracts/ethereum-1/0x08a90fe0741b7def03fb290cc7b273f1855767d8/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b67099121e1fbde6276b2802048d1a7dd1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | n/a | [`0x490e379c9cff64944be82b849f8fd5972c7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x0735a62b0b6e837fa67130589988436fd26f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x02daefc2e8aad089d094579499508398e3057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UniOracleFactory | unknown | ethereum | n/a | [`0x61da8b0808cea5281a912cd85421a6d12261d136`](./contracts/ethereum-1/0x61da8b0808cea5281a912cd85421a6d12261d136/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0xf68bb2d1aa914a4c43f00dfbe765bb7dc8167ec1`](./contracts/arbitrum-42161/0xf68bb2d1aa914a4c43f00dfbe765bb7dc8167ec1/) | ⚠️ Unaudited |
| USDT | unknown | optimism | n/a | [`0x94b008aa00579c1307b0ef2c499ad98a8ce58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | ⚠️ Unaudited |
| V00_Marketplace | unknown | ethereum | n/a | [`0x79be524aeca16d117a0a9f0dfa6aec5e31802984`](./contracts/ethereum-1/0x79be524aeca16d117a0a9f0dfa6aec5e31802984/) | ⚠️ Unaudited |
| V00_UserRegistry | unknown | ethereum | n/a | [`0x265a48bc9bf5d274e8f88190c26d713524d61edd`](./contracts/ethereum-1/0x265a48bc9bf5d274e8f88190c26d713524d61edd/) | ⚠️ Unaudited |
| ValidatorShare | unknown | ethereum | n/a | [`0x185486869e615f5a5644991a491212582caa08fb`](./contracts/ethereum-1/0x185486869e615f5a5644991a491212582caa08fb/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xf251cb9129fdb7e9ca5cad097de3ea70cab9d8f9`](./contracts/ethereum-1/0xf251cb9129fdb7e9ca5cad097de3ea70cab9d8f9/) | ⚠️ Unaudited |
| VaultAdmin | unknown | ethereum | n/a | [`0x69a8b2ae6a3606b766be99c42328459167f51b25`](./contracts/ethereum-1/0x69a8b2ae6a3606b766be99c42328459167f51b25/) | ⚠️ Unaudited |
| VaultCore | unknown | ethereum | n/a | [`0x0660bf15a89d8e90cba1b3f0ccf493c415b1369d`](./contracts/ethereum-1/0x0660bf15a89d8e90cba1b3f0ccf493c415b1369d/) | ⚠️ Unaudited |
| VestingVault | unknown | ethereum | n/a | [`0x4f59818105abe05ae793a8caedb39fc2bea7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1da0bb6e948dc0559d14ebde9fa9572499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x2a7d59e327759acd5d11a8fb652bf4072d28ac04`](./contracts/ethereum-1/0x2a7d59e327759acd5d11a8fb652bf4072d28ac04/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WBTC | unknown | ethereum | n/a | [`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f8931ce1c52f643121be129985aab09c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | ethereum | n/a | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WrappedYFI | unknown | ethereum | n/a | [`0x017e71e96f2ae777c679740d2d8dc15ed4231981`](./contracts/ethereum-1/0x017e71e96f2ae777c679740d2d8dc15ed4231981/) | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0x991f0e5c5775ca9dd02e30e67f545c36cff3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | ⚠️ Unaudited |
| xVault | unknown | ethereum | n/a | [`0x0205ae93e18aa23d31e3df53899547b986e419c5`](./contracts/ethereum-1/0x0205ae93e18aa23d31e3df53899547b986e419c5/) | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | ethereum | n/a | [`0x44ff2af361e4b6a2892523d513df5245fc53b367`](./contracts/ethereum-1/0x44ff2af361e4b6a2892523d513df5245fc53b367/) | ⚠️ Unaudited |
| yCRV | unknown | ethereum | n/a | [`0x170411a2d872945ee8c59e4ef5c3402ebe2a221c`](./contracts/ethereum-1/0x170411a2d872945ee8c59e4ef5c3402ebe2a221c/) | ⚠️ Unaudited |
| ycUSDC | unknown | ethereum | n/a | [`0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c`](./contracts/ethereum-1/0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c/) | ⚠️ Unaudited |
| ycUSDT | unknown | ethereum | n/a | [`0x631d66f79191c86d7b7a7c0e2afae3ae943931a4`](./contracts/ethereum-1/0x631d66f79191c86d7b7a7c0e2afae3ae943931a4/) | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | ethereum | n/a | [`0x56ab71990783442f68fb25e0b466196c7ca6bd33`](./contracts/ethereum-1/0x56ab71990783442f68fb25e0b466196c7ca6bd33/) | ⚠️ Unaudited |
| yDelegate | unknown | ethereum | n/a | [`0x61025859c349dfbe6ef0dfca202ef3e84ca05f83`](./contracts/ethereum-1/0x61025859c349dfbe6ef0dfca202ef3e84ca05f83/) | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | ethereum | n/a | [`0x41303e87db5be5b1c7a341440d04ec6a11343eeb`](./contracts/ethereum-1/0x41303e87db5be5b1c7a341440d04ec6a11343eeb/) | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea6936b407514ebfc0754a37704eb8d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| yInsureView | unknown | ethereum | n/a | [`0x6d2738fa41e83c5b5633f466f9aa11dae098340b`](./contracts/ethereum-1/0x6d2738fa41e83c5b5633f466f9aa11dae098340b/) | ⚠️ Unaudited |
| yTokenProxy | unknown | ethereum | n/a | [`0x1d5ad987b743eb624662fe5c62b8f6015554203a`](./contracts/ethereum-1/0x1d5ad987b743eb624662fe5c62b8f6015554203a/) | ⚠️ Unaudited |
| yTokenRebalance | unknown | ethereum | n/a | [`0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09`](./contracts/ethereum-1/0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09/) | ⚠️ Unaudited |
| yUSD | unknown | ethereum | n/a | [`0x12c0681dca0deb095f2f192c3ab64bf320af3aff`](./contracts/ethereum-1/0x12c0681dca0deb095f2f192c3ab64bf320af3aff/) | ⚠️ Unaudited |
| yVault | unknown | ethereum | n/a | [`0x0fcda6f268d0c09cdfffe6bceac5233ac2367889`](./contracts/ethereum-1/0x0fcda6f268d0c09cdfffe6bceac5233ac2367889/) | ⚠️ Unaudited |
| yVaultCheck | unknown | ethereum | n/a | [`0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad`](./contracts/ethereum-1/0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad/) | ⚠️ Unaudited |
| yVaultFactory | unknown | ethereum | n/a | [`0x044deaa1e5a8593adcead599e8d66fb5d3f677b5`](./contracts/ethereum-1/0x044deaa1e5a8593adcead599e8d66fb5d3f677b5/) | ⚠️ Unaudited |
| yWrappedVault | unknown | ethereum | n/a | [`0x881b06da56bb5675c54e4ed311c21e54c5025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |
| Zorro01Token | unknown | ethereum | n/a | [`0xdd716b424423bbc88362ce73ef976d37322eb744`](./contracts/ethereum-1/0xdd716b424423bbc88362ce73ef976d37322eb744/) | ⚠️ Unaudited |
| Zorro02Token | unknown | ethereum | n/a | [`0xdba3c9f9a427d2bdb7e260353dce57a94cd8ddd8`](./contracts/ethereum-1/0xdba3c9f9a427d2bdb7e260353dce57a94cd8ddd8/) | ⚠️ Unaudited |
| ZZZToken | unknown | ethereum | n/a | [`0x9bca936670fbf15165312faa3c2eec997e42f4a2`](./contracts/ethereum-1/0x9bca936670fbf15165312faa3c2eec997e42f4a2/) | ⚠️ Unaudited |

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
| [2025-09-03_omniscia_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-09-03_omniscia_staking_v2.pdf) | Omniscia | Audit | 2025-09 | fresh | Inherited from Stake DAO — forked code, scoped to APROracle, APRWithPoolOracle, DSSLeverage, Governance, +22 more | inherited | 26 | n/a |
| [2025-08-08_pashov_staking_v2_morpho_support.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-08-08_pashov_staking_v2_morpho_support.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Inherited from Stake DAO — forked code, scoped to APROracle, APRWithPoolOracle, DSSLeverage, Governance, +22 more | inherited | 26 | n/a |
| [2025-05-01_omniscia_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-05-01_omniscia_staking_v2.pdf) | Omniscia | Audit | 2025-05 | aging | Inherited from Stake DAO — forked code, scoped to APROracle, APRWithPoolOracle, DSSLeverage, Governance, +22 more | inherited | 26 | n/a |
| [2025-04-01_trust_security_staking_v2.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/staking-v2/2025-04-01_trust_security_staking_v2.pdf) | Trust Security | Audit | 2025-04 | aging | Inherited from Stake DAO — forked code, scoped to APROracle, APRWithPoolOracle, DSSLeverage, Governance, +22 more | inherited | 26 | n/a |
| [Bug bounty](https://immunefi.com/bug-bounty/hashflow/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [2026_03_26_trust_security_vlsdt.pdf (also discovered via alternate URL)](https://github.com/stake-dao/audits/blob/main/vlsdt/2026_03_26_trust_security_vlsdt.pdf) | Trust Security | Audit | 2026-04 | fresh | Inherited from Stake DAO — forked code, scoped to APROracle, APRWithPoolOracle, DSSLeverage, Governance, +22 more | inherited | 26 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab`](./contracts/ethereum-1/0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141e0541d87c6cbdbf2a6a8104248b4b922f629e`](./contracts/ethereum-1/0x141e0541d87c6cbdbf2a6a8104248b4b922f629e/) | AHv2Repayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f`](./contracts/ethereum-1/0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f/) | AirdropGrapesToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8`](./contracts/arbitrum-42161/0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8/) | ArbFiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba4eee20f434bc3908a0b18da496348657133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/) | ArbitrumExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067a1eb5e383ed24b66d72aaf80d8d7db3d299a8`](./contracts/ethereum-1/0x067a1eb5e383ed24b66d72aaf80d8d7db3d299a8/) | Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05831537ff42ac82ddf89790f81cb5c4664be9c1`](./contracts/ethereum-1/0x05831537ff42ac82ddf89790f81cb5c4664be9c1/) | AssetGiveaway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a`](./contracts/ethereum-1/0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a/) | AssetSignedAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ac493b8c2cef1f02f117b9ba2797e7da95574aa`](./contracts/ethereum-1/0x5ac493b8c2cef1f02f117b9ba2797e7da95574aa/) | AssetVotingWeightProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d224452801aced8b2f0aebe155379bb5d594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | Astgik | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x91688f449478a47256990e4c609e000b5810b20a`](./contracts/bsc-56/0x91688f449478a47256990e4c609e000b5810b20a/) | BalanceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fe38087a94903a9d946fa1915e1772fe611000f`](./contracts/arbitrum-42161/0x3fe38087a94903a9d946fa1915e1772fe611000f/) | BeaconProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | BEP20BandProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3`](./contracts/bsc-56/0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3/) | BEP20BitcoinCash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3ee2200efb3400fabb9aacf31297cbdd1d435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | BEP20Cardano | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eb3a705fc54725037cc9e008bdede697f62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | BEP20Cosmos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | BEP20DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56b6fb708fc5732dec1afc8d8556423a2edccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | BEP20EOS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2170ed0880ac9a755fd29b2688956bd959f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | BEP20Ethereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | BEP20LINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd7b3a77848f1c2d67e05e54d78d174a0c850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | BEP20Ontology | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7083609fce4d1d8dc0c979aab8c869ea2c873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | BEP20Polkadot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x16939ef78684453bfdfb47825f8a5f714f12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | BEP20Tezos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | BEP20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fa4a73a3f0133f0025378af00236f3abdee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/) | BEP20UpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x250632378e573c6be1ac2f97fcdf00515d0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | BEP20UpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55d398326f99059ff775485246999027b3197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | BEP20USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | BEP20XRP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7f70642d88cf1c4a3a7abb072b53b929b653eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | BEP20YFII | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | BEP20Zcash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b4fd02326db6ebe095e0707e2973c9e045da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | BlackScholesEstimate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d103f2a660114f7fa0e3d78f13acbcd13672e57`](./contracts/ethereum-1/0x4d103f2a660114f7fa0e3d78f13acbcd13672e57/) | CatalystMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7`](./contracts/ethereum-1/0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7/) | CatalystRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ChildChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafeea1de9d660d3cb53031cfe1a58de40b171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ChildChainManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ebeac13f6403d19c95b6b75008b12fd21a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4888fab8bd39a663b63161f5ee1eae31a25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ChildMintableERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x629c1738efdf24958f7911339010b2a1ec0487dd`](./contracts/ethereum-1/0x629c1738efdf24958f7911339010b2a1ec0487dd/) | CiaraDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a9a4d919943340b7e855e310489e16155f4ed29`](./contracts/ethereum-1/0x1a9a4d919943340b7e855e310489e16155f4ed29/) | Claimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fd829c3365a225fb9226e75c97c3a114bd3199e`](./contracts/ethereum-1/0x0fd829c3365a225fb9226e75c97c3a114bd3199e/) | ClaimsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x494ba8753a253bb314f1e8324c36f804d31b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/) | CollateralMaximizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27b4c402ff602fac8248a895d325d45bf740643c`](./contracts/ethereum-1/0x27b4c402ff602fac8248a895d325d45bf740643c/) | CommonMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | CompensationEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1532eb6c6d134903a0dedfc840128007b36aa870`](./contracts/ethereum-1/0x1532eb6c6d134903a0dedfc840128007b36aa870/) | COMPfarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8`](./contracts/ethereum-1/0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98158e133f7f56a574fc806e579e1355048039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ConverterDAItoYCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e14d03061705eb48fda6bc6e244c5eabe5d322e`](./contracts/ethereum-1/0x8e14d03061705eb48fda6bc6e244c5eabe5d322e/) | CRON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01c1103d765f62a0d909499d7b615c382cdb072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | DadFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b175474e89094c44da98b954eedeac495271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | DaiFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40730f34668afcb3884f050cbc3d376a444bbe44`](./contracts/ethereum-1/0x40730f34668afcb3884f050cbc3d376a444bbe44/) | DelegationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d8063df0319457f777a353efef0dc0189a15ba1`](./contracts/arbitrum-42161/0x5d8063df0319457f777a353efef0dc0189a15ba1/) | DForce | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x812ac0eaeb422efa44eac670aa2246a25ecfa017`](./contracts/ethereum-1/0x812ac0eaeb422efa44eac670aa2246a25ecfa017/) | DistributeYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b1b08313a290adf97d36a6f41f42bb19e368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | DistributionRewardsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e2a84d6ade1e7fffee039a35ef5f19f13057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | DSChief | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7ca05e174a523709e556080e227f734a8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | DSChiefFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cb3b545adbe9dbc601eda8ff36f1c866d0ba812`](./contracts/ethereum-1/0x0cb3b545adbe9dbc601eda8ff36f1c866d0ba812/) | DydxGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92d6c1e31e14520e676a687f0a93788b716beff5`](./contracts/ethereum-1/0x92d6c1e31e14520e676a687f0a93788b716beff5/) | DydxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x035fb9efa7ed40a688044af22282fb19b64b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/) | DynamicSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ccea6503e8e5525d3de0c60855b6332af559ad4`](./contracts/ethereum-1/0x4ccea6503e8e5525d3de0c60855b6332af559ad4/) | EminenceCurrency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fc246149b4b8d7bcef6188a10af1791380227f1`](./contracts/ethereum-1/0x2fc246149b4b8d7bcef6188a10af1791380227f1/) | ERC20GroupCatalyst | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ff2611da386de427fc96a8073963619c5851ba5`](./contracts/ethereum-1/0x8ff2611da386de427fc96a8073963619c5851ba5/) | ERC20GroupGem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe`](./contracts/ethereum-1/0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe/) | ERC20SubToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe372ed8d188517ef4d4bc464c0c068d2002e2903`](./contracts/ethereum-1/0xe372ed8d188517ef4d4bc464c0c068d2002e2903/) | EstateSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x089a55baf7052321cbce4bdbf3be568955648d9d`](./contracts/ethereum-1/0x089a55baf7052321cbce4bdbf3be568955648d9d/) | EstateSaleWithFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64c7d40c07efabec2aafdc243bf59eaf2195c6dc`](./contracts/ethereum-1/0x64c7d40c07efabec2aafdc243bf59eaf2195c6dc/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | FairLaunchCapitalVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6257e36efc9c7c6057c119ea2af40907159fef3f`](./contracts/ethereum-1/0x6257e36efc9c7c6057c119ea2af40907159fef3f/) | Faketroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e15361fd6b4bb609fa63c81a2be19d873717870`](./contracts/ethereum-1/0x4e15361fd6b4bb609fa63c81a2be19d873717870/) | FantomToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c537e5624e4af88a7ae4060c022609376c8d0eb`](./contracts/ethereum-1/0x2c537e5624e4af88a7ae4060c022609376c8d0eb/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a9be8a692de04bcb7ce5cddd03afca97d732c62`](./contracts/ethereum-1/0x1a9be8a692de04bcb7ce5cddd03afca97d732c62/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c08b51ddbe8ba76e07be79975906c39aef2893a`](./contracts/ethereum-1/0x5c08b51ddbe8ba76e07be79975906c39aef2893a/) | fKRW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d7f0933ac403773d219cf0519de8082946dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/) | fUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5faa989af96af85384b8a938c2ede4a7378d9875`](./contracts/ethereum-1/0x5faa989af96af85384b8a938c2ede4a7378d9875/) | GAL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa32ea3769b0fec9d84ebe31a823b70e485053b1`](./contracts/ethereum-1/0xfa32ea3769b0fec9d84ebe31a823b70e485053b1/) | GalxePassport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x823fd217dcc5ce36ca6bc1489586ecb42b61081c`](./contracts/ethereum-1/0x823fd217dcc5ce36ca6bc1489586ecb42b61081c/) | GaugeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x431e935209d79706b5866eb42137a3491d845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | GemFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69076e44a9c70a67d5b79d95795aba299083c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | GemPit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48dee19c0e44c147934702c12dc98963ca831009`](./contracts/ethereum-1/0x48dee19c0e44c147934702c12dc98963ca831009/) | GenesisBouncer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c0f03411ab250f0a080a4420190b821affd4602`](./contracts/ethereum-1/0x6c0f03411ab250f0a080a4420190b821affd4602/) | GizerItems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5db2d4a2e6d06f9afe906fc33036f77ebe87b59b`](./contracts/ethereum-1/0x5db2d4a2e6d06f9afe906fc33036f77ebe87b59b/) | GizerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3b2c28c7245c49ea5e6c6db98026f180b443a06`](./contracts/ethereum-1/0xf3b2c28c7245c49ea5e6c6db98026f180b443a06/) | GovernanceParamsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90dfd35f4a0bb2d30cdf66508085e33c353475d9`](./contracts/ethereum-1/0x90dfd35f4a0bb2d30cdf66508085e33c353475d9/) | GovernanceStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a5ff78bfe0de04f5dc1b57d2e1095be697be76e`](./contracts/ethereum-1/0x8a5ff78bfe0de04f5dc1b57d2e1095be697be76e/) | Governor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x159e309b2214b86fd8c29c461d46947685962ac9`](./contracts/ethereum-1/0x159e309b2214b86fd8c29c461d46947685962ac9/) | GXY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7224f2e96061a1e3f51d152e32ccfab79ca1345a`](./contracts/ethereum-1/0x7224f2e96061a1e3f51d152e32ccfab79ca1345a/) | HegicERCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70`](./contracts/ethereum-1/0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70/) | HegicOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06194062288575f35c0af45d5e7013b65e082f23`](./contracts/ethereum-1/0x06194062288575f35c0af45d5e7013b65e082f23/) | HegicOptionsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x44ec807ce2f4a6f2737a92e985f318d035883e47`](./contracts/bsc-56/0x44ec807ce2f4a6f2737a92e985f318d035883e47/) | HFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb10e11f3e38dc35e06397689e45fa939eb3b0f69`](./contracts/ethereum-1/0xb10e11f3e38dc35e06397689e45fa939eb3b0f69/) | iCollateralVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x260fbb4855b2a4a719097131016b573f95a867fa`](./contracts/ethereum-1/0x260fbb4855b2a4a719097131016b573f95a867fa/) | iDAIZapSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ac16c08105de55a02e2b7462b1eec6085fa4d86`](./contracts/ethereum-1/0x8ac16c08105de55a02e2b7462b1eec6085fa4d86/) | IdentityEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4`](./contracts/ethereum-1/0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4/) | IEarnProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75a4d0b18e98674199829ddd2a6477ea25cd25eb`](./contracts/ethereum-1/0x75a4d0b18e98674199829ddd2a6477ea25cd25eb/) | IEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5c2ea13d2bf1968a10722dc45900c8da0f78212`](./contracts/ethereum-1/0xb5c2ea13d2bf1968a10722dc45900c8da0f78212/) | IndaHashToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41a9257554c69c2187bafa6977d4953e0f2e4c10`](./contracts/ethereum-1/0x41a9257554c69c2187bafa6977d4953e0f2e4c10/) | InitializeGovernedUpgradeabilityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa53e9e63793e55c533fe98d0ed178992942863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | insuredVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | insurerVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb41772890c8b1564c5015a12c0dc6f18b0af955e`](./contracts/ethereum-1/0xb41772890c8b1564c5015a12c0dc6f18b0af955e/) | Keep3rHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb68e7deb279eaa11f234dff4931458d2c002d10d`](./contracts/ethereum-1/0xb68e7deb279eaa11f234dff4931458d2c002d10d/) | Keep3rJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1530a2924805aed2385f8b91849cab7fe95a5df9`](./contracts/ethereum-1/0x1530a2924805aed2385f8b91849cab7fe95a5df9/) | Keep3rV1Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7396899638410094b3690f8bd2b56f07fdab620c`](./contracts/ethereum-1/0x7396899638410094b3690f8bd2b56f07fdab620c/) | Keep3rV1JobRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a03b4f6d5314bb257540dc7702c326f97f5c080`](./contracts/ethereum-1/0x0a03b4f6d5314bb257540dc7702c326f97f5c080/) | Keep3rV1OracleUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0`](./contracts/ethereum-1/0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0/) | Keep3rV2Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2266be1ee5d345914976fd4ce9f4be65737880cb`](./contracts/ethereum-1/0x2266be1ee5d345914976fd4ce9f4be65737880cb/) | Keep3rV2OracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82`](./contracts/ethereum-1/0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82/) | Keep3rV3OracleUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc82d6f13d96511977b21bcd9d60b7fc46191daf2`](./contracts/ethereum-1/0xc82d6f13d96511977b21bcd9d60b7fc46191daf2/) | KyberReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50f5474724e0ee42d9a4e711ccfb275809fd6d4a`](./contracts/ethereum-1/0x50f5474724e0ee42d9a4e711ccfb275809fd6d4a/) | Land | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47136343c616c3d6713b3ad4a223deda42839859`](./contracts/ethereum-1/0x47136343c616c3d6713b3ad4a223deda42839859/) | LandSaleWithETHAndDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x126a3437f3b76155e5e574abdc048b54f2f4adaa`](./contracts/ethereum-1/0x126a3437f3b76155e5e574abdc048b54f2f4adaa/) | LandSaleWithReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6`](./contracts/ethereum-1/0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6/) | LandWeightedSANDRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ea775672e4424c403f048ab08c7f56015c5d0f3`](./contracts/ethereum-1/0x9ea775672e4424c403f048ab08c7f56015c5d0f3/) | LazyHarvest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0671ca7e039af2cf2d2c5e7f1aa261ae78b3ffdf`](./contracts/ethereum-1/0x0671ca7e039af2cf2d2c5e7f1aa261ae78b3ffdf/) | LendVoteStrategyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13432a43f2779c9c64fe9e436c2576e5231f7abc`](./contracts/ethereum-1/0x13432a43f2779c9c64fe9e436c2576e5231f7abc/) | LinkToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd82f6d42356e225bf79b870a05aac79062a3e8ce`](./contracts/ethereum-1/0xd82f6d42356e225bf79b870a05aac79062a3e8ce/) | LiquidationOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9afeb4122240b58e67a55e11d55555b4ad73f4d5`](./contracts/ethereum-1/0x9afeb4122240b58e67a55e11d55555b4ad73f4d5/) | LiquidityConversionRates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28832484e8124634a248f2bc520f26e8345a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | LiquidityIncome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5aa653a076c1dbb47cec8c1b4d152444cad91941`](./contracts/ethereum-1/0x5aa653a076c1dbb47cec8c1b4d152444cad91941/) | LiquidityStakingV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f5d2fb29fb7d3cfee444a200298f468908cc942`](./contracts/ethereum-1/0x0f5d2fb29fb7d3cfee444a200298f468908cc942/) | MANAToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2edad668740f1aa35e4d8f227fb8e17dca888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0`](./contracts/ethereum-1/0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0/) | MaticToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x164255531e730788cb1e68a93c81edb585419f5e`](./contracts/ethereum-1/0x164255531e730788cb1e68a93c81edb585419f5e/) | MaticTokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e8640574aa764763291ed733672d3a105107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | Members | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25bbb81d1cec3f26598b3b300aedc23958988800`](./contracts/ethereum-1/0x25bbb81d1cec3f26598b3b300aedc23958988800/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d3348601968ab85b4bb028979006eac235a588`](./contracts/ethereum-1/0x01d3348601968ab85b4bb028979006eac235a588/) | MerkleDistributorV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93dfa873b15ad496ba8116ce6cfec52ef30a9372`](./contracts/ethereum-1/0x93dfa873b15ad496ba8116ce6cfec52ef30a9372/) | MetaKeep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818180acb9d300ffc023be2300addb6879d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003ea7f54b6dcf6cee86986edc18143a35f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | MiniMeTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b`](./contracts/ethereum-1/0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52bebd3d7f37ec4284853fd5861ae71253a7f428`](./contracts/ethereum-1/0x52bebd3d7f37ec4284853fd5861ae71253a7f428/) | MinuteTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d4f5e7a1fe57f5ceb38bfce8653effa5e584458`](./contracts/ethereum-1/0x4d4f5e7a1fe57f5ceb38bfce8653effa5e584458/) | MixOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68898604d950cc15ce524a5b8d95e4b91dd11eee`](./contracts/ethereum-1/0x68898604d950cc15ce524a5b8d95e4b91dd11eee/) | MockToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141a206ece672e3198086c5d21f7858ad03669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | MomFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4a9196b06f339ad9f3ee752c987b401f2e1e2718`](./contracts/arbitrum-42161/0x4a9196b06f339ad9f3ee752c987b401f2e1e2718/) | MultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb48ce889bdfc5164c309d03b9c6126133c85f396`](./contracts/ethereum-1/0xb48ce889bdfc5164c309d03b9c6126133c85f396/) | NativeMetaTransactionProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc80c051057b774cd75067dc48f8987c4eb97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | NEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d5a41e85f4ce2433beef476305d307b9205d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | NectarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93a2880f657793a1d839653c8f8cef52f3de7a28`](./contracts/ethereum-1/0x93a2880f657793a1d839653c8f8cef52f3de7a28/) | NexusMutualCover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9214a67186965fd5fe582a64a8646ff058f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/) | Normalizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | OptionsV1Library | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00fbd1774093e9240beb559f7a1300d291d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/) | OptionsV1Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8207c1ffc5b6804f6024322ccf34f29c3541ae26`](./contracts/ethereum-1/0x8207c1ffc5b6804f6024322ccf34f29c3541ae26/) | OriginToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1`](./contracts/ethereum-1/0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1/) | OSMedianizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ae95dd4eeae7ed03da79856c2d44ffa3318f805`](./contracts/ethereum-1/0x1ae95dd4eeae7ed03da79856c2d44ffa3318f805/) | OUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7f5c764cbc14f9669b88837ca1490cca17c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | OVMFiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | PriceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa306989ba6bcacdeccf3c0614fff2b8c668e3cae`](./contracts/ethereum-1/0xa306989ba6bcacdeccf3c0614fff2b8c668e3cae/) | PriorityExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b2d94bf0f0a4eeb7d00d67524b251ffbb91c86a`](./contracts/ethereum-1/0x5b2d94bf0f0a4eeb7d00d67524b251ffbb91c86a/) | R256 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb8a520f13ab264a288f7736ddf11f2fcf3246c3`](./contracts/ethereum-1/0xcb8a520f13ab264a288f7736ddf11f2fcf3246c3/) | R256Basic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3dcd70e6a3fb474cfd7567a021864066fdef6c5c`](./contracts/ethereum-1/0x3dcd70e6a3fb474cfd7567a021864066fdef6c5c/) | RebaseHooks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0739311a9725779f109706b48a56763a8ae8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/) | RiskOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4015ccad9218b109d3339b356392c6ee8438e5d0`](./contracts/ethereum-1/0x4015ccad9218b109d3339b356392c6ee8438e5d0/) | RootChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd249ad8fa4646c303028a8d29cf8568a38897c55`](./contracts/ethereum-1/0xd249ad8fa4646c303028a8d29cf8568a38897c55/) | SafetyModuleV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65f7ba4ec257af7c55fd5854e5f6356bbd0fb8ec`](./contracts/ethereum-1/0x65f7ba4ec257af7c55fd5854e5f6356bbd0fb8ec/) | SafetyModuleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/) | SafetyRedundancy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3845badade8e6dff049820680d1f14bd3903a5d0`](./contracts/ethereum-1/0x3845badade8e6dff049820680d1f14bd3903a5d0/) | Sand | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce7467531f0fa949e6cd09a3b8f39e287eec33b8`](./contracts/ethereum-1/0xce7467531f0fa949e6cd09a3b8f39e287eec33b8/) | SANDRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27280fb9ed8c9473e856f93198f08696b9299798`](./contracts/ethereum-1/0x27280fb9ed8c9473e856f93198f08696b9299798/) | SignatureChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10d7cb15642d540a4521a7b2840dab01287081fc`](./contracts/ethereum-1/0x10d7cb15642d540a4521a7b2840dab01287081fc/) | Signer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4994e81897a920c0fea235eb8cedeed3c6fff697`](./contracts/ethereum-1/0x4994e81897a920c0fea235eb8cedeed3c6fff697/) | SikobaContinuousSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x812ade7bc90c34e8b2ca92590e525305c85f2d03`](./contracts/ethereum-1/0x812ade7bc90c34e8b2ca92590e525305c85f2d03/) | SikobaPresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b40089e6cba08696d9ae48f38e2b06faff81765`](./contracts/ethereum-1/0x6b40089e6cba08696d9ae48f38e2b06faff81765/) | SikobaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4849d2a7fec8572f12f369659cf48a826601cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | SimpleERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a`](./contracts/ethereum-1/0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a/) | SingleSidedAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d4c2f88f2e403ec2ae5079726a13873673683fc`](./contracts/ethereum-1/0x5d4c2f88f2e403ec2ae5079726a13873673683fc/) | sko_ping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb11d6ec05f4e1280a83540511d19cb131afd176f`](./contracts/ethereum-1/0xb11d6ec05f4e1280a83540511d19cb131afd176f/) | SkoSaleMVP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4790a39d5615bfbdad0e91a58c8b7391d48ffb9a`](./contracts/ethereum-1/0x4790a39d5615bfbdad0e91a58c8b7391d48ffb9a/) | SmartBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x173f5f648b18cf1c7f6aac66a35bf462539f3b27`](./contracts/ethereum-1/0x173f5f648b18cf1c7f6aac66a35bf462539f3b27/) | SmartWalletChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75cda57917e9f73705dc8bcf8a6b2f99adbdc5a5`](./contracts/ethereum-1/0x75cda57917e9f73705dc8bcf8a6b2f99adbdc5a5/) | SpaceStationV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/) | StableAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15fe17da18288d1799643be1bb07fb939626f5f9`](./contracts/ethereum-1/0x15fe17da18288d1799643be1bb07fb939626f5f9/) | StableCreditProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11980d4bb4465cb4fc77a57b98a16787b3d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | StableYieldCredit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x481484ee9be4819842268487aeeb1f43810d03a1`](./contracts/ethereum-1/0x481484ee9be4819842268487aeeb1f43810d03a1/) | StakedAave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06abcc3b98b7310f50197f0f9cec6cf6e176ae68`](./contracts/ethereum-1/0x06abcc3b98b7310f50197f0f9cec6cf6e176ae68/) | StakeUIHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0db9b3f7dd83e29c9bece8e5e1089ba4369e694a`](./contracts/ethereum-1/0x0db9b3f7dd83e29c9bece8e5e1089ba4369e694a/) | StarkExHelperGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfcaac0f14dea11ede11afcb875f29130e1ad5ec0`](./contracts/ethereum-1/0xfcaac0f14dea11ede11afcb875f29130e1ad5ec0/) | StarkExRemoverGovernorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x820ced132f703a53c72c0e78641509c68fe2be34`](./contracts/ethereum-1/0x820ced132f703a53c72c0e78641509c68fe2be34/) | StarkProxyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b2b08ac98a1568a34208121c26f4f41a9e0fbb6`](./contracts/ethereum-1/0x0b2b08ac98a1568a34208121c26f4f41a9e0fbb6/) | StarkProxyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12f837f1a2c96909c0b85fafb3af7eebf9ecff0d`](./contracts/ethereum-1/0x12f837f1a2c96909c0b85fafb3af7eebf9ecff0d/) | StarNFT721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0745eab680c1c596677eedecb7df38a986522e2a`](./contracts/ethereum-1/0x0745eab680c1c596677eedecb7df38a986522e2a/) | StarNFTV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x140f678267283034a0fd88c24d39ce94756b0b03`](./contracts/ethereum-1/0x140f678267283034a0fd88c24d39ce94756b0b03/) | StarNFTV1Cap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99bde8367d7b99d2b1ae6fce12068b49aba47207`](./contracts/ethereum-1/0x99bde8367d7b99d2b1ae6fce12068b49aba47207/) | StarNFTV4NaiveFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x157372f9d3c94609adfb967741a0afc0c1db1bbf`](./contracts/ethereum-1/0x157372f9d3c94609adfb967741a0afc0c1db1bbf/) | StarterPackV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be5d998c95de70d9a38b3d78e49751f10f9e88b`](./contracts/ethereum-1/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b/) | StrategyControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40bd98e3cce4f34c087a73dd3d05558733549afb`](./contracts/ethereum-1/0x40bd98e3cce4f34c087a73dd3d05558733549afb/) | StrategyCreamYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd643cf07344428770b84973e049a1c18b5d47ede`](./contracts/ethereum-1/0xd643cf07344428770b84973e049a1c18b5d47ede/) | StrategyDForceDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c`](./contracts/ethereum-1/0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c/) | StrategyDForceUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x787c771035bde631391ced5c083db424a4a64bd8`](./contracts/ethereum-1/0x787c771035bde631391ced5c083db424a4a64bd8/) | StrategyDForceUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28e5a47820313da9c74b8f2295795da6e6e083a5`](./contracts/ethereum-1/0x28e5a47820313da9c74b8f2295795da6e6e083a5/) | StrategyMKRVaultDAIDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31641a4836c172640fa1c02999b09c5d1069156f`](./contracts/ethereum-1/0x31641a4836c172640fa1c02999b09c5d1069156f/) | StrategyMStableSavings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x442510ba285d5390cb5385a91a380d4268e0b81c`](./contracts/ethereum-1/0x442510ba285d5390cb5385a91a380d4268e0b81c/) | StrategyMStableSavingsTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a`](./contracts/ethereum-1/0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a/) | StrategyProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2288c409e67b6ce52180f97a8cddf7abc24ec989`](./contracts/ethereum-1/0x2288c409e67b6ce52180f97a8cddf7abc24ec989/) | StrategySNXSUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35cee4c61b7619956e0b2015b5411f93cbba817a`](./contracts/ethereum-1/0x35cee4c61b7619956e0b2015b5411f93cbba817a/) | StrategyVaultTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25faca21dd2ad7edb3a027d543e617496820d8d6`](./contracts/ethereum-1/0x25faca21dd2ad7edb3a027d543e617496820d8d6/) | StrategyVaultUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe197e668d13746bb92e675dea2868ff14da0b73`](./contracts/ethereum-1/0xbe197e668d13746bb92e675dea2868ff14da0b73/) | StrategyYffi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x395f93350d5102b6139abfc84a7d6ee70488797c`](./contracts/ethereum-1/0x395f93350d5102b6139abfc84a7d6ee70488797c/) | StrategyYFIGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2de055fec2b826ed4a7478ceddbeff82c1edfa70`](./contracts/ethereum-1/0x2de055fec2b826ed4a7478ceddbeff82c1edfa70/) | StrategyYfii | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2eb916605402e5c7e81f7d609d0e2204841978f`](./contracts/ethereum-1/0xf2eb916605402e5c7e81f7d609d0e2204841978f/) | SupplyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | Synthetic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa90d9cc2f41a150489da5fffba2060a2938ffdc`](./contracts/ethereum-1/0xaa90d9cc2f41a150489da5fffba2060a2938ffdc/) | SyntheticRebaseDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be`](./contracts/ethereum-1/0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be/) | SynthetixAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0691cf9d171d6c9c3876598b14732248b204c2cf`](./contracts/ethereum-1/0x0691cf9d171d6c9c3876598b14732248b204c2cf/) | SynthetixExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x521c420c2a2b461034becbb41d4888b68951f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | TapFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x101dd6f1f5e396f6ab87407df637cce814e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | TendiesFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e98db51010dd1ade14dd3fb164e218805fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | TetherToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x641e3b5b081fb2fb8b43d5a163649312a28e23da`](./contracts/ethereum-1/0x641e3b5b081fb2fb8b43d5a163649312a28e23da/) | ThreePoolStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67023c56548ba15ad3542e65493311f19adfdd6d`](./contracts/ethereum-1/0x67023c56548ba15ad3542e65493311f19adfdd6d/) | ThreePoolStrategyProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2df93404574dff883e2b35911a684dab1760da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/) | TimeLoanPairFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1994b59e02cd0d09d839b03660c205e88a929b81`](./contracts/ethereum-1/0x1994b59e02cd0d09d839b03660c205e88a929b81/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026d4b8d693f6c446782c2c61ee357ec561dfb61`](./contracts/ethereum-1/0x026d4b8d693f6c446782c2c61ee357ec561dfb61/) | TimelockGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9394839d4f394bb734752af52bddcaa092c6e1e2`](./contracts/ethereum-1/0x9394839d4f394bb734752af52bddcaa092c6e1e2/) | TokenReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b318030c698fd4875726f2f08714a22b8c5f769`](./contracts/ethereum-1/0x0b318030c698fd4875726f2f08714a22b8c5f769/) | TokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eda20f7499aae7bdadc4e52fd72e49663733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | TopFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ada60e07717ab19e4a466f5f0ac68a66e3995ce`](./contracts/ethereum-1/0x0ada60e07717ab19e4a466f5f0ac68a66e3995ce/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x639192d54431f8c816368d3fb4107bc168d0e871`](./contracts/ethereum-1/0x639192d54431f8c816368d3fb4107bc168d0e871/) | TreasuryBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95eabb0248d013b9f59c5d5256ce11b0a8140b54`](./contracts/ethereum-1/0x95eabb0248d013b9f59c5d5256ce11b0a8140b54/) | TreasuryMerkleClaimProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93a62da5a14c80f265dabc077fcee437b1a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | TreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08a90fe0741b7def03fb290cc7b273f1855767d8`](./contracts/ethereum-1/0x08a90fe0741b7def03fb290cc7b273f1855767d8/) | TreasuryVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3b67099121e1fbde6276b2802048d1a7dd1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | TubFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x490e379c9cff64944be82b849f8fd5972c7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | UChildDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0735a62b0b6e837fa67130589988436fd26f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02daefc2e8aad089d094579499508398e3057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61da8b0808cea5281a912cd85421a6d12261d136`](./contracts/ethereum-1/0x61da8b0808cea5281a912cd85421a6d12261d136/) | UniOracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x94b008aa00579c1307b0ef2c499ad98a8ce58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79be524aeca16d117a0a9f0dfa6aec5e31802984`](./contracts/ethereum-1/0x79be524aeca16d117a0a9f0dfa6aec5e31802984/) | V00_Marketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265a48bc9bf5d274e8f88190c26d713524d61edd`](./contracts/ethereum-1/0x265a48bc9bf5d274e8f88190c26d713524d61edd/) | V00_UserRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x185486869e615f5a5644991a491212582caa08fb`](./contracts/ethereum-1/0x185486869e615f5a5644991a491212582caa08fb/) | ValidatorShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf251cb9129fdb7e9ca5cad097de3ea70cab9d8f9`](./contracts/ethereum-1/0xf251cb9129fdb7e9ca5cad097de3ea70cab9d8f9/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69a8b2ae6a3606b766be99c42328459167f51b25`](./contracts/ethereum-1/0x69a8b2ae6a3606b766be99c42328459167f51b25/) | VaultAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0660bf15a89d8e90cba1b3f0ccf493c415b1369d`](./contracts/ethereum-1/0x0660bf15a89d8e90cba1b3f0ccf493c415b1369d/) | VaultCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f59818105abe05ae793a8caedb39fc2bea7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/) | VestingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414b1da0bb6e948dc0559d14ebde9fa9572499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | VoxFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a7d59e327759acd5d11a8fb652bf4072d28ac04`](./contracts/ethereum-1/0x2a7d59e327759acd5d11a8fb652bf4072d28ac04/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | WBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x353f8931ce1c52f643121be129985aab09c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | WETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x017e71e96f2ae777c679740d2d8dc15ed4231981`](./contracts/ethereum-1/0x017e71e96f2ae777c679740d2d8dc15ed4231981/) | WrappedYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x991f0e5c5775ca9dd02e30e67f545c36cff3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0205ae93e18aa23d31e3df53899547b986e419c5`](./contracts/ethereum-1/0x0205ae93e18aa23d31e3df53899547b986e419c5/) | xVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44ff2af361e4b6a2892523d513df5245fc53b367`](./contracts/ethereum-1/0x44ff2af361e4b6a2892523d513df5245fc53b367/) | yAffiliateFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x170411a2d872945ee8c59e4ef5c3402ebe2a221c`](./contracts/ethereum-1/0x170411a2d872945ee8c59e4ef5c3402ebe2a221c/) | yCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c`](./contracts/ethereum-1/0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c/) | ycUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x631d66f79191c86d7b7a7c0e2afae3ae943931a4`](./contracts/ethereum-1/0x631d66f79191c86d7b7a7c0e2afae3ae943931a4/) | ycUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56ab71990783442f68fb25e0b466196c7ca6bd33`](./contracts/ethereum-1/0x56ab71990783442f68fb25e0b466196c7ca6bd33/) | yDAIv2Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61025859c349dfbe6ef0dfca202ef3e84ca05f83`](./contracts/ethereum-1/0x61025859c349dfbe6ef0dfca202ef3e84ca05f83/) | yDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x181aea6936b407514ebfc0754a37704eb8d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | yInsure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d2738fa41e83c5b5633f466f9aa11dae098340b`](./contracts/ethereum-1/0x6d2738fa41e83c5b5633f466f9aa11dae098340b/) | yInsureView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d5ad987b743eb624662fe5c62b8f6015554203a`](./contracts/ethereum-1/0x1d5ad987b743eb624662fe5c62b8f6015554203a/) | yTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09`](./contracts/ethereum-1/0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09/) | yTokenRebalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12c0681dca0deb095f2f192c3ab64bf320af3aff`](./contracts/ethereum-1/0x12c0681dca0deb095f2f192c3ab64bf320af3aff/) | yUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fcda6f268d0c09cdfffe6bceac5233ac2367889`](./contracts/ethereum-1/0x0fcda6f268d0c09cdfffe6bceac5233ac2367889/) | yVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad`](./contracts/ethereum-1/0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad/) | yVaultCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x044deaa1e5a8593adcead599e8d66fb5d3f677b5`](./contracts/ethereum-1/0x044deaa1e5a8593adcead599e8d66fb5d3f677b5/) | yVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x881b06da56bb5675c54e4ed311c21e54c5025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | yWrappedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd716b424423bbc88362ce73ef976d37322eb744`](./contracts/ethereum-1/0xdd716b424423bbc88362ce73ef976d37322eb744/) | Zorro01Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdba3c9f9a427d2bdb7e260353dce57a94cd8ddd8`](./contracts/ethereum-1/0xdba3c9f9a427d2bdb7e260353dce57a94cd8ddd8/) | Zorro02Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bca936670fbf15165312faa3c2eec997e42f4a2`](./contracts/ethereum-1/0x9bca936670fbf15165312faa3c2eec997e42f4a2/) | ZZZToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 300 |
| upstream | 12 |
| standard_library | 17 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=260

Fork inheritance lineage and inherited audits are included when available.
