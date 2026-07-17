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

- UnnamedContract (`0x268682b7d9992ae7e2ca4a8bcc9d9655fb06056f`, chain 1)
- UnnamedContract (`0x8898b472c54c31894e3b9bb83cea802a5d0e63c6`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0x4cbb28fa12264cd8e87c62f4e1d9f5955ce67d20`, chain 10)
- UnnamedContract (`0x67e51f46e8e14d4e4cab9df48c59ad8f512486dd`, chain 10)
- UnnamedContract (`0x7fe09d217d646a6213e51b237670bc326188cb93`, chain 10)
- UnnamedContract (`0x8f7492de823025b4cfaab1d34c58963f2af5deda`, chain 10)
- UnnamedContract (`0xbad5b3c68f855eaece68203312fd88ad3d365e50`, chain 10)
- UnnamedContract (`0xd64bd028b560bbfc732ea18f282c64b86f3468e0`, chain 10)
- UnnamedContract (`0xda10009cbd5d07dd0cecc66161fc93d7c9000da1`, chain 10)
- UnnamedContract (`0x2c7b8c1a13f2a7854b9299e4d22809a8b1e05de5`, chain 56)
- UnnamedContract (`0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8`, chain 56)
- UnnamedContract (`0x5e7d83da751f4c9694b13af351b30ac108f32c38`, chain 56)
- UnnamedContract (`0x86a343bcf17d79c475d300eed35f0145f137d0c9`, chain 56)
- UnnamedContract (`0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d`, chain 56)
- UnnamedContract (`0xa9cb51c666d2af451d87442be50747b31bb7d805`, chain 56)
- UnnamedContract (`0xcd401c10afa37d641d2f594852da94c700e4f2ce`, chain 56)
- UnnamedContract (`0xd609f26b5547d5e31562b29150769cb7c774b97a`, chain 56)
- UnnamedContract (`0x44cf74238d840a5febb0eaa089d05b763b73fab8`, chain 100)
- UnnamedContract (`0x538e2ddbfdf476d24ccb1477a518a82c9ea81326`, chain 100)
- UnnamedContract (`0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8`, chain 100)
- UnnamedContract (`0x5bb83e95f63217cda6ae3d181ba580ef377d2109`, chain 100)
- UnnamedContract (`0x642c27a96dffb6f21443a89b789a3194ff8399fa`, chain 100)
- UnnamedContract (`0x6a023ccd1ff6f2045c3309768ead9e68f978f6e1`, chain 100)
- UnnamedContract (`0xddafbb505ad214d7b80b1f830fccc89b60fb7a83`, chain 100)
- UnnamedContract (`0xf4d944883d6fddc56d3534986fef82105cadbfa1`, chain 100)
- UnnamedContract (`0x4b8bac8dd1caa52e32c07755c17efaded6a0bbd0`, chain 137)
- UnnamedContract (`0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8`, chain 137)
- UnnamedContract (`0x7e8f8b2da3dc5ad9c9dfd1a832331a039d4f3f74`, chain 137)
- UnnamedContract (`0x8f3cf7ad23cd3cadbd9735aff958023239c6a063`, chain 137)
- UnnamedContract (`0xadce87b14d570665222c1172d18a221bf7690d5a`, chain 137)
- UnnamedContract (`0xe221c5a2a8348f12dcb2b0e88693522ebad2690f`, chain 137)
- UnnamedContract (`0xf96c6d2537e1af1a9503852eb2a4af264272a5b6`, chain 137)
- UnnamedContract (`0x3883b5bdd61ba1b687de69ee50c9738d5ec501e9`, chain 1088)
- UnnamedContract (`0x6b142227a277ce62808e0df93202483547ec0188`, chain 1088)
- UnnamedContract (`0x8ef3e1300857fdf616dfe2fcbced4ac6a61fe774`, chain 1088)
- UnnamedContract (`0x9ac9ad5a82ccd0ab7584a037a7a2334dc3715be2`, chain 1088)
- UnnamedContract (`0xa6a8d22d5da43c9f6e5cf7b4e50941784e70f688`, chain 1088)
- UnnamedContract (`0xea32a96608495e54156ae48931a7c20f0dcc1a21`, chain 1088)
- UnnamedContract (`0x1ede59e0d39b14c038698b1036bde9a4819c86d4`, chain 8453)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 8453)
- UnnamedContract (`0xb8448c6f7f7887d36dca487370778e419e9ebe3f`, chain 8453)
- UnnamedContract (`0xc90a82e926d3a87899b3717aba0262bf66ef53e8`, chain 8453)
- UnnamedContract (`0xe08d4907b2c7aa5458ac86596b6d17b1fea03f7e`, chain 8453)
- UnnamedContract (`0x2c8da9c3166085acebc70ad9491ca2bfa10c8b9f`, chain 34443)
- UnnamedContract (`0x609aefb9fb2ee8f2fdad5dc48efb8fa4ee0e80fb`, chain 34443)
- UnnamedContract (`0x7380511493dd4c2f1dd75e9cce5bd52c787d4b51`, chain 34443)
- UnnamedContract (`0x2983bf5c334743aa6657ad70a55041d720d225db`, chain 42161)
- UnnamedContract (`0x2fd7e61033b3904c65aa9a9b83dcd344fa19ffd2`, chain 42161)
- UnnamedContract (`0x429b9eb01362b2799131efcc44319689b662999d`, chain 42161)
- UnnamedContract (`0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8`, chain 42161)
- UnnamedContract (`0x8c556cf37faa0eedac7ae665f1bb0fbd4b2eae36`, chain 42161)
- UnnamedContract (`0xda10009cbd5d07dd0cecc66161fc93d7c9000da1`, chain 42161)
- UnnamedContract (`0xee9dec2712cce65174b561151701bf54b99c24c8`, chain 42161)
- UnnamedContract (`0xfde99b3b3fbb69553d7dae105ef34ba4fe971190`, chain 42161)
- UnnamedContract (`0xff970a61a04b1ca14834a43f5de4533ebddb5cc8`, chain 42161)
- UnnamedContract (`0x0573ad07ca4f74757e5b2417bf225bebebcf66d9`, chain 59144)
- UnnamedContract (`0x331152ca43b50b39f3a9f203685b98dbb9b42342`, chain 59144)
- UnnamedContract (`0x4af15ec2a0bd43db75dd04e62faa3b8ef36b00d5`, chain 59144)
- UnnamedContract (`0x5a53576dde5071719a9a3a9e78e68cbcdf863253`, chain 59144)
- UnnamedContract (`0x7360a597290612787833ee924c449c61cc0689e4`, chain 59144)
- UnnamedContract (`0xa05ef29e9ac8c75c530c2795fa6a800e188de0a9`, chain 59144)
- UnnamedContract (`0xa219439258ca9da29e9cc4ce5596924745e12b93`, chain 59144)
- UnnamedContract (`0xbd7eaed30936670c931b718f5d9014aff82fc767`, chain 59144)
- UnnamedContract (`0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f`, chain 59144)
- BEP20DAI (`0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3`, chain 56)
- BEP20Ethereum (`0x2170ed0880ac9a755fd29b2688956bd959f933f8`, chain 56)
- BEP20USDT (`0x55d398326f99059ff775485246999027b3197955`, chain 56)
- bETH (`0x4200000000000000000000000000000000000006`, chain 34443)
- BridgeToken (`0x0e1d5bcd2ac5cf2f71841a9667afc1e995caaf4f`, chain 100)
- ConnextERC20 (`0xfe67a4450907459c3e1fff623aa927dd4e28c67a`, chain 1)
- Dai (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- EverclearXERC20 (`0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8`, chain 10)
- FiatTokenProxy (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- FiatTokenProxy (`0x176211869ca2b568f2a7d4ee941e073a821ee1ff`, chain 59144)
- L2StandardERC20 (`0xbb06dca3ae6887fabf931640f67cab3e3a16f4dc`, chain 1088)
- MaticWETH (`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`, chain 137)
- OptimismMintableERC20 (`0x50c5725949a6f0c72e6c4a641f24049a917db0cb`, chain 8453)
- OVM_ETH (`0x420000000000000000000000000000000000000a`, chain 1088)
- OVMFiatToken (`0x7f5c764cbc14f9669b88837ca1490cca17c31607`, chain 10)
- StableSwapFacet (`0x11984dc4465481512eb5b777e44061c158cf2259`, chain 137)
- TokenProxy (`0x4ecaba5870353805a9f068101a40e0f32ed605c6`, chain 100)
- TransparentUpgradeableProxy (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- TransparentUpgradeableProxy (`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`, chain 42161)
- UChildERC20Proxy (`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`, chain 137)
- UChildERC20Proxy (`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`, chain 137)
- Unwrapper (`0x01ede4fdf8cf7ef9942a935305c3145f8daa180a`, chain 8453)
- USDT (`0x94b008aa00579c1307b0ef2c499ad98a8ce58e58`, chain 10)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 10)
- WXDAI (`0xe91d153e0b41518a2ce8dd3d7944fa863463a97d`, chain 100)

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
| BridgeToken | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232649 | `0x0e1d5bcd2ac5cf2f71841a9667afc1e995caaf4f` | ✅ Audited |
| StableSwapFacet | unknown | project_anchor | own_supporting | 1 | polygon | unit-232718 | `0x11984dc4465481512eb5b777e44061c158cf2259` | ✅ Audited |

### ⚠️ Verified + Unaudited (185)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e9b7e5ff9ccda4311ef475915b5a31b8b4f57cd` | ⚠️ Unaudited |
| AIP1Point1Target | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184` | ⚠️ Unaudited |
| AIP1Point2Action | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6274106eedd4848371d2c09e0352d67b795ed516` | ⚠️ Unaudited |
| AlchemixLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe063a764ea04a9a1dc6cf8b8978955f779fc9f` | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a` | ⚠️ Unaudited |
| ArbFiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8` | ⚠️ Unaudited |
| ArbitrumExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4eee20f434bc3908a0b18da496348657133a7e` | ⚠️ Unaudited |
| ArbitrumHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8d16c500b89e4a1fde991f284d84d57e949ae3` | ⚠️ Unaudited |
| ArbitrumSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2056c11b071ae4cdd55007136c2493f3d4c1b678` | ⚠️ Unaudited |
| ArbUXRNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e84390dcc5195414ec91a8c56a5c91021b95704` | ⚠️ Unaudited |
| BeaconProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xae6aab43c4f3e0cea4ab83752c278f8debaba689` | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fe38087a94903a9d946fa1915e1772fe611000f` | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18` | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3` | ⚠️ Unaudited |
| BEP20Cardano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ee2200efb3400fabb9aacf31297cbdd1d435d47` | ⚠️ Unaudited |
| BEP20Cosmos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb3a705fc54725037cc9e008bdede697f62f335` | ⚠️ Unaudited |
| BEP20DAI | unknown | project_anchor | own_supporting | 0 | bsc | unit-232688 | `0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3` | ⚠️ Unaudited |
| BEP20EOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6fb708fc5732dec1afc8d8556423a2edccbd6` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | project_anchor | own_supporting | 0 | bsc | unit-232689 | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ⚠️ Unaudited |
| BEP20LINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | ⚠️ Unaudited |
| BEP20Ontology | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd7b3a77848f1c2d67e05e54d78d174a0c850335` | ⚠️ Unaudited |
| BEP20Polkadot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7083609fce4d1d8dc0c979aab8c869ea2c873402` | ⚠️ Unaudited |
| BEP20Tezos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16939ef78684453bfdfb47825f8a5f714f12623a` | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1fa4a73a3f0133f0025378af00236f3abdee5d63` | ⚠️ Unaudited |
| BEP20UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x250632378e573c6be1ac2f97fcdf00515d0aa91b` | ⚠️ Unaudited |
| BEP20USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-232691 | `0x55d398326f99059ff775485246999027b3197955` | ⚠️ Unaudited |
| BEP20XRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe` | ⚠️ Unaudited |
| BEP20YFII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f70642d88cf1c4a3a7abb072b53b929b653eda5` | ⚠️ Unaudited |
| BEP20Zcash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb` | ⚠️ Unaudited |
| bETH | unknown | project_anchor | own_supporting | 0 | mode | unit-232676 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| BridgeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3606b0d9c84224892c7407d4e8dcfd7e9e2126a2` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1de9d660d3cb53031cfe1a58de40b171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac13f6403d19c95b6b75008b12fd21a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| ConnextDiamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0645265e254caeb175d75890259db3696e7a81ed` | ⚠️ Unaudited |
| ConnextERC20 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232638 | `0xfe67a4450907459c3e1fff623aa927dd4e28c67a` | ⚠️ Unaudited |
| CrossMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24a1eb8fae716ef04dca073e3f99f5f5c7497137` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| Dai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232633 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| DappRadarLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea3dc2e17a0466b36dd3258574e0bd2e4685452` | ⚠️ Unaudited |
| DForce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d8063df0319457f777a353efef0dc0189a15ba1` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x683151d43758bb7a37e9d47386154d5ae9b8ac48` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13a1dbf4c746775f606c77f2fb36bbe90bb3b676` | ⚠️ Unaudited |
| DiamondERC165Init | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8533004ecb90151cd821dc2fafb78797d8fdd085` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1ac32215b08806a5bc5271d7fd77919c3c8ca84e` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025e75d8f799f362ac4fe136ddc197d3055fba60` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| ENSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50130b669b28c339991d8676fa73cf122a121267` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb75db974b1f2bd3b5916d503036208064d18295` | ⚠️ Unaudited |
| EverclearXERC20 | unknown | project_anchor | own_supporting | 1 | optimism | unit-232715 | `0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | base | unit-232723 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-232722 | `0x176211869ca2b568f2a7d4ee941e073a821ee1ff` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| GnosisHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245f757d660c3ec65416168690431076d58d6413` | ⚠️ Unaudited |
| GrumpycatLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e7ab4b68f1b184f677ed5e8e6e8f9348c3957a4` | ⚠️ Unaudited |
| InboxFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0296da2ce82eb3b98eb05925bc5777c7da0d0f09` | ⚠️ Unaudited |
| IXTLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bee41753779e18a2d459a84c612ac6ef903c5c2` | ⚠️ Unaudited |
| L2AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e84af3743cc4e7f516570b341ced56530d901e8` | ⚠️ Unaudited |
| L2DaiGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x467194771dae2967aef3ecbedd3bf9a310c76c65` | ⚠️ Unaudited |
| L2GovernanceRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x10e6593cdda8c58a1d0f14c5164b376352a55f2f` | ⚠️ Unaudited |
| L2MessageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05d43713b7e333d2d54be65ce3b5f3698ab960fd` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | project_anchor | own_supporting | 0 | metis | unit-232665 | `0xbb06dca3ae6887fabf931640f67cab3e3a16f4dc` | ⚠️ Unaudited |
| L2TestSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaefc25750d8c2bd331293076e2dc5d5ad414b4a2` | ⚠️ Unaudited |
| L2USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1998108fa7993ea67a8b1a99d392a3288c5a5521` | ⚠️ Unaudited |
| LineaHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076cd2b25cb1ed7272d716bdeb4a8551cf606a3d` | ⚠️ Unaudited |
| LineaSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4c1bf5bda6f7aa11b5b4c6915df96620e710e879` | ⚠️ Unaudited |
| LineaSurgeXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x96b3a15257c4983a6fe9073d8c91763433124b82` | ⚠️ Unaudited |
| LineaVoyageXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a` | ⚠️ Unaudited |
| LineaXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc24e7b826b3c1e8918843baf7abd2e51399cfc13` | ⚠️ Unaudited |
| LockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b52ca1406eea3ce1fcc37dc0121845ef1de3ae8` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0296da2ce82eb3b98eb05925bc5777c7da0d0f09` | ⚠️ Unaudited |
| MainnetSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02fdf04af077687cda03bd3162388b7972a4a1cc` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2230393edad0299b7e7b59f20aa856cd1bed52e1` | ⚠️ Unaudited |
| MaticWETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-232669 | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| MeanFinanceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xface86b9f34230624cf48eb582aff4bba970edcd` | ⚠️ Unaudited |
| MeanFinanceTarget | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e64213564cc30107beb81cd0dced3f18df79b35` | ⚠️ Unaudited |
| MerkleTreeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x021c2b7e89bde462c97de3c514c77e1c50563fd7` | ⚠️ Unaudited |
| MetisHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf60b2a87f791aa9de81c32f964403da614a3bc5` | ⚠️ Unaudited |
| MetisSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x20098c6d481225ff5d9b2ca84cf68fc683e21031` | ⚠️ Unaudited |
| MidasProtocolTarget | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e02ac4b0942e670dd0366fa504f665a2257443c` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7f54b6dcf6cee86986edc18143a35f15505` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63377166e406ee6a992b8e20961f047bb12e4d81` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x842ec2c7d803033edf55e478f461fc547bc54eb2` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e4490e97c8243d844719f26a0b47fd5a59fdc2e` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a9196b06f339ad9f3ee752c987b401f2e1e2718` | ⚠️ Unaudited |
| NameWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa53cca02f98d590819141aa85c891e2af713c223` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c051057b774cd75067dc48f8987c4eb97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5a41e85f4ce2433beef476305d307b9205d98d` | ⚠️ Unaudited |
| NextLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222051df1632517e2008ca65cffcb0466cb3828d` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcc00f934a7541868b9a09f98d7928f727b9e4d75` | ⚠️ Unaudited |
| OptimismHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23b7abe4cc664f24eb68e80cfadc572857799a94` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | base | unit-232711 | `0x50c5725949a6f0c72e6c4a641f24049a917db0cb` | ⚠️ Unaudited |
| OptimismSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ed42ffe155b35893d6ef7510e5893183bb7dbda` | ⚠️ Unaudited |
| OptimismV0HubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa89ea322708b30882d3aa3a9fc3da4775274c0` | ⚠️ Unaudited |
| OptimismV0SpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x223e62d3a2c528ffbde81430a45c0bd30990cf0f` | ⚠️ Unaudited |
| OVM_ETH | unknown | project_anchor | own_supporting | 0 | metis | unit-232660 | `0x420000000000000000000000000000000000000a` | ⚠️ Unaudited |
| OVMFiatToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-232642 | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f` | ⚠️ Unaudited |
| PancakeV3Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b081b724cdc4dd9186e64f259b5fc589a4fd7d0` | ⚠️ Unaudited |
| PolygonHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c3f15eee9a932b90c64b07c02ee9962b8dbb5a` | ⚠️ Unaudited |
| PolygonSpokeConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a238087e8fb9f6b248ec4143d94f11b1497383a` | ⚠️ Unaudited |
| PolygonZkHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x279fda9addb854541f0bb86733d924e28c24c625` | ⚠️ Unaudited |
| PortalFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x191d761a722e13085e4c95b95cbcf3cc4938600a` | ⚠️ Unaudited |
| ProposedOwnableFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x1bcdbf11f9eb8ddac1725bb346890e45f14dcbd5` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e1f6f22f97b4a7522d8b62e983953639239774e` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86c5aed9f27837074612288610fb98ccc1733126` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e662e74074465dca2d3c4a1c6e78a1a8f6c0b10` | ⚠️ Unaudited |
| RelayerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0645265e254caeb175d75890259db3696e7a81ed` | ⚠️ Unaudited |
| RelayerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x035aba93c18d407dec788ca2fdc77b90feba836b` | ⚠️ Unaudited |
| RelayerProxyHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21e23f1b88a37d3b30e7e3ed7626dae189089cdc` | ⚠️ Unaudited |
| ReverseRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08d3ff6e65f680844fd2465393ff6f0d742b67d5` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfbf795ead640e261868eb200ed2850eb9c151e7d` | ⚠️ Unaudited |
| RootManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0031d290b8526e2eb6ac22111e5ff96eca760258` | ⚠️ Unaudited |
| RoutersFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0296da2ce82eb3b98eb05925bc5777c7da0d0f09` | ⚠️ Unaudited |
| SendOutboundRootResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17ab9b14ac7659390b3994f9e67bf833e60ec1bd` | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f8577f68d8306aeb48f9015ac61744bbadfd713` | ⚠️ Unaudited |
| StableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca790c6caacb69f070092ca680760a1abb00cd8d` | ⚠️ Unaudited |
| StaticMetadataService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18703d0117121f6a7476221e2afc57faf9866e4c` | ⚠️ Unaudited |
| SwapAdminFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0645265e254caeb175d75890259db3696e7a81ed` | ⚠️ Unaudited |
| SwapAndXCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x054cb759cef515c8ca71e19367c6091a7b76d962` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa328e968906f5c5922accc197d6dcfe2c2776eb4` | ⚠️ Unaudited |
| SwapUtilsExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0296da2ce82eb3b98eb05925bc5777c7da0d0f09` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| TestERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x08cf3f03d9fc58c97d2e209894594a2877ef31ab` | ⚠️ Unaudited |
| TestERC20Votes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x008b59ff5364045337994c00efc7ad1c562bb629` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db51010dd1ade14dd3fb164e218805fdba1b` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb86284160348d0727e7fc6b131812082243b4604` | ⚠️ Unaudited |
| TimelessLockboxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7831e325824621ceb14898ad494444fe08108baf` | ⚠️ Unaudited |
| TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e` | ⚠️ Unaudited |
| TokenFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x01ede4fdf8cf7ef9942a935305c3145f8daa180a` | ⚠️ Unaudited |
| TokenProxy | unknown | project_anchor | own_supporting | 1 | gnosis | unit-232716 | `0x4ecaba5870353805a9f068101a40e0f32ed605c6` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x096760f208390250649e3e8763348e783aef5562` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x09e9222e96e7b4ae2a407b98d48e330053351eee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x10417734001162ea139e8b044dfe28dbb8b28ad0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x15533b77981cda0f85c4f9a485237df4285d6844` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29f86a78551fac44217a8763a45540027c3f7ca5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x5288c571fd7ad117bea99bf60fe0846c4e84f933` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6c411ad3e74de3e7bd422b94a27770f5b86c623b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-232721 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-232720 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x0ece76334fb560f2b1a49a60e38cf726b02203f0` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e379c9cff64944be82b849f8fd5972c7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0735a62b0b6e837fa67130589988436fd26f0e12` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02daefc2e8aad089d094579499508398e3057966` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-232719 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-232717 | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| UniV3Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1135cc96a7e9d8f161be8b6bdb74f896a9658a08` | ⚠️ Unaudited |
| UniversalResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3aa974fb3f8c1e02796048bdcded79e9d53a6965` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x07507a719e7d040ebcbcf54715d7ce7ce5241c91` | ⚠️ Unaudited |
| Unwrapper | unknown | project_anchor | own_supporting | 0 | base | unit-232708 | `0x01ede4fdf8cf7ef9942a935305c3145f8daa180a` | ⚠️ Unaudited |
| UnwrapSearcherFixed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d14ae6adfb0530a6a53ba8900f14c1ddb2ae9e3` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded8823234e28f18a824abe4f64fa7863b626341` | ⚠️ Unaudited |
| UpgradeBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x054cb759cef515c8ca71e19367c6091a7b76d962` | ⚠️ Unaudited |
| UpgradeBeaconController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13a1dbf4c746775f606c77f2fb36bbe90bb3b676` | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083c8bc333f38131623ce1e0951748facad49d58` | ⚠️ Unaudited |
| USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-232645 | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa8b49c4cbf805f3252ddbf4de465c34986707c34` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| WatcherManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x137072f68708eb7c82edceececcf64d6c29c171b` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | optimism | unit-232639 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e5c5775ca9dd02e30e67f545c36cff3690e` | ⚠️ Unaudited |
| WXDAI | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232657 | `0xe91d153e0b41518a2ce8dd3d7944fa863463a97d` | ⚠️ Unaudited |
| xDonate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd47bd37deaa7d960659f5ddab98f4e4729165d3f` | ⚠️ Unaudited |
| XERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac73181dceb40254b587810fb57e097872727fe7` | ⚠️ Unaudited |
| XERC20LockboxDeprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ddede0b063c332715693a83cbe6b611a1a6103` | ⚠️ Unaudited |
| XERC20Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x11984dc4465481512eb5b777e44061c158cf2259` | ⚠️ Unaudited |
| ZkSyncHubConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a7a4e4c70fcec6eb4844eb84bc98523f58b898` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232632 | `0x268682b7d9992ae7e2ca4a8bcc9d9655fb06056f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232634 | `0x8898b472c54c31894e3b9bb83cea802a5d0e63c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232635 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232636 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232637 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232640 | `0x4cbb28fa12264cd8e87c62f4e1d9f5955ce67d20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232641 | `0x67e51f46e8e14d4e4cab9df48c59ad8f512486dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232643 | `0x7fe09d217d646a6213e51b237670bc326188cb93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232644 | `0x8f7492de823025b4cfaab1d34c58963f2af5deda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232646 | `0xbad5b3c68f855eaece68203312fd88ad3d365e50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232647 | `0xd64bd028b560bbfc732ea18f282c64b86f3468e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232648 | `0xda10009cbd5d07dd0cecc66161fc93d7c9000da1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232690 | `0x2c7b8c1a13f2a7854b9299e4d22809a8b1e05de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232692 | `0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232693 | `0x5e7d83da751f4c9694b13af351b30ac108f32c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232694 | `0x86a343bcf17d79c475d300eed35f0145f137d0c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232695 | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232696 | `0xa9cb51c666d2af451d87442be50747b31bb7d805` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232697 | `0xcd401c10afa37d641d2f594852da94c700e4f2ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232698 | `0xd609f26b5547d5e31562b29150769cb7c774b97a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232650 | `0x44cf74238d840a5febb0eaa089d05b763b73fab8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232651 | `0x538e2ddbfdf476d24ccb1477a518a82c9ea81326` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232652 | `0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232653 | `0x5bb83e95f63217cda6ae3d181ba580ef377d2109` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232654 | `0x642c27a96dffb6f21443a89b789a3194ff8399fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232655 | `0x6a023ccd1ff6f2045c3309768ead9e68f978f6e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232656 | `0xddafbb505ad214d7b80b1f830fccc89b60fb7a83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232658 | `0xf4d944883d6fddc56d3534986fef82105cadbfa1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232667 | `0x4b8bac8dd1caa52e32c07755c17efaded6a0bbd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232668 | `0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232670 | `0x7e8f8b2da3dc5ad9c9dfd1a832331a039d4f3f74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232671 | `0x8f3cf7ad23cd3cadbd9735aff958023239c6a063` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232672 | `0xadce87b14d570665222c1172d18a221bf7690d5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232673 | `0xe221c5a2a8348f12dcb2b0e88693522ebad2690f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232674 | `0xf96c6d2537e1af1a9503852eb2a4af264272a5b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232659 | `0x3883b5bdd61ba1b687de69ee50c9738d5ec501e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232661 | `0x6b142227a277ce62808e0df93202483547ec0188` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232662 | `0x8ef3e1300857fdf616dfe2fcbced4ac6a61fe774` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232663 | `0x9ac9ad5a82ccd0ab7584a037a7a2334dc3715be2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232664 | `0xa6a8d22d5da43c9f6e5cf7b4e50941784e70f688` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232666 | `0xea32a96608495e54156ae48931a7c20f0dcc1a21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232709 | `0x1ede59e0d39b14c038698b1036bde9a4819c86d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232710 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232712 | `0xb8448c6f7f7887d36dca487370778e419e9ebe3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232713 | `0xc90a82e926d3a87899b3717aba0262bf66ef53e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232714 | `0xe08d4907b2c7aa5458ac86596b6d17b1fea03f7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-232675 | `0x2c8da9c3166085acebc70ad9491ca2bfa10c8b9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-232677 | `0x609aefb9fb2ee8f2fdad5dc48efb8fa4ee0e80fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-232678 | `0x7380511493dd4c2f1dd75e9cce5bd52c787d4b51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232679 | `0x2983bf5c334743aa6657ad70a55041d720d225db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232680 | `0x2fd7e61033b3904c65aa9a9b83dcd344fa19ffd2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232681 | `0x429b9eb01362b2799131efcc44319689b662999d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232682 | `0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232683 | `0x8c556cf37faa0eedac7ae665f1bb0fbd4b2eae36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232684 | `0xda10009cbd5d07dd0cecc66161fc93d7c9000da1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232685 | `0xee9dec2712cce65174b561151701bf54b99c24c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232686 | `0xfde99b3b3fbb69553d7dae105ef34ba4fe971190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232687 | `0xff970a61a04b1ca14834a43f5de4533ebddb5cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232699 | `0x0573ad07ca4f74757e5b2417bf225bebebcf66d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232700 | `0x331152ca43b50b39f3a9f203685b98dbb9b42342` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232701 | `0x4af15ec2a0bd43db75dd04e62faa3b8ef36b00d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232702 | `0x5a53576dde5071719a9a3a9e78e68cbcdf863253` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232703 | `0x7360a597290612787833ee924c449c61cc0689e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232704 | `0xa05ef29e9ac8c75c530c2795fa6a800e188de0a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232705 | `0xa219439258ca9da29e9cc4ce5596924745e12b93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232706 | `0xbd7eaed30936670c931b718f5d9014aff82fc767` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232707 | `0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f` | ❓ Unverified |

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
| Connext-Spearbit-Security-Review.pdf | StableSwapFacet | own proxy deployment | StableSwapFacet (proxy) (selected) `0x11984dc4465481512eb5b777e44061c158cf2259` — deployed 2022-12-21 17:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Connext-Spearbit-Security-Review.pdf | BridgeToken | own contract | BridgeToken (selected) `0x0e1d5bcd2ac5cf2f71841a9667afc1e995caaf4f` — deployed 2023-04-14 19:38:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ConnextNxtp-Spearbit-Security-Review.pdf | BridgeToken | own contract | BridgeToken (selected) `0x0e1d5bcd2ac5cf2f71841a9667afc1e995caaf4f` — deployed 2023-04-14 19:38:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ConnextNxtp-Spearbit-Security-Review.pdf | OZERC20 | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | LibDiamond | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | GnosisBase | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | TokenFacet | unmatched — not counted | — | listed in scope | no |
| ConnextNxtp-Spearbit-Security-Review.pdf | StableSwapFacet | own proxy deployment | StableSwapFacet (proxy) (selected) `0x11984dc4465481512eb5b777e44061c158cf2259` — deployed 2022-12-21 17:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| bsc | `0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3` | BEP20DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | BEP20Ethereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x55d398326f99059ff775485246999027b3197955` | BEP20USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x4200000000000000000000000000000000000006` | bETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfe67a4450907459c3e1fff623aa927dd4e28c67a` | ConnextERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b175474e89094c44da98b954eedeac495271d0f` | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8` | EverclearXERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x176211869ca2b568f2a7d4ee941e073a821ee1ff` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xbb06dca3ae6887fabf931640f67cab3e3a16f4dc` | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x50c5725949a6f0c72e6c4a641f24049a917db0cb` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x420000000000000000000000000000000000000a` | OVM_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | OVMFiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x4ecaba5870353805a9f068101a40e0f32ed605c6` | TokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x01ede4fdf8cf7ef9942a935305c3145f8daa180a` | Unwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000006` | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe91d153e0b41518a2ce8dd3d7944fa863463a97d` | WXDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
