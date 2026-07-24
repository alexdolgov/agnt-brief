# Agentic Audit Brief: SingularityDAO

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

- Project: SingularityDAO (`singularitydao`)
- Website: [https://singularitydao.ai](https://singularitydao.ai)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 299 unique implementations (301 raw deployments)
- Coverage basis: 0/8 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $634,043.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SingularityDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across bsc, ethereum. Structural roles: 6 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (6), supporting (1)
- Contract kinds: contract (7)
- Detected standards: erc20 (6), accesscontrol (2), pausable (2), erc1967proxy (1), ownable (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Dynaset (`0x7bb1a6b19e37028b3aa5c580339c640720e35203`, chain 1)
- Dynaset (`0xda49af8773cb162ca56f8431442c750896f8c87a`, chain 1)
- DynasetDydx (`0x976a95786da6f6ee1c0755ccfb9a22adac2bf7b2`, chain 1)
- ForgeV1 (`0x5d94f225cabd9010c8206c1036c6352f66c06e57`, chain 1)
- ForgeV1 (`0xa5a94da27e2533ced5c68d6dfabdb5fb4269dd97`, chain 1)
- ForgeV1 (`0xe125044733366071793afd1f9cb41521078dd029`, chain 1)
- SingDao (`0x993864e43caa7f7f12953ad6feb1d1ca635b875f`, chain 1)
- TransparentUpgradeableProxy (`0x90ed8f1dc86388f14b64ba8fb4bbd23099f18240`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (3 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 288 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 8 of 299 unique; 291 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/78
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 221
- Unique implementations: 299
- Raw deployments: 301
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BasicLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce9704b1993ff308f1815e0fd44b0dffee2d0dc` | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18` | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3` | ⚠️ Unaudited |
| BEP20Cardano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ee2200efb3400fabb9aacf31297cbdd1d435d47` | ⚠️ Unaudited |
| BEP20Cosmos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb3a705fc54725037cc9e008bdede697f62f335` | ⚠️ Unaudited |
| BEP20DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3` | ⚠️ Unaudited |
| BEP20EOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6fb708fc5732dec1afc8d8556423a2edccbd6` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ⚠️ Unaudited |
| BEP20Ontology | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd7b3a77848f1c2d67e05e54d78d174a0c850335` | ⚠️ Unaudited |
| BEP20Polkadot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7083609fce4d1d8dc0c979aab8c869ea2c873402` | ⚠️ Unaudited |
| BEP20Tezos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16939ef78684453bfdfb47825f8a5f714f12623a` | ⚠️ Unaudited |
| BEP20XRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe` | ⚠️ Unaudited |
| BEP20YFII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f70642d88cf1c4a3a7abb072b53b929b653eda5` | ⚠️ Unaudited |
| BEP20Zcash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb` | ⚠️ Unaudited |
| BscDynaset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5569b42513203f49a761cc9720d4bb9b6b9e5ab8` | ⚠️ Unaudited |
| BscDynasetFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ee2ba2950d903e235e258e97aadb6e435db166e` | ⚠️ Unaudited |
| BscDynasetTvlOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5062f9a49d0fbd82d8f8ec7fa8c7c0131b256b9a` | ⚠️ Unaudited |
| BscForgeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99bc2acf26c40befca807d3d1255cd0fff9e4d3f` | ⚠️ Unaudited |
| DynaLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df0c08456d3bd8e422b8563c5777954ff948440` | ⚠️ Unaudited |
| DynaLiquidityFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe70d9e544061d4406674a8b9b832e99ea2d5e9c8` | ⚠️ Unaudited |
| DynaLiquidityProxyAssetManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5c9e60aaf35d673f151b192457a7fc45f27b591` | ⚠️ Unaudited |
| DynaLiquidityRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf137ce877006a23066ad079dbd31df4a9d9572` | ⚠️ Unaudited |
| DynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90606de875022869462660de1d1fa2201ebb1cc` | ⚠️ Unaudited |
| DynaRouterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x574b3dd922785fae0bdcdbd036e0e0aefa3662b1` | ⚠️ Unaudited |
| Dynaset | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392573 | `0x7bb1a6b19e37028b3aa5c580339c640720e35203` | ⚠️ Unaudited |
| Dynaset | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392577 | `0xda49af8773cb162ca56f8431442c750896f8c87a` | ⚠️ Unaudited |
| DynasetDydx | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392574 | `0x976a95786da6f6ee1c0755ccfb9a22adac2bf7b2` | ⚠️ Unaudited |
| DynasetDydxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec9477f973b9585ad7f9d189c6987084d314d8a` | ⚠️ Unaudited |
| DynasetFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x329527fbe2357b0aa8eeb70f6acaa953920677cf` | ⚠️ Unaudited |
| DynasetSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2557fe4e284e4ac49bb24358de3c41de8320c2e7` | ⚠️ Unaudited |
| DynasetTvlOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x189e59bde619d56760c742128246af0e2dcb052e` | ⚠️ Unaudited |
| DynaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e31b8658b92da408a72bd6186e3215e32154d85` | ⚠️ Unaudited |
| DynaVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0b6371e649596c3c8a9bcffec10da34ea121cbc` | ⚠️ Unaudited |
| ForgeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b3dd2b07613ef877cf6392a971d00e36fe2ee2` | ⚠️ Unaudited |
| ForgeV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392572 | `0x5d94f225cabd9010c8206c1036c6352f66c06e57` | ⚠️ Unaudited |
| ForgeV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392576 | `0xa5a94da27e2533ced5c68d6dfabdb5fb4269dd97` | ⚠️ Unaudited |
| ForgeV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392578 | `0xe125044733366071793afd1f9cb41521078dd029` | ⚠️ Unaudited |
| IndirectOFTV2WithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07ba11a5101eb0bd2f1a0e31b804f2b062129682` | ⚠️ Unaudited |
| LiquidityArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a7bb434da626e5de61a6cafd6d3567f87e60ae` | ⚠️ Unaudited |
| MetaDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b0677aead7d34a5220644bf1e5946b7b0f541a` | ⚠️ Unaudited |
| MinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x859cf213b258b66d97a0de0dbbd701128b6b9dc9` | ⚠️ Unaudited |
| MinterBurner2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bd31f5eec707aae3ba00176538002989c1299ba` | ⚠️ Unaudited |
| MultiPartyEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3113fc72341d3dd0f40a9d21db5808f90db9056f` | ⚠️ Unaudited |
| NativeDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe7e972cf77c47bad69ffa91753804c88e28b54` | ⚠️ Unaudited |
| NuNetToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-392579 | `0xf0d33beda4d734c72684b5f9abbebf715d0a7935` | ⚠️ Unaudited |
| NuNetUpgradeableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb920a5f350a14f6894f7fee425c0b28753c6b070` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d12e4381901a6b94438758b90881cb03f10b01e` | ⚠️ Unaudited |
| Pancakeswapv2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77607a99dad1b400daa348b68df3b802b03ddf65` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6297abcc8f7dbef3f97822b7187f831336dffb28` | ⚠️ Unaudited |
| ProxyOFTWithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df1b50ed82acea5a5200e0d74ab96086b216d32` | ⚠️ Unaudited |
| ReferenceAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2281078d3377fb0643b5387b9f46a8f96ba87ddc` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21e97a1c7be2eee4d31c183a0cc9defc1b94aeaa` | ⚠️ Unaudited |
| SDAOBondedTokenStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f581fc69ba78355caf2bdd355d0799e91216f0` | ⚠️ Unaudited |
| SDAOClaimpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10c096fb4b3db5f257402e896f7ba03cb21f6260` | ⚠️ Unaudited |
| SDAOLaunchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04b269391da04209d50ab4f4ad07a580f55e1840` | ⚠️ Unaudited |
| SDAOLinearSimpleReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x482eda00d2a150f73e9e478ef6a9cce5bc28a9f5` | ⚠️ Unaudited |
| SDAOLockedStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23441101d9c346e6b235ab386931d1fed4b4f5b6` | ⚠️ Unaudited |
| SDAORewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44921e42017316f89c1dedd70a3a017d4c5162c3` | ⚠️ Unaudited |
| SDAOTokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x158a1d0144d8e5449305435dfadee07cd2dc85f4` | ⚠️ Unaudited |
| SDAOUpgradeableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda9c2064687ff02e1331efb39d1be0bc5db600f6` | ⚠️ Unaudited |
| SDAOUpgradeableTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32effe073941a49f40d2e6b7272b943d27fcf60e` | ⚠️ Unaudited |
| SDAOUpgradeableTokenV4 | unknown | project_anchor | own_supporting | 1 | bsc | unit-392580 | 2 deployments: bsc `0x5cda572fb16b076f79604e09bdffed7a92be5513`; bsc `0x90ed8f1dc86388f14b64ba8fb4bbd23099f18240` | ⚠️ Unaudited |
| SingDao | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392575 | `0x993864e43caa7f7f12953ad6feb1d1ca635b875f` | ⚠️ Unaudited |
| SingularityAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076c54b8726ad8b9a24ab10d75b2c1494d34890a` | ⚠️ Unaudited |
| SingularityLaunchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40f67f6924f7934669728be9bebae56f9ed7e96b` | ⚠️ Unaudited |
| SingularityNetToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-392571 | `0x5b7533812759b45c2b44c19e320ba2cd2681b542` | ⚠️ Unaudited |
| TokenConversionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x611192364cc6962f433a5dc52cd500a423dd7be4` | ⚠️ Unaudited |
| TokenLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0292bbb139c7099fed4d36913a2e94c34074578a` | ⚠️ Unaudited |
| TokenMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8019542931286d1aebaef1165fe1f639e62b0a3` | ⚠️ Unaudited |
| TokenStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e1367a455c45aa736d7ff2c5656ba2bd05ad46` | ⚠️ Unaudited |
| TokenWhitelistRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84b716fff7241edd423e87374a1ccd88e52788c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x566fefc10489abbc3a07e7d6482b5843ad85edce`; bsc `0x82f542523d33e31db910ca9c08adc37b4ce66d59` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-392581 | `0x5c4bcc4dbaeabc7659f6435bce4e659314ebad87` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a925503970d40d36d2329e3846e09fcfc9b6acb` | ⚠️ Unaudited |
| UsdcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2989d5b5cd2a1d0735661067f9f9471f57851981` | ⚠️ Unaudited |
| VaultDynaZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f85ddb2c6fabe98ca3f2499b969f02f97046194` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x877e9172d67387091a67c09803f2993e256c4bf4` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x139e5f41be11797afe3fee58dc335349324c4083` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (221)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047dff965cb7ec02fb5ba2f83afa7ae0fde8a887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05683b18906bcc45963780e852e8a2df3c1a8789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a3f33fa53b76b331bf48ccbf2b5547e404c76b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae165ac50e78019da056a01e528ff817f6f3f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b17c09f32a9701a9ee7d516403c09947c376aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d35208d1cf5767f176749fe5fe130ae971dcc1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db724eafff898106f1ac31fe62a871099b63da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11e529b8eeffb2795a90d3468c6668506e599057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b89cb4e324af944383d70074527c6751caed01b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec497921ebb9a634298498758d7fa7f8628b83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22693730dd73a2acb90971916a1eb5435c3434a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x247debebb766e4fa99667265a158060018d5f4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25306ce5affe27d2235696e1e029353ec6d43455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b0565b1edf12c5dac3eaef92e83dd0e5fe5a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26b3f75c3ebe699e6d2fce9bfef8542dba1143bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2785d18ccc3f4193412f740db4e4f7084c7e648e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a1f15fdd46fb0c78171c45e60f12dcad4006ef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a9ba82857eb2eee65da379ce3c08760ecda4766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2acaeb8b109eaf9e1bc25f838dcca022495ea13b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d367d5b442135b29a4705871e4c7d34382cb442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e3fdbd7224b5bae757d3265c804afa5810dc13f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ff22f87fdc01ecc235126b98ddc00f70dd2ae0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31cd039d37dee0c989cbe390f668fc38b033fb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31d3335a925c9b1355f255bc87ab151650f6808f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x327ab005e8af010b609ba566b7ca84303012edd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3403c135a92f4d58ca1e89b0014f31e138e01624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34e2eee197efaabecc495fdf3b1781a3b894eb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35717340ece0af8295386ece150c915d1c45d294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35b24be964fa0a0cda6e57331b9ea5de7d9827c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e1fdfe488418f5e42fd542a4915903f086d219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abf84f48eb615c277c6b8c6c39bb87c44ee9c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b62226a70f4217deb3f688f08b543131155de27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c29c47f0bbe6e100cbb8d96970e181b17c26ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9d954a5e9fff8a3b9495094adee9b5c2233e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ca4f935c25669c6dee5b4b8212e52606890f1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce426bb2fcb9e1300bbe03e2d34d7b3b7347db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x426ceb9f2bb55c8f742a6023bda9596c03652f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f2c02532cdcdfeee862949f0f2c43398e9961e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44dcbe49977da78fa994954e2b4c1c0a021af7bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d5023416e8ce1347aa35f105a5b19e2e448bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ac9511d283d6db5338bb5f9a34bbd46a12ee1be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c12821ea5693d77b3a8567e5b912f3fef519926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e701dd33e34c4fc221adc8c43c230d1d9702a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f508b9b9841baa6c0764cd7c263bdc26dcdf11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fcfaf5d75f735b937dc88dc0b1b9d80c04736ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502b965d3d51d4fd531e6a1c1fa9bfa50337ba55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5063afae71ce805d327bcade83376d3dbccfa21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x509860451d2553083f4f1f22331985450928c962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5207ac5a8462cc8ea5b81bc7790f6c4458dccb17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55d2ec76153cba452d51e636e7c981dbb282a958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59cf54d9529599aef108014660ca6cd8c02bd210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c95a3853b107847cf032a0323573824d285a580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cadcf74a14a6aa67e95e418625b82831b241b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d8d0cedddb88a62ec8ebbb4b6477c5f043f9abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e592f9b1d303183d963635f895f0f0c48284f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641adbd9bfa73d6323e43b80198fd04042392bf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698573504b1f44daadb2de17a3f6a11f2d005a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1a21968eb8e708fb15732abbbd942c5da2bb55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a9acaad828109b51035d75d643956ebb5f8f29f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c0d706c75b559549938c0b1de863cf7f042d1cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f2fab76486a4e4a9837b5a74fc9095ef231f7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x738f880ea706177f0f97fe0608367c5ab2c49cd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e92a1135fcce90dbc6431b2e916d7623c9bef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74641ed232dbb8cbd9847484dd020d44453f0368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a3d203f41aa40c5a01677b5ad194f7a6040ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e697d28b5d4981708a05623bd67eb9bc87b9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77ff83ea209d326f1e30ed6df0322ebc16e74b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79f5bf2a1ca3fd910a4183ba0913ba9fa9f8df53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cc63d9d3db18d4244c2f0efd0ca6fed605d83fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d32287b9c3b0ff508a19cdbe0834480b0e15ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ebbcf5b5131ba17769e46e373c5dce49e64f8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81f769e48be27edc4b9fd0295ea9bb41d1ab9631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e6943ce8cc550e3ab91217d1feacf4d665d1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a01f9708b3e10b79863def4ee13f06636852211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d18f53a54b55d6cc23528d9a80824c7dd3ec494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e55824ce54574ebec5e09ff601b0b45e3945ebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f230de6d87abf5aa4486450bd8da53db5fcf532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a6f755f17d80f1522472724a98586733eb312b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cfd89ee8e809df40c2fc0abd5a9c806687dad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92e494690719fcd6a9d2949dccfe8884c274bd1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9409308972cdb7cab2ee24932c17c3eb55f2a7f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95613f2f7999aa3c08568a2f98c9b072f23e941f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989a13f1558b40cccdca97c2cc47788b15f02cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9913668270f6e93406716bcd1b6bfe4d0afd3687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x997fbe1158289b664443fbb1d9b9bac595157843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f1e8405853d13f9c19596051888235214bd7b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c9252ec9fa844e2c7bd2e6f54bec2901938479f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d94e8572fa14ec54f183e00ed2590f5913cea0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa37f48577a9141bd94e7d6a2c976852c77d2baa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53db120a4af6361c9ef1f13e6d32368c93fb7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaaee5ceae9923a264c50a60b2612c454b132d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac08692af250eaa113dcf2e7fd9faa7b4b40823b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacbc394144e5ed74b59536149ab477e978bec74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee37b7449cfc757ad2becfe647747364c09021b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf83f4eb951b56421af08c377f63082e964f5bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafb3a0470b7d00aa7236607fa04586c861896733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb000e616fd5ef964d586375e2ad1dbb23d1b9e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb000ebf350c492a068138667fa1405ae21159981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09b886efde5d3ad6af898d16de9178c87ec4be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb245ab0d2e9dfb99b1212eb3d7732c22591557a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb267deaace0b8c5fcb2bb04801a364e7af7da3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3180a92e210b45e3447976a412ac0df859febaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6d50604224494589a896d2aec40d47bfe871670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6ecf70f4555627ec8fc615b17a1ef624140793f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb926bf02c456854eb0b8ec4a617bcee148a40588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc26711ba0063cfcc89ac08873d5f6f37018f077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd0fe6caf25a541b9ac1a64bdfac2c11ad18e772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfbff7e9e5ae56dae6736bf93fd56a6a7821dc7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbff96b6b1b18da72dc67673cf247da077f7a01e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc120453ed0dfbe922ca6d991567650ad97029b87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc177db379f69646c5690940a97503a4cdfda6855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1a42fa3ee6280205e935445f5ed3a9a27eac285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc38f4fb8ed75c3a6b9e7ac65cc7bb84fb6054ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6540e48c62a522ba6e4d1435f43f3b5934c88b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6da7bd77556bb4195c0f9c5ad6251b2d7a7cd32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc73bd7df2ec6fb1b32819375017b5b25e674bd95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc803f7bf44b60981b286c0a1358fed052f86163e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbdf485bd096a536daf5a6b9d57dbe68004df1a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf202921689e1d070e10efee6701032934f58e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce0cc1bbd23db9f661928c08249c650dfffbd07f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce92c693819b192d2a7b813b840dbdf02e8a6a31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce99861f0244d6478a309e2c2565fdaaaa8b0bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1061ff97c34835b90e3f8080e3ae2e5c8b38f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd189662f5c4d93f63088c4a3c09a65ef476e3235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd214ea34d03a8308b1def7dfe52c29c6a1e6f54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd32050abdebcc751d7889bc928be807812337e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ebba77ffed4d7f6b2c6120cc9ab98c72a548d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd519dfc46263aebaa4fa43c7666c091016c344ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd54df396acdb85ba655b4b18667787fed44a676e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6aaaec9ee40f11a59524b1e564a89c5a7fcd8dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b1797ca8351af12506b12e5df79c6cbb746a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8326db97efbd6207f5854a315299f3b3621d88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ba3a437ae3e95a9be47dc2bf46a05723deed89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9c2064687ff02e1331efb39d1be0bc5db600f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab520daef5103bef2deda4ecf0de376ef208340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce9c76ccb881af94f7fb4fac94e4acc584fa9a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf89ef87f8f0548036470a533bec0dd2e5bb0465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf8d4826e016afa8803d94a716feb70ad5d2b8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf8d77cdd16880f6db4730088b84a7500f0275c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe000e8ee3a775fca7ac75140c53cae0ba86cc801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe03fd2fbe80dbfd039e48f3e5c63cf35b2e71391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe06bf85ecb41d1a5f271e0d6692e31ee714e8474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe11a2344eceaf5705a258374d71d083392af1a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81ec5db7fc09365d9f283c442dc891338c6cf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeec9f7f0ccea10bb0d08e6355c2456e85862a485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa2ff306e1e1bc2d19b69ed7d6933f3fd0b6936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb3d4413b6ba255e1c4923f76259ddc70661648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf01e736d91f823abb8c516f7cfcfd9a6081624b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12a08d9e3e6490facbcc41714d7f2f2fe65698f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf19bcfe8eba7446220f0bc462ccf53c66cbbdb54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2079c409ea8da4758626cf72a721dccdb0c494c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2a3300eb0574951e893ebff15089edb38fcfa3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf543eae1860e9b6ac2bb1d3026b91e97676ebe78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf54540d9b20f13c88aa3def142bc34bdeb3acf40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5738b4ad2f8302b926676692a0c09603d930b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6b2795ee79606faf84d68b9e01488f4d21fe096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84dcbcd646a56d47ea0cb1cd447797acc682f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf97cee6e60f63ac96007300bbef87d44bfca3620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaa174330290735fa518dd5bd634e1d591cb69a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb2f4d56290054d91c18186e8481ec96ddf646b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb85b9ec50560e302ab106f1e2857d95132120d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc03b1c6d16dfd1461857263f7e647558a9dbf0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc8ad53ff00f8d8f377c75361da4080adbdc21e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcf640954f2b3221b6280f1a6e840bde99379096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd95c5562744f0f8ae54d48827936f6b8ec28041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdad14303ea4c7b0a8be7c453a9bfbc57208986d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e446faad63e344167489b5cf1111f4cc305cbd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17de46760f4c18c26eec36117c23793299f564a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e68233896b6ef78b58788bf9553c1f8fd141456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ec497921ebb9a634298498758d7fa7f8628b83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bb1608772f8e3c6b62032be3db0938842941979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f34adf6faf36cc538fc73f169b7e436d4e99a5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x335095094b8bf3d435dd7bde6298ebd8499f2665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x393ec777f724dd2b98cbebfd46675bffd43dcc5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x404f3eb857cd65fd52ecc8691c2d307f8506e2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f9fdea47beeb369493d6e8e4cf4ccd55b5a969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e701dd33e34c4fc221adc8c43c230d1d9702a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55dc9629c2e87ec73d6ec842f01aae93566237cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56f5a6d09955b4dfca18707d5034f09f86c3a7d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5770871d5ffc6320dfe085e32ecfbbcbd5953221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5aba27038ad7f606876df7469b16fd2755601bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62a7953d722e85bf1eb08db6a66ae3545a7e4a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x636a7f9811b326e1081d8fee03ef7f47948bd476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ecbb7ee3e0bdb132d320e17d0af91bac2b01e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f8333d3e3045f23f551cc0e62d14a0a2d12e30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x738a23a889a6257ea8678803e4b8db9605d63b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x787b2df12dae4808392b62308e8800c6b5f20c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79292c62f593e08d9b850b790b07e7a0903fd007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79d5973479521c18779cbceee76ed6078f2aeb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b6102e9a52dc1d9d41ac8b505c52ddd57592d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f8e355c67f23c7989ea134e880ae41127793111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x834f5e38372329441623592732c80173123ce02a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x942d21ebd144765e3bcf295886d44b684df1e1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x944c7eba44c610e5c1ff402eee96d00d0aee31e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x978275f26102fbaa430d8e74f2ffbe5827beb6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c4457b9899ab3e25c3916085411d85087344427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c52438155c94ae431445f748a57231bfd02d370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fd0ba305bff03412214d4e2a544d3afb0f0ea2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa06c743b8032aa0c9d137b7e9a00653a3f46d6a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6ae67098fab8a78732572b6142dcb4f44161f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9040aa843b4ca67002d80090f48196aacb222fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab2258e0e5e4d1bf4ccd7802774ccfe05774aa4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb63ed2a4cc142c16ca6ada7ae21996f589770a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb97a4378514460f223f6f743e85fbee5736ad290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9892aed8e49bf167eb15d269777f6f5850ae450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba1933bc47e6ad050a4e4485f6f4b16b9ccdb806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc097b1de9eabd7d0d894eb53ffb5ba8e12881dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4a665fb72339d8d50617388a96f635d6311c420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbf202921689e1d070e10efee6701032934f58e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xccec163aa1daaaed9ccbd553f178f7619fa080a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd5f531ae24cbf45bcd70574822cf7e84581f9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4b131c7d84c28f516dcc2fdbb5107c8463c4494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd760b2a63ccb0d7049b75abd86e0e1fd204f1d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8912300c2b96d9f2fb8f4a9cfea351ebe2a696e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde3c3851fc1d342d5d3289ca5e9e45deb60314ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfe0f6c3d94858778c1ae527f43dd5a62be3d6c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe06bf85ecb41d1a5f271e0d6692e31ee714e8474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed6b51e95fd955f501947118b600a54aa4f6d5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf089d3f715b7b6b1adbfb1e13c59811b277e93bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0d33beda4d734c72684b5f9abbebf715d0a7935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5738b4ad2f8302b926676692a0c09603d930b42` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 222
- Live contracts: 0
- Unknown liveness contracts: 222
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=222

Showing first 200 of 222 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x047dff965cb7ec02fb5ba2f83afa7ae0fde8a887` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x05683b18906bcc45963780e852e8a2df3c1a8789` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x0a3f33fa53b76b331bf48ccbf2b5547e404c76b1` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x0ae165ac50e78019da056a01e528ff817f6f3f4c` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x0b17c09f32a9701a9ee7d516403c09947c376aad` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x0d35208d1cf5767f176749fe5fe130ae971dcc1d` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x0db724eafff898106f1ac31fe62a871099b63da4` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x11e529b8eeffb2795a90d3468c6668506e599057` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x1b89cb4e324af944383d70074527c6751caed01b` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x1ec497921ebb9a634298498758d7fa7f8628b83c` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x22693730dd73a2acb90971916a1eb5435c3434a7` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x247debebb766e4fa99667265a158060018d5f4f8` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x25306ce5affe27d2235696e1e029353ec6d43455` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x25b0565b1edf12c5dac3eaef92e83dd0e5fe5a85` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x26b3f75c3ebe699e6d2fce9bfef8542dba1143bf` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x2785d18ccc3f4193412f740db4e4f7084c7e648e` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x2a1f15fdd46fb0c78171c45e60f12dcad4006ef5` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x2a9ba82857eb2eee65da379ce3c08760ecda4766` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x2acaeb8b109eaf9e1bc25f838dcca022495ea13b` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x2d367d5b442135b29a4705871e4c7d34382cb442` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x2e3fdbd7224b5bae757d3265c804afa5810dc13f` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x2ff22f87fdc01ecc235126b98ddc00f70dd2ae0b` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x31cd039d37dee0c989cbe390f668fc38b033fb4f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x31d3335a925c9b1355f255bc87ab151650f6808f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x327ab005e8af010b609ba566b7ca84303012edd1` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x3403c135a92f4d58ca1e89b0014f31e138e01624` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x34e2eee197efaabecc495fdf3b1781a3b894eb5f` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x35717340ece0af8295386ece150c915d1c45d294` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x35b24be964fa0a0cda6e57331b9ea5de7d9827c6` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x35e1fdfe488418f5e42fd542a4915903f086d219` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x3abf84f48eb615c277c6b8c6c39bb87c44ee9c28` | non_address_book | unknown | unknown | unverified | n/a | `0x863f13e5b505f1eb17803b94ec9d3daf80092165` |
| unverified unclassified | UnnamedContract<br>`0x3b62226a70f4217deb3f688f08b543131155de27` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x3c29c47f0bbe6e100cbb8d96970e181b17c26ddb` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x3c9d954a5e9fff8a3b9495094adee9b5c2233e5c` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x3ca4f935c25669c6dee5b4b8212e52606890f1f0` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x3ce426bb2fcb9e1300bbe03e2d34d7b3b7347db5` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x426ceb9f2bb55c8f742a6023bda9596c03652f01` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x43f2c02532cdcdfeee862949f0f2c43398e9961e` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x44dcbe49977da78fa994954e2b4c1c0a021af7bb` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x48d5023416e8ce1347aa35f105a5b19e2e448bc9` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x4ac9511d283d6db5338bb5f9a34bbd46a12ee1be` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x4c12821ea5693d77b3a8567e5b912f3fef519926` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x4e701dd33e34c4fc221adc8c43c230d1d9702a2f` | non_address_book | unknown | unknown | unverified | n/a | `0x863f13e5b505f1eb17803b94ec9d3daf80092165` |
| unverified unclassified | UnnamedContract<br>`0x4f508b9b9841baa6c0764cd7c263bdc26dcdf11d` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x4fcfaf5d75f735b937dc88dc0b1b9d80c04736ff` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x502b965d3d51d4fd531e6a1c1fa9bfa50337ba55` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x5063afae71ce805d327bcade83376d3dbccfa21f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x509860451d2553083f4f1f22331985450928c962` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x5207ac5a8462cc8ea5b81bc7790f6c4458dccb17` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x55d2ec76153cba452d51e636e7c981dbb282a958` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x59cf54d9529599aef108014660ca6cd8c02bd210` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x5c95a3853b107847cf032a0323573824d285a580` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x5cadcf74a14a6aa67e95e418625b82831b241b58` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x5d8d0cedddb88a62ec8ebbb4b6477c5f043f9abb` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x5e592f9b1d303183d963635f895f0f0c48284f4e` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x641adbd9bfa73d6323e43b80198fd04042392bf4` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x698573504b1f44daadb2de17a3f6a11f2d005a79` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x6a1a21968eb8e708fb15732abbbd942c5da2bb55` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x6a9acaad828109b51035d75d643956ebb5f8f29f` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x6c0d706c75b559549938c0b1de863cf7f042d1cf` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x6f2fab76486a4e4a9837b5a74fc9095ef231f7df` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x738f880ea706177f0f97fe0608367c5ab2c49cd7` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x73e92a1135fcce90dbc6431b2e916d7623c9bef0` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x74641ed232dbb8cbd9847484dd020d44453f0368` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x74a3d203f41aa40c5a01677b5ad194f7a6040ddb` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x75e697d28b5d4981708a05623bd67eb9bc87b9df` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x77ff83ea209d326f1e30ed6df0322ebc16e74b3a` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x79f5bf2a1ca3fd910a4183ba0913ba9fa9f8df53` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x7cc63d9d3db18d4244c2f0efd0ca6fed605d83fe` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x7d32287b9c3b0ff508a19cdbe0834480b0e15ac7` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x7ebbcf5b5131ba17769e46e373c5dce49e64f8b2` | non_address_book | unknown | unknown | unverified | n/a | `0x71210c76441b2ac131fa1bc70057ea8700f1fead` |
| unverified unclassified | UnnamedContract<br>`0x81f769e48be27edc4b9fd0295ea9bb41d1ab9631` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x89e6943ce8cc550e3ab91217d1feacf4d665d1ee` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x8a01f9708b3e10b79863def4ee13f06636852211` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x8d18f53a54b55d6cc23528d9a80824c7dd3ec494` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x8e55824ce54574ebec5e09ff601b0b45e3945ebc` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x8f230de6d87abf5aa4486450bd8da53db5fcf532` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x92a6f755f17d80f1522472724a98586733eb312b` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x92cfd89ee8e809df40c2fc0abd5a9c806687dad6` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x92e494690719fcd6a9d2949dccfe8884c274bd1e` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x9409308972cdb7cab2ee24932c17c3eb55f2a7f1` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x95613f2f7999aa3c08568a2f98c9b072f23e941f` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x989a13f1558b40cccdca97c2cc47788b15f02cb0` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x9913668270f6e93406716bcd1b6bfe4d0afd3687` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x997fbe1158289b664443fbb1d9b9bac595157843` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x99f1e8405853d13f9c19596051888235214bd7b0` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x9c9252ec9fa844e2c7bd2e6f54bec2901938479f` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0x9d94e8572fa14ec54f183e00ed2590f5913cea0d` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xa37f48577a9141bd94e7d6a2c976852c77d2baa2` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xa53db120a4af6361c9ef1f13e6d32368c93fb7ee` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xaaaee5ceae9923a264c50a60b2612c454b132d81` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xac08692af250eaa113dcf2e7fd9faa7b4b40823b` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xacbc394144e5ed74b59536149ab477e978bec74a` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xaee37b7449cfc757ad2becfe647747364c09021b` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xaf83f4eb951b56421af08c377f63082e964f5bcc` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xafb3a0470b7d00aa7236607fa04586c861896733` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xb000e616fd5ef964d586375e2ad1dbb23d1b9e82` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xb000ebf350c492a068138667fa1405ae21159981` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xb09b886efde5d3ad6af898d16de9178c87ec4be7` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xb245ab0d2e9dfb99b1212eb3d7732c22591557a2` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xb267deaace0b8c5fcb2bb04801a364e7af7da3f4` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xb3180a92e210b45e3447976a412ac0df859febaf` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xb6d50604224494589a896d2aec40d47bfe871670` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xb6ecf70f4555627ec8fc615b17a1ef624140793f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xb926bf02c456854eb0b8ec4a617bcee148a40588` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xbc26711ba0063cfcc89ac08873d5f6f37018f077` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xbd0fe6caf25a541b9ac1a64bdfac2c11ad18e772` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xbfbff7e9e5ae56dae6736bf93fd56a6a7821dc7a` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xbff96b6b1b18da72dc67673cf247da077f7a01e4` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xc120453ed0dfbe922ca6d991567650ad97029b87` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xc177db379f69646c5690940a97503a4cdfda6855` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xc1a42fa3ee6280205e935445f5ed3a9a27eac285` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xc38f4fb8ed75c3a6b9e7ac65cc7bb84fb6054ba3` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xc6540e48c62a522ba6e4d1435f43f3b5934c88b0` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xc6da7bd77556bb4195c0f9c5ad6251b2d7a7cd32` | non_address_book | unknown | unknown | unverified | n/a | `0x71210c76441b2ac131fa1bc70057ea8700f1fead` |
| unverified unclassified | UnnamedContract<br>`0xc73bd7df2ec6fb1b32819375017b5b25e674bd95` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xc803f7bf44b60981b286c0a1358fed052f86163e` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xcbdf485bd096a536daf5a6b9d57dbe68004df1a5` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xcbf202921689e1d070e10efee6701032934f58e2` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xce0cc1bbd23db9f661928c08249c650dfffbd07f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xce92c693819b192d2a7b813b840dbdf02e8a6a31` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xce99861f0244d6478a309e2c2565fdaaaa8b0bfb` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xd1061ff97c34835b90e3f8080e3ae2e5c8b38f1d` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xd189662f5c4d93f63088c4a3c09a65ef476e3235` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xd214ea34d03a8308b1def7dfe52c29c6a1e6f54c` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xd32050abdebcc751d7889bc928be807812337e8d` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xd4ebba77ffed4d7f6b2c6120cc9ab98c72a548d9` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xd519dfc46263aebaa4fa43c7666c091016c344ce` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xd54df396acdb85ba655b4b18667787fed44a676e` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xd6aaaec9ee40f11a59524b1e564a89c5a7fcd8dc` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xd6b1797ca8351af12506b12e5df79c6cbb746a1c` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xd8326db97efbd6207f5854a315299f3b3621d88d` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xd8ba3a437ae3e95a9be47dc2bf46a05723deed89` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xda9c2064687ff02e1331efb39d1be0bc5db600f6` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xdab520daef5103bef2deda4ecf0de376ef208340` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xdce9c76ccb881af94f7fb4fac94e4acc584fa9a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xdf89ef87f8f0548036470a533bec0dd2e5bb0465` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xdf8d4826e016afa8803d94a716feb70ad5d2b8ac` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xdf8d77cdd16880f6db4730088b84a7500f0275c8` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xe000e8ee3a775fca7ac75140c53cae0ba86cc801` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xe03fd2fbe80dbfd039e48f3e5c63cf35b2e71391` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xe06bf85ecb41d1a5f271e0d6692e31ee714e8474` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xe11a2344eceaf5705a258374d71d083392af1a18` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xe81ec5db7fc09365d9f283c442dc891338c6cf51` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xeec9f7f0ccea10bb0d08e6355c2456e85862a485` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xefa2ff306e1e1bc2d19b69ed7d6933f3fd0b6936` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xefb3d4413b6ba255e1c4923f76259ddc70661648` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xf01e736d91f823abb8c516f7cfcfd9a6081624b2` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xf12a08d9e3e6490facbcc41714d7f2f2fe65698f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xf19bcfe8eba7446220f0bc462ccf53c66cbbdb54` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xf2079c409ea8da4758626cf72a721dccdb0c494c` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xf2a3300eb0574951e893ebff15089edb38fcfa3e` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xf543eae1860e9b6ac2bb1d3026b91e97676ebe78` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xf54540d9b20f13c88aa3def142bc34bdeb3acf40` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xf5738b4ad2f8302b926676692a0c09603d930b42` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xf6b2795ee79606faf84d68b9e01488f4d21fe096` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xf84dcbcd646a56d47ea0cb1cd447797acc682f1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xf97cee6e60f63ac96007300bbef87d44bfca3620` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xfaa174330290735fa518dd5bd634e1d591cb69a6` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xfb2f4d56290054d91c18186e8481ec96ddf646b6` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xfb85b9ec50560e302ab106f1e2857d95132120d0` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xfc03b1c6d16dfd1461857263f7e647558a9dbf0c` | non_address_book | unknown | unknown | unverified | n/a | `0xa7a31d206042b8a3e81aa4cf8c68c1b76856ee48` |
| unverified unclassified | UnnamedContract<br>`0xfc8ad53ff00f8d8f377c75361da4080adbdc21e8` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xfcf640954f2b3221b6280f1a6e840bde99379096` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xfd95c5562744f0f8ae54d48827936f6b8ec28041` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xfdad14303ea4c7b0a8be7c453a9bfbc57208986d` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x0e446faad63e344167489b5cf1111f4cc305cbd3` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x17de46760f4c18c26eec36117c23793299f564a8` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x1e68233896b6ef78b58788bf9553c1f8fd141456` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x1ec497921ebb9a634298498758d7fa7f8628b83c` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x2bb1608772f8e3c6b62032be3db0938842941979` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x2f34adf6faf36cc538fc73f169b7e436d4e99a5d` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x335095094b8bf3d435dd7bde6298ebd8499f2665` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x393ec777f724dd2b98cbebfd46675bffd43dcc5a` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x404f3eb857cd65fd52ecc8691c2d307f8506e2d5` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x44f9fdea47beeb369493d6e8e4cf4ccd55b5a969` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x4e701dd33e34c4fc221adc8c43c230d1d9702a2f` | non_address_book | unknown | unknown | unverified | n/a | `0x863f13e5b505f1eb17803b94ec9d3daf80092165` |
| unverified unclassified | UnnamedContract<br>`0x55dc9629c2e87ec73d6ec842f01aae93566237cf` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x566fefc10489abbc3a07e7d6482b5843ad85edce` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x56f5a6d09955b4dfca18707d5034f09f86c3a7d4` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x5770871d5ffc6320dfe085e32ecfbbcbd5953221` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x5aba27038ad7f606876df7469b16fd2755601bb1` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x62a7953d722e85bf1eb08db6a66ae3545a7e4a97` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x636a7f9811b326e1081d8fee03ef7f47948bd476` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x6ecbb7ee3e0bdb132d320e17d0af91bac2b01e8f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x6f8333d3e3045f23f551cc0e62d14a0a2d12e30f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x738a23a889a6257ea8678803e4b8db9605d63b9c` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x787b2df12dae4808392b62308e8800c6b5f20c25` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x79292c62f593e08d9b850b790b07e7a0903fd007` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x79d5973479521c18779cbceee76ed6078f2aeb4f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x7b6102e9a52dc1d9d41ac8b505c52ddd57592d2a` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x7f8e355c67f23c7989ea134e880ae41127793111` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x834f5e38372329441623592732c80173123ce02a` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x942d21ebd144765e3bcf295886d44b684df1e1b5` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x944c7eba44c610e5c1ff402eee96d00d0aee31e6` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x978275f26102fbaa430d8e74f2ffbe5827beb6fb` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x9c4457b9899ab3e25c3916085411d85087344427` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x9c52438155c94ae431445f748a57231bfd02d370` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0x9fd0ba305bff03412214d4e2a544d3afb0f0ea2e` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |
| unverified unclassified | UnnamedContract<br>`0xa06c743b8032aa0c9d137b7e9a00653a3f46d6a3` | non_address_book | unknown | unknown | unverified | n/a | `0xcd231d4ba7b15a4722ac057419d9cd7689e7b8db` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/singularitydao) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18383] DL audit link — no match: Extracted from the 'Audited Files' section of the CertiK Skynet page for SingularityDAO. Only two contracts are explicitly listed as audited files. The audit date is the 'Last Audit was delivered on 8/15/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | SDAOBondedTokenStaking | unmatched — not counted | — | listed in Audited Files section | no |
| DL audit link | SDAOTokenStaking | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7bb1a6b19e37028b3aa5c580339c640720e35203` | Dynaset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x976a95786da6f6ee1c0755ccfb9a22adac2bf7b2` | DynasetDydx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5cda572fb16b076f79604e09bdffed7a92be5513` | SDAOUpgradeableTokenV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x993864e43caa7f7f12953ad6feb1d1ca635b875f` | SingDao | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 226 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [18383] DL audit link

Fork inheritance lineage and inherited audits are included when available.
