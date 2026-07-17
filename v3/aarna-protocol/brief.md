# Agentic Audit Brief: Aarna Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Aarna Protocol (`aarna-protocol`)
- Website: [https://www.aarna.ai](https://www.aarna.ai)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, sonic
- Contract surface: 87 unique implementations (87 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $501,712.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aarna Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, base, ethereum, sonic. Structural roles: 4 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: ownable (4), ownable2step (4)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3d2a8c1cfb03b6ac5c7171076253bd05622c22e9`, chain 1)
- UnnamedContract (`0x3e20112ae272b8af63477452c127ad9a452cd5d1`, chain 1)
- UnnamedContract (`0x4376158ac32c050c86cad8a139dcd9bacef51a9c`, chain 1)
- UnnamedContract (`0x6936df2d345605b3af42b880660b9717f2ae66dd`, chain 1)
- UnnamedContract (`0x72ec8447074dc0bfbedfb516cc250b525f3a4aba`, chain 1)
- UnnamedContract (`0xb157aeeafade31918c7c6011ce9d001c3de22df5`, chain 1)
- UnnamedContract (`0xb9c1344105faa4681bc7ffd68c5c526da61f2ae8`, chain 1)
- UnnamedContract (`0xceb202d3075be4abd24865fd8f307374923948ad`, chain 1)
- UnnamedContract (`0xcfff0e29cd34c60b6eb02b022ab45ab1d571dfec`, chain 1)
- UnnamedContract (`0xe56e418ad7fc784011b93360a4b4a84211d22f24`, chain 1)
- UnnamedContract (`0xf30f62963cce132f32306d7f18a8587958b30ea9`, chain 1)
- UnnamedContract (`0x213419cbaf24180ac24271093af3122c71bfb911`, chain 8453)
- UnnamedContract (`0x383b4234996c1db3a8491588a579304e4e5b9a13`, chain 8453)
- UnnamedContract (`0x6469d15333e7d6a8bdad18a18c251706570bc318`, chain 8453)
- UnnamedContract (`0x748d974d8c1d380da29db16d0840788949b99f63`, chain 8453)
- UnnamedContract (`0x9dc3f0f25d793bee5eec75da3058b0c919f71166`, chain 8453)
- UnnamedContract (`0xb4e62fae267331142a71cbd0ef6e8285e9faf52c`, chain 8453)
- UnnamedContract (`0xb56aa0cbee33c4b6b281027ebaa7697aad42a853`, chain 8453)
- UnnamedContract (`0xd3327f5102f59e57f34ee136d3be0b80d7bb2963`, chain 8453)
- UnnamedContract (`0xef3cebf4f1539d02ec58fc5525ac791e015f6602`, chain 8453)
- UnnamedContract (`0xfac8b52ebd53863222fddcd8e8af30c1915b095d`, chain 8453)
- AtvAdapter (`0x057a2a173468630c9f150996256821c131dc9efc`, chain 8453)
- AtvFactory (`0x053136b9a3826e72e6b8b692fd607ea8cd72bad4`, chain 8453)
- AtvMorphoBlueIntegration (`0x3c29eff521e6f8f8488eb9dfe7c81386d83db9d8`, chain 8453)
- PendleAdapter (`0x45afbac8be713d5f7cb42a7b1e6d034a681a2dff`, chain 1)
- SafeProxy (`0xc2b275d096403e2e4160b8af440ba47f89d9f49b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 26/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 26 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 26 of 87 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/66
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 87
- Raw deployments: 87
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Failsafe | Tier 2 | 2 | 3.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AtvAdapter | unknown | project_anchor | own_supporting | 0 | base | unit-225498 | `0x057a2a173468630c9f150996256821c131dc9efc` | ✅ Audited |
| AtvMorphoBlueIntegration | unknown | project_anchor | own_supporting | 0 | base | unit-225501 | `0x3c29eff521e6f8f8488eb9dfe7c81386d83db9d8` | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebe8b1f4701267bab8993fb5f804f842fb7af297` | ⚠️ Unaudited |
| AFiASRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b14fe61a5c215138855246bd011a0d80d2b4617` | ⚠️ Unaudited |
| AFiBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b895a9b6b5d0aa48292695c5d244ec5f14e4d02` | ⚠️ Unaudited |
| AFiBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1504e94b4c2c8a6e8c7c84aa9323f3fea37bc9ac` | ⚠️ Unaudited |
| AFiFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a66dd5d1be2179fda40631708f334fc04a7593c` | ⚠️ Unaudited |
| AFiManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0020e7ebf874cd2b2e0378eba007cbc715f373b6` | ⚠️ Unaudited |
| AFiManagerV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b21a81c58c20ebc0757c71870c61485ea16d1a6` | ⚠️ Unaudited |
| AFiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11747c3284b5f8088e815e5cf2e5c3062da55d5b` | ⚠️ Unaudited |
| AFiOracleV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005aed2732db6230914ca49fb935d7f9f690a2b8` | ⚠️ Unaudited |
| AFiPassiveRebalanceStrategies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226b02e6ca55bb634cbb1412a644f4d97036bc49` | ⚠️ Unaudited |
| AFiPassiveRebalanceStrategiesV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11dd82ceadf6874bd8f2916c26a65f13c806112d` | ⚠️ Unaudited |
| AFiStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ba60e3c99c0bacb4e237e862542e65491eb741` | ⚠️ Unaudited |
| AFiStorageV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f91aaca4b90643374dc5050585d00f2806d7465` | ⚠️ Unaudited |
| AFiTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a7a692c923c1ec403eff0b17fc950ec59fa184c` | ⚠️ Unaudited |
| APRRecommendation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x206710c3db14593458eb9fb318dba53e582007ee` | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42480c37b249e33aabaf4c22b20235656bd38068` | ⚠️ Unaudited |
| ATokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x625e7708f30ca75bfd92586e17077590c60eb4cd` | ⚠️ Unaudited |
| AtvASRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef6900f89476b20b0645ae4f510164c37722a91` | ⚠️ Unaudited |
| AtvBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0955b91424208c699d85cda85644736143b68dc4` | ⚠️ Unaudited |
| AtvBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x283775555757e74077d101a7cc76b6e86dd9ae88` | ⚠️ Unaudited |
| AtvDexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3e4029472c4618c777b80715f7975c6c85d6ecf8` | ⚠️ Unaudited |
| AtvFactory | unknown | project_anchor | own_supporting | 0 | base | unit-225497 | `0x053136b9a3826e72e6b8b692fd607ea8cd72bad4` | ⚠️ Unaudited |
| AtvLeverageBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b6291d7df80ef789772aaff633c807538e784d2` | ⚠️ Unaudited |
| AtvManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bc6b965b42d9429d3717d5cc35f9d9aace34b8e` | ⚠️ Unaudited |
| AtvOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0faac27e4a9c1bbd02bb959330551f2d4484a70e` | ⚠️ Unaudited |
| AtvPassiveRebalanceStrategies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x043e92d4672836d9fb481864325b7a7555662a4d` | ⚠️ Unaudited |
| AtvStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07ef18636a0e23b43f68264660940740e6d11d39` | ⚠️ Unaudited |
| AtvWrappedBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04dd4466f633c5440bd1a2b1106963c442ba27c6` | ⚠️ Unaudited |
| BaseBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbde8f31d2ddda895264e27dd990fab3dc87b372d` | ⚠️ Unaudited |
| BaseVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332e81368daec705612ff06b3a80b10ae1e5f110` | ⚠️ Unaudited |
| Bulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a81f84268744a40febc48f8b812a1f188d80c3` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079ee67fce2f58472a96584a73c7ab9ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a536e4d6dbd6114cc1ead35777bab948e3643` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14d2c9dd16304e8a95fc8395a37f17b6c15239c6` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b2e88cc7365d90e7e81392432482925bd8437e9` | ⚠️ Unaudited |
| CometFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1853bc7c6bff0d276da53972c0b1a066db1ae7` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec63b5883c3481134fd50d5daebc83ecd2e8779` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0e765f6224c21223aea2af16c1c46e38885a40` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053c06006e67e09879c09ff012ff9d263df29` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x316f9708bb98af7da9c68c1c3b5e79039cd336e3` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb21b06d71c75973babde35b49ffdac3f82ad3775` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd72ac1bce9177cfe7aeb5d0516a38c88a64ce0ab` | ⚠️ Unaudited |
| DataConsumerWithSequencerCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32221633bf43e85ecf330fb6342b7098d4d1b4fc` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5562024784cc914069d67d89a28e3201bf7b57e7` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61c66a4d83da8e04f40ca844c0c4b508ca81fa3` | ⚠️ Unaudited |
| MainnetBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa397a8c2086c554b531c02e29f3291c9704b00c7` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859a1ad94bcf445a406b892ef0d3082f4174088` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e758796408efdd65bbbd877e8ebceeb231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6696e6569f437f48b111734d72b225d14a7` | ⚠️ Unaudited |
| PendleAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225488 | `0x45afbac8be713d5f7cb42a7b1e6d034a681a2dff` | ⚠️ Unaudited |
| PendleMarketV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3f5ea53d1160177445b1898afbb16da111182418` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c07fa6ce103b43925dddb5e31ca568e53ba1` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225510 | `0xc2b275d096403e2e4160b8af440ba47f89d9f49b` | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a982b74a3236a5f2297856d4391b2edbbb5549` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ed5f11f8627fb369c2ddfc3722cb55de3e4efdf` | ⚠️ Unaudited |
| SYAtvAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa394a082273998bdaeea3f1ee6435008d6f6d3a7` | ⚠️ Unaudited |
| TimeDelayModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0faac27e4a9c1bbd02bb959330551f2d4484a70e` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fb4d38ea7ec20d91917c09591490eeda38cf88a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5edbdd9646f8dff606d7448e414884c7d905dca` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c159cfd11677a4f2fe4fd0278dd37a95b986069` | ⚠️ Unaudited |
| WrappedBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x401cf9c74f83f53f0a8a804b49d3aeeee289b8bc` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f67e4d9bd67efa28236013288737d39aef48e79` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225485 | `0x3d2a8c1cfb03b6ac5c7171076253bd05622c22e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225486 | `0x3e20112ae272b8af63477452c127ad9a452cd5d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225487 | `0x4376158ac32c050c86cad8a139dcd9bacef51a9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225489 | `0x6936df2d345605b3af42b880660b9717f2ae66dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225490 | `0x72ec8447074dc0bfbedfb516cc250b525f3a4aba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225491 | `0xb157aeeafade31918c7c6011ce9d001c3de22df5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225492 | `0xb9c1344105faa4681bc7ffd68c5c526da61f2ae8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225493 | `0xceb202d3075be4abd24865fd8f307374923948ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225494 | `0xcfff0e29cd34c60b6eb02b022ab45ab1d571dfec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225495 | `0xe56e418ad7fc784011b93360a4b4a84211d22f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225496 | `0xf30f62963cce132f32306d7f18a8587958b30ea9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225499 | `0x213419cbaf24180ac24271093af3122c71bfb911` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225500 | `0x383b4234996c1db3a8491588a579304e4e5b9a13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225502 | `0x6469d15333e7d6a8bdad18a18c251706570bc318` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225503 | `0x748d974d8c1d380da29db16d0840788949b99f63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225504 | `0x9dc3f0f25d793bee5eec75da3058b0c919f71166` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225505 | `0xb4e62fae267331142a71cbd0ef6e8285e9faf52c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225506 | `0xb56aa0cbee33c4b6b281027ebaa7697aad42a853` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225507 | `0xd3327f5102f59e57f34ee136d3be0b80d7bb2963` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225508 | `0xef3cebf4f1539d02ec58fc5525ac791e015f6602` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225509 | `0xfac8b52ebd53863222fddcd8e8af30c1915b095d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/aarna-protocol) | CertiK | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [FailSafe >](https://drive.google.com/drive/folders/14_ulqN1J3Sd61QMrwYEbeafjxK8Nf5Uq?usp=sharing) | Failsafe | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review.](https://drive.google.com/file/d/16EK-59YoFuBfGL4zRR7YBbL9ko35Au7U/view) | Failsafe | Audit | 2025-10 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16709] DL audit link — no match: Extracted 10 contract names from the 'Contracts in Scope' and 'Audited Files' sections. Audit date inferred from 'Last Audit was delivered on 7/28/2025'.
- [16710] FailSafe > — no match: The provided text is a Google Drive listing of multiple PDF files, not the actual audit report content. No contract names or audit date could be extracted.
- [16711] The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. — matched: Extracted contract names from findings sections where they are explicitly mentioned as audited targets. No explicit scope table found; contracts are inferred from the report's detailed findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | AFiBase | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiFactory | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiManager | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiOracle | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiPassiveRebalanceStrategies | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiStorage | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | TimeDelayModule | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiTimeLock | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | ArrayUtils | unmatched — not counted | — | listed in 'Audited Files/SHA256' | no |
| DL audit link | FullMath | unmatched — not counted | — | listed in 'Audited Files/SHA256' | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvStakingManager | unmatched — not counted | — | Finding 1, Finding 2 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvBase | unmatched — not counted | — | Finding 1, Finding 4, Finding 5, Finding 6 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvStorage | unmatched — not counted | — | Finding 1, Finding 2, Finding 4 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvMorphoBlueIntegration | own contract | AtvMorphoBlueIntegration (selected) `0x3c29eff521e6f8f8488eb9dfe7c81386d83db9d8` — deployed 2026-02-09 14:50:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvPassiveRebalanceStrategies | unmatched — not counted | — | Finding 3 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvOracle | unmatched — not counted | — | Finding 3 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvAdapter | own contract | AtvAdapter (selected) `0x057a2a173468630c9f150996256821c131dc9efc` — deployed 2026-02-09 14:29:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x053136b9a3826e72e6b8b692fd607ea8cd72bad4` | AtvFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45afbac8be713d5f7cb42a7b1e6d034a681a2dff` | PendleAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [16709] DL audit link
- [16710] FailSafe >

Fork inheritance lineage and inherited audits are included when available.
