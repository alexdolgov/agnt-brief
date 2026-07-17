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

### ❓ Unverified (52)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-243301 | `0x8a9c67fee641579deba04928c4bc45f66e26343a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243302 | `0xbd8fdda057de7e0162b7a386bec253844b5e07a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-243303 | `0x1574564fcfd15bccb3fe04e9818f61131ea74066` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-243304 | `0x15e770b95edd73fd96b02ece0266247d50895e76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-243305 | `0xf920cc555b60f7abf5220221a99edc485d784f8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-243342 | `0x414f9e74ba3a9d0acce65182809492f41ac671e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-243343 | `0x644c545703f57a4b905f4c558f52342a206e2c55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | gnosis | unit-243306 | `0xccf1279c3406ad1181bee00dab4b28b23d17ddb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243308 | `0x06440a2da257233790b5355322dad82c10f0389a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243309 | `0x162ed91cb79066b4fe7993c920e2e04f67cf768e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243310 | `0x166e4b3ec3f81f32f0863b9cd63621181d6bfed5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243311 | `0x25e9f976f5020f6bf2d417b231e5f414b7700e31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243312 | `0x30e97dc680ee97ff65b5188d34fb4ea20b38d710` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243313 | `0x36572797cc569a74731e0738ef56e3b8ce3f309c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243314 | `0x36d6d1d6249fbc6ebd0fc28fd46c846fb69b9074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243315 | `0x57bd432d5f6f8f00e2b2bda9849fca76e2f789b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-243316 | `0x596ebe76e2db4470966ea395b0d063ac6197a8c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243317 | `0x63b5891895a57c31d5ec2a8a5521b6ee67700f9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243318 | `0x65a7b4ff684c2d08c115d55a4b089bf4e92f5003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243319 | `0x72e7da7c0dd3c082dfe8f22343d6ad70286e07bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243320 | `0x7a75624f051041baa74ae4e47724216307c7401d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243321 | `0x7ac6515f4772fcb6eeef978f60d996b21c56089d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243322 | `0x8734cf40a402d4191bd4d7a64beef12e4c452def` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243323 | `0x874b8d8e818c79166f00b64fb161925e3e95921f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243324 | `0x8ae34663b4622336818e334dc42f92c41efbfa35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243325 | `0x8fb58bc0dd6ffed8f5e26d47076bddafc83c8d4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243326 | `0x9e98e395b1034f43860952b48a54006906c3cc68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243327 | `0xaec757bf73cc1f4609a1459205835dd40b4e3f29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243328 | `0xbe813590e1b191120f5df3343368f8a2f579514c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243329 | `0xc8442072cf1e131506eac7df33ea8910e1d5cfdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-243330 | `0xe292178333fc7424211795895865adac05baf3be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243345 | `0x2884c238e0a97fdc7aceff81c9b34d679ff6a2e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243346 | `0x336b62902e442477d5bac5e39093b10771aaa27a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243347 | `0x67aefc812ec0a83a327c05d6e7913c35b48bfb94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243348 | `0x73ad0f49345467025fcda33cadcfd6fb6cc5ad07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243349 | `0x777b2839832982b35213063d850848369390ee16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243350 | `0x877935876f1b0ac524d557d31fd4654233db4524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243351 | `0x9e5cf4c71cfdc6fb2161efb3843971d792c8d732` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243352 | `0xbd51e891d505543d5a43ebc3a4f919b4befe09d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243353 | `0xcb6d9de706bcd320e96dccbb6d7e58267524025f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243354 | `0xd1e358d4f3157b86b6bac7447318c7ee7402e8a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243331 | `0x0768d5c72914ec78260b5a0ca4a3edef10720bd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243332 | `0x1c9c5170f9976fce3009a40bf67cce92b10e10a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243333 | `0x288ad9a30c92ad369c839f3f781d63afe79a1c5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243334 | `0x2c7941a0fe9c52223b229747322af16160161c98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-243335 | `0x6aa395f06986ea4efe0a4630c7865c1eb08d5e7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243336 | `0x987eb35684b75d24fbe7a35af607a3414782bca0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243337 | `0xbc2486e4a23af33536b2ea6605b8d86817dd21c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243338 | `0xc87c638c0e1cbca2e37ac256b6065af0fac3b672` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243339 | `0xd3dfa821d57cfae5da5acb7188f378e95200f74b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-243340 | `0xf86aa101bbb2532967a7ec5e4d9ad139f046c61b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-243341 | `0x7d87e9d86371b2e5bfb7dfae4bb6671fde62b2c4` | ❓ Unverified |

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
