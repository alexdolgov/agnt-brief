# Agentic Audit Brief: Connext

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 7 (2 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Connext (`connext`)
- Website: [https://connext.network/](https://connext.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, boba, bsc, cronos, ethereum, fantom, gnosis, harmony, linea, metis, mode, moonbeam, moonriver, optimism, polygon
- Contract surface: 855 unique implementations (856 raw deployments)
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
- Outside the address book: 763 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 9 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 92 of 855 unique; 763 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/187
- Verified + Unaudited implementations: 185
- Verified by bytecode match: 0
- Unverified implementations: 668
- Unique implementations: 855
- Raw deployments: 856
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
| MerkleTreeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x021c2b7e89bde462c97de3c514c77e1c50563fd7`; ethereum `0xcdfbaba486b420e7f33ae043385d6c7a15f98ebd` | ⚠️ Unaudited |
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

### ❓ Unverified (668)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08fd91418825ddfd728c97d79d377011104c566c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x096fca41ec0d9023e019a5b825cc987185bc5e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b266f7ed121004a7d1b098598a9275ba5851d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12ba9681a80928b6d0b4ff7469ec33dd266af586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13dd6168c0027e75fe76aea000e9e742c862a281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1717744698874c9290ebf32de10b7f7383fb4d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1776310f86ad9734481c6eace46f01cddfe0e5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17a8a2f3f3d4ea7ad3e7c218f2b2d908d4bb391f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a238087e8fb9f6b248ec4143d94f11b1497383a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ab993a524c16efa593deb32cb135bd30c0a8dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db5ee7b6235e6c31efb4b3ee45190ca14e1a214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x223e62d3a2c528ffbde81430a45c0bd30990cf0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a399a7bbba31a61eb0620f1e8b6f250a5b76de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244944ee0988c419f81d3114c9175af2cf095f44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24995b94e36cd57ecc089287836ce49c848ceebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x249e39713df43a8e685a244b2297a1f61aa54503` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232632 | `0x268682b7d9992ae7e2ca4a8bcc9d9655fb06056f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28496853bc91144eefd5771144c4f6c6af813167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a274e9668c9c9de601334a33d406a0356a1a50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a9e7bbed277092e2431f186e1af898962d4e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29240a275cddde26bbd6d80fa8ad315c35f91604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292c14799c41616a1ab25a7c7b83b77cb5ea0988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b501381c6d6aff9238526352b1c7560aa35a7c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bf0790fcfee75a735f292ed74354cee1daca794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d20b01e5979309b50cf461689333ca14e6e876d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d4c375bc12292a339524fbcba35d2a9f27f6c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fd9de29cebb750cdce32c8f2833509c34d3166d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32171357233c988c3725924505f17a0f0884c31c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34679d49165a2ee084c5344fbd18021161f74319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35866ab2d6badff580895c883a4535e928ab7db9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365aba0acea260fae1c7e08577ed645697be648d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3985dd9dcf16ef96516ebc25bb214744bc8a6f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b33925300bfdad845b5e83cb6401611efb0c01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bcb9b4b2e428d164fe732e048d69127432cf6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7ce1a19d4df696623599eb6451dbd755750032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ddb33c371802bc2fca8de4bbc8bfc75b1aa49d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fc2e30a9868962a6b4d49116a3dd715d38ff707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x429b9eb01362b2799131efcc44319689b662999d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x433aed0b10d126481e043c93dba3362bb58a3705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44fb86a509b33d65bada9985b9ce8f52fda621e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45bf3c737e57b059a5855280ca1adb8e9606ac68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ad5c6930df1ce8768048785adf3b7003778bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a0126ee88018393b1ad2455060bc350ead9908a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4af28ff55676c163cd5620fa94c24e15a69c3add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9f990e96d7b9180c7cafe003456add60aa9860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51058d7bda2661e134cc40137fc04cf3a9087e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x523ab7424ad126809b1d7a134eb6e0ee414c9b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53ca5b3d36a06d7432098e9afc22f39c4848516a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab287e5c33ee70158c951f34818bd095446255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a65db144166781498dee40e438ff96628ba9054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c2149869146dea55cdd1cf2dd828e4e1548bb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d7380848856f36f0937cb27c916b6ed93defa9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e1ba88978b1f9b61448c5e6881e21a7d771d139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63c6c79f3e79406b62f8623881cbfd7b2ec1e8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64c2d57bd9ceef22e8fd5f9ff2cb610418faa8e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66a425f09cfd613d40a986b3ef800aa7604c8eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67528e1e4394225c322919a87d9e8d6c688a783f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6997a2b14004fb14314f50d8ae6ac5131f86f0d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a595e41893a5acba9dbf8288b92eb71106ba7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a67f2e9b43eb8f2634e24e02e71f26f3e20c452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5fff21bbd1e0ca15edc981d41dbb3c54851d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d91fe99daa0991d8283bc32a6be8aecf590e595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e3f48301c13d31fc4448039c8f82eb99c2714b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f7622df462c1eaf555ce13f4a60b372a9a8fa0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f8537dbae3ce2a83547eba87ce2bbe65a9a14c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x722a37f727d07439accda00740e8f55db4efadba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72c393d9ae5e352877b4adc585b1939b670213d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72c51564ecfa2344cf168bfc4dfa7e64a560aef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x730f2fb52cf393e5b40c2d1caf8b510fafa773b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x754d2bc5f4add805990113e7caded57cf3144228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75c6a865c30da54e365cb5def728890b3dd8bdc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x785a4c7ee79778e9670a6a02c60c1bd148bcd525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79e6e0242405a66b2dd8b96ded3b2f0216fd417d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b2be683266909a6a4068e743083dd40621d663e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c44b40b7e1a2246314751fa3ddc51f1d6e84300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d1bc1e1ba9a7538fe4344ca7957438103a76622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d2596d7e44b0990611d390fbb0bd24e64845694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d590c6039898d0d91ad4b0c08394a69faafd3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dd2bcc0828e0a43c67c1baeb3cc075695ac8b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8f8b2da3dc5ad9c9dfd1a832331a039d4f3f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ed49d0a13255802a281c08688563bd8d5f726b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fbea55f85d507b8ce8f73a25b3a0a7029a14430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x803aba13c15fa0cd8d858d42f8d68d9736dfba6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80a846124d909a3ee91e010a214f5de7e57b06b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x811230c283e1669b5cbc08059dd8c09db5eeeec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81bf17fb3b129de1fd3c58d6a1785061d763b863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83096c7455f24e593aac9a7c73f849d36d3eeb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842ad61a06f8f6bc125e8059bcd4d6d3440eca34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8459c3b69fc20851e6c19576d0395f180ac677b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866e98dd17fb99b563b892cdd82c84ee6e2210cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f22c459ca72622276b24ad39830e8897dcc05f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232634 | `0x8898b472c54c31894e3b9bb83cea802a5d0e63c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89285703326a9b3192841f67121dd714e4968689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89bb312259b003186a6d8d1b20c012ce9e22dba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908692ac56727a3c0c62869cadbcde53e06136f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9283c1fb0d69a737b766ef1c15833358e01ac620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9343c6a2be8f6d102a915e10b92d2897dba070ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c178005edff21a594ba8195ad34b617c29ea0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x962a39683a7eec4597abe34985d1c75334fc3e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x967a6f3dd7fa73686e697d87a7717bc6090961fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96fddc1a6fbdb232e9ada1ffc1026799f85128e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9868a20e30216639b0a1b8a426ee873984f6384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ba7d2ab079bd1924859e2fecdad1bebe5b119fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c5093ca6a376ed60454d5e623b29dee90634946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e4c8bc2a9dc9295ef96c0cfe9520cc2fded4db0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232635 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1e7d7559dce5878eeb55503f8e68a75f7529676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3e91aefadecb8919180f581f5be897c763be593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa741199a83090cb16a15ce14b3cf346242e0cafc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa75ca5179e1c2a286309060e4226344b4c2a9c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d5eed6b519c37bfc506409a76d0e446c04e8b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98f36ca759271928d18ae9b8bc6e214c279fded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaadbb1083ba67c6022f6281dc820470cdfeda616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf00e0b7b5ce2d3a0b5d02dec936254550228b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafb88881e53589f5e6eb1cc27e9207cc7f03023f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb01bc38909413f5dbb8f18a9b5787a62ce1282ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4f8d176466f5f544bad53737bffaaea17185c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7a2e0b20c049776584c77b5fe2d5b0fdc16e753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8448c6f7f7887d36dca487370778e419e9ebe3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbabb718a5c5d831af3fe252193e1e270d74fba64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbba4b5130fb918a6e2dbc94b430397d3d2ea1e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbb302f28535afb4c54a0b0bc981b71248fe8327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf29a2d67efb6766e44c163b19c6f4118b164702` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232636 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc162d91eba9cdf57f6c1d82b10deaee2bf233c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1af0630036df06c1a36c3187ad8f0d436601b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1f054b3f290224941c6e28fbf2f88ceeb3fa01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc324b7984990248d86dfe90edf7e3657de2565ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92fc5a968886c09668d3128a2802c88d9eb9ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9798c047db3457e1d8a424b2fae73e31eb21e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb0840e861456da0483166ad4b0f3dc251586b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb9a9ff0832750eace45d8194803b76be64da93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd02f71bbed36bedefa0457c44ec455ae1fd3de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd4108547a42c2351f9f30176839e2ce5b155460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd9467562892031d01d1aa568686e143155abbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb88ce83e026046cf3aafa0650eb5f4eb2f3048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdbf9d438670d19d1fb3954abc8a13666b302b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceeaf780205d0c4a6a5e18ae45648c7108a5df19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01da5d3fc9f6a5052f901a1985b8319289a603c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd12345cd15352ef5d4259bd2a918fcb6943ce7a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd151c9ef49ce2d30b829a98a07767e3280f70961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd246cb68391b596fab645fed3718a103e48cf5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2a6cdd411d8d7357a0e87b8fdba6ae53b4a231d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2ceb2a4d219438c3850cea4e643febb66116f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3264d37e16aece088a16f6685b7ba4b88f0fa55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3b338fce3238c7353ef44a628f96cb48b2fa0b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5d61e9dfb6680cba8353988ba0337802811c2e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85148657367cc3823fff49a8ee309bd8e6835e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232637 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb649f880194e9c2269af1a503126c79ddf8053c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbc7047253247a56605ce1e67abff33bb5d4cbed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc6dcb975a8f906e7b9837c050275faff63bd4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcdae095329b02f6a8a4fa11ba3b078208ee4b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcf026d7fbbffc1633c79e97a2b4dae1c374406b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf5bbcf1a489ae20a4027acce7d6e10d05f9cf5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf84553e8aa18bc14d1b1dc56b4139c38f01228b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfa5fafac70a610e4224b85b7fc4764a0b90d2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfffd98ad28086d7d072632ba7bdf1bbcfc087d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2c1aaa504322ff0bc42fcfb9a52a315a06d5cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8cf9ebb1cfb137c692a0a4e470e257b9417d116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2e9fbaa2142b1d76b6d74e65490e700dcc26ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec2140eb4a23e36ff676e18626a8652ea2be47fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1c78967584d5e0fff66da103b8eb06c82ec020d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5be67922914c0b933d13802e834be9e532c09a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5e02c39a9d5028bb0ed0e37765136ad9be3c195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf659a7b83fd9f69b52f4bcf9389991515acf4fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7c4d7dcec2c09a15f2db5831d6d25eaef0a296c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7de5aceeee6091d1103209c337fa00d0b4b9092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf837826e22367ec414c9f9321f0a0b70d4181c74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf89f918c71a02404672a762ab22e611b4bdc70a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95a3a0bb6f785a13f1065d7c917462d1d0d4011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6c35c88e03338b13cffc9a5a143a2951b7f2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa79ff694c8c7eda1ece214326245d1115513e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaff7c6fe4f3592a4c594eb1a0be7a5fa011a52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd911b58fb5a94ff08f2784f6d36b1eb97ae29c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0296da2ce82eb3b98eb05925bc5777c7da0d0f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f219898699b3f8008d9f05fac10bd08d4d6c65d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x11984dc4465481512eb5b777e44061c158cf2259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x172f55db1ec560ea877fec0b4afe9a780e5fd52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17ab9b14ac7659390b3994f9e67bf833e60ec1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x200fdcf7ed3d856a70380d1d88778ebca9ec6959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x209ef834761b4a272ef60e82ffe1f494b7ef76f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x32155c9d39084f040ba17890fe8134dbe2a0453f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3da402d5cd4bf0a7c6003c0b9c3c19fdf1e90fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x432006ced3bba818e3d0d8730426b32bb34a42ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4778170ff14883a8e0dc0313e303dcb6b4dad493` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232640 | `0x4cbb28fa12264cd8e87c62f4e1d9f5955ce67d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4d6ddaf1637b7cff03dcd509a269a42e982aec5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x50ef4b4436faf884afb95e7d5560f4c6eaed2a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x51058d7bda2661e134cc40137fc04cf3a9087e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5543eafd20e25fbbbd66e2c154ff8ff8407e3a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x578d4e2a2286064610bf8466c57770f0b85c9fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x59cfb5ff4657301188af3bca2140a543524e791c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x59d908fbbbe670388eb1bd5caf30af47cecb25b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b3b7abca299763212f69f347fb13d5582325891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5bb83e95f63217cda6ae3d181ba580ef377d2109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60dcbc3bb9eac7264a2d279f790969ccde61f4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60e391dbb9b3a324d8fe1e7d8047a98d0619cd2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63377166e406ee6a992b8e20961f047bb12e4d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x67528e1e4394225c322919a87d9e8d6c688a783f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232641 | `0x67e51f46e8e14d4e4cab9df48c59ad8f512486dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x681f0a7e7bd478690e08d5e43bc6d003e522777c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x683151d43758bb7a37e9d47386154d5ae9b8ac48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6acbf8d58f785541438e979305a59636e729df9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b5aeb8d272039154d0df19cf60b5e5226ff9dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7076ca03eb4cc28fe207c1bcebe98caf06993b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x729a17a6802a7348eebefbe54146eda98b121656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x72c393d9ae5e352877b4adc585b1939b670213d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x72c51564ecfa2344cf168bfc4dfa7e64a560aef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x745837468a6a4f7ef5eb3fee18fc6e74376443c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x785a4c7ee79778e9670a6a02c60c1bd148bcd525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a4d394d03efd526f1cee96b01e1677348e53cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7dd2bcc0828e0a43c67c1baeb3cc075695ac8b9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232643 | `0x7fe09d217d646a6213e51b237670bc326188cb93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x80fc71a17d92bbec3be603ff9ba6bfbac591424d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81dadc774d2ae44eb30d2290d076ae67f9800bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x88483b3e3b4dd7cedb8efcef81f6dc9adb6292d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232644 | `0x8f7492de823025b4cfaab1d34c58963f2af5deda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x924e679c3c23017aef214c9ea1fbc22e97ff9e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9963a1e4fd60ba4a89e92930c8d8686514705bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9bacb5dea769867d610df21f04eb612ae3b7242a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9e40a8a535d4875848e1821e3c59ab5c5dd86135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9fc0124db7f203ebecd44d77548c35e17d7822b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa052ef2d4eb460c3886b0fd687fa33d3dc8b15ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa05ef29e9ac8c75c530c2795fa6a800e188de0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa28de94d2e6f84659c2c32df14334daa08dd6461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa3e91aefadecb8919180f581f5be897c763be593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa93c4a6e19bee415cab341d19046c799a80a1496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xafb88881e53589f5e6eb1cc27e9207cc7f03023f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xafce6eac6cdced6a54d367e1271c10d6595ae78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0eef3e1de973d045c3858e072c540299585252d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232646 | `0xbad5b3c68f855eaece68203312fd88ad3d365e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc162d91eba9cdf57f6c1d82b10deaee2bf233c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc414b47939bc8df6a773b22aeef3a8bd1cf7d002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc946ca2e61fbfbe45516133ac8c63dae3d1c54f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce157927222cd68b9c7057e84344ce6f0cee89b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xceb49aea4faec437bf1b82ea4a76940df9323273` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232647 | `0xd64bd028b560bbfc732ea18f282c64b86f3468e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232648 | `0xda10009cbd5d07dd0cecc66161fc93d7c9000da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdb2a821474735c80cc2f05889be709a37ea02e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd40cf25bbeb8ff807acebd2c6eb0e415549056c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdfa5fafac70a610e4224b85b7fc4764a0b90d2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe03fce428ce0436ac7626970d221d64415f1fa85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe54d6a0af692f949622dada01ed1d64a1acc9c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8c9fa5195c607dd3523862696c24c86770af64a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe9ddd1963d302d1e13239a3c25254efd39c2da91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeb35e251b29166acd5652e00892aadeb2b45f5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xec2140eb4a23e36ff676e18626a8652ea2be47fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf5be67922914c0b933d13802e834be9e532c09a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf659a7b83fd9f69b52f4bcf9389991515acf4fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf7de5aceeee6091d1103209c337fa00d0b4b9092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8726fbf0303bc66a1f098c1ed7bad8218b0c1a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfd9b8b1b7e44b39dfa04d66159ac21b68141ed38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xffa5e2df76b9cc453609de4c1da551926110a4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xffe0821f1f088b16e6760edb5d537eb2551a3a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x025e75d8f799f362ac4fe136ddc197d3055fba60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x095fd83977ccfbcd68e9303084bff7f1fa6fc5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x119dd93154780d7604d50014c4545b4906928bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x191d761a722e13085e4c95b95cbcf3cc4938600a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ac32215b08806a5bc5271d7fd77919c3c8ca84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c76113bb1826b4202f3bdd4a473d20a91983309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x222af8c1411dc8b125338cf876547b03467bb3d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bd0ea27320aabf84e0068dc21936899df0f306a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232690 | `0x2c7b8c1a13f2a7854b9299e4d22809a8b1e05de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31413751bb962c5c07a033803424ee9e3854c93b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a3266d9baf10b3ef125ea9d310ff05e78ce6384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aa5171f747591ae8914ace179f23187b534d7b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d6545b08693dae087e957cb1180ee38b9e3c25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fc2e30a9868962a6b4d49116a3dd715d38ff707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x427fb9b09730c397ab33ca7ad3da712e5a8560b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43add7f520cc35e5dbf04f5426a03ea8ca052c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51e6cab281aac8e4d984ccfff4ece5b7352b0b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52c0c825a8901e9c6997bbca1a150ce27dc24566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5510188b296d1a13140a6cd52a83b81078f22413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5543eafd20e25fbbbd66e2c154ff8ff8407e3a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5653e04faf6c00d7a0dc954a452ba4e2a6791947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5810ee8bf37d193dca7c90a21939a4131cf8646f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232692 | `0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59d908fbbbe670388eb1bd5caf30af47cecb25b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232693 | `0x5e7d83da751f4c9694b13af351b30ac108f32c38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61eb654f806713d6870c3749da8110ad3ee0f8cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6552cfd921332881bf2c4883aa1c4ec222d63eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6840600bc9b74fa6b3bdf1503cb31a7adf061c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a595e41893a5acba9dbf8288b92eb71106ba7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72c393d9ae5e352877b4adc585b1939b670213d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73d53460fc1ead8eb4a7771bc5023159e8730e68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x785a4c7ee79778e9670a6a02c60c1bd148bcd525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7950865a9140cb519342433146ed5b40c6f210f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dd2bcc0828e0a43c67c1baeb3cc075695ac8b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81dadc774d2ae44eb30d2290d076ae67f9800bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85d9dca2bd629af3e775a2513c0354b6f5c5b00f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232694 | `0x86a343bcf17d79c475d300eed35f0145f137d0c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88e5037385adb85122cd18909f756ffee5f2598b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232695 | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d5a6be033d6aec504f87c8be946ae9b6b1f2dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8eb0e275f52fc7ba0b366d9b539c6eb5ea9162f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x911b8c1b2d99c5bbb82bc1f71c85a3a54d2dffce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x947950bcc74888a40ffa2593c5798f11fc9124c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x955d1693c64e5a0746130ff6f6653e2171cc6708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x995dfd686f4953b059355df769cc4ce672983af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9963a1e4fd60ba4a89e92930c8d8686514705bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a2f5556e9a637e8fbce886d8e3cf8b316a1d8a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a303bc11ca73da1f15e798c78674fc946bd149d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cb50c61dff68fcee18fe3afefbbf086778a53c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b726b1145a4773f68593cf171187d8ebe4d495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3e91aefadecb8919180f581f5be897c763be593` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232696 | `0xa9cb51c666d2af451d87442be50747b31bb7d805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xace3d3fa125be4da12c59c865c588b98564900b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadd4b3fe6b083baecb80605cc259309147178e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb20c7f8ade683c1ad7f5b76435d9345059b1ed3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb71d06f2e73918386b75c24dd26c95dd938f7912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7e327b0484641aa59b3f9ffdbea4b4872a701fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7f8cd00c5a06c0537e2abff0b58033d02e5e094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb99cd2b5d0192787950740026b4d32635d5c9eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf7c81fff98bbe61b40ed186e4afd6ddd01337fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc41a071742a1f2ffe76d075205db90742c113608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca50b6ba80e98c4e529b7f592de16f577d246a59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232697 | `0xcd401c10afa37d641d2f594852da94c700e4f2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf8bfe49c9526fd0724d5c82d5def9de221f84b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd104c098650bd0eadff10ae6aca7fd5f14dd537f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3e42cd09b2f869fc837d5aff2f211d430c20432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd475c9c934dcd6d5f1cac530585aa5ba14185b92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232698 | `0xd609f26b5547d5e31562b29150769cb7c774b97a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb5de620d0da8f41f9ebeae56229167f5ab7f4ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd3c817354e3855ef2b52d15ad2244793c50385a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf97cadbccee9cfdb12a3e9bb7663e6753a71a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfa5fafac70a610e4224b85b7fc4764a0b90d2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe57c141e99257426294032d8437b136a8b641c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebc0a8e5b841be85428e7dcc66c283dc2fd111f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee9dec2712cce65174b561151701bf54b99c24c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef8dd349e32d1fe8691a5fcafb7faac6da9b4499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefa7cc3c335b52481ab4c09b953c7e9a7ad32a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0b5a56ac58736b44bab07c5bc12fa0f5307b407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5be67922914c0b933d13802e834be9e532c09a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5d95ffa808cb931881de8965d2a206fb49720e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf659a7b83fd9f69b52f4bcf9389991515acf4fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6ed617c23949a7de8abf5318f2afe9275a53aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7269deb4910ae2da7e22447ee54c2a2f8e2eb35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb01d8ca14f80ab61426226fd0a06778eb837781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb6115445bff7b52feb98650c87f44907e58f802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd740111e2ba30435d589d32e232f6f5ca80fc57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd9b8b1b7e44b39dfa04d66159ac21b68141ed38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232650 | `0x44cf74238d840a5febb0eaa089d05b763b73fab8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232651 | `0x538e2ddbfdf476d24ccb1477a518a82c9ea81326` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232652 | `0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232653 | `0x5bb83e95f63217cda6ae3d181ba580ef377d2109` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232654 | `0x642c27a96dffb6f21443a89b789a3194ff8399fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232655 | `0x6a023ccd1ff6f2045c3309768ead9e68f978f6e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232656 | `0xddafbb505ad214d7b80b1f830fccc89b60fb7a83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232658 | `0xf4d944883d6fddc56d3534986fef82105cadbfa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09d3dd665e6603150899de6cc6b4a04edf60088d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a2f2fbf47c9e77512afb0d1c2199e3b189edf9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c2a20338910ac902e109a939e58fd17b0402905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e874690a36f7683afb487f4cc0711ad8031278a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x119dd93154780d7604d50014c4545b4906928bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x209ef834761b4a272ef60e82ffe1f494b7ef76f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28af32491abf0261197a791a5ba66253d26e0bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c8da9c3166085acebc70ad9491ca2bfa10c8b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ed45c03ea0a8bdfed64a56e4a679e9935cc071a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fd9de29cebb750cdce32c8f2833509c34d3166d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34679d49165a2ee084c5344fbd18021161f74319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35b7d74144b4c9be142fe9bb1e7ec9bc2f49d16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3606b0d9c84224892c7407d4e8dcfd7e9e2126a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3da402d5cd4bf0a7c6003c0b9c3c19fdf1e90fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4240fe9d4edd8176eb28c6de66bae9fe37b3b51a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x429b9eb01362b2799131efcc44319689b662999d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232667 | `0x4b8bac8dd1caa52e32c07755c17efaded6a0bbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4fd7c0e290a42a044b83166e2c43ea5ec12e5415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x51058d7bda2661e134cc40137fc04cf3a9087e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x542aab88b14055e47222791276967db5f9b840f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5510188b296d1a13140a6cd52a83b81078f22413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56d087121e5cc320002a4d826b08832fa9e729bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232668 | `0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b258301f47024ea1d871d57059fadbcf5aec9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d7663c5483a46e7794b652af8f155775e4f390c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63377166e406ee6a992b8e20961f047bb12e4d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x676fbd32f58f5120cde776e5f3adf521990b77f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6777c6713f13e499232b3a0cda246e357a9cf5eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x683151d43758bb7a37e9d47386154d5ae9b8ac48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x697075f4a3ce358d125281134e98d594d8bb472e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d1854623bc7f64c5f5149685d2f42c497de220e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e92344d08f8443a9c704452ac66befb90d32e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7076ca03eb4cc28fe207c1bcebe98caf06993b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72c393d9ae5e352877b4adc585b1939b670213d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7380511493dd4c2f1dd75e9cce5bd52c787d4b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73b1d7ae726919dd4b6f50d7c3ebf3660f253f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x75bded539f905411a19b2e9f8c7b21c25f77a7bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x785a4c7ee79778e9670a6a02c60c1bd148bcd525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a76e7874f3c2222352386e9a2fc8922c2f3032b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7dd2bcc0828e0a43c67c1baeb3cc075695ac8b9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232670 | `0x7e8f8b2da3dc5ad9c9dfd1a832331a039d4f3f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x803aba13c15fa0cd8d858d42f8d68d9736dfba6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x833cbfaf81ee07528b34cbb4c487287435113edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85e7b269994201d475695084293e44823e9b4082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88483b3e3b4dd7cedb8efcef81f6dc9adb6292d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x894fa81096804d9756b626d93b8de5e346d45cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8eb0e275f52fc7ba0b366d9b539c6eb5ea9162f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232671 | `0x8f3cf7ad23cd3cadbd9735aff958023239c6a063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x955d1693c64e5a0746130ff6f6653e2171cc6708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96dd8ba01ed5c17f9e977761d4b32bd81334c0ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96fddc1a6fbdb232e9ada1ffc1026799f85128e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9963a1e4fd60ba4a89e92930c8d8686514705bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ac21e7373e64b8c60e3c1f70c6d43da3af016d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e40a8a535d4875848e1821e3c59ab5c5dd86135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa052ef2d4eb460c3886b0fd687fa33d3dc8b15ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa05ef29e9ac8c75c530c2795fa6a800e188de0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3e91aefadecb8919180f581f5be897c763be593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa448365fe1eb7bf09172860eecc7a9edaccabeb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6fc0c22ca188970152fcb00ac3646d278fb5188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa87ad0fe47e09e3b9c1ca815c1ce21ed68edf6f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232672 | `0xadce87b14d570665222c1172d18a221bf7690d5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafb88881e53589f5e6eb1cc27e9207cc7f03023f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafce6eac6cdced6a54d367e1271c10d6595ae78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb079645a0dce178ca43713dc792441dc0076e6cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb17d6f7e4be3ad02e0350b5a67474bc9b88e49c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4aebef3abf043a2056d45ed751524012e20bb0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb557aacf8ba7198114a099f2ae77a076eca1e253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7a2e0b20c049776584c77b5fe2d5b0fdc16e753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xba72d06783896b1aabe7a83f92e62fa12860ab20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc825d25123ca8d49066cf8f0aee164660056e172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce157927222cd68b9c7057e84344ce6f0cee89b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xceb49aea4faec437bf1b82ea4a76940df9323273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf8bfe49c9526fd0724d5c82d5def9de221f84b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd12345cd15352ef5d4259bd2a918fcb6943ce7a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd92fd008bb2a1b74c9de29b7a68d9822cc8c9868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda02f9d330610fc2b61e5de0b4bdb800a0a1e8d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdcf026d7fbbffc1633c79e97a2b4dae1c374406b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde9aa1c19ab27b1dd5213a7e7e3cca21a585b5ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf84553e8aa18bc14d1b1dc56b4139c38f01228b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf97cadbccee9cfdb12a3e9bb7663e6753a71a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfa5fafac70a610e4224b85b7fc4764a0b90d2ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232673 | `0xe221c5a2a8348f12dcb2b0e88693522ebad2690f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe54d6a0af692f949622dada01ed1d64a1acc9c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec345e9be52f0fca8aad6aec3254ed86151b060d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf2e04399db245754654f5d98fb42d069545f8e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5be67922914c0b933d13802e834be9e532c09a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf659a7b83fd9f69b52f4bcf9389991515acf4fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf89f918c71a02404672a762ab22e611b4bdc70a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232674 | `0xf96c6d2537e1af1a9503852eb2a4af264272a5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb661d409d12d48176018b25b6fce77035c14b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd9b8b1b7e44b39dfa04d66159ac21b68141ed38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x13dbe4dd4d68b46e56ec8d1bf61890f85dec25c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x20c2a9430baa7251eb9143cbe80ac3968893d06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x223e62d3a2c528ffbde81430a45c0bd30990cf0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x26ac458398ae1d58b7ce254c27eea6ad850054a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2c149ffebf7a4a5ce72a65280cd5af971f2d78b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2d78d06fa823d879bbad3d8332bf0e6833cf4a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x35866ab2d6badff580895c883a4535e928ab7db9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x35fa03634a5f4caa6c1a599a4a52f3a732e9b010` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232659 | `0x3883b5bdd61ba1b687de69ee50c9738d5ec501e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x38ac6eed58c75d21c8f5c1bab636b7aa23529652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3ab96860468f7fef23873491fa8c166ce53c4617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3da402d5cd4bf0a7c6003c0b9c3c19fdf1e90fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x434945a827d9ecfd09a20dc37b5cca99376a911e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x43add7f520cc35e5dbf04f5426a03ea8ca052c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x47e4cd6f9f2d25036aea24d1f320f5b746f883c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x48ad5c6930df1ce8768048785adf3b7003778bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x51058d7bda2661e134cc40137fc04cf3a9087e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5624902b18262634a002dea15d57f7c0438621e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5bb83e95f63217cda6ae3d181ba580ef377d2109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x63377166e406ee6a992b8e20961f047bb12e4d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x683151d43758bb7a37e9d47386154d5ae9b8ac48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x69dd4385edc7bdbe221159278981dd81ff792247` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232661 | `0x6b142227a277ce62808e0df93202483547ec0188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6e3f48301c13d31fc4448039c8f82eb99c2714b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6f8537dbae3ce2a83547eba87ce2bbe65a9a14c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x72c51564ecfa2344cf168bfc4dfa7e64a560aef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x742bd9fc365ee6870121c4f3438149dfe4b36712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x785a4c7ee79778e9670a6a02c60c1bd148bcd525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7dd2bcc0828e0a43c67c1baeb3cc075695ac8b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8459c3b69fc20851e6c19576d0395f180ac677b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232662 | `0x8ef3e1300857fdf616dfe2fcbced4ac6a61fe774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8f7492de823025b4cfaab1d34c58963f2af5deda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x962a39683a7eec4597abe34985d1c75334fc3e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x971ab5f9854196085c28d5dd40d6536dd30a99a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x97a92eec0d389d601c67ba6057ca5dca28caef54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232663 | `0x9ac9ad5a82ccd0ab7584a037a7a2334dc3715be2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9d3ace4233afe0f46f83e1ac168c90f5c0bb4dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9e40a8a535d4875848e1821e3c59ab5c5dd86135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa05ef29e9ac8c75c530c2795fa6a800e188de0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa3e91aefadecb8919180f581f5be897c763be593` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232664 | `0xa6a8d22d5da43c9f6e5cf7b4e50941784e70f688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xad560465f00fccf3f10ad3474cb8440a143b16df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xafb88881e53589f5e6eb1cc27e9207cc7f03023f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb30ca61fd2b395ef1b58eb0d1d6d40e439361e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb646b737462081cd6ba702bdef05fbdb82eb84a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb8448c6f7f7887d36dca487370778e419e9ebe3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xba7a99409ac88e15a1945a8a8a047fe51bbf9d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbe57a0a92c33db065d8db102e27805c1526e0e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbe9be105e64ba861fe17e75c1cb622fd56ecd82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc188ef6ce99318b53f8ef10cf8942e25bfb34c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc40ca3080cd6402446dcdb04383352bee81df14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcbdc4132650aa2cf85321c3308744cae1cf2992b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcc1ce162fb1d70a377d1542873b1db57f5ff14d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xceb49aea4faec437bf1b82ea4a76940df9323273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd12345cd15352ef5d4259bd2a918fcb6943ce7a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd1efe1242d9bb929dd0f671dbea04dee6c4fb9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd2ceb2a4d219438c3850cea4e643febb66116f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdfa5fafac70a610e4224b85b7fc4764a0b90d2ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-232666 | `0xea32a96608495e54156ae48931a7c20f0dcc1a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xeac4bbcd50f2b418791d4194bba23f7da4c81e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xec2140eb4a23e36ff676e18626a8652ea2be47fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xed1bed19080e62de4cb09149942a18c7985095ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xef2dcdda295e49b264765c4d940c7743baea9c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf5be67922914c0b933d13802e834be9e532c09a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf5e02c39a9d5028bb0ed0e37765136ad9be3c195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf659a7b83fd9f69b52f4bcf9389991515acf4fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfd740111e2ba30435d589d32e232f6f5ca80fc57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfd81392229b6252cf761459d370c239be3afc54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x025e75d8f799f362ac4fe136ddc197d3055fba60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13a1dbf4c746775f606c77f2fb36bbe90bb3b676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b0e5e507f26f2c14839abe6831dc36e09c7e41b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232709 | `0x1ede59e0d39b14c038698b1036bde9a4819c86d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x223e62d3a2c528ffbde81430a45c0bd30990cf0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26ac458398ae1d58b7ce254c27eea6ad850054a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31413751bb962c5c07a033803424ee9e3854c93b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35fa03634a5f4caa6c1a599a4a52f3a732e9b010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38ac6eed58c75d21c8f5c1bab636b7aa23529652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ab96860468f7fef23873491fa8c166ce53c4617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fc2e30a9868962a6b4d49116a3dd715d38ff707` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232710 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43add7f520cc35e5dbf04f5426a03ea8ca052c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51058d7bda2661e134cc40137fc04cf3a9087e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x542aab88b14055e47222791276967db5f9b840f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x683151d43758bb7a37e9d47386154d5ae9b8ac48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69dd4385edc7bdbe221159278981dd81ff792247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e3f48301c13d31fc4448039c8f82eb99c2714b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72c51564ecfa2344cf168bfc4dfa7e64a560aef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x742bd9fc365ee6870121c4f3438149dfe4b36712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x785a4c7ee79778e9670a6a02c60c1bd148bcd525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x823260bb6be8cefb754e4db44036a32deb150587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93d3fce8f4460700bb2f89dd4aedcff211cd0e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x962a39683a7eec4597abe34985d1c75334fc3e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97a92eec0d389d601c67ba6057ca5dca28caef54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d3ace4233afe0f46f83e1ac168c90f5c0bb4dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e40a8a535d4875848e1821e3c59ab5c5dd86135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xace3d3fa125be4da12c59c865c588b98564900b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafb88881e53589f5e6eb1cc27e9207cc7f03023f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232712 | `0xb8448c6f7f7887d36dca487370778e419e9ebe3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232713 | `0xc90a82e926d3a87899b3717aba0262bf66ef53e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc1ce162fb1d70a377d1542873b1db57f5ff14d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce157927222cd68b9c7057e84344ce6f0cee89b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xceb49aea4faec437bf1b82ea4a76940df9323273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0646a7f776330f5def68b2ed088663d8c9d921a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232714 | `0xe08d4907b2c7aa5458ac86596b6d17b1fea03f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe54d6a0af692f949622dada01ed1d64a1acc9c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec2140eb4a23e36ff676e18626a8652ea2be47fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee9dec2712cce65174b561151701bf54b99c24c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf659a7b83fd9f69b52f4bcf9389991515acf4fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x137072f68708eb7c82edceececcf64d6c29c171b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-232675 | `0x2c8da9c3166085acebc70ad9491ca2bfa10c8b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x397aeeedd44f40326f9eb583a1dfb8a7a673c40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3da402d5cd4bf0a7c6003c0b9c3c19fdf1e90fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4d145aab8411b3680b251ce3b0e51129e0a5651c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-232677 | `0x609aefb9fb2ee8f2fdad5dc48efb8fa4ee0e80fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x63a4fdd5184c6ccdf9c8e550c02bc815b687d7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x689ccb572262e0ca66146fe5ed5d998543d3aa3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x72c393d9ae5e352877b4adc585b1939b670213d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-232678 | `0x7380511493dd4c2f1dd75e9cce5bd52c787d4b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7dd2bcc0828e0a43c67c1baeb3cc075695ac8b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x981a06e33b228299f33a45a892d7aa61d0b95a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9e40a8a535d4875848e1821e3c59ab5c5dd86135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa3e91aefadecb8919180f581f5be897c763be593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xae3a0b1c17504a193e6137bba2d063b1798049a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xafb88881e53589f5e6eb1cc27e9207cc7f03023f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb17d6f7e4be3ad02e0350b5a67474bc9b88e49c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xba7a99409ac88e15a1945a8a8a047fe51bbf9d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xce157927222cd68b9c7057e84344ce6f0cee89b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcf627f20cdcecd11af54143b81b4c7ae1e8d6ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xdfa5fafac70a610e4224b85b7fc4764a0b90d2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe54d6a0af692f949622dada01ed1d64a1acc9c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf5be67922914c0b933d13802e834be9e532c09a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xfd9b8b1b7e44b39dfa04d66159ac21b68141ed38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1836147fe1f5191d3146d79cb0dbf515a9614a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ac32215b08806a5bc5271d7fd77919c3c8ca84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c5d087e60e439c8f80eee3aa491abf10d263f0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20c2a9430baa7251eb9143cbe80ac3968893d06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26fb2965c96d7a3ef1a81abc8acac144f6229a89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232679 | `0x2983bf5c334743aa6657ad70a55041d720d225db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x298e43d40cdfa29c80a2cdaf741648b68b03cd0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232680 | `0x2fd7e61033b3904c65aa9a9b83dcd344fa19ffd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39207ea3bd3bee82c60a56265a4fefe1cf21a2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3da402d5cd4bf0a7c6003c0b9c3c19fdf1e90fd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232681 | `0x429b9eb01362b2799131efcc44319689b662999d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43add7f520cc35e5dbf04f5426a03ea8ca052c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4749c1da5d04a773bcc6b795ec737b96598d538a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5384510a852ef3497075d28570053df09710ceb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232682 | `0x58b9cb810a68a7f3e1e4f8cb45d1b9b3c79705e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f0f58c8939565c0c553303849bc5bf7c530e816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63828ede703f981a3c4a4460b730faeb97028df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x696bd620eae09e7b0567f440b1a08229e9278c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72c393d9ae5e352877b4adc585b1939b670213d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x785a4c7ee79778e9670a6a02c60c1bd148bcd525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7dd2bcc0828e0a43c67c1baeb3cc075695ac8b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80cf0ce1bf3c0b696b85ce697b3329ca46a0a9c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8520af4f5c40397b5c2f3b2c5a8a3a05047b3be1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8533004ecb90151cd821dc2fafb78797d8fdd085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88dd60e10aded6b684be351f1354b7d1e6770bf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232683 | `0x8c556cf37faa0eedac7ae665f1bb0fbd4b2eae36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d5a6be033d6aec504f87c8be946ae9b6b1f2dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x924e679c3c23017aef214c9ea1fbc22e97ff9e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9963a1e4fd60ba4a89e92930c8d8686514705bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cb50c61dff68fcee18fe3afefbbf086778a53c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e40a8a535d4875848e1821e3c59ab5c5dd86135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa28de94d2e6f84659c2c32df14334daa08dd6461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3e91aefadecb8919180f581f5be897c763be593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xace3d3fa125be4da12c59c865c588b98564900b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xafb88881e53589f5e6eb1cc27e9207cc7f03023f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0f15e6ca9587cf0517f33fdb77f5ba0510c4362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca790c6caacb69f070092ca680760a1abb00cd8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdfab2b2fa913385056e713d104c1b268e4898a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232684 | `0xda10009cbd5d07dd0cecc66161fc93d7c9000da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfa5fafac70a610e4224b85b7fc4764a0b90d2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe090c4519cc9f96bf0155ead88f9f26fac6fd3e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1c80a8334db4afb70fdfe75fdb310c93247d206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb12993c0c280782c3ca4ad27d690a2cd8507fc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232685 | `0xee9dec2712cce65174b561151701bf54b99c24c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5be67922914c0b933d13802e834be9e532c09a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf659a7b83fd9f69b52f4bcf9389991515acf4fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf71f1bf36e9c20977927b52df49cc2f69c8c153d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd81392229b6252cf761459d370c239be3afc54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd9b8b1b7e44b39dfa04d66159ac21b68141ed38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232686 | `0xfde99b3b3fbb69553d7dae105ef34ba4fe971190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232687 | `0xff970a61a04b1ca14834a43f5de4533ebddb5cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232699 | `0x0573ad07ca4f74757e5b2417bf225bebebcf66d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x16c34bf9ac9d919c00571cc633f21099e79c896f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1b0e5e507f26f2c14839abe6831dc36e09c7e41b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1b493d7a5d3a7278c4c8445572af98cc07bd0363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x20098c6d481225ff5d9b2ca84cf68fc683e21031` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232700 | `0x331152ca43b50b39f3a9f203685b98dbb9b42342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3da402d5cd4bf0a7c6003c0b9c3c19fdf1e90fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x40e11dc396ad930e53fb7ae5dbe6ef46d0fe7022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x46c26a91efc8c7b6cf0a650826bf123aae3d7dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4895aa5d666c81a04ebcc7a9aa47f249b1c46aa6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232701 | `0x4af15ec2a0bd43db75dd04e62faa3b8ef36b00d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x51e6cab281aac8e4d984ccfff4ece5b7352b0b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5810ee8bf37d193dca7c90a21939a4131cf8646f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232702 | `0x5a53576dde5071719a9a3a9e78e68cbcdf863253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x683151d43758bb7a37e9d47386154d5ae9b8ac48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x72c393d9ae5e352877b4adc585b1939b670213d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232703 | `0x7360a597290612787833ee924c449c61cc0689e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7c42a11e205ae0eab8e89687bd9523df8e652029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7dd2bcc0828e0a43c67c1baeb3cc075695ac8b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7fd0bc1d931fabcb18c78f2257f614498cea1d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x83fd73fd5216280fb378c927867cc982c23b972f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x955d1693c64e5a0746130ff6f6653e2171cc6708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9963a1e4fd60ba4a89e92930c8d8686514705bb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232704 | `0xa05ef29e9ac8c75c530c2795fa6a800e188de0a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232705 | `0xa219439258ca9da29e9cc4ce5596924745e12b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa3e91aefadecb8919180f581f5be897c763be593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa401e30e6b7eb50e9355a4fa8f29118d28386e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xafb88881e53589f5e6eb1cc27e9207cc7f03023f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb20c7f8ade683c1ad7f5b76435d9345059b1ed3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb69cda9dd03ddcca5dd2c918c08754aff6dd1cda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232706 | `0xbd7eaed30936670c931b718f5d9014aff82fc767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc3a531104bc8e6ed995839fb492fdeb7867eeb3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcb0840e861456da0483166ad4b0f3dc251586b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcc1ce162fb1d70a377d1542873b1db57f5ff14d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xce157927222cd68b9c7057e84344ce6f0cee89b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xceb49aea4faec437bf1b82ea4a76940df9323273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd647509ebe279c232f3be7bb0ccd9feeca7a9f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdfa5fafac70a610e4224b85b7fc4764a0b90d2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe54d6a0af692f949622dada01ed1d64a1acc9c76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232707 | `0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf5658816b278de2bd0aeca2385cd16c614fea980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf5be67922914c0b933d13802e834be9e532c09a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfdab8997c8e6856a2a1763c726cd8e95f85258b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfede7b77e9277cc556a164b683b9cd914d4d802a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 602
- Live contracts: 0
- Unknown liveness contracts: 602
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=602

Showing first 200 of 602 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x08fd91418825ddfd728c97d79d377011104c566c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x096fca41ec0d9023e019a5b825cc987185bc5e3b` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x0b266f7ed121004a7d1b098598a9275ba5851d2f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x12ba9681a80928b6d0b4ff7469ec33dd266af586` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x13dd6168c0027e75fe76aea000e9e742c862a281` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x1717744698874c9290ebf32de10b7f7383fb4d7b` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x1776310f86ad9734481c6eace46f01cddfe0e5d2` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x17a8a2f3f3d4ea7ad3e7c218f2b2d908d4bb391f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x1a238087e8fb9f6b248ec4143d94f11b1497383a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x1ab993a524c16efa593deb32cb135bd30c0a8dff` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x1db5ee7b6235e6c31efb4b3ee45190ca14e1a214` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x223e62d3a2c528ffbde81430a45c0bd30990cf0f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x23a399a7bbba31a61eb0620f1e8b6f250a5b76de` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x244944ee0988c419f81d3114c9175af2cf095f44` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x24995b94e36cd57ecc089287836ce49c848ceebf` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x249e39713df43a8e685a244b2297a1f61aa54503` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x28496853bc91144eefd5771144c4f6c6af813167` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x28a274e9668c9c9de601334a33d406a0356a1a50` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x28a9e7bbed277092e2431f186e1af898962d4e92` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x29240a275cddde26bbd6d80fa8ad315c35f91604` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x292c14799c41616a1ab25a7c7b83b77cb5ea0988` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x2b501381c6d6aff9238526352b1c7560aa35a7c5` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x2bf0790fcfee75a735f292ed74354cee1daca794` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x2d20b01e5979309b50cf461689333ca14e6e876d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x2d4c375bc12292a339524fbcba35d2a9f27f6c93` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x2fd9de29cebb750cdce32c8f2833509c34d3166d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x32171357233c988c3725924505f17a0f0884c31c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x34679d49165a2ee084c5344fbd18021161f74319` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x35866ab2d6badff580895c883a4535e928ab7db9` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x365aba0acea260fae1c7e08577ed645697be648d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x3985dd9dcf16ef96516ebc25bb214744bc8a6f96` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x3b33925300bfdad845b5e83cb6401611efb0c01a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x3bcb9b4b2e428d164fe732e048d69127432cf6d8` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x3d7ce1a19d4df696623599eb6451dbd755750032` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x3ddb33c371802bc2fca8de4bbc8bfc75b1aa49d9` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x3fc2e30a9868962a6b4d49116a3dd715d38ff707` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x429b9eb01362b2799131efcc44319689b662999d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x433aed0b10d126481e043c93dba3362bb58a3705` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x44fb86a509b33d65bada9985b9ce8f52fda621e5` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x45bf3c737e57b059a5855280ca1adb8e9606ac68` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x48ad5c6930df1ce8768048785adf3b7003778bcf` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x4a0126ee88018393b1ad2455060bc350ead9908a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x4af28ff55676c163cd5620fa94c24e15a69c3add` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x4d9f990e96d7b9180c7cafe003456add60aa9860` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x51058d7bda2661e134cc40137fc04cf3a9087e53` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x523ab7424ad126809b1d7a134eb6e0ee414c9b3a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x53ca5b3d36a06d7432098e9afc22f39c4848516a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x56ab287e5c33ee70158c951f34818bd095446255` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x5a65db144166781498dee40e438ff96628ba9054` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x5c2149869146dea55cdd1cf2dd828e4e1548bb2a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x5d7380848856f36f0937cb27c916b6ed93defa9f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x5e1ba88978b1f9b61448c5e6881e21a7d771d139` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x63c6c79f3e79406b62f8623881cbfd7b2ec1e8cb` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x64c2d57bd9ceef22e8fd5f9ff2cb610418faa8e1` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x66a425f09cfd613d40a986b3ef800aa7604c8eee` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x67528e1e4394225c322919a87d9e8d6c688a783f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x6997a2b14004fb14314f50d8ae6ac5131f86f0d5` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x6a595e41893a5acba9dbf8288b92eb71106ba7a6` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x6a67f2e9b43eb8f2634e24e02e71f26f3e20c452` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x6c5fff21bbd1e0ca15edc981d41dbb3c54851d8a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x6d91fe99daa0991d8283bc32a6be8aecf590e595` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x6e3f48301c13d31fc4448039c8f82eb99c2714b4` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x6f7622df462c1eaf555ce13f4a60b372a9a8fa0c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x6f8537dbae3ce2a83547eba87ce2bbe65a9a14c4` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x722a37f727d07439accda00740e8f55db4efadba` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x72c393d9ae5e352877b4adc585b1939b670213d8` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x72c51564ecfa2344cf168bfc4dfa7e64a560aef4` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x730f2fb52cf393e5b40c2d1caf8b510fafa773b6` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x754d2bc5f4add805990113e7caded57cf3144228` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x75c6a865c30da54e365cb5def728890b3dd8bdc4` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x785a4c7ee79778e9670a6a02c60c1bd148bcd525` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x79e6e0242405a66b2dd8b96ded3b2f0216fd417d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x7b2be683266909a6a4068e743083dd40621d663e` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x7c44b40b7e1a2246314751fa3ddc51f1d6e84300` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x7d1bc1e1ba9a7538fe4344ca7957438103a76622` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x7d2596d7e44b0990611d390fbb0bd24e64845694` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x7d590c6039898d0d91ad4b0c08394a69faafd3b1` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x7dd2bcc0828e0a43c67c1baeb3cc075695ac8b9b` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x7e8f8b2da3dc5ad9c9dfd1a832331a039d4f3f74` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x7ed49d0a13255802a281c08688563bd8d5f726b1` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x7fbea55f85d507b8ce8f73a25b3a0a7029a14430` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x803aba13c15fa0cd8d858d42f8d68d9736dfba6a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x80a846124d909a3ee91e010a214f5de7e57b06b8` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x811230c283e1669b5cbc08059dd8c09db5eeeec0` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x81bf17fb3b129de1fd3c58d6a1785061d763b863` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x83096c7455f24e593aac9a7c73f849d36d3eeb82` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x842ad61a06f8f6bc125e8059bcd4d6d3440eca34` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x8459c3b69fc20851e6c19576d0395f180ac677b2` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x866e98dd17fb99b563b892cdd82c84ee6e2210cf` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x86f22c459ca72622276b24ad39830e8897dcc05f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x89285703326a9b3192841f67121dd714e4968689` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x89bb312259b003186a6d8d1b20c012ce9e22dba6` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x908692ac56727a3c0c62869cadbcde53e06136f9` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x9283c1fb0d69a737b766ef1c15833358e01ac620` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x9343c6a2be8f6d102a915e10b92d2897dba070ce` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x94c178005edff21a594ba8195ad34b617c29ea0f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x962a39683a7eec4597abe34985d1c75334fc3e4c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x967a6f3dd7fa73686e697d87a7717bc6090961fe` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x96fddc1a6fbdb232e9ada1ffc1026799f85128e9` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x9868a20e30216639b0a1b8a426ee873984f6384d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x9ba7d2ab079bd1924859e2fecdad1bebe5b119fa` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x9c5093ca6a376ed60454d5e623b29dee90634946` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x9e4c8bc2a9dc9295ef96c0cfe9520cc2fded4db0` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xa1e7d7559dce5878eeb55503f8e68a75f7529676` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xa3e91aefadecb8919180f581f5be897c763be593` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xa741199a83090cb16a15ce14b3cf346242e0cafc` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xa75ca5179e1c2a286309060e4226344b4c2a9c3f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xa8d5eed6b519c37bfc506409a76d0e446c04e8b9` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xa98f36ca759271928d18ae9b8bc6e214c279fded` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xaadbb1083ba67c6022f6281dc820470cdfeda616` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xaf00e0b7b5ce2d3a0b5d02dec936254550228b61` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xafb88881e53589f5e6eb1cc27e9207cc7f03023f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xb01bc38909413f5dbb8f18a9b5787a62ce1282ae` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xb4f8d176466f5f544bad53737bffaaea17185c05` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xb7a2e0b20c049776584c77b5fe2d5b0fdc16e753` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xb8448c6f7f7887d36dca487370778e419e9ebe3f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xbabb718a5c5d831af3fe252193e1e270d74fba64` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xbba4b5130fb918a6e2dbc94b430397d3d2ea1e2f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xbbb302f28535afb4c54a0b0bc981b71248fe8327` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xbf29a2d67efb6766e44c163b19c6f4118b164702` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xc162d91eba9cdf57f6c1d82b10deaee2bf233c50` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xc1af0630036df06c1a36c3187ad8f0d436601b0b` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xc1f054b3f290224941c6e28fbf2f88ceeb3fa01d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xc324b7984990248d86dfe90edf7e3657de2565ba` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xc92fc5a968886c09668d3128a2802c88d9eb9ceb` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xc9798c047db3457e1d8a424b2fae73e31eb21e9e` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xcb0840e861456da0483166ad4b0f3dc251586b4a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xcb9a9ff0832750eace45d8194803b76be64da93a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xcd02f71bbed36bedefa0457c44ec455ae1fd3de6` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xcd4108547a42c2351f9f30176839e2ce5b155460` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xcd9467562892031d01d1aa568686e143155abbec` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xcdb88ce83e026046cf3aafa0650eb5f4eb2f3048` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xcdbf9d438670d19d1fb3954abc8a13666b302b28` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xcdfbaba486b420e7f33ae043385d6c7a15f98ebd` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xceeaf780205d0c4a6a5e18ae45648c7108a5df19` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xd01da5d3fc9f6a5052f901a1985b8319289a603c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xd12345cd15352ef5d4259bd2a918fcb6943ce7a4` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xd151c9ef49ce2d30b829a98a07767e3280f70961` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xd246cb68391b596fab645fed3718a103e48cf5ca` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xd2a6cdd411d8d7357a0e87b8fdba6ae53b4a231d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xd2ceb2a4d219438c3850cea4e643febb66116f96` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xd3264d37e16aece088a16f6685b7ba4b88f0fa55` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xd3b338fce3238c7353ef44a628f96cb48b2fa0b5` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xd5d61e9dfb6680cba8353988ba0337802811c2e1` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xd85148657367cc3823fff49a8ee309bd8e6835e8` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xdb649f880194e9c2269af1a503126c79ddf8053c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xdbc7047253247a56605ce1e67abff33bb5d4cbed` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xdc6dcb975a8f906e7b9837c050275faff63bd4b4` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xdcdae095329b02f6a8a4fa11ba3b078208ee4b1f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xdcf026d7fbbffc1633c79e97a2b4dae1c374406b` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xdf5bbcf1a489ae20a4027acce7d6e10d05f9cf5b` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xdf84553e8aa18bc14d1b1dc56b4139c38f01228b` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xdfa5fafac70a610e4224b85b7fc4764a0b90d2ea` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xdfffd98ad28086d7d072632ba7bdf1bbcfc087d5` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xe2c1aaa504322ff0bc42fcfb9a52a315a06d5cc6` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xe8cf9ebb1cfb137c692a0a4e470e257b9417d116` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xea2e9fbaa2142b1d76b6d74e65490e700dcc26ae` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xec2140eb4a23e36ff676e18626a8652ea2be47fb` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xf1c78967584d5e0fff66da103b8eb06c82ec020d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xf5be67922914c0b933d13802e834be9e532c09a5` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xf5e02c39a9d5028bb0ed0e37765136ad9be3c195` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xf659a7b83fd9f69b52f4bcf9389991515acf4fd0` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xf7c4d7dcec2c09a15f2db5831d6d25eaef0a296c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xf7de5aceeee6091d1103209c337fa00d0b4b9092` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xf837826e22367ec414c9f9321f0a0b70d4181c74` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xf89f918c71a02404672a762ab22e611b4bdc70a4` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xf95a3a0bb6f785a13f1065d7c917462d1d0d4011` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xfa6c35c88e03338b13cffc9a5a143a2951b7f2ff` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xfa79ff694c8c7eda1ece214326245d1115513e6d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xfaff7c6fe4f3592a4c594eb1a0be7a5fa011a52b` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0xfd911b58fb5a94ff08f2784f6d36b1eb97ae29c1` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x0296da2ce82eb3b98eb05925bc5777c7da0d0f09` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x0f219898699b3f8008d9f05fac10bd08d4d6c65d` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x11984dc4465481512eb5b777e44061c158cf2259` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x172f55db1ec560ea877fec0b4afe9a780e5fd52a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x17ab9b14ac7659390b3994f9e67bf833e60ec1bd` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x200fdcf7ed3d856a70380d1d88778ebca9ec6959` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x209ef834761b4a272ef60e82ffe1f494b7ef76f7` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x32155c9d39084f040ba17890fe8134dbe2a0453f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x3da402d5cd4bf0a7c6003c0b9c3c19fdf1e90fd0` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x432006ced3bba818e3d0d8730426b32bb34a42ab` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x4778170ff14883a8e0dc0313e303dcb6b4dad493` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x4d6ddaf1637b7cff03dcd509a269a42e982aec5a` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x50ef4b4436faf884afb95e7d5560f4c6eaed2a1c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x51058d7bda2661e134cc40137fc04cf3a9087e53` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x5543eafd20e25fbbbd66e2c154ff8ff8407e3a57` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x578d4e2a2286064610bf8466c57770f0b85c9fba` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x59cfb5ff4657301188af3bca2140a543524e791c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x59d908fbbbe670388eb1bd5caf30af47cecb25b8` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x5b3b7abca299763212f69f347fb13d5582325891` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x5bb83e95f63217cda6ae3d181ba580ef377d2109` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x60dcbc3bb9eac7264a2d279f790969ccde61f4cf` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x60e391dbb9b3a324d8fe1e7d8047a98d0619cd2b` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x63377166e406ee6a992b8e20961f047bb12e4d81` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x67528e1e4394225c322919a87d9e8d6c688a783f` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x681f0a7e7bd478690e08d5e43bc6d003e522777c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x683151d43758bb7a37e9d47386154d5ae9b8ac48` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x6acbf8d58f785541438e979305a59636e729df9c` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x6b5aeb8d272039154d0df19cf60b5e5226ff9dbd` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |
| unverified unclassified | UnnamedContract<br>`0x7076ca03eb4cc28fe207c1bcebe98caf06993b46` | non_address_book | unknown | unknown | unverified | n/a | `0xade09131c6f43fe22c2cbabb759636c43cfc181e` |

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
| needs_review | 668 |

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
