# Agentic Audit Brief: SingularityDAO

## Project Overview

- Project: SingularityDAO (`singularitydao`)
- Website: [https://singularitydao.ai](https://singularitydao.ai)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.301Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc, ethereum
- Contract surface: 74 unique implementations (74 raw deployments)
- DeFi Llama TVL: $634,043.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 74 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 31 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (clonable, dtoken, dtokenbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 74; live-surface contracts included: 74 (74 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/70 (1.4%)
- Deployed-live implementations: 74 of 74 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/74
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 74
- Raw deployments: 74
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 1.4% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SDAOTokenStaking | unknown | bsc | n/a | [`0x158a1d0144d8e5449305435dfadee07cd2dc85f4`](./contracts/bsc-56/0x158a1d0144d8e5449305435dfadee07cd2dc85f4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BasicLocker | unknown | ethereum | n/a | [`0x9ce9704b1993ff308f1815e0fd44b0dffee2d0dc`](./contracts/ethereum-1/0x9ce9704b1993ff308f1815e0fd44b0dffee2d0dc/) | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | bsc | n/a | [`0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | bsc | n/a | [`0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3`](./contracts/bsc-56/0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3/) | ⚠️ Unaudited |
| BEP20Cardano | unknown | bsc | n/a | [`0x3ee2200efb3400fabb9aacf31297cbdd1d435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | ⚠️ Unaudited |
| BEP20Cosmos | unknown | bsc | n/a | [`0x0eb3a705fc54725037cc9e008bdede697f62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | ⚠️ Unaudited |
| BEP20DAI | unknown | bsc | n/a | [`0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | ⚠️ Unaudited |
| BEP20EOS | unknown | bsc | n/a | [`0x56b6fb708fc5732dec1afc8d8556423a2edccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | ⚠️ Unaudited |
| BEP20Ethereum | unknown | bsc | n/a | [`0x2170ed0880ac9a755fd29b2688956bd959f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | ⚠️ Unaudited |
| BEP20Ontology | unknown | bsc | n/a | [`0xfd7b3a77848f1c2d67e05e54d78d174a0c850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | ⚠️ Unaudited |
| BEP20Polkadot | unknown | bsc | n/a | [`0x7083609fce4d1d8dc0c979aab8c869ea2c873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | ⚠️ Unaudited |
| BEP20Tezos | unknown | bsc | n/a | [`0x16939ef78684453bfdfb47825f8a5f714f12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | ⚠️ Unaudited |
| BEP20XRP | unknown | bsc | n/a | [`0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | ⚠️ Unaudited |
| BEP20YFII | unknown | bsc | n/a | [`0x7f70642d88cf1c4a3a7abb072b53b929b653eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | ⚠️ Unaudited |
| BEP20Zcash | unknown | bsc | n/a | [`0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | ⚠️ Unaudited |
| BscDynaset | unknown | bsc | n/a | [`0x5569b42513203f49a761cc9720d4bb9b6b9e5ab8`](./contracts/bsc-56/0x5569b42513203f49a761cc9720d4bb9b6b9e5ab8/) | ⚠️ Unaudited |
| BscDynasetFactory | unknown | bsc | n/a | [`0x3ee2ba2950d903e235e258e97aadb6e435db166e`](./contracts/bsc-56/0x3ee2ba2950d903e235e258e97aadb6e435db166e/) | ⚠️ Unaudited |
| BscDynasetTvlOracle | unknown | bsc | n/a | [`0x5062f9a49d0fbd82d8f8ec7fa8c7c0131b256b9a`](./contracts/bsc-56/0x5062f9a49d0fbd82d8f8ec7fa8c7c0131b256b9a/) | ⚠️ Unaudited |
| BscForgeV1 | unknown | bsc | n/a | [`0x99bc2acf26c40befca807d3d1255cd0fff9e4d3f`](./contracts/bsc-56/0x99bc2acf26c40befca807d3d1255cd0fff9e4d3f/) | ⚠️ Unaudited |
| DynaLiquidity | unknown | ethereum | n/a | [`0x7df0c08456d3bd8e422b8563c5777954ff948440`](./contracts/ethereum-1/0x7df0c08456d3bd8e422b8563c5777954ff948440/) | ⚠️ Unaudited |
| DynaLiquidityFactory | unknown | ethereum | n/a | [`0xe70d9e544061d4406674a8b9b832e99ea2d5e9c8`](./contracts/ethereum-1/0xe70d9e544061d4406674a8b9b832e99ea2d5e9c8/) | ⚠️ Unaudited |
| DynaLiquidityProxyAssetManager | unknown | ethereum | n/a | [`0xc5c9e60aaf35d673f151b192457a7fc45f27b591`](./contracts/ethereum-1/0xc5c9e60aaf35d673f151b192457a7fc45f27b591/) | ⚠️ Unaudited |
| DynaLiquidityRegistry | unknown | ethereum | n/a | [`0x0cf137ce877006a23066ad079dbd31df4a9d9572`](./contracts/ethereum-1/0x0cf137ce877006a23066ad079dbd31df4a9d9572/) | ⚠️ Unaudited |
| DynaRouter | unknown | ethereum | n/a | [`0xd90606de875022869462660de1d1fa2201ebb1cc`](./contracts/ethereum-1/0xd90606de875022869462660de1d1fa2201ebb1cc/) | ⚠️ Unaudited |
| DynaRouterRegistry | unknown | ethereum | n/a | [`0x574b3dd922785fae0bdcdbd036e0e0aefa3662b1`](./contracts/ethereum-1/0x574b3dd922785fae0bdcdbd036e0e0aefa3662b1/) | ⚠️ Unaudited |
| Dynaset | unknown | ethereum | n/a | [`0x7bb1a6b19e37028b3aa5c580339c640720e35203`](./contracts/ethereum-1/0x7bb1a6b19e37028b3aa5c580339c640720e35203/) | ⚠️ Unaudited |
| DynasetDydx | unknown | ethereum | n/a | [`0x976a95786da6f6ee1c0755ccfb9a22adac2bf7b2`](./contracts/ethereum-1/0x976a95786da6f6ee1c0755ccfb9a22adac2bf7b2/) | ⚠️ Unaudited |
| DynasetDydxFactory | unknown | ethereum | n/a | [`0x7ec9477f973b9585ad7f9d189c6987084d314d8a`](./contracts/ethereum-1/0x7ec9477f973b9585ad7f9d189c6987084d314d8a/) | ⚠️ Unaudited |
| DynasetFactory | unknown | ethereum | n/a | [`0x329527fbe2357b0aa8eeb70f6acaa953920677cf`](./contracts/ethereum-1/0x329527fbe2357b0aa8eeb70f6acaa953920677cf/) | ⚠️ Unaudited |
| DynasetSwap | unknown | ethereum | n/a | [`0x2557fe4e284e4ac49bb24358de3c41de8320c2e7`](./contracts/ethereum-1/0x2557fe4e284e4ac49bb24358de3c41de8320c2e7/) | ⚠️ Unaudited |
| DynasetTvlOracle | unknown | ethereum | n/a | [`0x189e59bde619d56760c742128246af0e2dcb052e`](./contracts/ethereum-1/0x189e59bde619d56760c742128246af0e2dcb052e/) | ⚠️ Unaudited |
| DynaVault | unknown | ethereum | n/a | [`0x2e31b8658b92da408a72bd6186e3215e32154d85`](./contracts/ethereum-1/0x2e31b8658b92da408a72bd6186e3215e32154d85/) | ⚠️ Unaudited |
| DynaVaultManager | unknown | ethereum | n/a | [`0xb0b6371e649596c3c8a9bcffec10da34ea121cbc`](./contracts/ethereum-1/0xb0b6371e649596c3c8a9bcffec10da34ea121cbc/) | ⚠️ Unaudited |
| ForgeV1 | unknown | ethereum | n/a | [`0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2`](./contracts/ethereum-1/0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2/) | ⚠️ Unaudited |
| IndirectOFTV2WithFee | unknown | bsc | n/a | [`0x07ba11a5101eb0bd2f1a0e31b804f2b062129682`](./contracts/bsc-56/0x07ba11a5101eb0bd2f1a0e31b804f2b062129682/) | ⚠️ Unaudited |
| LiquidityArbitrage | unknown | ethereum | n/a | [`0xb4a7bb434da626e5de61a6cafd6d3567f87e60ae`](./contracts/ethereum-1/0xb4a7bb434da626e5de61a6cafd6d3567f87e60ae/) | ⚠️ Unaudited |
| MetaDynaRouter | unknown | ethereum | n/a | [`0x22b0677aead7d34a5220644bf1e5946b7b0f541a`](./contracts/ethereum-1/0x22b0677aead7d34a5220644bf1e5946b7b0f541a/) | ⚠️ Unaudited |
| MinterBurner | unknown | bsc | n/a | [`0x859cf213b258b66d97a0de0dbbd701128b6b9dc9`](./contracts/bsc-56/0x859cf213b258b66d97a0de0dbbd701128b6b9dc9/) | ⚠️ Unaudited |
| MinterBurner2 | unknown | bsc | n/a | [`0x1bd31f5eec707aae3ba00176538002989c1299ba`](./contracts/bsc-56/0x1bd31f5eec707aae3ba00176538002989c1299ba/) | ⚠️ Unaudited |
| MultiPartyEscrow | unknown | ethereum | n/a | [`0x3113fc72341d3dd0f40a9d21db5808f90db9056f`](./contracts/ethereum-1/0x3113fc72341d3dd0f40a9d21db5808f90db9056f/) | ⚠️ Unaudited |
| NativeDynaRouter | unknown | ethereum | n/a | [`0xffe7e972cf77c47bad69ffa91753804c88e28b54`](./contracts/ethereum-1/0xffe7e972cf77c47bad69ffa91753804c88e28b54/) | ⚠️ Unaudited |
| NuNetToken | unknown | ethereum | n/a | [`0xf0d33beda4d734c72684b5f9abbebf715d0a7935`](./contracts/ethereum-1/0xf0d33beda4d734c72684b5f9abbebf715d0a7935/) | ⚠️ Unaudited |
| NuNetUpgradeableToken | unknown | bsc | n/a | [`0xb920a5f350a14f6894f7fee425c0b28753c6b070`](./contracts/bsc-56/0xb920a5f350a14f6894f7fee425c0b28753c6b070/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x3d12e4381901a6b94438758b90881cb03f10b01e`](./contracts/bsc-56/0x3d12e4381901a6b94438758b90881cb03f10b01e/) | ⚠️ Unaudited |
| Pancakeswapv2Oracle | unknown | bsc | n/a | [`0x77607a99dad1b400daa348b68df3b802b03ddf65`](./contracts/bsc-56/0x77607a99dad1b400daa348b68df3b802b03ddf65/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x6297abcc8f7dbef3f97822b7187f831336dffb28`](./contracts/bsc-56/0x6297abcc8f7dbef3f97822b7187f831336dffb28/) | ⚠️ Unaudited |
| ProxyOFTWithFee | unknown | ethereum | n/a | [`0x7df1b50ed82acea5a5200e0d74ab96086b216d32`](./contracts/ethereum-1/0x7df1b50ed82acea5a5200e0d74ab96086b216d32/) | ⚠️ Unaudited |
| ReferenceAssetOracle | unknown | ethereum | n/a | [`0x2281078d3377fb0643b5387b9f46a8f96ba87ddc`](./contracts/ethereum-1/0x2281078d3377fb0643b5387b9f46a8f96ba87ddc/) | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | [`0x21e97a1c7be2eee4d31c183a0cc9defc1b94aeaa`](./contracts/ethereum-1/0x21e97a1c7be2eee4d31c183a0cc9defc1b94aeaa/) | ⚠️ Unaudited |
| SDAOBondedTokenStake | unknown | ethereum | n/a | [`0x01f581fc69ba78355caf2bdd355d0799e91216f0`](./contracts/ethereum-1/0x01f581fc69ba78355caf2bdd355d0799e91216f0/) | ⚠️ Unaudited |
| SDAOClaimpad | unknown | ethereum | n/a | [`0x10c096fb4b3db5f257402e896f7ba03cb21f6260`](./contracts/ethereum-1/0x10c096fb4b3db5f257402e896f7ba03cb21f6260/) | ⚠️ Unaudited |
| SDAOLaunchpad | unknown | bsc | n/a | [`0x04b269391da04209d50ab4f4ad07a580f55e1840`](./contracts/bsc-56/0x04b269391da04209d50ab4f4ad07a580f55e1840/) | ⚠️ Unaudited |
| SDAOLinearSimpleReward | unknown | bsc | n/a | [`0x482eda00d2a150f73e9e478ef6a9cce5bc28a9f5`](./contracts/bsc-56/0x482eda00d2a150f73e9e478ef6a9cce5bc28a9f5/) | ⚠️ Unaudited |
| SDAOLockedStaking | unknown | ethereum | n/a | [`0x23441101d9c346e6b235ab386931d1fed4b4f5b6`](./contracts/ethereum-1/0x23441101d9c346e6b235ab386931d1fed4b4f5b6/) | ⚠️ Unaudited |
| SDAORewardToken | unknown | ethereum | n/a | [`0x44921e42017316f89c1dedd70a3a017d4c5162c3`](./contracts/ethereum-1/0x44921e42017316f89c1dedd70a3a017d4c5162c3/) | ⚠️ Unaudited |
| SDAOUpgradeableToken | unknown | bsc | n/a | [`0xda9c2064687ff02e1331efb39d1be0bc5db600f6`](./contracts/bsc-56/0xda9c2064687ff02e1331efb39d1be0bc5db600f6/) | ⚠️ Unaudited |
| SDAOUpgradeableTokenV3 | unknown | bsc | n/a | [`0x32effe073941a49f40d2e6b7272b943d27fcf60e`](./contracts/bsc-56/0x32effe073941a49f40d2e6b7272b943d27fcf60e/) | ⚠️ Unaudited |
| SDAOUpgradeableTokenV4 | unknown | bsc | n/a | [`0x5cda572fb16b076f79604e09bdffed7a92be5513`](./contracts/bsc-56/0x5cda572fb16b076f79604e09bdffed7a92be5513/) | ⚠️ Unaudited |
| SingDao | unknown | ethereum | n/a | [`0x993864e43caa7f7f12953ad6feb1d1ca635b875f`](./contracts/ethereum-1/0x993864e43caa7f7f12953ad6feb1d1ca635b875f/) | ⚠️ Unaudited |
| SingularityAirdrop | unknown | ethereum | n/a | [`0x076c54b8726ad8b9a24ab10d75b2c1494d34890a`](./contracts/ethereum-1/0x076c54b8726ad8b9a24ab10d75b2c1494d34890a/) | ⚠️ Unaudited |
| SingularityLaunchpad | unknown | ethereum | n/a | [`0x40f67f6924f7934669728be9bebae56f9ed7e96b`](./contracts/ethereum-1/0x40f67f6924f7934669728be9bebae56f9ed7e96b/) | ⚠️ Unaudited |
| SingularityNetToken | unknown | ethereum | n/a | [`0x5b7533812759b45c2b44c19e320ba2cd2681b542`](./contracts/ethereum-1/0x5b7533812759b45c2b44c19e320ba2cd2681b542/) | ⚠️ Unaudited |
| TokenConversionManager | unknown | ethereum | n/a | [`0x611192364cc6962f433a5dc52cd500a423dd7be4`](./contracts/ethereum-1/0x611192364cc6962f433a5dc52cd500a423dd7be4/) | ⚠️ Unaudited |
| TokenLock | unknown | ethereum | n/a | [`0x0292bbb139c7099fed4d36913a2e94c34074578a`](./contracts/ethereum-1/0x0292bbb139c7099fed4d36913a2e94c34074578a/) | ⚠️ Unaudited |
| TokenMigration | unknown | ethereum | n/a | [`0xb8019542931286d1aebaef1165fe1f639e62b0a3`](./contracts/ethereum-1/0xb8019542931286d1aebaef1165fe1f639e62b0a3/) | ⚠️ Unaudited |
| TokenStake | unknown | ethereum | n/a | [`0x13e1367a455c45aa736d7ff2c5656ba2bd05ad46`](./contracts/ethereum-1/0x13e1367a455c45aa736d7ff2c5656ba2bd05ad46/) | ⚠️ Unaudited |
| TokenWhitelistRegistry | unknown | ethereum | n/a | [`0xa84b716fff7241edd423e87374a1ccd88e52788c`](./contracts/ethereum-1/0xa84b716fff7241edd423e87374a1ccd88e52788c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x5c4bcc4dbaeabc7659f6435bce4e659314ebad87`](./contracts/bsc-56/0x5c4bcc4dbaeabc7659f6435bce4e659314ebad87/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x82f542523d33e31db910ca9c08adc37b4ce66d59`](./contracts/bsc-56/0x82f542523d33e31db910ca9c08adc37b4ce66d59/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x3a925503970d40d36d2329e3846e09fcfc9b6acb`](./contracts/ethereum-1/0x3a925503970d40d36d2329e3846e09fcfc9b6acb/) | ⚠️ Unaudited |
| UsdcOracle | unknown | ethereum | n/a | [`0x2989d5b5cd2a1d0735661067f9f9471f57851981`](./contracts/ethereum-1/0x2989d5b5cd2a1d0735661067f9f9471f57851981/) | ⚠️ Unaudited |
| VaultDynaZapper | unknown | ethereum | n/a | [`0x8f85ddb2c6fabe98ca3f2499b969f02f97046194`](./contracts/ethereum-1/0x8f85ddb2c6fabe98ca3f2499b969f02f97046194/) | ⚠️ Unaudited |
| VaultFactory | unknown | ethereum | n/a | [`0x877e9172d67387091a67c09803f2993e256c4bf4`](./contracts/ethereum-1/0x877e9172d67387091a67c09803f2993e256c4bf4/) | ⚠️ Unaudited |
| VaultRegistry | unknown | ethereum | n/a | [`0x139e5f41be11797afe3fee58dc335349324c4083`](./contracts/ethereum-1/0x139e5f41be11797afe3fee58dc335349324c4083/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/singularitydao) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9ce9704b1993ff308f1815e0fd44b0dffee2d0dc`](./contracts/ethereum-1/0x9ce9704b1993ff308f1815e0fd44b0dffee2d0dc/) | BasicLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | BEP20BandProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3`](./contracts/bsc-56/0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3/) | BEP20BitcoinCash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3ee2200efb3400fabb9aacf31297cbdd1d435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | BEP20Cardano | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eb3a705fc54725037cc9e008bdede697f62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | BEP20Cosmos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | BEP20DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56b6fb708fc5732dec1afc8d8556423a2edccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | BEP20EOS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2170ed0880ac9a755fd29b2688956bd959f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | BEP20Ethereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd7b3a77848f1c2d67e05e54d78d174a0c850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | BEP20Ontology | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7083609fce4d1d8dc0c979aab8c869ea2c873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | BEP20Polkadot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x16939ef78684453bfdfb47825f8a5f714f12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | BEP20Tezos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | BEP20XRP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7f70642d88cf1c4a3a7abb072b53b929b653eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | BEP20YFII | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | BEP20Zcash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5569b42513203f49a761cc9720d4bb9b6b9e5ab8`](./contracts/bsc-56/0x5569b42513203f49a761cc9720d4bb9b6b9e5ab8/) | BscDynaset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3ee2ba2950d903e235e258e97aadb6e435db166e`](./contracts/bsc-56/0x3ee2ba2950d903e235e258e97aadb6e435db166e/) | BscDynasetFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5062f9a49d0fbd82d8f8ec7fa8c7c0131b256b9a`](./contracts/bsc-56/0x5062f9a49d0fbd82d8f8ec7fa8c7c0131b256b9a/) | BscDynasetTvlOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99bc2acf26c40befca807d3d1255cd0fff9e4d3f`](./contracts/bsc-56/0x99bc2acf26c40befca807d3d1255cd0fff9e4d3f/) | BscForgeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7df0c08456d3bd8e422b8563c5777954ff948440`](./contracts/ethereum-1/0x7df0c08456d3bd8e422b8563c5777954ff948440/) | DynaLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe70d9e544061d4406674a8b9b832e99ea2d5e9c8`](./contracts/ethereum-1/0xe70d9e544061d4406674a8b9b832e99ea2d5e9c8/) | DynaLiquidityFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5c9e60aaf35d673f151b192457a7fc45f27b591`](./contracts/ethereum-1/0xc5c9e60aaf35d673f151b192457a7fc45f27b591/) | DynaLiquidityProxyAssetManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf137ce877006a23066ad079dbd31df4a9d9572`](./contracts/ethereum-1/0x0cf137ce877006a23066ad079dbd31df4a9d9572/) | DynaLiquidityRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd90606de875022869462660de1d1fa2201ebb1cc`](./contracts/ethereum-1/0xd90606de875022869462660de1d1fa2201ebb1cc/) | DynaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x574b3dd922785fae0bdcdbd036e0e0aefa3662b1`](./contracts/ethereum-1/0x574b3dd922785fae0bdcdbd036e0e0aefa3662b1/) | DynaRouterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bb1a6b19e37028b3aa5c580339c640720e35203`](./contracts/ethereum-1/0x7bb1a6b19e37028b3aa5c580339c640720e35203/) | Dynaset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x976a95786da6f6ee1c0755ccfb9a22adac2bf7b2`](./contracts/ethereum-1/0x976a95786da6f6ee1c0755ccfb9a22adac2bf7b2/) | DynasetDydx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ec9477f973b9585ad7f9d189c6987084d314d8a`](./contracts/ethereum-1/0x7ec9477f973b9585ad7f9d189c6987084d314d8a/) | DynasetDydxFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x329527fbe2357b0aa8eeb70f6acaa953920677cf`](./contracts/ethereum-1/0x329527fbe2357b0aa8eeb70f6acaa953920677cf/) | DynasetFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2557fe4e284e4ac49bb24358de3c41de8320c2e7`](./contracts/ethereum-1/0x2557fe4e284e4ac49bb24358de3c41de8320c2e7/) | DynasetSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x189e59bde619d56760c742128246af0e2dcb052e`](./contracts/ethereum-1/0x189e59bde619d56760c742128246af0e2dcb052e/) | DynasetTvlOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e31b8658b92da408a72bd6186e3215e32154d85`](./contracts/ethereum-1/0x2e31b8658b92da408a72bd6186e3215e32154d85/) | DynaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0b6371e649596c3c8a9bcffec10da34ea121cbc`](./contracts/ethereum-1/0xb0b6371e649596c3c8a9bcffec10da34ea121cbc/) | DynaVaultManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2`](./contracts/ethereum-1/0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2/) | ForgeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07ba11a5101eb0bd2f1a0e31b804f2b062129682`](./contracts/bsc-56/0x07ba11a5101eb0bd2f1a0e31b804f2b062129682/) | IndirectOFTV2WithFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4a7bb434da626e5de61a6cafd6d3567f87e60ae`](./contracts/ethereum-1/0xb4a7bb434da626e5de61a6cafd6d3567f87e60ae/) | LiquidityArbitrage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22b0677aead7d34a5220644bf1e5946b7b0f541a`](./contracts/ethereum-1/0x22b0677aead7d34a5220644bf1e5946b7b0f541a/) | MetaDynaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x859cf213b258b66d97a0de0dbbd701128b6b9dc9`](./contracts/bsc-56/0x859cf213b258b66d97a0de0dbbd701128b6b9dc9/) | MinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1bd31f5eec707aae3ba00176538002989c1299ba`](./contracts/bsc-56/0x1bd31f5eec707aae3ba00176538002989c1299ba/) | MinterBurner2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3113fc72341d3dd0f40a9d21db5808f90db9056f`](./contracts/ethereum-1/0x3113fc72341d3dd0f40a9d21db5808f90db9056f/) | MultiPartyEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xffe7e972cf77c47bad69ffa91753804c88e28b54`](./contracts/ethereum-1/0xffe7e972cf77c47bad69ffa91753804c88e28b54/) | NativeDynaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0d33beda4d734c72684b5f9abbebf715d0a7935`](./contracts/ethereum-1/0xf0d33beda4d734c72684b5f9abbebf715d0a7935/) | NuNetToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb920a5f350a14f6894f7fee425c0b28753c6b070`](./contracts/bsc-56/0xb920a5f350a14f6894f7fee425c0b28753c6b070/) | NuNetUpgradeableToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3d12e4381901a6b94438758b90881cb03f10b01e`](./contracts/bsc-56/0x3d12e4381901a6b94438758b90881cb03f10b01e/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x77607a99dad1b400daa348b68df3b802b03ddf65`](./contracts/bsc-56/0x77607a99dad1b400daa348b68df3b802b03ddf65/) | Pancakeswapv2Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7df1b50ed82acea5a5200e0d74ab96086b216d32`](./contracts/ethereum-1/0x7df1b50ed82acea5a5200e0d74ab96086b216d32/) | ProxyOFTWithFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2281078d3377fb0643b5387b9f46a8f96ba87ddc`](./contracts/ethereum-1/0x2281078d3377fb0643b5387b9f46a8f96ba87ddc/) | ReferenceAssetOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21e97a1c7be2eee4d31c183a0cc9defc1b94aeaa`](./contracts/ethereum-1/0x21e97a1c7be2eee4d31c183a0cc9defc1b94aeaa/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01f581fc69ba78355caf2bdd355d0799e91216f0`](./contracts/ethereum-1/0x01f581fc69ba78355caf2bdd355d0799e91216f0/) | SDAOBondedTokenStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10c096fb4b3db5f257402e896f7ba03cb21f6260`](./contracts/ethereum-1/0x10c096fb4b3db5f257402e896f7ba03cb21f6260/) | SDAOClaimpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04b269391da04209d50ab4f4ad07a580f55e1840`](./contracts/bsc-56/0x04b269391da04209d50ab4f4ad07a580f55e1840/) | SDAOLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x482eda00d2a150f73e9e478ef6a9cce5bc28a9f5`](./contracts/bsc-56/0x482eda00d2a150f73e9e478ef6a9cce5bc28a9f5/) | SDAOLinearSimpleReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23441101d9c346e6b235ab386931d1fed4b4f5b6`](./contracts/ethereum-1/0x23441101d9c346e6b235ab386931d1fed4b4f5b6/) | SDAOLockedStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44921e42017316f89c1dedd70a3a017d4c5162c3`](./contracts/ethereum-1/0x44921e42017316f89c1dedd70a3a017d4c5162c3/) | SDAORewardToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xda9c2064687ff02e1331efb39d1be0bc5db600f6`](./contracts/bsc-56/0xda9c2064687ff02e1331efb39d1be0bc5db600f6/) | SDAOUpgradeableToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x32effe073941a49f40d2e6b7272b943d27fcf60e`](./contracts/bsc-56/0x32effe073941a49f40d2e6b7272b943d27fcf60e/) | SDAOUpgradeableTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5cda572fb16b076f79604e09bdffed7a92be5513`](./contracts/bsc-56/0x5cda572fb16b076f79604e09bdffed7a92be5513/) | SDAOUpgradeableTokenV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x993864e43caa7f7f12953ad6feb1d1ca635b875f`](./contracts/ethereum-1/0x993864e43caa7f7f12953ad6feb1d1ca635b875f/) | SingDao | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x076c54b8726ad8b9a24ab10d75b2c1494d34890a`](./contracts/ethereum-1/0x076c54b8726ad8b9a24ab10d75b2c1494d34890a/) | SingularityAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40f67f6924f7934669728be9bebae56f9ed7e96b`](./contracts/ethereum-1/0x40f67f6924f7934669728be9bebae56f9ed7e96b/) | SingularityLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b7533812759b45c2b44c19e320ba2cd2681b542`](./contracts/ethereum-1/0x5b7533812759b45c2b44c19e320ba2cd2681b542/) | SingularityNetToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x611192364cc6962f433a5dc52cd500a423dd7be4`](./contracts/ethereum-1/0x611192364cc6962f433a5dc52cd500a423dd7be4/) | TokenConversionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0292bbb139c7099fed4d36913a2e94c34074578a`](./contracts/ethereum-1/0x0292bbb139c7099fed4d36913a2e94c34074578a/) | TokenLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8019542931286d1aebaef1165fe1f639e62b0a3`](./contracts/ethereum-1/0xb8019542931286d1aebaef1165fe1f639e62b0a3/) | TokenMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13e1367a455c45aa736d7ff2c5656ba2bd05ad46`](./contracts/ethereum-1/0x13e1367a455c45aa736d7ff2c5656ba2bd05ad46/) | TokenStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa84b716fff7241edd423e87374a1ccd88e52788c`](./contracts/ethereum-1/0xa84b716fff7241edd423e87374a1ccd88e52788c/) | TokenWhitelistRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2989d5b5cd2a1d0735661067f9f9471f57851981`](./contracts/ethereum-1/0x2989d5b5cd2a1d0735661067f9f9471f57851981/) | UsdcOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f85ddb2c6fabe98ca3f2499b969f02f97046194`](./contracts/ethereum-1/0x8f85ddb2c6fabe98ca3f2499b969f02f97046194/) | VaultDynaZapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x877e9172d67387091a67c09803f2993e256c4bf4`](./contracts/ethereum-1/0x877e9172d67387091a67c09803f2993e256c4bf4/) | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x139e5f41be11797afe3fee58dc335349324c4083`](./contracts/ethereum-1/0x139e5f41be11797afe3fee58dc335349324c4083/) | VaultRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
