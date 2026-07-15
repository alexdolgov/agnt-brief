# Agentic Audit Brief: Jarvis Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 6 (1 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Jarvis Network (`jarvis-network`)
- Website: [https://jarvis.money/](https://jarvis.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon
- Contract surface: 112 unique implementations (112 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $266,458.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Jarvis Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon. Structural roles: 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1), uniswap-v2 (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xbd8fdd...5e07a5`, chain 1)
- UnnamedContract (`0x157456...a74066`, chain 10)
- UnnamedContract (`0xf920cc...784f8a`, chain 10)
- UnnamedContract (`0x644c54...6e2c55`, chain 56)
- UnnamedContract (`0x06440a...f0389a`, chain 137)
- UnnamedContract (`0x162ed9...cf768e`, chain 137)
- UnnamedContract (`0x166e4b...6bfed5`, chain 137)
- UnnamedContract (`0x25e9f9...700e31`, chain 137)
- UnnamedContract (`0x30e97d...38d710`, chain 137)
- UnnamedContract (`0x365727...3f309c`, chain 137)
- UnnamedContract (`0x36d6d1...9b9074`, chain 137)
- UnnamedContract (`0x57bd43...f789b9`, chain 137)
- UnnamedContract (`0x63b589...700f9f`, chain 137)
- UnnamedContract (`0x65a7b4...2f5003`, chain 137)
- UnnamedContract (`0x72e7da...6e07bd`, chain 137)
- UnnamedContract (`0x7a7562...c7401d`, chain 137)
- UnnamedContract (`0x7ac651...56089d`, chain 137)
- UnnamedContract (`0x8734cf...452def`, chain 137)
- UnnamedContract (`0x874b8d...95921f`, chain 137)
- UnnamedContract (`0x8ae346...fbfa35`, chain 137)
- UnnamedContract (`0x8fb58b...3c8d4c`, chain 137)
- UnnamedContract (`0x9e98e3...c3cc68`, chain 137)
- UnnamedContract (`0xaec757...4e3f29`, chain 137)
- UnnamedContract (`0xbe8135...79514c`, chain 137)
- UnnamedContract (`0xc84420...d5cfdd`, chain 137)
- UnnamedContract (`0xe29217...baf3be`, chain 137)
- UnnamedContract (`0x2884c2...f6a2e8`, chain 8453)
- UnnamedContract (`0x336b62...aaa27a`, chain 8453)
- UnnamedContract (`0x67aefc...8bfb94`, chain 8453)
- UnnamedContract (`0x73ad0f...c5ad07`, chain 8453)
- UnnamedContract (`0x777b28...90ee16`, chain 8453)
- UnnamedContract (`0x877935...db4524`, chain 8453)
- UnnamedContract (`0x9e5cf4...c8d732`, chain 8453)
- UnnamedContract (`0xbd51e8...fe09d8`, chain 8453)
- UnnamedContract (`0xcb6d9d...24025f`, chain 8453)
- UnnamedContract (`0xd1e358...02e8a5`, chain 8453)
- UnnamedContract (`0x0768d5...720bd3`, chain 42161)
- UnnamedContract (`0x1c9c51...0e10a7`, chain 42161)
- UnnamedContract (`0x288ad9...9a1c5b`, chain 42161)
- UnnamedContract (`0x2c7941...161c98`, chain 42161)
- UnnamedContract (`0x987eb3...82bca0`, chain 42161)
- UnnamedContract (`0xbc2486...dd21c7`, chain 42161)
- UnnamedContract (`0xc87c63...c3b672`, chain 42161)
- UnnamedContract (`0xd3dfa8...00f74b`, chain 42161)
- UnnamedContract (`0xf86aa1...46c61b`, chain 42161)
- UnnamedContract (`0x7d87e9...62b2c4`, chain 43114)
- LendingStorageManager (`0x04d620...c409e9`, chain 137)
- StakedJarvis (`0x906b6f...f70f5b`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 48/54 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 48 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 58 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 48 of 112 unique; 64 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/60
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 52
- Unique implementations: 112
- Raw deployments: 112
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 1 | 1.7% | 2022-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LendingStorageManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-243307 | `0x04d620...c409e9` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerariumSanctius | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05bd55...f10eef` | ⚠️ Unaudited |
| AtomicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb711f3...e318b8` | ⚠️ Unaudited |
| Aureus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fb241...babf07` | ⚠️ Unaudited |
| CreditLine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x873067...fe3424` | ⚠️ Unaudited |
| CreditLineController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x689359...44cb11` | ⚠️ Unaudited |
| CreditLineFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40fed3...138706` | ⚠️ Unaudited |
| CreditLineLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x58a989...179a47` | ⚠️ Unaudited |
| Denarius | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e19a4...72ce9e` | ⚠️ Unaudited |
| Disputer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6b498...a05e4b` | ⚠️ Unaudited |
| DotDotVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x850f44...b0c7b9` | ⚠️ Unaudited |
| ElysianFields | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ff93e...497405` | ⚠️ Unaudited |
| FeePayerPartyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0b537...0ce89f` | ⚠️ Unaudited |
| FixedRateCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00fae0...306356` | ⚠️ Unaudited |
| FixedRateSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda0344...09ddcc` | ⚠️ Unaudited |
| JarvisBrrrrr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x119006...41b8be` | ⚠️ Unaudited |
| JarvisToWrapperConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x689359...44cb11` | ⚠️ Unaudited |
| JrtToJarvisConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8689d5...b4ff34` | ⚠️ Unaudited |
| LendingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49a87a...31c3dc` | ⚠️ Unaudited |
| MoneyMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ee8db...1b0a8d` | ⚠️ Unaudited |
| OnChainLiquidityRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b620e...06b348` | ⚠️ Unaudited |
| PerpetualLiquidatablePoolPartyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34f7fd...a4c8ab` | ⚠️ Unaudited |
| PerpetualPoolPartyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa513a1...822224` | ⚠️ Unaudited |
| PerpetualPositionManagerPoolPartyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03bc65...8864b3` | ⚠️ Unaudited |
| SelfMintingRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ea502...4cf61c` | ⚠️ Unaudited |
| StakedJarvis | unknown | project_anchor | own_supporting | 0 | bsc | unit-243344 | `0x906b6f...f70f5b` | ⚠️ Unaudited |
| StakedSyntheticTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc9374...b30df1` | ⚠️ Unaudited |
| SynthereumCCIPBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0818b4...f224fe` | ⚠️ Unaudited |
| SynthereumCollateralWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x348e4b...67913d` | ⚠️ Unaudited |
| SynthereumDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x02c72f...52b503` | ⚠️ Unaudited |
| SynthereumDerivativeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2aa257...dc34c5` | ⚠️ Unaudited |
| SynthereumFactoryVersioning | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0374a0...b7e830` | ⚠️ Unaudited |
| SynthereumFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02c72f...52b503` | ⚠️ Unaudited |
| SynthereumFixedRateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b247c...ae4501` | ⚠️ Unaudited |
| SynthereumFixedRateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e522a...efcc26` | ⚠️ Unaudited |
| SynthereumIdentifierWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03bc65...8864b3` | ⚠️ Unaudited |
| SynthereumLiquidityPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03bc65...8864b3` | ⚠️ Unaudited |
| SynthereumLiquidityPoolLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x89b3a0...fdb21a` | ⚠️ Unaudited |
| SynthereumManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x141883...002e19` | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf9132...3c0928` | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x012035...e71805` | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolMainLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x313f26...cc729b` | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolMigrationLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0224dc...dab50a` | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolWithRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2d0e00...70bdb1` | ⚠️ Unaudited |
| SynthereumPoolOnChainPriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x930a54...a8197f` | ⚠️ Unaudited |
| SynthereumPoolOnChainPriceFeedLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x586cce...eac78f` | ⚠️ Unaudited |
| SynthereumPoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02c72f...52b503` | ⚠️ Unaudited |
| SynthereumPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17b600...219969` | ⚠️ Unaudited |
| SynthereumPublicVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c4d82...90faa0` | ⚠️ Unaudited |
| SynthereumStakingLPVaultData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5ed74...ac8054` | ⚠️ Unaudited |
| SynthereumStakingLPVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x26541b...0dca4e` | ⚠️ Unaudited |
| SynthereumSyntheticTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x141883...002e19` | ⚠️ Unaudited |
| SynthereumSyntheticTokenPermitFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d0e00...70bdb1` | ⚠️ Unaudited |
| SynthereumTrustedForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x185bb0...99400c` | ⚠️ Unaudited |
| SynthereumVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2884c2...f6a2e8` | ⚠️ Unaudited |
| SynthereumVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f19e2...f82326` | ⚠️ Unaudited |
| Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7f8ae...2d25e9` | ⚠️ Unaudited |
| TransparentModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e7689...035fe5` | ⚠️ Unaudited |
| UniV2JRTSwapModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81f1e3...651e52` | ⚠️ Unaudited |
| VelodromeV2Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0d80f...783cc9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (52)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-243301 | `0x8a9c67...26343a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243302 | `0xbd8fdd...5e07a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-243303 | `0x157456...a74066` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-243304 | `0x15e770...895e76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-243305 | `0xf920cc...784f8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-243342 | `0x414f9e...c671e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-243343 | `0x644c54...6e2c55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | gnosis | unit-243306 | `0xccf127...17ddb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243308 | `0x06440a...f0389a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243309 | `0x162ed9...cf768e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243310 | `0x166e4b...6bfed5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243311 | `0x25e9f9...700e31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243312 | `0x30e97d...38d710` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243313 | `0x365727...3f309c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243314 | `0x36d6d1...9b9074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243315 | `0x57bd43...f789b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-243316 | `0x596ebe...97a8c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243317 | `0x63b589...700f9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243318 | `0x65a7b4...2f5003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243319 | `0x72e7da...6e07bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243320 | `0x7a7562...c7401d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243321 | `0x7ac651...56089d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243322 | `0x8734cf...452def` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243323 | `0x874b8d...95921f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243324 | `0x8ae346...fbfa35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243325 | `0x8fb58b...3c8d4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243326 | `0x9e98e3...c3cc68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243327 | `0xaec757...4e3f29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243328 | `0xbe8135...79514c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243329 | `0xc84420...d5cfdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243330 | `0xe29217...baf3be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243345 | `0x2884c2...f6a2e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243346 | `0x336b62...aaa27a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243347 | `0x67aefc...8bfb94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243348 | `0x73ad0f...c5ad07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243349 | `0x777b28...90ee16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243350 | `0x877935...db4524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243351 | `0x9e5cf4...c8d732` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243352 | `0xbd51e8...fe09d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243353 | `0xcb6d9d...24025f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243354 | `0xd1e358...02e8a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243331 | `0x0768d5...720bd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243332 | `0x1c9c51...0e10a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243333 | `0x288ad9...9a1c5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243334 | `0x2c7941...161c98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-243335 | `0x6aa395...8d5e7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243336 | `0x987eb3...82bca0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243337 | `0xbc2486...dd21c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243338 | `0xc87c63...c3b672` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243339 | `0xd3dfa8...00f74b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243340 | `0xf86aa1...46c61b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-243341 | `0x7d87e9...62b2c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://drive.google.com/file/d/1PdmrOKDV-udArVJu6E2rKUsCm9gPuN2p/view) | unknown | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Audits](https://learn.jarvis.network/risks-warning/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Forked UMA contracts](https://drive.google.com/file/d/10ejHtzLPcAfHlCklOasSZdbng13Cp8ZK/view?usp=sharing) | Halborn | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Synthereum Liquidity Pools](https://drive.google.com/file/d/1PdmrOKDV-udArVJu6E2rKUsCm9gPuN2p/view?usp=sharing) | Halborn | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [* Ubik: [Synthereum Liquidity Pools]()](https://gitlab.com/jarvis-network/apps/exchange/mono-repo/-/blob/dev/docs/security-audits/ubik/01-synthereum-v3.pdf) | Halborn | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [* Zellic: [Synthereum Liquidity Pools ]()](https://gitlab.com/jarvis-network/apps/exchange/mono-repo/-/blob/dev/docs/security-audits/zellic/%5BZellic%5DSynthereum%20Smart%20Contract%20Security%20Assessment.pdf) | Zellic | Audit | 2022-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17463] DL audit link — no match: Scope defined as folders contracts/base/, contracts/derivative/, contracts/oracle/, contracts/synthereum-pool/v3/, and contracts/versioning/. Specific contracts extracted from findings and automated scan results.
- [17464] Audits — no match: The document is an index page listing external audit reports for Synthereum v1 and v2, but does not include the full audit reports or scope sections. No contract names or audit dates are identifiable from the provided text.
- [17465] Forked UMA contracts — no match: All seven contracts explicitly listed in scope section. Date from cover page: December 27, 2020.
- [17466] Synthereum Liquidity Pools — no match: Extracted contract names from scope section (folders) and findings code locations. Also included contracts from MythX scan results that are within the scoped folders.
- [17467] * Ubik: [Synthereum Liquidity Pools]() — no match: Audit report for Synthereum contracts. Scope explicitly lists 6 contracts. Date from cover page: 4th June 2021.
- [17468] * Zellic: [Synthereum Liquidity Pools ]() — matched: Scope section 2.3 lists 8 contracts plus IFinder mentioned in findings. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | DerivativeFactory | unmatched — not counted | — | listed in scope and findings | no |
| DL audit link | SyntheticTokenFactory | unmatched — not counted | — | listed in scope and findings | no |
| DL audit link | PoolChainPriceFeedFactory | unmatched — not counted | — | listed in scope and findings | no |
| DL audit link | PoolChainPriceFeedLib | unmatched — not counted | — | listed in scope and findings | no |
| DL audit link | PoolOnChainPriceFeedLib | unmatched — not counted | — | listed in scope and findings | no |
| DL audit link | PoolRegister | unmatched — not counted | — | listed in scope and findings | no |
| DL audit link | FactoryVersioning | unmatched — not counted | — | listed in scope and findings | no |
| DL audit link | PoolOnChainPriceFeed | unmatched — not counted | — | listed in automated scan results | no |
| DL audit link | PoolOnChainPriceFeedFactory | unmatched — not counted | — | listed in automated scan results | no |
| DL audit link | PoolOnChainPriceFeedCreator | unmatched — not counted | — | listed in automated scan results | no |
| DL audit link | Constants | unmatched — not counted | — | listed in automated scan results | no |
| DL audit link | Deployer | unmatched — not counted | — | listed in automated scan results | no |
| DL audit link | ChainlinkPriceFeed | unmatched — not counted | — | listed in automated scan results | no |
| Forked UMA contracts | PerpetualLiquidatablePoolParty | unmatched — not counted | — | listed in scope section | no |
| Forked UMA contracts | PerpetualLiquidatablePoolPartyLib | unmatched — not counted | — | listed in scope section | no |
| Forked UMA contracts | PerpetualPoolParty | unmatched — not counted | — | listed in scope section | no |
| Forked UMA contracts | PerpetualPoolPartyLib | unmatched — not counted | — | listed in scope section | no |
| Forked UMA contracts | PerpetualPositionManagerPoolParty | unmatched — not counted | — | listed in scope section | no |
| Forked UMA contracts | PerpetualPositionManagerPoolPartyLib | unmatched — not counted | — | listed in scope section | no |
| Forked UMA contracts | PerpetutalPoolPartyCreator | unmatched — not counted | — | listed in scope section | no |
| Synthereum Liquidity Pools | DerivativeFactory | unmatched — not counted | — | listed in scope and findings | no |
| Synthereum Liquidity Pools | SyntheticTokenFactory | unmatched — not counted | — | listed in scope and findings | no |
| Synthereum Liquidity Pools | PoolChainPriceFeedFactory | unmatched — not counted | — | listed in scope and findings | no |
| Synthereum Liquidity Pools | PoolChainPriceFeedLib | unmatched — not counted | — | listed in scope and findings | no |
| Synthereum Liquidity Pools | PoolOnChainPriceFeedLib | unmatched — not counted | — | listed in scope and findings | no |
| Synthereum Liquidity Pools | PoolRegister | unmatched — not counted | — | listed in scope and findings | no |
| Synthereum Liquidity Pools | FactoryVersioning | unmatched — not counted | — | listed in scope and findings | no |
| Synthereum Liquidity Pools | PoolOnChainPriceFeed | unmatched — not counted | — | listed in automated scan results | no |
| Synthereum Liquidity Pools | PoolOnChainPriceFeedFactory | unmatched — not counted | — | listed in automated scan results | no |
| Synthereum Liquidity Pools | PoolOnChainPriceFeedCreator | unmatched — not counted | — | listed in automated scan results | no |
| Synthereum Liquidity Pools | Constants | unmatched — not counted | — | listed in automated scan results | no |
| Synthereum Liquidity Pools | Deployer | unmatched — not counted | — | listed in automated scan results | no |
| Synthereum Liquidity Pools | ChainlinkPriceFeed | unmatched — not counted | — | listed in automated scan results | no |
| * Ubik: [Synthereum Liquidity Pools]() | PoolOnChainPriceFeed | unmatched — not counted | — | listed in scope and findings | no |
| * Ubik: [Synthereum Liquidity Pools]() | PoolOnChainPriceFeedCreator | unmatched — not counted | — | listed in scope and findings | no |
| * Ubik: [Synthereum Liquidity Pools]() | PoolOnChainPriceFeedFactory | unmatched — not counted | — | listed in scope and findings | no |
| * Ubik: [Synthereum Liquidity Pools]() | PoolOnChainPriceFeedLib | unmatched — not counted | — | listed in scope and findings | no |
| * Ubik: [Synthereum Liquidity Pools]() | IPoolOnChainPriceFeed | unmatched — not counted | — | listed in scope and findings | no |
| * Ubik: [Synthereum Liquidity Pools]() | IPoolOnChainPriceFeedStorage | unmatched — not counted | — | listed in scope and findings | no |
| * Zellic: [Synthereum Liquidity Pools ]() | MultiLpLiquidityPool | unmatched — not counted | — | listed in scope section 2.3 | no |
| * Zellic: [Synthereum Liquidity Pools ]() | MultiLpPoolCreator | unmatched — not counted | — | listed in scope section 2.3 | no |
| * Zellic: [Synthereum Liquidity Pools ]() | MultiLpPoolFactory | unmatched — not counted | — | listed in scope section 2.3 | no |
| * Zellic: [Synthereum Liquidity Pools ]() | AaveV3 | unmatched — not counted | — | listed in scope section 2.3 | no |
| * Zellic: [Synthereum Liquidity Pools ]() | BalancerJRTSwap | unmatched — not counted | — | listed in scope section 2.3 | no |
| * Zellic: [Synthereum Liquidity Pools ]() | Univ2JRTSwap | unmatched — not counted | — | listed in scope section 2.3 | no |
| * Zellic: [Synthereum Liquidity Pools ]() | LendingManager | unmatched — not counted | — | listed in scope section 2.3 | no |
| * Zellic: [Synthereum Liquidity Pools ]() | LendingStorageManager | own contract | LendingStorageManager (selected) `0x04d620...c409e9` — deployed 2022-07-16 16:33:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * Zellic: [Synthereum Liquidity Pools ]() | IFinder | unmatched — not counted | — | mentioned as target in finding 3.3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x906b6f...f70f5b` | StakedJarvis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 47 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [17463] DL audit link
- [17464] Audits
- [17465] Forked UMA contracts
- [17466] Synthereum Liquidity Pools
- [17467] * Ubik: [Synthereum Liquidity Pools]()

Fork inheritance lineage and inherited audits are included when available.
