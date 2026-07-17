# Agentic Audit Brief: SingularityDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SingularityDAO (`singularitydao`)
- Website: [https://singularitydao.ai](https://singularitydao.ai)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 78 unique implementations (79 raw deployments)
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
- Outside the address book: 67 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 8 of 78 unique; 70 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/78
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 78
- Raw deployments: 79
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
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-392581 | `0x5c4bcc4dbaeabc7659f6435bce4e659314ebad87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x82f542523d33e31db910ca9c08adc37b4ce66d59` | ⚠️ Unaudited |
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

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

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
| standard_library | 3 |
| needs_review | 4 |

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
