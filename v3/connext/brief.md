# Agentic Audit Brief: Connext

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 7 (2 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Connext (`connext`)
- Website: [https://connext.network/](https://connext.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, boba, bsc, cronos, ethereum, fantom, gnosis, harmony, linea, metis, mode, moonbeam, moonriver, optimism, polygon
- Contract surface: 254 unique implementations (254 raw deployments)
- Coverage basis: 2/25 confirmed own live verified implementations (8.0%); conservative 8.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $20,786,948.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Connext. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 25 contract row(s) across arbitrum, base, bsc, ethereum, gnosis, linea, metis, mode, optimism, polygon. Structural roles: 19 core, 4 supporting, 2 unclassified. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 25
- Structural roles: core (19), supporting (4), unclassified (2)
- Contract kinds: contract (24), abstract (1)
- Detected standards: erc20 (8), ownable (4), erc165 (3), erc1967proxy (3), erc20permit (2)
- Frameworks: openzeppelin (15), openzeppelin-upgradeable (4), solmate (1)
- Upgradeable-pattern rows: 8

## Fork Analysis

0 of 92 contracts are derived from known codebases. 92 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x268682...06056f`, chain 1)
- UnnamedContract (`0x8898b4...0e63c6`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- UnnamedContract (`0xdac17f...831ec7`, chain 1)
- UnnamedContract (`0x4cbb28...e67d20`, chain 10)
- UnnamedContract (`0x67e51f...2486dd`, chain 10)
- UnnamedContract (`0x7fe09d...88cb93`, chain 10)
- UnnamedContract (`0x8f7492...f5deda`, chain 10)
- UnnamedContract (`0xbad5b3...365e50`, chain 10)
- UnnamedContract (`0xd64bd0...3468e0`, chain 10)
- UnnamedContract (`0xda1000...000da1`, chain 10)
- UnnamedContract (`0x2c7b8c...e05de5`, chain 56)
- UnnamedContract (`0x58b9cb...9705e8`, chain 56)
- UnnamedContract (`0x5e7d83...f32c38`, chain 56)
- UnnamedContract (`0x86a343...37d0c9`, chain 56)
- UnnamedContract (`0x8ac76a...cd580d`, chain 56)
- UnnamedContract (`0xa9cb51...b7d805`, chain 56)
- UnnamedContract (`0xcd401c...e4f2ce`, chain 56)
- UnnamedContract (`0xd609f2...74b97a`, chain 56)
- UnnamedContract (`0x44cf74...73fab8`, chain 100)
- UnnamedContract (`0x538e2d...a81326`, chain 100)
- UnnamedContract (`0x58b9cb...9705e8`, chain 100)
- UnnamedContract (`0x5bb83e...7d2109`, chain 100)
- UnnamedContract (`0x642c27...8399fa`, chain 100)
- UnnamedContract (`0x6a023c...78f6e1`, chain 100)
- UnnamedContract (`0xddafbb...fb7a83`, chain 100)
- UnnamedContract (`0xf4d944...adbfa1`, chain 100)
- UnnamedContract (`0x4b8bac...a0bbd0`, chain 137)
- UnnamedContract (`0x58b9cb...9705e8`, chain 137)
- UnnamedContract (`0x7e8f8b...4f3f74`, chain 137)
- UnnamedContract (`0x8f3cf7...c6a063`, chain 137)
- UnnamedContract (`0xadce87...690d5a`, chain 137)
- UnnamedContract (`0xe221c5...d2690f`, chain 137)
- UnnamedContract (`0xf96c6d...72a5b6`, chain 137)
- UnnamedContract (`0x3883b5...c501e9`, chain 1088)
- UnnamedContract (`0x6b1422...ec0188`, chain 1088)
- UnnamedContract (`0x8ef3e1...1fe774`, chain 1088)
- UnnamedContract (`0x9ac9ad...715be2`, chain 1088)
- UnnamedContract (`0xa6a8d2...70f688`, chain 1088)
- UnnamedContract (`0xea32a9...cc1a21`, chain 1088)
- UnnamedContract (`0x1ede59...9c86d4`, chain 8453)
- UnnamedContract (`0x420000...000006`, chain 8453)
- UnnamedContract (`0xb8448c...9ebe3f`, chain 8453)
- UnnamedContract (`0xc90a82...ef53e8`, chain 8453)
- UnnamedContract (`0xe08d49...a03f7e`, chain 8453)
- UnnamedContract (`0x2c8da9...0c8b9f`, chain 34443)
- UnnamedContract (`0x609aef...0e80fb`, chain 34443)
- UnnamedContract (`0x738051...7d4b51`, chain 34443)
- UnnamedContract (`0x2983bf...d225db`, chain 42161)
- UnnamedContract (`0x2fd7e6...19ffd2`, chain 42161)
- UnnamedContract (`0x429b9e...62999d`, chain 42161)
- UnnamedContract (`0x58b9cb...9705e8`, chain 42161)
- UnnamedContract (`0x8c556c...2eae36`, chain 42161)
- UnnamedContract (`0xda1000...000da1`, chain 42161)
- UnnamedContract (`0xee9dec...9c24c8`, chain 42161)
- UnnamedContract (`0xfde99b...971190`, chain 42161)
- UnnamedContract (`0xff970a...db5cc8`, chain 42161)
- UnnamedContract (`0x0573ad...cf66d9`, chain 59144)
- UnnamedContract (`0x331152...b42342`, chain 59144)
- UnnamedContract (`0x4af15e...6b00d5`, chain 59144)
- UnnamedContract (`0x5a5357...863253`, chain 59144)
- UnnamedContract (`0x7360a5...0689e4`, chain 59144)
- UnnamedContract (`0xa05ef2...8de0a9`, chain 59144)
- UnnamedContract (`0xa21943...e12b93`, chain 59144)
- UnnamedContract (`0xbd7eae...2fc767`, chain 59144)
- UnnamedContract (`0xe5d7c2...5cf34f`, chain 59144)
- BEP20DAI (`0x1af3f3...b1dbc3`, chain 56)
- BEP20Ethereum (`0x2170ed...f933f8`, chain 56)
- BEP20USDT (`0x55d398...197955`, chain 56)
- bETH (`0x420000...000006`, chain 34443)
- BridgeToken (`0x0e1d5b...caaf4f`, chain 100)
- ConnextERC20 (`0xfe67a4...28c67a`, chain 1)
- Dai (`0x6b1754...271d0f`, chain 1)
- EverclearXERC20 (`0x58b9cb...9705e8`, chain 10)
- FiatTokenProxy (`0x833589...a02913`, chain 8453)
- FiatTokenProxy (`0x176211...1ee1ff`, chain 59144)
- L2StandardERC20 (`0xbb06dc...16f4dc`, chain 1088)
- MaticWETH (`0x7ceb23...b9f619`, chain 137)
- OptimismMintableERC20 (`0x50c572...7db0cb`, chain 8453)
- OVM_ETH (`0x420000...00000a`, chain 1088)
- OVMFiatToken (`0x7f5c76...c31607`, chain 10)
- StableSwapFacet (`0x11984d...cf2259`, chain 137)
- TokenProxy (`0x4ecaba...d605c6`, chain 100)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- TransparentUpgradeableProxy (`0xfd086b...9fcbb9`, chain 42161)
- UChildERC20Proxy (`0x2791bc...a84174`, chain 137)
- UChildERC20Proxy (`0xc2132d...b58e8f`, chain 137)
- Unwrapper (`0x01ede4...aa180a`, chain 8453)
- USDT (`0x94b008...e58e58`, chain 10)
- WETH9 (`0x420000...000006`, chain 10)
- WXDAI (`0xe91d15...63a97d`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 25; live-surface rows included: 25 (25 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 92/92 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/25 (8.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 92 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 162 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 9 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 92 of 254 unique; 162 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/187
- Verified + Unaudited implementations: 185
- Verified by bytecode match: 0
- Unverified implementations: 67
- Unique implementations: 254
- Raw deployments: 254
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/connext/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 8.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 2 | 1.1% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeToken | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232649 | `0x0e1d5b...caaf4f` | ✅ Audited |
| StableSwapFacet | unknown | project_anchor | own_supporting | 1 | polygon | unit-232718 | `0x11984d...cf2259` | ✅ Audited |

### ⚠️ Verified + Unaudited (185)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e9b7e...4f57cd` | ⚠️ Unaudited |
| AIP1Point1Target | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b075f...430184` | ⚠️ Unaudited |
| AIP1Point2Action | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x627410...5ed516` | ⚠️ Unaudited |
| AlchemixLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe063...79fc9f` | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd0dd2...2de79a` | ⚠️ Unaudited |
| ArbFiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1efb3f...f5ded8` | ⚠️ Unaudited |
| ArbitrumExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4eee...133a7e` | ⚠️ Unaudited |
| ArbitrumHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8d16...949ae3` | ⚠️ Unaudited |
| ArbitrumSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2056c1...c1b678` | ⚠️ Unaudited |
| ArbUXRNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fa063...6ff61a` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e8439...b95704` | ⚠️ Unaudited |
| BeaconProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xae6aab...aba689` | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fe380...11000f` | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6cae...6c6c18` | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22fbfb...d270e3` | ⚠️ Unaudited |
| BEP20Cardano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ee220...435d47` | ⚠️ Unaudited |
| BEP20Cosmos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb3a7...62f335` | ⚠️ Unaudited |
| BEP20DAI | unknown | project_anchor | own_supporting | 0 | bsc | unit-232688 | `0x1af3f3...b1dbc3` | ⚠️ Unaudited |
| BEP20EOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6fb...dccbd6` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | project_anchor | own_supporting | 0 | bsc | unit-232689 | `0x2170ed...f933f8` | ⚠️ Unaudited |
| BEP20LINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf...1a51bd` | ⚠️ Unaudited |
| BEP20Ontology | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd7b3a...850335` | ⚠️ Unaudited |
| BEP20Polkadot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x708360...873402` | ⚠️ Unaudited |
| BEP20Tezos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16939e...12623a` | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1fa4a7...ee5d63` | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x250632...0aa91b` | ⚠️ Unaudited |
| BEP20USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-232691 | `0x55d398...197955` | ⚠️ Unaudited |
| BEP20XRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2f0d...c60dbe` | ⚠️ Unaudited |
| BEP20YFII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f7064...53eda5` | ⚠️ Unaudited |
| BEP20Zcash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba42e...ef8eeb` | ⚠️ Unaudited |
| bETH | unknown | project_anchor | own_supporting | 0 | mode | unit-232676 | `0x420000...000006` | ⚠️ Unaudited |
| BridgeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3606b0...2126a2` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6...5dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1...171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c...c77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020...6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac...a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888f...25b653` | ⚠️ Unaudited |
| ConnextDiamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x064526...7a81ed` | ⚠️ Unaudited |
| ConnextERC20 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232638 | `0xfe67a4...28c67a` | ⚠️ Unaudited |
| CrossMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24a1eb...497137` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c110...db072d` | ⚠️ Unaudited |
| Dai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232633 | `0x6b1754...271d0f` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674...69ebbb` | ⚠️ Unaudited |
| DappRadarLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea3dc...685452` | ⚠️ Unaudited |
| DForce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d8063...a15ba1` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x683151...b8ac48` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13a1db...b3b676` | ⚠️ Unaudited |
| DiamondERC165Init | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x853300...fdd085` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1ac322...8ca84e` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025e75...5fba60` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84...057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca0...8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083...cc5523` | ⚠️ Unaudited |
| ENSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50130b...121267` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb75db...d18295` | ⚠️ Unaudited |
| EverclearXERC20 | unknown | project_anchor | own_supporting | 1 | optimism | unit-232715 | `0x58b9cb...9705e8` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | base | unit-232723 | `0x833589...a02913` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-232722 | `0x176211...1ee1ff` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x839725...afa28a` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e93...845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e...83c275` | ⚠️ Unaudited |
| GnosisHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245f75...8d6413` | ⚠️ Unaudited |
| GrumpycatLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e7ab4...3957a4` | ⚠️ Unaudited |
| InboxFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0296da...0d0f09` | ⚠️ Unaudited |
| IXTLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bee41...03c5c2` | ⚠️ Unaudited |
| L2AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e84af...d901e8` | ⚠️ Unaudited |
| L2DaiGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x467194...c76c65` | ⚠️ Unaudited |
| L2GovernanceRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x10e659...a55f2f` | ⚠️ Unaudited |
| L2MessageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05d437...b960fd` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | project_anchor | own_supporting | 0 | metis | unit-232665 | `0xbb06dc...16f4dc` | ⚠️ Unaudited |
| L2TestSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaefc25...14b4a2` | ⚠️ Unaudited |
| L2USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x199810...5a5521` | ⚠️ Unaudited |
| LineaHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076cd2...606a3d` | ⚠️ Unaudited |
| LineaSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4c1bf5...10e879` | ⚠️ Unaudited |
| LineaSurgeXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x96b3a1...124b82` | ⚠️ Unaudited |
| LineaVoyageXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd83af4...cf599a` | ⚠️ Unaudited |
| LineaXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc24e7b...9cfc13` | ⚠️ Unaudited |
| LockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b52ca...de3ae8` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0296da...0d0f09` | ⚠️ Unaudited |
| MainnetSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02fdf0...a4a1cc` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x223039...ed52e1` | ⚠️ Unaudited |
| MaticWETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-232669 | `0x7ceb23...b9f619` | ⚠️ Unaudited |
| MeanFinanceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xface86...70edcd` | ⚠️ Unaudited |
| MeanFinanceTarget | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e6421...f79b35` | ⚠️ Unaudited |
| MerkleTreeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x021c2b...563fd7` | ⚠️ Unaudited |
| MetisHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf60b2...4a3bc5` | ⚠️ Unaudited |
| MetisSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x20098c...e21031` | ⚠️ Unaudited |
| MidasProtocolTarget | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e02ac...57443c` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7...f15505` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a20...3669ea` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633771...2e4d81` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x842ec2...c54eb2` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e4490...9fdc2e` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a9196...1e2718` | ⚠️ Unaudited |
| NameWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa53cca...13c223` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c0...b97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5a41...05d98d` | ⚠️ Unaudited |
| NextLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222051...b3828d` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcc00f9...9e4d75` | ⚠️ Unaudited |
| OptimismHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23b7ab...799a94` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | base | unit-232711 | `0x50c572...7db0cb` | ⚠️ Unaudited |
| OptimismSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ed42f...b7dbda` | ⚠️ Unaudited |
| OptimismV0HubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa89e...5274c0` | ⚠️ Unaudited |
| OptimismV0SpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x223e62...90cf0f` | ⚠️ Unaudited |
| OVM_ETH | unknown | project_anchor | own_supporting | 0 | metis | unit-232660 | `0x420000...00000a` | ⚠️ Unaudited |
| OVMFiatToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-232642 | `0x7f5c76...c31607` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9453dc...f4c06f` | ⚠️ Unaudited |
| PancakeV3Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b081b...4fd7d0` | ⚠️ Unaudited |
| PolygonHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c3f1...8dbb5a` | ⚠️ Unaudited |
| PolygonSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a2380...97383a` | ⚠️ Unaudited |
| PolygonZkHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x279fda...24c625` | ⚠️ Unaudited |
| PortalFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x191d76...38600a` | ⚠️ Unaudited |
| ProposedOwnableFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x1bcdbf...4dcbd5` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e1f6f...39774e` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86c5ae...733126` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e662e...6c0b10` | ⚠️ Unaudited |
| RelayerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x064526...7a81ed` | ⚠️ Unaudited |
| RelayerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x035aba...ba836b` | ⚠️ Unaudited |
| RelayerProxyHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21e23f...089cdc` | ⚠️ Unaudited |
| ReverseRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08d3ff...2b67d5` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfbf795...151e7d` | ⚠️ Unaudited |
| RootManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0031d2...760258` | ⚠️ Unaudited |
| RoutersFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0296da...0d0f09` | ⚠️ Unaudited |
| SendOutboundRootResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17ab9b...0ec1bd` | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f8577...dfd713` | ⚠️ Unaudited |
| StableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca790c...00cd8d` | ⚠️ Unaudited |
| StaticMetadataService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18703d...866e4c` | ⚠️ Unaudited |
| SwapAdminFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x064526...7a81ed` | ⚠️ Unaudited |
| SwapAndXCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x054cb7...76d962` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa328e9...776eb4` | ⚠️ Unaudited |
| SwapUtilsExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0296da...0d0f09` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c42...51f14f` | ⚠️ Unaudited |
| TestERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x08cf3f...ef31ab` | ⚠️ Unaudited |
| TestERC20Votes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x008b59...2bb629` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db...fdba1b` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb86284...3b4604` | ⚠️ Unaudited |
| TimelessLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7831e3...108baf` | ⚠️ Unaudited |
| TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ffcbe...03444e` | ⚠️ Unaudited |
| TokenFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x01ede4...aa180a` | ⚠️ Unaudited |
| TokenProxy | unknown | project_anchor | own_supporting | 1 | gnosis | unit-232716 | `0x4ecaba...d605c6` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20...733ed4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x096760...ef5562` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x09e922...351eee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x104177...b28ad0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x15533b...5d6844` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29f86a...3f7ca5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x5288c5...84f933` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6c411a...6c623b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-232721 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-232720 | `0xfd086b...9fcbb9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x05f519...e8aef7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x0ece76...2203f0` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b670...d1b987` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e37...7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0735a6...6f0e12` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02daef...057966` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-232719 | `0x2791bc...a84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-232717 | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| UniV3Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1135cc...658a08` | ⚠️ Unaudited |
| UniversalResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3aa974...3a6965` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x07507a...241c91` | ⚠️ Unaudited |
| Unwrapper | unknown | project_anchor | own_supporting | 0 | base | unit-232708 | `0x01ede4...aa180a` | ⚠️ Unaudited |
| UnwrapSearcherFixed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d14ae...2ae9e3` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded882...626341` | ⚠️ Unaudited |
| UpgradeBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x054cb7...76d962` | ⚠️ Unaudited |
| UpgradeBeaconController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13a1db...b3b676` | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083c8b...d49d58` | ⚠️ Unaudited |
| USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-232645 | `0x94b008...e58e58` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa8b49c...707c34` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1d...2499bf` | ⚠️ Unaudited |
| WatcherManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x137072...9c171b` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f89...c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | optimism | unit-232639 | `0x420000...000006` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e...f3690e` | ⚠️ Unaudited |
| WXDAI | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232657 | `0xe91d15...63a97d` | ⚠️ Unaudited |
| xDonate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd47bd3...165d3f` | ⚠️ Unaudited |
| XERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7318...727fe7` | ⚠️ Unaudited |
| XERC20LockboxDeprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54dded...1a6103` | ⚠️ Unaudited |
| XERC20Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x11984d...cf2259` | ⚠️ Unaudited |
| ZkSyncHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a7a4...58b898` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (67)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232632 | `0x268682...06056f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232634 | `0x8898b4...0e63c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232635 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232636 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232637 | `0xdac17f...831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232640 | `0x4cbb28...e67d20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232641 | `0x67e51f...2486dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232643 | `0x7fe09d...88cb93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232644 | `0x8f7492...f5deda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232646 | `0xbad5b3...365e50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232647 | `0xd64bd0...3468e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232648 | `0xda1000...000da1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232690 | `0x2c7b8c...e05de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232692 | `0x58b9cb...9705e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232693 | `0x5e7d83...f32c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232694 | `0x86a343...37d0c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232695 | `0x8ac76a...cd580d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232696 | `0xa9cb51...b7d805` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232697 | `0xcd401c...e4f2ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232698 | `0xd609f2...74b97a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232650 | `0x44cf74...73fab8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232651 | `0x538e2d...a81326` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232652 | `0x58b9cb...9705e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232653 | `0x5bb83e...7d2109` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232654 | `0x642c27...8399fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232655 | `0x6a023c...78f6e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232656 | `0xddafbb...fb7a83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232658 | `0xf4d944...adbfa1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232667 | `0x4b8bac...a0bbd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232668 | `0x58b9cb...9705e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232670 | `0x7e8f8b...4f3f74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232671 | `0x8f3cf7...c6a063` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232672 | `0xadce87...690d5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232673 | `0xe221c5...d2690f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232674 | `0xf96c6d...72a5b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232659 | `0x3883b5...c501e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232661 | `0x6b1422...ec0188` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232662 | `0x8ef3e1...1fe774` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232663 | `0x9ac9ad...715be2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232664 | `0xa6a8d2...70f688` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232666 | `0xea32a9...cc1a21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232709 | `0x1ede59...9c86d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232710 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232712 | `0xb8448c...9ebe3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232713 | `0xc90a82...ef53e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232714 | `0xe08d49...a03f7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-232675 | `0x2c8da9...0c8b9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-232677 | `0x609aef...0e80fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-232678 | `0x738051...7d4b51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232679 | `0x2983bf...d225db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232680 | `0x2fd7e6...19ffd2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232681 | `0x429b9e...62999d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232682 | `0x58b9cb...9705e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232683 | `0x8c556c...2eae36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232684 | `0xda1000...000da1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232685 | `0xee9dec...9c24c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232686 | `0xfde99b...971190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232687 | `0xff970a...db5cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232699 | `0x0573ad...cf66d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232700 | `0x331152...b42342` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232701 | `0x4af15e...6b00d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232702 | `0x5a5357...863253` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232703 | `0x7360a5...0689e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232704 | `0xa05ef2...8de0a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232705 | `0xa21943...e12b93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232706 | `0xbd7eae...2fc767` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232707 | `0xe5d7c2...5cf34f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://drive.google.com/file/d/1l42vxzHwLXrKU10v3FutG2DWthU43vB8/view?pli=1) | unknown | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/connext/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [3. **Protocol security**: As with any protocol, router operators are ultimately exposed to the risk of Connext's underlying implementation. While this risk is never 0, Connext follows best practices for [auditing](), [security bounties](https://immunefi.com/bounty/connext/), and operational practices to keep routers safe.](https://github.com/connext/audits) | Immunefi | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Connext Amarok contest — Code 423n4.pdf](https://github.com/connext/audits/blob/main/amarok/Connext%20Amarok%20contest%20%E2%80%94%20Code%20423n4.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Connext-Spearbit-Security-Review.pdf](https://github.com/connext/audits/blob/main/amarok/Connext-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2022-08 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 42 | high |
| [ConnextNxtp-Spearbit-Security-Review.pdf](https://github.com/connext/audits/blob/main/amarok/ConnextNxtp-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2022-12 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 47 | high |
| [Connext_A-1__Macro_Audits.pdf](https://github.com/connext/audits/blob/main/amarok/Connext_A-1__Macro_Audits.pdf) | Macro | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 55 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16895] DL audit link — no match: Report title indicates December 2020; no specific day given, so last day of month used.
- [16896] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No contracts in scope are listed; only general program information and links to external audits are provided.
- [16897] 3. **Protocol security**: As with any protocol, router operators are ultimately exposed to the risk of Connext's underlying implementation. While this risk is never 0, Connext follows best practices for [auditing](), [security bounties](https://immunefi.com/bounty/connext/), and operational practices to keep routers safe. — no match: The provided text is a GitHub repository README listing audit reports by date and auditor, but does not include any specific contract names, file paths, or scope details. No contracts in scope are identifiable.
- [16898] Connext Amarok contest — Code 423n4.pdf — no match: Extracted contract names from findings and scope summary. The report states the code is composed of 24 smart contracts and 10 libraries, but only those explicitly referenced in findings or scope are listed. Audit date from report header: '2022-10-17'.
- [16899] Connext-Spearbit-Security-Review.pdf — matched: Extracted contract names from findings context and file paths. Audit date from report header.
- [16900] ConnextNxtp-Spearbit-Security-Review.pdf — matched: Extracted contract names from findings context and file references throughout the report. The audit date is from the cover page: December 15, 2022.
- [16901] Connext_A-1__Macro_Audits.pdf — no match: All contracts listed in the 'Source Code' section of the audit report are included. The audit date is from the cover page: 'January 31, 2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | ITransferDefinition | unmatched — not counted | — | mentioned in line-by-line review | no |
| DL audit link | LibChannelCrypto | unmatched — not counted | — | mentioned in line-by-line review | no |
| DL audit link | LibIterableMapping | unmatched — not counted | — | mentioned in line-by-line review | no |
| DL audit link | HashlockTransfer | unmatched — not counted | — | mentioned in line-by-line review | no |
| DL audit link | Withdraw | unmatched — not counted | — | mentioned in line-by-line review | no |
| DL audit link | ChannelFactory | unmatched — not counted | — | mentioned in line-by-line review | no |
| DL audit link | CMCAdjudicator | unmatched — not counted | — | mentioned in line-by-line review | no |
| DL audit link | CMCDeposit | unmatched — not counted | — | mentioned in line-by-line review | no |
| DL audit link | CMCWithdraw | unmatched — not counted | — | mentioned in line-by-line review | no |
| Connext Amarok contest — Code 423n4.pdf | PortalFacet | unmatched — not counted | — | mentioned in H-01 finding | no |
| Connext Amarok contest — Code 423n4.pdf | SwapUtils | unmatched — not counted | — | mentioned in H-02 finding | no |
| Connext Amarok contest — Code 423n4.pdf | BridgeFacet | unmatched — not counted | — | mentioned in H-03, H-04, H-05, H-06, M-01, M-05, M-06, M-08, M-09 findings | no |
| Connext Amarok contest — Code 423n4.pdf | SponsorVault | unmatched — not counted | — | mentioned in H-03, M-03 findings | no |
| Connext Amarok contest — Code 423n4.pdf | AssetLogic | unmatched — not counted | — | mentioned in H-01, H-04, M-05 findings | no |
| Connext Amarok contest — Code 423n4.pdf | DiamondCutFacet | unmatched — not counted | — | mentioned in M-02 finding | no |
| Connext Amarok contest — Code 423n4.pdf | LibDiamond | unmatched — not counted | — | mentioned in M-02, M-04 findings | no |
| Connext Amarok contest — Code 423n4.pdf | Executor | unmatched — not counted | — | mentioned in M-06, M-07 findings | no |
| Connext Amarok contest — Code 423n4.pdf | RoutersFacet | unmatched — not counted | — | mentioned in M-10 finding | no |
| Connext Amarok contest — Code 423n4.pdf | LibConnextStorage | unmatched — not counted | — | mentioned in H-06 finding | no |
| Connext Amarok contest — Code 423n4.pdf | ConnextMessage | unmatched — not counted | — | mentioned in H-04 finding | no |
| Connext Amarok contest — Code 423n4.pdf | TokenRegistry | unmatched — not counted | — | mentioned in H-04, H-06 findings | no |
| Connext Amarok contest — Code 423n4.pdf | IBridgeToken | unmatched — not counted | — | mentioned in H-04 finding | no |
| Connext Amarok contest — Code 423n4.pdf | IStableSwap | unmatched — not counted | — | mentioned in M-05 finding | no |
| Connext Amarok contest — Code 423n4.pdf | IAavePool | unmatched — not counted | — | mentioned in H-01, H-05 findings | no |
| Connext Amarok contest — Code 423n4.pdf | SafeERC20 | unmatched — not counted | — | mentioned in M-05 finding | no |
| Connext Amarok contest — Code 423n4.pdf | SafeERC20Upgradeable | unmatched — not counted | — | mentioned in M-06, M-07 findings | no |
| Connext Amarok contest — Code 423n4.pdf | ExcessivelySafeCall | unmatched — not counted | — | mentioned in M-07 finding | no |
| Connext Amarok contest — Code 423n4.pdf | AddressUpgradeable | unmatched — not counted | — | mentioned in M-07 finding | no |
| Connext Amarok contest — Code 423n4.pdf | IExecutor | unmatched — not counted | — | mentioned in M-06 finding | no |
| Connext Amarok contest — Code 423n4.pdf | LibCrossDomainProperty | unmatched — not counted | — | mentioned in M-06 finding | no |
| Connext-Spearbit-Security-Review.pdf | NomadFacet | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | StableSwapFacet | own proxy deployment | StableSwapFacet (proxy) (selected) `0x11984d...cf2259` — deployed 2022-12-21 17:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Connext-Spearbit-Security-Review.pdf | SwapUtils | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | SponsorVault | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | BridgeFacet | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | XAppConnectionManager | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | ConnextPriceOracle | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | AssetLogic | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | Home | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | Queue | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | PortalFacet | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | LibDiamond | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | LPToken | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | PromiseRouter | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | BridgeToken | own contract | BridgeToken (selected) `0x0e1d5b...caaf4f` — deployed 2023-04-14 19:38:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Connext-Spearbit-Security-Review.pdf | RoutersFacet | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | LibConnextStorage | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | TokenRegistry | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | SwapAdminFacet | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | RelayerFacet | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | BaseConnextFacet | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | LibCrossDomainProperty | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | Replica | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | ITokenExchange | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | ISponsorVault | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | IExecutor | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | ICallback | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | IAavePool | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | IBridgeToken | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | PriceOracle | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | TypedMemView | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | XAppConnectionClient | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | IMessageRecipient | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | Version0 | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | OwnableUpgradeable | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | ERC20BurnableUpgradeable | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| Connext-Spearbit-Security-Review.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | BridgeFacet | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | AssetLogic | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | SwapUtils | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | Merkle | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | PolygonSpokeConnector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | PolygonHubConnector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | Connector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | FxBaseChildTunnel | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | FxBaseRootTunnel | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | RoutersFacet | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | SwapAdminFacet | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | WatcherClient | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | WatchManager | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | RootManager | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | ConnextPriceOracle | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | UpgradeBeaconController | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | ProposedOwnableFacet | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | OptimismHubConnector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | BaseMultichain | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | DiamondInit | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | ZkSyncHubConnector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | BridgeToken | own contract | BridgeToken (selected) `0x0e1d5b...caaf4f` — deployed 2023-04-14 19:38:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ConnextNxtp-Spearbit-Security-Review.pdf | OZERC20 | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | LibDiamond | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | GnosisBase | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | TokenFacet | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | StableSwapFacet | own proxy deployment | StableSwapFacet (proxy) (selected) `0x11984d...cf2259` — deployed 2022-12-21 17:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ConnextNxtp-Spearbit-Security-Review.pdf | StableSwap | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | AmplificationUtils | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | SwapUtilsExternal | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | LPToken | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | OwnerPausableUpgradeable | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | ProposedOwnable | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | SpokeConnector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | HubConnector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | DomainIndexer | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | Queue | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | TypedMemView | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | GnosisSpokeConnector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | GnosisHubConnector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | Multichain | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | ArbitrumHubConnector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | ZkSyncSpokeConnector | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | MerkleTreeManager | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | RouterPermissionsManagerInfo | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | Encoding | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | InboxFacet | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | ProposedOwnableUpgradeable | unmatched — not counted | — | listed in scope | no |
| Connext_A-1__Macro_Audits.pdf | MerkleTreeManager | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | RootManager | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | WatcherClient | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | WatcherManager | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | ConnectorManager | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | Connector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | GasCap | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | HubConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | SpokeConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | IConnectorManager | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | IConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | IHubConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | IMessageRecipient | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | IOutbox | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | IRootManager | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | DomainIndexer | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | MerkleLib | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | Message | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | Queue | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | RateLimited | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | ArbitrumHubConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | ArbitrumSpokeConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | GnosisBase | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | GnosisHubConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | GnosisSpokeConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | MainnetSpokeConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | BaseMultichain | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | MultichainHubConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | MultichainSpokeConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | BaseOptimism | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | OptimismHubConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | OptimismSpokeConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | PolygonHubConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | PolygonSpokeConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | ZkSyncHubConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | ZkSyncSpokeConnector | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | GnosisAmb | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | Multichain | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | BytesUtils | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | MerkleTrie | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | OVMCodec | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | PredeployAddresses | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | RLPReader | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | SecureMerkleTrie | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | ExitPayloadReader | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | MerklePatriciaProof | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | Merkle | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | FxBaseChildTunnel | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | FxBaseRootTunnel | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | ArbitrumL2Amb | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | IArbitrumInbox | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | IArbitrumOutbox | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | IArbitrumRollup | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | IStateCommitmentChain | unmatched — not counted | — | listed in scope table | no |
| Connext_A-1__Macro_Audits.pdf | OptimismAmb | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x1af3f3...b1dbc3` | BEP20DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2170ed...f933f8` | BEP20Ethereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x55d398...197955` | BEP20USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x420000...000006` | bETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfe67a4...28c67a` | ConnextERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b1754...271d0f` | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x58b9cb...9705e8` | EverclearXERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589...a02913` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x176211...1ee1ff` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xbb06dc...16f4dc` | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7ceb23...b9f619` | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x50c572...7db0cb` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x420000...00000a` | OVM_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7f5c76...c31607` | OVMFiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x4ecaba...d605c6` | TokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2791bc...a84174` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc2132d...b58e8f` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x01ede4...aa180a` | Unwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x94b008...e58e58` | USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000006` | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe91d15...63a97d` | WXDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 169 |
| upstream | 1 |
| standard_library | 17 |
| needs_review | 67 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 174 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=2
- Match method counts: unique_name=4

Zero-match audit list:

- [16895] DL audit link
- [16897] 3. **Protocol security**: As with any protocol, router operators are ultimately exposed to the risk of Connext's underlying implementation. While this risk is never 0, Connext follows best practices for [auditing](), [security bounties](https://immunefi.com/bounty/connext/), and operational practices to keep routers safe.
- [16898] Connext Amarok contest — Code 423n4.pdf
- [16901] Connext_A-1__Macro_Audits.pdf

Fork inheritance lineage and inherited audits are included when available.
