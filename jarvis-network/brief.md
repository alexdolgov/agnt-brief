# Agentic Audit Brief: Jarvis Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 6 (1 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Jarvis Network (`jarvis-network`)
- Website: [https://jarvis.money/](https://jarvis.money/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon
- Contract surface: 439 unique implementations (439 raw deployments)
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

- UnnamedContract (`0xbd8fdda057de7e0162b7a386bec253844b5e07a5`, chain 1)
- UnnamedContract (`0x1574564fcfd15bccb3fe04e9818f61131ea74066`, chain 10)
- UnnamedContract (`0xf920cc555b60f7abf5220221a99edc485d784f8a`, chain 10)
- UnnamedContract (`0x644c545703f57a4b905f4c558f52342a206e2c55`, chain 56)
- UnnamedContract (`0x06440a2da257233790b5355322dad82c10f0389a`, chain 137)
- UnnamedContract (`0x162ed91cb79066b4fe7993c920e2e04f67cf768e`, chain 137)
- UnnamedContract (`0x166e4b3ec3f81f32f0863b9cd63621181d6bfed5`, chain 137)
- UnnamedContract (`0x25e9f976f5020f6bf2d417b231e5f414b7700e31`, chain 137)
- UnnamedContract (`0x30e97dc680ee97ff65b5188d34fb4ea20b38d710`, chain 137)
- UnnamedContract (`0x36572797cc569a74731e0738ef56e3b8ce3f309c`, chain 137)
- UnnamedContract (`0x36d6d1d6249fbc6ebd0fc28fd46c846fb69b9074`, chain 137)
- UnnamedContract (`0x57bd432d5f6f8f00e2b2bda9849fca76e2f789b9`, chain 137)
- UnnamedContract (`0x63b5891895a57c31d5ec2a8a5521b6ee67700f9f`, chain 137)
- UnnamedContract (`0x65a7b4ff684c2d08c115d55a4b089bf4e92f5003`, chain 137)
- UnnamedContract (`0x72e7da7c0dd3c082dfe8f22343d6ad70286e07bd`, chain 137)
- UnnamedContract (`0x7a75624f051041baa74ae4e47724216307c7401d`, chain 137)
- UnnamedContract (`0x7ac6515f4772fcb6eeef978f60d996b21c56089d`, chain 137)
- UnnamedContract (`0x8734cf40a402d4191bd4d7a64beef12e4c452def`, chain 137)
- UnnamedContract (`0x874b8d8e818c79166f00b64fb161925e3e95921f`, chain 137)
- UnnamedContract (`0x8ae34663b4622336818e334dc42f92c41efbfa35`, chain 137)
- UnnamedContract (`0x8fb58bc0dd6ffed8f5e26d47076bddafc83c8d4c`, chain 137)
- UnnamedContract (`0x9e98e395b1034f43860952b48a54006906c3cc68`, chain 137)
- UnnamedContract (`0xaec757bf73cc1f4609a1459205835dd40b4e3f29`, chain 137)
- UnnamedContract (`0xbe813590e1b191120f5df3343368f8a2f579514c`, chain 137)
- UnnamedContract (`0xc8442072cf1e131506eac7df33ea8910e1d5cfdd`, chain 137)
- UnnamedContract (`0xe292178333fc7424211795895865adac05baf3be`, chain 137)
- UnnamedContract (`0x2884c238e0a97fdc7aceff81c9b34d679ff6a2e8`, chain 8453)
- UnnamedContract (`0x336b62902e442477d5bac5e39093b10771aaa27a`, chain 8453)
- UnnamedContract (`0x67aefc812ec0a83a327c05d6e7913c35b48bfb94`, chain 8453)
- UnnamedContract (`0x73ad0f49345467025fcda33cadcfd6fb6cc5ad07`, chain 8453)
- UnnamedContract (`0x777b2839832982b35213063d850848369390ee16`, chain 8453)
- UnnamedContract (`0x877935876f1b0ac524d557d31fd4654233db4524`, chain 8453)
- UnnamedContract (`0x9e5cf4c71cfdc6fb2161efb3843971d792c8d732`, chain 8453)
- UnnamedContract (`0xbd51e891d505543d5a43ebc3a4f919b4befe09d8`, chain 8453)
- UnnamedContract (`0xcb6d9de706bcd320e96dccbb6d7e58267524025f`, chain 8453)
- UnnamedContract (`0xd1e358d4f3157b86b6bac7447318c7ee7402e8a5`, chain 8453)
- UnnamedContract (`0x0768d5c72914ec78260b5a0ca4a3edef10720bd3`, chain 42161)
- UnnamedContract (`0x1c9c5170f9976fce3009a40bf67cce92b10e10a7`, chain 42161)
- UnnamedContract (`0x288ad9a30c92ad369c839f3f781d63afe79a1c5b`, chain 42161)
- UnnamedContract (`0x2c7941a0fe9c52223b229747322af16160161c98`, chain 42161)
- UnnamedContract (`0x987eb35684b75d24fbe7a35af607a3414782bca0`, chain 42161)
- UnnamedContract (`0xbc2486e4a23af33536b2ea6605b8d86817dd21c7`, chain 42161)
- UnnamedContract (`0xc87c638c0e1cbca2e37ac256b6065af0fac3b672`, chain 42161)
- UnnamedContract (`0xd3dfa821d57cfae5da5acb7188f378e95200f74b`, chain 42161)
- UnnamedContract (`0xf86aa101bbb2532967a7ec5e4d9ad139f046c61b`, chain 42161)
- UnnamedContract (`0x7d87e9d86371b2e5bfb7dfae4bb6671fde62b2c4`, chain 43114)
- LendingStorageManager (`0x04d6206ccd424f2e82901ee1cd3982b0b9c409e9`, chain 137)
- StakedJarvis (`0x906b6f2dee9f9decdf80020732dbf98f59f70f5b`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 48/54 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 48 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 380 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 48 of 439 unique; 391 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/60
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 379
- Unique implementations: 439
- Raw deployments: 439
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
| LendingStorageManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-243307 | `0x04d6206ccd424f2e82901ee1cd3982b0b9c409e9` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerariumSanctius | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05bd55c34f9a95bddc6d9def1654616d74f10eef` | ⚠️ Unaudited |
| AtomicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb711f3a71c00d92ef862a4af2f584635dfe318b8` | ⚠️ Unaudited |
| Aureus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fb2415463e949af08ce50f83e94b7e008babf07` | ⚠️ Unaudited |
| CreditLine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8730671642c5f0a75779b3aa7bb459f5ccfe3424` | ⚠️ Unaudited |
| CreditLineController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x689359561355ef829bb6d30a9c5b0e98c544cb11` | ⚠️ Unaudited |
| CreditLineFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40fed316f640fe2a1527d87718ea44aff1138706` | ⚠️ Unaudited |
| CreditLineLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x58a98967edfb2a350c4669a4df0f6bb4ce179a47` | ⚠️ Unaudited |
| Denarius | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e19a471cb537f88f9e4973c22b8b4dfda72ce9e` | ⚠️ Unaudited |
| Disputer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6b498b4b93340bf912dbc7620f5a92fdea05e4b` | ⚠️ Unaudited |
| DotDotVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x850f4440ed50af8a46281f448d7a5a4e7eb0c7b9` | ⚠️ Unaudited |
| ElysianFields | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ff93e7ce954a7ac2adbbe8f635513cbdb497405` | ⚠️ Unaudited |
| FeePayerPartyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0b5376b91e06fb1296f803ae8879b49740ce89f` | ⚠️ Unaudited |
| FixedRateCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00fae04063ea815bf371fb95af98c38bfa306356` | ⚠️ Unaudited |
| FixedRateSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda03443cab512e55d672d725b7fa98275009ddcc` | ⚠️ Unaudited |
| JarvisBrrrrr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1190064b16fce6e992420d1fda6416d41a41b8be` | ⚠️ Unaudited |
| JarvisToWrapperConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x689359561355ef829bb6d30a9c5b0e98c544cb11` | ⚠️ Unaudited |
| JrtToJarvisConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8689d5a117b199633a1ba5af4eb11ed0f5b4ff34` | ⚠️ Unaudited |
| LendingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49a87a3f93e883a221f6375335efc41db631c3dc` | ⚠️ Unaudited |
| MoneyMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ee8db7f1f64dd590a35ac3c64b3c18ac11b0a8d` | ⚠️ Unaudited |
| OnChainLiquidityRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b620ef38ae7d32fc62c283b10c33973ef06b348` | ⚠️ Unaudited |
| PerpetualLiquidatablePoolPartyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34f7fd5cd0ddd4b27073475cd494dc74a9a4c8ab` | ⚠️ Unaudited |
| PerpetualPoolPartyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa513a13db767d4609ece1c705dbeefb0f5822224` | ⚠️ Unaudited |
| PerpetualPositionManagerPoolPartyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03bc653285f8527e1c877b18df285e66898864b3` | ⚠️ Unaudited |
| SelfMintingRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ea5022a81bd0df1bb85085083cddd1e6a4cf61c` | ⚠️ Unaudited |
| StakedJarvis | unknown | project_anchor | own_supporting | 0 | bsc | unit-243344 | `0x906b6f2dee9f9decdf80020732dbf98f59f70f5b` | ⚠️ Unaudited |
| StakedSyntheticTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc9374e34f10f33637718b63ea2bb618e8b30df1` | ⚠️ Unaudited |
| SynthereumCCIPBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0818b48d171f90f8d97c6f6ebf18bc2de6f224fe` | ⚠️ Unaudited |
| SynthereumCollateralWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x348e4b25077c5133450edad060ea4d8db667913d` | ⚠️ Unaudited |
| SynthereumDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x02c72fc6c231ee0f0e313c966e2da5cb7a52b503` | ⚠️ Unaudited |
| SynthereumDerivativeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2aa25770e92de3d61544e1c5245e8c968ddc34c5` | ⚠️ Unaudited |
| SynthereumFactoryVersioning | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0374a0dc2f47ea75c900a63a244c3e6555b7e830` | ⚠️ Unaudited |
| SynthereumFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02c72fc6c231ee0f0e313c966e2da5cb7a52b503` | ⚠️ Unaudited |
| SynthereumFixedRateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b247cf7d9a170acc7dd5b762c07cfc02cae4501` | ⚠️ Unaudited |
| SynthereumFixedRateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e522a57d089ebf7115a20d6f04dada8f8efcc26` | ⚠️ Unaudited |
| SynthereumIdentifierWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03bc653285f8527e1c877b18df285e66898864b3` | ⚠️ Unaudited |
| SynthereumLiquidityPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03bc653285f8527e1c877b18df285e66898864b3` | ⚠️ Unaudited |
| SynthereumLiquidityPoolLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x89b3a08d6f73bb44b1ff182bd7bf0590dbfdb21a` | ⚠️ Unaudited |
| SynthereumManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1418830ad554becaf76a4058eec6bee9ac002e19` | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf9132b3afa36b36f6ddfff63fd40b9df43c0928` | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0120358932e0ce5a7e3a3519d339289966e71805` | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolMainLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x313f266bcbd6465c10fc1f61acddbbdd60cc729b` | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolMigrationLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0224dca32967ebbffdeefab74526554280dab50a` | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolWithRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2d0e006bb94409a4edfc3348a6703801e770bdb1` | ⚠️ Unaudited |
| SynthereumPoolOnChainPriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x930a54d8af945f6d1bed5aaf63b63fab50a8197f` | ⚠️ Unaudited |
| SynthereumPoolOnChainPriceFeedLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x586cce2d7ce78e9c9fd5c062ec6ee59880eac78f` | ⚠️ Unaudited |
| SynthereumPoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02c72fc6c231ee0f0e313c966e2da5cb7a52b503` | ⚠️ Unaudited |
| SynthereumPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17b600b70b20b0a4bb2870bdfd8bf6d485219969` | ⚠️ Unaudited |
| SynthereumPublicVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c4d8221c3696c0a333d3394d46a4efb9090faa0` | ⚠️ Unaudited |
| SynthereumStakingLPVaultData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5ed747e19edb8eaece8c0b8a2e4264569ac8054` | ⚠️ Unaudited |
| SynthereumStakingLPVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x26541b2d4065fe21c9694a36e83e421e200dca4e` | ⚠️ Unaudited |
| SynthereumSyntheticTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1418830ad554becaf76a4058eec6bee9ac002e19` | ⚠️ Unaudited |
| SynthereumSyntheticTokenPermitFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d0e006bb94409a4edfc3348a6703801e770bdb1` | ⚠️ Unaudited |
| SynthereumTrustedForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x185bb0b7744a14cd336827fb94392f151e99400c` | ⚠️ Unaudited |
| SynthereumVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2884c238e0a97fdc7aceff81c9b34d679ff6a2e8` | ⚠️ Unaudited |
| SynthereumVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f19e20542ef48010f99d030daf63c8216f82326` | ⚠️ Unaudited |
| Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7f8ae15ccb963a3a8cbc53b448d114f422d25e9` | ⚠️ Unaudited |
| TransparentModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e768988ab07d736858a50c79cecc8060b035fe5` | ⚠️ Unaudited |
| UniV2JRTSwapModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81f1e35b3e05e9e8bb3eeb31d44d0ae399651e52` | ⚠️ Unaudited |
| VelodromeV2Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0d80f4b1cada983496e032063390beeaf783cc9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (379)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082582c4271f3f6dd5f4306cbcac822076516c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b05b902fe763ad87aa755fab70f86c76bf331f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-243301 | `0x8a9c67fee641579deba04928c4bc45f66e26343a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931e8b8c9a978294bf5e9ea6153b9217c57f17a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243302 | `0xbd8fdda057de7e0162b7a386bec253844b5e07a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8eb057f5e38f71fe42a9e59d51ac60926ec933d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1f0e22de16842498634b08c68f8a7a4716fbf87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeef338c585ee3cf674f717937f12e6f52accf5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf844826e986a2ad77bf24a491fe1d8b9ef2d3b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x03bc653285f8527e1c877b18df285e66898864b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-243303 | `0x1574564fcfd15bccb3fe04e9818f61131ea74066` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-243304 | `0x15e770b95edd73fd96b02ece0266247d50895e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1d1f15dafd42a00f1efd56d7b15665aeb22db226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2a49451637f0c8dd063a76fb868d600b2c144361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35274e47010354173686958162369c61fb677e69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x558fe3f0b0791aa2f97b1bc4580778b9a33c3538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x586cce2d7ce78e9c9fd5c062ec6ee59880eac78f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x58741e9137a8af31955d42aec99a1ad4771eec23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5e1720a9c3961092fa138a8a1e2774bb56ac46b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ed949957da4387113c5a1bfe662880e9a34b03f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x646e869a2574aa6a390caddec10d1f8cd0b424ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x72e13642f18046d409d2a3d33ed939c78e5d9a58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x811f78b7d6bcf1c0e94493c2ec727b50ee32b974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x818dcb8b72f83f3824df9e7d83b38e5f7a96515e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8730671642c5f0a75779b3aa7bb459f5ccfe3424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x930a54d8af945f6d1bed5aaf63b63fab50a8197f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94b58178d4f4fd2ca7c00dc226d091a0f9afbca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98fab5d1366de24f152ea683a1f23338351c47ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9a27329fc40e32c796e08d98de73c23ed7c0910e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa3061f06274dbe75006b47f84f6ac24213a69df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa513a13db767d4609ece1c705dbeefb0f5822224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa6cdc0e62f1e001efcd033515e7cd78a30353b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa747dceb7d77250378f7858036b97c4cd5804ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xac84c7795157b9410d184d50d1a672607de2894a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaeed612285f9e519f76f1d5cf1dfd84d3a398ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb56ddb0edfe1265bd8d7f25e45b759ab82bb06da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd8fdda057de7e0162b7a386bec253844b5e07a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2f7e15970d3968c5fcc0894541a9fa9d4a7f738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcbfcbcb93c133478da38a77e7a2fc01479ac79a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd1f6644df2bc7e84ff7bcee761def5eb325274c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd20298866c59da0d534349ec3b10a46fa26e6450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd3a4c22e2d9d02a9f7438e0ecc480ab016127d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd43509074b41824bc51c50b71d7694ab8d2568ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdbf2a96cea5580d58a57369de7150666e0a05c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1890ff2178f49c3baadfbe2255621880943aafe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1f0e22de16842498634b08c68f8a7a4716fbf87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe76b6e86cedd9f44957fe0e7729e2c6b4e009b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf266793cb1de933237415956f4fd4ea89ff44dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf844826e986a2ad77bf24a491fe1d8b9ef2d3b03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-243305 | `0xf920cc555b60f7abf5220221a99edc485d784f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfd72dacfc5da3849d5564636e3effe80c2a5488e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xffeef74c27047876b1bf56500dd0cead05dca2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12de1868fd8c1565543964d7e67ca676b0be1611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1418830ad554becaf76a4058eec6bee9ac002e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1654d963828616f5e127a9bf654945e11f416069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2639f8802d73165a88f9fd790bfea3e46e613838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x298259b647d57a8ff6ae82112656b7e30c76601b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3337ca1ab0cfb5618800e20ab73b86d5b78ca5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3776e91fb0f3bddda5ac0811e925bd66a5aeee97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40fed316f640fe2a1527d87718ea44aff1138706` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-243342 | `0x414f9e74ba3a9d0acce65182809492f41ac671e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43a98e5c4a7f3b7f11080fc9d58b0b8a80ca954e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x483479a3a413488612f84ee7ad67fe00724b730b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49e88c9036e4f888069a354465f1738b372df03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49ea690e739d026451f89c80e2c58d4dc79f0f5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c0d505ffac3e8461a6c6abc71f988c5a6ef4498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x553fd35edf71c6fe1c700aa0a008986deead41d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60da38fa211fcb7dd2008bab185a2f90b16db300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x613dd3df8c8716fa5f33a3d5e072feb5fef1f7b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61b4c8d90266d8003afc37e83c3d1023f1346f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6219b46d6a5b5bfb4ec433a9f96db3bf4076aee1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-243343 | `0x644c545703f57a4b905f4c558f52342a206e2c55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80d629cf2d775cb9b97c4a95fe2269e0e8459d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80eb7668aec208af0da10f8bb70ca99f3604e076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x811f78b7d6bcf1c0e94493c2ec727b50ee32b974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83a840079bf772683eb5b7409b5fbc4459d24e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85bdcab18061f2360430d3a03a7fff066f97ddd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f0bf7dd7d235a5d784dd68f8e14e14964418ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fecec5629eed60d18fd3438aae4a8e69723d190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90cced6c1912ebe199016d3ebca887a8b86dc5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9296375dffe9d61358594a31d58585a5daa6f3a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x930a54d8af945f6d1bed5aaf63b63fab50a8197f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97d884d049cd705d681ae83b5cba3efaad0d2c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98fab5d1366de24f152ea683a1f23338351c47ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a27329fc40e32c796e08d98de73c23ed7c0910e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9bc08179f1a006325ae3444aae3f084daace3f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e88e977578e1a27a0b8cf23a3fd7eac5cf835bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1e302f66dcc990701b76a6b2fb745071e515938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5655697808bf43251caf0305dd32583a4799fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6efaae5f206e8f5d9f277a3ba751b73cf69d535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac84c7795157b9410d184d50d1a672607de2894a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad2aba16506652150f1763cec98e39b32f4ac174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaeed612285f9e519f76f1d5cf1dfd84d3a398ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf6f4d0ac41d2b7488726fdc28ebe7a58fa3a442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb56ddb0edfe1265bd8d7f25e45b759ab82bb06da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd8fdda057de7e0162b7a386bec253844b5e07a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc687c60106200b45c0a09c46fb117820207765f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7faed63936dde2bd50605edd48fedf58fda5779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb81e019a76c168bc2a4f8485472014db1546768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdfbce747d3b32c50cba59eccb79b938e12a4383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf46c52bd117c8a6fe49e89e04a488b184d40799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd74bead9051f92a2b65f865eaff4837d910e2ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7fc91baad9f3e9145ba361e21c4dd256ae8d588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd81db7c1b11cc07d7fa5af50010ca6c41798a9cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdce12741df9d2ccf2a8bb611684c8151de91a7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1f0e22de16842498634b08c68f8a7a4716fbf87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6cb0de49c7de7d0a03cb3c7d2ef43f3cb630523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf82feba4fd33f88cd5f2455b5e4d0de2611647ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf844826e986a2ad77bf24a491fe1d8b9ef2d3b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43a98e5c4a7f3b7f11080fc9d58b0b8a80ca954e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x57d5b113b8d5e7c85a89b47ca12d5b5f2d420665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x697240b2124bed2b19fb003ec4e4cfb5b125b0d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x80d629cf2d775cb9b97c4a95fe2269e0e8459d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x97d884d049cd705d681ae83b5cba3efaad0d2c32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | gnosis | unit-243306 | `0xccf1279c3406ad1181bee00dab4b28b23d17ddb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd0b5376b91e06fb1296f803ae8879b49740ce89f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdce12741df9d2ccf2a8bb611684c8151de91a7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe88178d7e2363c32663abe70e442a0ff2f8b3cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfbf14c09079e1aac83be279b6354da710b0cfc5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01fdf2b19132e507748ba22aaabe08e3ccd9ef10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05fa310bbedf1360b1f25ac914c267795a81ced1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243308 | `0x06440a2da257233790b5355322dad82c10f0389a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243309 | `0x162ed91cb79066b4fe7993c920e2e04f67cf768e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243310 | `0x166e4b3ec3f81f32f0863b9cd63621181d6bfed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16ef7a2f8156819bae95cfce0ca712d01498b665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bb617946ac89f44661b8d71ecbb13e49e7a5831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bd8310ed244b9fb493dcc5ee0a68c494489d4a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1dc366c5ac2f3ac16af20212b46cdc0c92235a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e1506b8cf84f8d1c2dbf474bcb6fec36467c478` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x2051c21d4b5a62817c4f4455a1b23ec4f06c9ea8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243311 | `0x25e9f976f5020f6bf2d417b231e5f414b7700e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2bc39d179fafc32b7796dda3b936e491c87d245b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2cfdbea1d21a30d627e87d946c5e3e0587cf7ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d521cf449b21a4e2336d2e5cc461034bf44ccc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e6a629a66e77ed92c33cbd0e3dc3e3e09380ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fae83b3916e1467c970c113399ee91b31412bcd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243312 | `0x30e97dc680ee97ff65b5188d34fb4ea20b38d710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3477d80484f494fc65cc424a360b4151efc2c862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x348e4b25077c5133450edad060ea4d8db667913d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243313 | `0x36572797cc569a74731e0738ef56e3b8ce3f309c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243314 | `0x36d6d1d6249fbc6ebd0fc28fd46c846fb69b9074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37f08323214e8c851e118c4c9db71321264d1e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3835e92d9f7d66b992fc83a6a85b75c6d1b268d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39e0f4713db978d6031af04d803578fe12b33594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c0053d2e2a864d04e49db2de853dc80e4f2ac3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d06c601826fb3bcc71baabf1ae217c89b8cc3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f7e33481589ef31db6aef6b13f8f64d0d992101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x41ea3972f35c62ccb5a7a18d49349d9427eb0335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4265f5ba432c4ac2fc08ec5ba334153cd5f8080f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x428eccb964eae1daf6c4201721c5c00ce7dde6e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43a98e5c4a7f3b7f11080fc9d58b0b8a80ca954e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4436a665bc7e4d05a47ef4b422be3d196f196423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x445bf06aec789d34bf2558a92f42db17b1cad5ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x460256af9d8a4ec19152530cd6017c4c399560f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a1e068bc23faec08a5817a2a58258e3378d36f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e806df6f224236b32303a4dc5543118148e68af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5024fbea3d1417beaa58d19143836cb210aa22d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56f6827aa0d5e8e87201583710937addabfcb8e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57890b512b7a01868f87a1ccd0b164bb57750fe8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243315 | `0x57bd432d5f6f8f00e2b2bda9849fca76e2f789b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-243316 | `0x596ebe76e2db4470966ea395b0d063ac6197a8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d5a9a199f1ea52e4ff11567f2de1120c4698a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e5af924c511a7ba44b535c87fb184a017b088d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f2e8b3851683e297ec98984b9acf1ea24c667e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60e91fc3a60362ca44aea0263dbc4b96302f6ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60fa80e1c142d5a405eccc1ec8e9008fea292e87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243317 | `0x63b5891895a57c31d5ec2a8a5521b6ee67700f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64308e80901be901b1144232043ca4fd2d80badb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243318 | `0x65a7b4ff684c2d08c115d55a4b089bf4e92f5003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65d9cca2864aa6c1ff283c64df69d9aa2e891043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6616c9fcd7b4774901ac1bd0abb2bcb49eab4b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67bee8edc1e2df4cf1fba6a311ed73b09617bc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ab97d7efbe3ea2251470f65f2f2c5374a4cae78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x711d663256358eca83840541bd3a59a1d8105f86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243319 | `0x72e7da7c0dd3c082dfe8f22343d6ad70286e07bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7349cc23b3a3e104ec2fa5a0bb29c8b022508779` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243320 | `0x7a75624f051041baa74ae4e47724216307c7401d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243321 | `0x7ac6515f4772fcb6eeef978f60d996b21c56089d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c22801057be8392a25d5ad9490959bcf51f18f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8005c15b28e2529f43bfb1c68e5bd91c287092a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80180c92a895f19e794cc7e608470a1730fd13bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80a221c6dbb3c5113918452166f8779ea84a3eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x811f78b7d6bcf1c0e94493c2ec727b50ee32b974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x818cb7d48a87c4bb6d938c42c00fdea6dec1036e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8282d1dc8b0887a167cd255b38eafd25b0e7d478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x834579150cc521e0afab15568930e3bec67b865a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83a840079bf772683eb5b7409b5fbc4459d24e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x845b7939d7e01fd29d6452ce9ddf9bd3ecf886b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85207e90c7e00c87f1db3e236dfb8cd70ba06af9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243322 | `0x8734cf40a402d4191bd4d7a64beef12e4c452def` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243323 | `0x874b8d8e818c79166f00b64fb161925e3e95921f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243324 | `0x8ae34663b4622336818e334dc42f92c41efbfa35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b4d15670caa3772a29aac386ab924a0f54abe48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c4c28ccff28b466af32ef25d5dae8d8eac473ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243325 | `0x8fb58bc0dd6ffed8f5e26d47076bddafc83c8d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fecec5629eed60d18fd3438aae4a8e69723d190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90552a8800cca5091282f31edf0dfff510ccca33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97d884d049cd705d681ae83b5cba3efaad0d2c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98fab5d1366de24f152ea683a1f23338351c47ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c802d12da5c7c74104d8cad9e6084e32c2b70b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d5d2509c78f7dfee7fd1b82a49c00bc9da70d28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243326 | `0x9e98e395b1034f43860952b48a54006906c3cc68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fb2fbaecbc0db28ac5dde618d6ba2806f71167b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0044b58b1de085845aea7bd3256a00eab4145a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa03e05743511fbc3c89ea89bb227a70d2326ed08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa185165cbe79ce48eec6eada64971943a1447e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5b74eb8457161030befc2ef4698fcda04bbef30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5bb18ca30fb27045ec0aa4d7039fc37a7a03bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7f96359845f634bd7ffc0dca1d6fc6cdf857b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa8ee63de17cd81626db464485d2fcfc74615756c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab5053e1f6f7fb242f62091bee8f15c81265ee05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243327 | `0xaec757bf73cc1f4609a1459205835dd40b4e3f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafe7ded8e4a6cb99433bff3ff1ea7f9b84287639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb30d68a8aa0508768f64147e3a3138b5af36ce8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb34c231d6dc12f5ab26816806a3cacd6f8bfab38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3f7ba4b8bbf9bafe2c105cfd8766d1c8e713424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb51c6fdbf82ea5c1c2f39e7e6a3f82586c29c81e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb89c0648c6ac78102999fe710d6a19fcdca1cfa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb97ae6ddf409cd2d4549aa0d3457ce3e8143bd09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbba33f5912db9c41163bc99d9c568fcb9f416f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbde9c05fea7a7fb1173024eac529a9c46bd0307f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243328 | `0xbe813590e1b191120f5df3343368f8a2f579514c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc550e6f4055c1aaeddf005f6935c2970ee778ea7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243329 | `0xc8442072cf1e131506eac7df33ea8910e1d5cfdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb1155eb606f3b7d34be21280c3d46bdf1c9f1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcceec73eaaf148611b2a02b025959e885a4e88a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf47f7c58815dbe6e9390d8e435bd2040f9e660a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd230d78ceb9b2f0022b590e8f91fdf5c668d4c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd2892621ed6772a096674605d9eb2753e18cc20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd30feeeeaec1f7993cf65934be3775f4eb0e5f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3cdf94a0ee626071df1d2c7068b48550319c49b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5ed74178fa50efd7d3e3f30ef5f0acab56933bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5f2c9a067271dfa4ed2742301f61899687cc67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdce12741df9d2ccf2a8bb611684c8151de91a7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdda26cda75a71b26be515ae5a312fde576147437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe03ccc32f376fa5de84851cf752b3f1ed3c8e41f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243330 | `0xe292178333fc7424211795895865adac05baf3be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe56882507c6177c7f5e8f9a56ac7f8598a62b1c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe662250ae237341a32873f66315e032cd0589b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe88178d7e2363c32663abe70e442a0ff2f8b3cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea9871a9451c281cc1180100fc074d7f28402288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb4a4ba3ef5e3a286dc49408c27f9bdaa286db84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf59542ab3fb80fa076b21b1db72817a2dcfa7dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8347d0c225e26b45a6ea9a719012f1153d7ca15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfaa0f413e67a56cbbe181024279ba5504ce487ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfade2934b8e7685070149034384fb7863860d86e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbf14c09079e1aac83be279b6354da710b0cfc5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfcec45d203343e7831222b1104b92e80d1bfba2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd3c30d35319d6ba1969928341abd70887aeb6e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0139e68d81cefb2b89be6ab3f89e8aa904605ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01d490a7c4451237a552569185ece35e39cdc732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05f8ad2ecdad60d3bfe44b3f5fc4a33076d0cebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06b0b33377aa1912b2a53ad649f5b41d38157a24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0818b48d171f90f8d97c6f6ebf18bc2de6f224fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17b600b70b20b0a4bb2870bdfd8bf6d485219969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a24c49da77f31d65deb3634979fd23f4587db93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c4d8221c3696c0a333d3394d46a4efb9090faa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d1f15dafd42a00f1efd56d7b15665aeb22db226` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x1e2de5e3f7e8383e61ad06fe17a6de955ac1921c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f19e20542ef48010f99d030daf63c8216f82326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x254b99e72185102258d3f9e7da3e99a757d5679f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x263e1a330daef4f6148a3732fdaaf1fbd1e96d62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26541b2d4065fe21c9694a36e83e421e200dca4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243345 | `0x2884c238e0a97fdc7aceff81c9b34d679ff6a2e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29c51573adfcb51000dd4d43caff6f9f0c59d13f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c1576cda616b8d8a466d036d8e5ad48070947d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243346 | `0x336b62902e442477d5bac5e39093b10771aaa27a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x336d874b8546a856d1378fab080215cd00394a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3776e91fb0f3bddda5ac0811e925bd66a5aeee97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a2b34e35b83012ffd7c149729dc7f0b622ca3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b05b902fe763ad87aa755fab70f86c76bf331f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43628a91f8bb630523afd2d068bd9473739fcca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x483479a3a413488612f84ee7ad67fe00724b730b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x49bc51d8c140b7f64577ba01f5604014450645eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4fbdd50fb2030e8439fc9a752d37e097def2fb07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x522273d4c9dc81331146585995819dcea842471a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56819e19cdc53b81365b48a1b12e7dd69b06fc2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58741e9137a8af31955d42aec99a1ad4771eec23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243347 | `0x67aefc812ec0a83a327c05d6e7913c35b48bfb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x689359561355ef829bb6d30a9c5b0e98c544cb11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x692e7ae7661f37ba288a29aac7441b98c9590e92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243348 | `0x73ad0f49345467025fcda33cadcfd6fb6cc5ad07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x753dbdbff5712a3f932891bcddfca152576f2094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x776173ea20d19e23c5115178780f0b7cc5b64236` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243349 | `0x777b2839832982b35213063d850848369390ee16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b6099e95ab56f9133a8baa5b204ee11cd41a999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c32ef88d9fb15285c15d6149b7a80f2a248b599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7eae8f36fc56703fd279ac492a0557608103d221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x848872689f8a40b18d30954d07f5fe496aa3f0e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243350 | `0x877935876f1b0ac524d557d31fd4654233db4524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b6048b8385d88aa26e549c2ba61f9ac56b235a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94397bfc5e575ffa55c5888d00624e985df68339` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243351 | `0x9e5cf4c71cfdc6fb2161efb3843971d792c8d732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0c97aa620d19e477e89e9e0585f52b7acaa6039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5655697808bf43251caf0305dd32583a4799fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4cb0276476354d6596603aad38337e3448edca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9192d5f9967e83d3349c63692fafb21a3391a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc94e969688f1532ec7d55772603b9babe4e512b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243352 | `0xbd51e891d505543d5a43ebc3a4f919b4befe09d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd8fdda057de7e0162b7a386bec253844b5e07a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5860eb0c0d0148eaf6938e28ee19b5e70c711a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc687c60106200b45c0a09c46fb117820207765f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243353 | `0xcb6d9de706bcd320e96dccbb6d7e58267524025f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb86ca001b699cf9beda796eda79600ebc4e16dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf46c52bd117c8a6fe49e89e04a488b184d40799` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243354 | `0xd1e358d4f3157b86b6bac7447318c7ee7402e8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6e201d664b29f7b0ebe50b423c7d3cf3f0a7f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde50eb759bdf521b00922ba26afccb6f1f78ca92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1890ff2178f49c3baadfbe2255621880943aafe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1f0e22de16842498634b08c68f8a7a4716fbf87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe45d32c520902bc2a90c6b524fa3b941d210aebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6cb0de49c7de7d0a03cb3c7d2ef43f3cb630523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe76b6e86cedd9f44957fe0e7729e2c6b4e009b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf05ef84863075f9ccae0fcbc08d9584c88e75ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3ebad7f9a733f0982d68f9b96e6670abd092ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf848fa3df332fef0ceda687419a23ce580eabfab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf920cc555b60f7abf5220221a99edc485d784f8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243331 | `0x0768d5c72914ec78260b5a0ca4a3edef10720bd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243332 | `0x1c9c5170f9976fce3009a40bf67cce92b10e10a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243333 | `0x288ad9a30c92ad369c839f3f781d63afe79a1c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c1576cda616b8d8a466d036d8e5ad48070947d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243334 | `0x2c7941a0fe9c52223b229747322af16160161c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37c0f00f7550ea5d81a3fea24490b7e2157d268d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b05b902fe763ad87aa755fab70f86c76bf331f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d821310d6c25e5ed5ce1b9750bbdf28183a3e87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40fed316f640fe2a1527d87718ea44aff1138706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x483479a3a413488612f84ee7ad67fe00724b730b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f69fe26c8f621db0c3f94c515ff7cf0db7a45a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58741e9137a8af31955d42aec99a1ad4771eec23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ed949957da4387113c5a1bfe662880e9a34b03f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-243335 | `0x6aa395f06986ea4efe0a4630c7865c1eb08d5e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e768988ab07d736858a50c79cecc8060b035fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x776173ea20d19e23c5115178780f0b7cc5b64236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a0c7a91a22c09bde6e117f4325819901e07880a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b6099e95ab56f9133a8baa5b204ee11cd41a999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7faf817f0fc902fac839bca7d8c2b662b88f8714` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x906b6f2dee9f9decdf80020732dbf98f59f70f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90cced6c1912ebe199016d3ebca887a8b86dc5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x930beadd0f85d53a05fdb8f94ef7a4f247a21f3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243336 | `0x987eb35684b75d24fbe7a35af607a3414782bca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0534d5119a10507e28577a555310104c77449f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae1efb214f43806ed7017ed1e6f288df2f3d2459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaed848aaded9ee2502f0c8213e93919179df46f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb56a09ca1ab58933cb5a431de0a5b61380786611` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb9192d5f9967e83d3349c63692fafb21a3391a06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243337 | `0xbc2486e4a23af33536b2ea6605b8d86817dd21c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd8fdda057de7e0162b7a386bec253844b5e07a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbed5ba691906d0ac9a3463a25772a7e3f0d7b38a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2f7e15970d3968c5fcc0894541a9fa9d4a7f738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc687c60106200b45c0a09c46fb117820207765f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243338 | `0xc87c638c0e1cbca2e37ac256b6065af0fac3b672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9ddaccd896f0b3e1fcc85507551d89d1d0098a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb81e019a76c168bc2a4f8485472014db1546768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdfbce747d3b32c50cba59eccb79b938e12a4383` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243339 | `0xd3dfa821d57cfae5da5acb7188f378e95200f74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd60c98ca1ba9b9aaa8ad282de32cf198a4d88bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde84c026f5a19d8d562462f2878e0e0ea1d44e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1f0e22de16842498634b08c68f8a7a4716fbf87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4dd926a3f3fc03f64462db6f726b70cd2c2333b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5ed747e19edb8eaece8c0b8a2e4264569ac8054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6cb0de49c7de7d0a03cb3c7d2ef43f3cb630523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe76b6e86cedd9f44957fe0e7729e2c6b4e009b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeadcc3db129379ba6071f26cb94d948147b2cc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb50583b7767eec9426e3833939eb86fa735daed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0adb3c8230879ceb1f6d0001f2c607793ba048c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf266793cb1de933237415956f4fd4ea89ff44dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf55739a9f5ee79025d68377c1d5a3e9678a0be38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf844826e986a2ad77bf24a491fe1d8b9ef2d3b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf848fa3df332fef0ceda687419a23ce580eabfab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243340 | `0xf86aa101bbb2532967a7ec5e4d9ad139f046c61b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa8bb01d35048cad356722f2e88405e7ea7a79e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0374a0dc2f47ea75c900a63a244c3e6555b7e830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03bc653285f8527e1c877b18df285e66898864b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2aa25770e92de3d61544e1c5245e8c968ddc34c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x697240b2124bed2b19fb003ec4e4cfb5b125b0d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-243341 | `0x7d87e9d86371b2e5bfb7dfae4bb6671fde62b2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83a840079bf772683eb5b7409b5fbc4459d24e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8fecec5629eed60d18fd3438aae4a8e69723d190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0b5376b91e06fb1296f803ae8879b49740ce89f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 326
- Live contracts: 0
- Unknown liveness contracts: 326
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=4, unverified unclassified=322

Showing first 200 of 326 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | exact address book overlap | UnnamedContract<br>`0x906b6f2dee9f9decdf80020732dbf98f59f70f5b` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | exact address book overlap | UnnamedContract<br>`0xb9192d5f9967e83d3349c63692fafb21a3391a06` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2c1576cda616b8d8a466d036d8e5ad48070947d2` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x37c0f00f7550ea5d81a3fea24490b7e2157d268d` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3b05b902fe763ad87aa755fab70f86c76bf331f4` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d821310d6c25e5ed5ce1b9750bbdf28183a3e87` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x40fed316f640fe2a1527d87718ea44aff1138706` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x483479a3a413488612f84ee7ad67fe00724b730b` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f69fe26c8f621db0c3f94c515ff7cf0db7a45a3` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58741e9137a8af31955d42aec99a1ad4771eec23` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ed949957da4387113c5a1bfe662880e9a34b03f` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6e768988ab07d736858a50c79cecc8060b035fe5` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x776173ea20d19e23c5115178780f0b7cc5b64236` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a0c7a91a22c09bde6e117f4325819901e07880a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7b6099e95ab56f9133a8baa5b204ee11cd41a999` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7faf817f0fc902fac839bca7d8c2b662b88f8714` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x90cced6c1912ebe199016d3ebca887a8b86dc5e7` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x930beadd0f85d53a05fdb8f94ef7a4f247a21f3c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa0534d5119a10507e28577a555310104c77449f4` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xae1efb214f43806ed7017ed1e6f288df2f3d2459` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaed848aaded9ee2502f0c8213e93919179df46f8` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb56a09ca1ab58933cb5a431de0a5b61380786611` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbd8fdda057de7e0162b7a386bec253844b5e07a5` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbed5ba691906d0ac9a3463a25772a7e3f0d7b38a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc2f7e15970d3968c5fcc0894541a9fa9d4a7f738` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc687c60106200b45c0a09c46fb117820207765f2` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc9ddaccd896f0b3e1fcc85507551d89d1d0098a6` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcb81e019a76c168bc2a4f8485472014db1546768` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcdfbce747d3b32c50cba59eccb79b938e12a4383` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd60c98ca1ba9b9aaa8ad282de32cf198a4d88bb9` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xde84c026f5a19d8d562462f2878e0e0ea1d44e6d` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe1f0e22de16842498634b08c68f8a7a4716fbf87` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe4dd926a3f3fc03f64462db6f726b70cd2c2333b` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe5ed747e19edb8eaece8c0b8a2e4264569ac8054` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe6cb0de49c7de7d0a03cb3c7d2ef43f3cb630523` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe76b6e86cedd9f44957fe0e7729e2c6b4e009b13` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeadcc3db129379ba6071f26cb94d948147b2cc39` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeb50583b7767eec9426e3833939eb86fa735daed` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf0adb3c8230879ceb1f6d0001f2c607793ba048c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf266793cb1de933237415956f4fd4ea89ff44dc3` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf55739a9f5ee79025d68377c1d5a3e9678a0be38` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf844826e986a2ad77bf24a491fe1d8b9ef2d3b03` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf848fa3df332fef0ceda687419a23ce580eabfab` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfa8bb01d35048cad356722f2e88405e7ea7a79e1` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0374a0dc2f47ea75c900a63a244c3e6555b7e830` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x03bc653285f8527e1c877b18df285e66898864b3` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2aa25770e92de3d61544e1c5245e8c968ddc34c5` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x697240b2124bed2b19fb003ec4e4cfb5b125b0d1` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x83a840079bf772683eb5b7409b5fbc4459d24e53` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8fecec5629eed60d18fd3438aae4a8e69723d190` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd0b5376b91e06fb1296f803ae8879b49740ce89f` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| base | exact address book overlap | UnnamedContract<br>`0x1e2de5e3f7e8383e61ad06fe17a6de955ac1921c` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | exact address book overlap | UnnamedContract<br>`0x49bc51d8c140b7f64577ba01f5604014450645eb` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x0139e68d81cefb2b89be6ab3f89e8aa904605ff1` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x01d490a7c4451237a552569185ece35e39cdc732` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x05f8ad2ecdad60d3bfe44b3f5fc4a33076d0cebc` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x06b0b33377aa1912b2a53ad649f5b41d38157a24` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x0818b48d171f90f8d97c6f6ebf18bc2de6f224fe` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x17b600b70b20b0a4bb2870bdfd8bf6d485219969` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x1a24c49da77f31d65deb3634979fd23f4587db93` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x1c4d8221c3696c0a333d3394d46a4efb9090faa0` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x1d1f15dafd42a00f1efd56d7b15665aeb22db226` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x1f19e20542ef48010f99d030daf63c8216f82326` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x254b99e72185102258d3f9e7da3e99a757d5679f` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x263e1a330daef4f6148a3732fdaaf1fbd1e96d62` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x26541b2d4065fe21c9694a36e83e421e200dca4e` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x29c51573adfcb51000dd4d43caff6f9f0c59d13f` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x2c1576cda616b8d8a466d036d8e5ad48070947d2` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x336d874b8546a856d1378fab080215cd00394a71` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x3776e91fb0f3bddda5ac0811e925bd66a5aeee97` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x3a2b34e35b83012ffd7c149729dc7f0b622ca3c4` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x3b05b902fe763ad87aa755fab70f86c76bf331f4` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x43628a91f8bb630523afd2d068bd9473739fcca5` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x483479a3a413488612f84ee7ad67fe00724b730b` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x4fbdd50fb2030e8439fc9a752d37e097def2fb07` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x522273d4c9dc81331146585995819dcea842471a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x56819e19cdc53b81365b48a1b12e7dd69b06fc2c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x58741e9137a8af31955d42aec99a1ad4771eec23` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x689359561355ef829bb6d30a9c5b0e98c544cb11` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x692e7ae7661f37ba288a29aac7441b98c9590e92` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x753dbdbff5712a3f932891bcddfca152576f2094` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x776173ea20d19e23c5115178780f0b7cc5b64236` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x7b6099e95ab56f9133a8baa5b204ee11cd41a999` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x7c32ef88d9fb15285c15d6149b7a80f2a248b599` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x7eae8f36fc56703fd279ac492a0557608103d221` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x848872689f8a40b18d30954d07f5fe496aa3f0e0` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x8b6048b8385d88aa26e549c2ba61f9ac56b235a2` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0x94397bfc5e575ffa55c5888d00624e985df68339` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xa0c97aa620d19e477e89e9e0585f52b7acaa6039` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xa5655697808bf43251caf0305dd32583a4799fd6` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xb4cb0276476354d6596603aad38337e3448edca2` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xb9192d5f9967e83d3349c63692fafb21a3391a06` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xbc94e969688f1532ec7d55772603b9babe4e512b` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xbd8fdda057de7e0162b7a386bec253844b5e07a5` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xc5860eb0c0d0148eaf6938e28ee19b5e70c711a6` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xc687c60106200b45c0a09c46fb117820207765f2` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xcb86ca001b699cf9beda796eda79600ebc4e16dd` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xcf46c52bd117c8a6fe49e89e04a488b184d40799` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xd6e201d664b29f7b0ebe50b423c7d3cf3f0a7f4c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xde50eb759bdf521b00922ba26afccb6f1f78ca92` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xe1890ff2178f49c3baadfbe2255621880943aafe` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xe1f0e22de16842498634b08c68f8a7a4716fbf87` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xe45d32c520902bc2a90c6b524fa3b941d210aebf` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xe6cb0de49c7de7d0a03cb3c7d2ef43f3cb630523` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xe76b6e86cedd9f44957fe0e7729e2c6b4e009b13` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xf05ef84863075f9ccae0fcbc08d9584c88e75ed8` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xf3ebad7f9a733f0982d68f9b96e6670abd092ef9` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xf848fa3df332fef0ceda687419a23ce580eabfab` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| base | unverified unclassified | UnnamedContract<br>`0xf920cc555b60f7abf5220221a99edc485d784f8a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2639f8802d73165a88f9fd790bfea3e46e613838` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3337ca1ab0cfb5618800e20ab73b86d5b78ca5af` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3776e91fb0f3bddda5ac0811e925bd66a5aeee97` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x40fed316f640fe2a1527d87718ea44aff1138706` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x483479a3a413488612f84ee7ad67fe00724b730b` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x49ea690e739d026451f89c80e2c58d4dc79f0f5d` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4c0d505ffac3e8461a6c6abc71f988c5a6ef4498` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x60da38fa211fcb7dd2008bab185a2f90b16db300` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x61b4c8d90266d8003afc37e83c3d1023f1346f39` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x90cced6c1912ebe199016d3ebca887a8b86dc5e7` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9296375dffe9d61358594a31d58585a5daa6f3a3` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9bc08179f1a006325ae3444aae3f084daace3f37` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9e88e977578e1a27a0b8cf23a3fd7eac5cf835bd` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa5655697808bf43251caf0305dd32583a4799fd6` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6efaae5f206e8f5d9f277a3ba751b73cf69d535` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbd8fdda057de7e0162b7a386bec253844b5e07a5` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc687c60106200b45c0a09c46fb117820207765f2` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcb81e019a76c168bc2a4f8485472014db1546768` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcdfbce747d3b32c50cba59eccb79b938e12a4383` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcf46c52bd117c8a6fe49e89e04a488b184d40799` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd74bead9051f92a2b65f865eaff4837d910e2ea9` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe1f0e22de16842498634b08c68f8a7a4716fbf87` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe6cb0de49c7de7d0a03cb3c7d2ef43f3cb630523` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf844826e986a2ad77bf24a491fe1d8b9ef2d3b03` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| bsc | unverified unclassified | UnnamedContract<br>`0x12de1868fd8c1565543964d7e67ca676b0be1611` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1418830ad554becaf76a4058eec6bee9ac002e19` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1654d963828616f5e127a9bf654945e11f416069` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x298259b647d57a8ff6ae82112656b7e30c76601b` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x43a98e5c4a7f3b7f11080fc9d58b0b8a80ca954e` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x49e88c9036e4f888069a354465f1738b372df03b` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x553fd35edf71c6fe1c700aa0a008986deead41d7` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x613dd3df8c8716fa5f33a3d5e072feb5fef1f7b3` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6219b46d6a5b5bfb4ec433a9f96db3bf4076aee1` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x80d629cf2d775cb9b97c4a95fe2269e0e8459d3a` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x80eb7668aec208af0da10f8bb70ca99f3604e076` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x811f78b7d6bcf1c0e94493c2ec727b50ee32b974` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x83a840079bf772683eb5b7409b5fbc4459d24e53` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x85bdcab18061f2360430d3a03a7fff066f97ddd5` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8f0bf7dd7d235a5d784dd68f8e14e14964418ee5` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8fecec5629eed60d18fd3438aae4a8e69723d190` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x930a54d8af945f6d1bed5aaf63b63fab50a8197f` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x97d884d049cd705d681ae83b5cba3efaad0d2c32` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98fab5d1366de24f152ea683a1f23338351c47ea` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9a27329fc40e32c796e08d98de73c23ed7c0910e` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1e302f66dcc990701b76a6b2fb745071e515938` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xac84c7795157b9410d184d50d1a672607de2894a` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xad2aba16506652150f1763cec98e39b32f4ac174` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaeed612285f9e519f76f1d5cf1dfd84d3a398ba7` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaf6f4d0ac41d2b7488726fdc28ebe7a58fa3a442` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb56ddb0edfe1265bd8d7f25e45b759ab82bb06da` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc7faed63936dde2bd50605edd48fedf58fda5779` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd7fc91baad9f3e9145ba361e21c4dd256ae8d588` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd81db7c1b11cc07d7fa5af50010ca6c41798a9cc` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdce12741df9d2ccf2a8bb611684c8151de91a7d2` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf82feba4fd33f88cd5f2455b5e4d0de2611647ee` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b05b902fe763ad87aa755fab70f86c76bf331f4` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1f0e22de16842498634b08c68f8a7a4716fbf87` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf844826e986a2ad77bf24a491fe1d8b9ef2d3b03` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x082582c4271f3f6dd5f4306cbcac822076516c53` | non_address_book | unknown | unknown | unverified | n/a | `0x0d54aadd7ce2dc10eb9527c6105a3c3f1b463d1b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x931e8b8c9a978294bf5e9ea6153b9217c57f17a3` | non_address_book | unknown | unknown | unverified | n/a | `0x0d54aadd7ce2dc10eb9527c6105a3c3f1b463d1b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8eb057f5e38f71fe42a9e59d51ac60926ec933d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d54aadd7ce2dc10eb9527c6105a3c3f1b463d1b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeef338c585ee3cf674f717937f12e6f52accf5e1` | non_address_book | unknown | unknown | unverified | n/a | `0x0d54aadd7ce2dc10eb9527c6105a3c3f1b463d1b` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x43a98e5c4a7f3b7f11080fc9d58b0b8a80ca954e` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x57d5b113b8d5e7c85a89b47ca12d5b5f2d420665` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x697240b2124bed2b19fb003ec4e4cfb5b125b0d1` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x80d629cf2d775cb9b97c4a95fe2269e0e8459d3a` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x97d884d049cd705d681ae83b5cba3efaad0d2c32` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xd0b5376b91e06fb1296f803ae8879b49740ce89f` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xdce12741df9d2ccf2a8bb611684c8151de91a7d2` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xe88178d7e2363c32663abe70e442a0ff2f8b3cce` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xfbf14c09079e1aac83be279b6354da710b0cfc5e` | non_address_book | unknown | unknown | unverified | n/a | `0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1d1f15dafd42a00f1efd56d7b15665aeb22db226` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0x558fe3f0b0791aa2f97b1bc4580778b9a33c3538` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0x58741e9137a8af31955d42aec99a1ad4771eec23` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5e1720a9c3961092fa138a8a1e2774bb56ac46b9` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5ed949957da4387113c5a1bfe662880e9a34b03f` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0x646e869a2574aa6a390caddec10d1f8cd0b424ed` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0x8730671642c5f0a75779b3aa7bb459f5ccfe3424` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xbd8fdda057de7e0162b7a386bec253844b5e07a5` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xc2f7e15970d3968c5fcc0894541a9fa9d4a7f738` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xd1f6644df2bc7e84ff7bcee761def5eb325274c7` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xd20298866c59da0d534349ec3b10a46fa26e6450` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xd3a4c22e2d9d02a9f7438e0ecc480ab016127d2a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xdbf2a96cea5580d58a57369de7150666e0a05c13` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xe1890ff2178f49c3baadfbe2255621880943aafe` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xe1f0e22de16842498634b08c68f8a7a4716fbf87` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xe76b6e86cedd9f44957fe0e7729e2c6b4e009b13` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xf266793cb1de933237415956f4fd4ea89ff44dc3` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xf844826e986a2ad77bf24a491fe1d8b9ef2d3b03` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xfd72dacfc5da3849d5564636e3effe80c2a5488e` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |
| optimism | unverified unclassified | UnnamedContract<br>`0xffeef74c27047876b1bf56500dd0cead05dca2c4` | non_address_book | unknown | unknown | unverified | n/a | `0x0ae6af9c58d2830c2721ebd06f89a73bff19fb26` |

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
| * Zellic: [Synthereum Liquidity Pools ]() | LendingStorageManager | own contract | LendingStorageManager (selected) `0x04d6206ccd424f2e82901ee1cd3982b0b9c409e9` — deployed 2022-07-16 16:33:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * Zellic: [Synthereum Liquidity Pools ]() | IFinder | unmatched — not counted | — | mentioned as target in finding 3.3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x906b6f2dee9f9decdf80020732dbf98f59f70f5b` | StakedJarvis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 379 |

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
