# Agentic Audit Brief: Uniswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 20 (0 matched; 20 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Uniswap (`uniswap`)
- Website: [https://app.uniswap.org/](https://app.uniswap.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, base-sepolia, blast, bsc, celo, ethereum, gnosis, linea, manta-pacific, mantle, monad, moonbeam, optimism, polygon, sei, sepolia, sonic, unichain, x-layer, zksync-era, zora
- Contract surface: 581 unique implementations (581 raw deployments)
- Coverage basis: 0/33 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,839,201,157.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Uniswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across arbitrum, avalanche, base, base-sepolia, blast, bsc, celo, ethereum, gnosis, linea, manta-pacific, mantle, megaeth, monad, moonbeam, optimism, polygon, sei, sepolia, sonic, unichain, x-layer, zksync-era, zora. Structural roles: 26 core, 7 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: core (26), supporting (7)
- Contract kinds: contract (33)
- Detected standards: erc1967proxy (3), multicall (3), erc165 (1), erc20 (1), erc721 (1)
- Frameworks: openzeppelin (15), solmate (13), permit2 (10), uniswap-v3 (7), solady (6), uniswap-v2 (3), foundry (2), openzeppelin-upgradeable (1), uniswap (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 260 contracts are derived from known codebases. 260 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...37030e`, chain 1)
- UnnamedContract (`0x00004c...63d4e9`, chain 1)
- UnnamedContract (`0x00cca2...ce0632`, chain 1)
- UnnamedContract (`0x1a9c81...be35bc`, chain 1)
- UnnamedContract (`0x1f9841...61f984`, chain 1)
- UnnamedContract (`0x1f9843...31f984`, chain 1)
- UnnamedContract (`0x42b24a...0a48ec`, chain 1)
- UnnamedContract (`0x5ba1e1...eed696`, chain 1)
- UnnamedContract (`0x5c69be...c5aa6f`, chain 1)
- UnnamedContract (`0x61ffe0...30b21e`, chain 1)
- UnnamedContract (`0x65af3b...05b332`, chain 1)
- UnnamedContract (`0x66a989...dba8af`, chain 1)
- UnnamedContract (`0x68b346...65fc45`, chain 1)
- UnnamedContract (`0x7a250d...f2488d`, chain 1)
- UnnamedContract (`0x8ad599...b6e6d8`, chain 1)
- UnnamedContract (`0x91ae84...9294f3`, chain 1)
- UnnamedContract (`0xa5644e...f92b34`, chain 1)
- UnnamedContract (`0xb27308...ce5ab6`, chain 1)
- UnnamedContract (`0xb75354...e90cf2`, chain 1)
- UnnamedContract (`0xb98766...a3e000`, chain 1)
- UnnamedContract (`0xbbbb6f...3316b6`, chain 1)
- UnnamedContract (`0xbfd813...47f573`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- UnnamedContract (`0xc36442...11fe88`, chain 1)
- UnnamedContract (`0xc6ef4c...dac9d4`, chain 1)
- UnnamedContract (`0xcccccc...6e0bd5`, chain 1)
- UnnamedContract (`0xe34139...c6fe65`, chain 1)
- UnnamedContract (`0xee6a57...c24785`, chain 1)
- UnnamedContract (`0xf38521...995f85`, chain 1)
- UnnamedContract (`0x000000...c78ba3`, chain 10)
- UnnamedContract (`0x000000...37030e`, chain 10)
- UnnamedContract (`0x0c3c1c...e074bf`, chain 10)
- UnnamedContract (`0x1f9843...31f984`, chain 10)
- UnnamedContract (`0x42b24a...0a48ec`, chain 10)
- UnnamedContract (`0x4a7b5d...c962c2`, chain 10)
- UnnamedContract (`0x61ffe0...30b21e`, chain 10)
- UnnamedContract (`0x68b346...65fc45`, chain 10)
- UnnamedContract (`0x851116...8b3507`, chain 10)
- UnnamedContract (`0x91ae84...9294f3`, chain 10)
- UnnamedContract (`0xb27308...ce5ab6`, chain 10)
- UnnamedContract (`0xb75354...e90cf2`, chain 10)
- UnnamedContract (`0xbfd813...47f573`, chain 10)
- UnnamedContract (`0xc36442...11fe88`, chain 10)
- UnnamedContract (`0xe34139...c6fe65`, chain 10)
- UnnamedContract (`0xe59242...861564`, chain 10)
- UnnamedContract (`0xee6a57...c24785`, chain 10)
- UnnamedContract (`0x000000...c78ba3`, chain 56)
- UnnamedContract (`0x000000...37030e`, chain 56)
- UnnamedContract (`0x000000...e18eb2`, chain 56)
- UnnamedContract (`0x0281e9...44c55c`, chain 56)
- UnnamedContract (`0x1906c1...4eae07`, chain 56)
- UnnamedContract (`0x326818...9e760f`, chain 56)
- UnnamedContract (`0x4752ba...72ad24`, chain 56)
- UnnamedContract (`0x49b53c...e32c71`, chain 56)
- UnnamedContract (`0x78d78e...3eb077`, chain 56)
- UnnamedContract (`0x7b8a01...170613`, chain 56)
- UnnamedContract (`0x831d93...995071`, chain 56)
- UnnamedContract (`0x8909dc...e18ec6`, chain 56)
- UnnamedContract (`0x963df2...087184`, chain 56)
- UnnamedContract (`0xaec98e...97ee97`, chain 56)
- UnnamedContract (`0xb971ef...dd85d2`, chain 56)
- UnnamedContract (`0xc9a7f5...8b1c79`, chain 56)
- UnnamedContract (`0xd92700...01a47c`, chain 56)
- UnnamedContract (`0xdb1d10...4461f7`, chain 56)
- UnnamedContract (`0x000000...c78ba3`, chain 130)
- UnnamedContract (`0x000000...ca1406`, chain 130)
- UnnamedContract (`0x000000...37030e`, chain 130)
- UnnamedContract (`0x1f9840...000002`, chain 130)
- UnnamedContract (`0x1f9840...000003`, chain 130)
- UnnamedContract (`0x1f9843...31f984`, chain 130)
- UnnamedContract (`0x385a5c...fa7658`, chain 130)
- UnnamedContract (`0x420000...000006`, chain 130)
- UnnamedContract (`0x435ddc...60ae24`, chain 130)
- UnnamedContract (`0x73855d...12ff9c`, chain 130)
- UnnamedContract (`0x824a3e...c9a000`, chain 130)
- UnnamedContract (`0x943e6e...3c46e9`, chain 130)
- UnnamedContract (`0xaa56d4...0b38e2`, chain 130)
- UnnamedContract (`0xb7610f...c54f0b`, chain 130)
- UnnamedContract (`0xb9d0c2...5b60dc`, chain 130)
- UnnamedContract (`0xc6ef4c...dac9d4`, chain 130)
- UnnamedContract (`0xd5d76f...cbe443`, chain 130)
- UnnamedContract (`0xeb4419...620529`, chain 130)
- UnnamedContract (`0x000000...c78ba3`, chain 137)
- UnnamedContract (`0x1f9841...61f984`, chain 137)
- UnnamedContract (`0x1f9843...31f984`, chain 137)
- UnnamedContract (`0x42b24a...0a48ec`, chain 137)
- UnnamedContract (`0x61ffe0...30b21e`, chain 137)
- UnnamedContract (`0x68b346...65fc45`, chain 137)
- UnnamedContract (`0x91ae84...9294f3`, chain 137)
- UnnamedContract (`0x9e5a52...22799c`, chain 137)
- UnnamedContract (`0xa5644e...f92b34`, chain 137)
- UnnamedContract (`0xb27308...ce5ab6`, chain 137)
- UnnamedContract (`0xb75354...e90cf2`, chain 137)
- UnnamedContract (`0xbfd813...47f573`, chain 137)
- UnnamedContract (`0xc36442...11fe88`, chain 137)
- UnnamedContract (`0xe34139...c6fe65`, chain 137)
- UnnamedContract (`0xe59242...861564`, chain 137)
- UnnamedContract (`0xedf606...077ad1`, chain 137)
- UnnamedContract (`0xee6a57...c24785`, chain 137)
- UnnamedContract (`0x000000...9b8f00`, chain 143)
- UnnamedContract (`0x000000...c78ba3`, chain 196)
- UnnamedContract (`0x2e9d45...c5b3ed`, chain 196)
- UnnamedContract (`0x315e41...6638ae`, chain 196)
- UnnamedContract (`0x4b2ab3...1d6804`, chain 196)
- UnnamedContract (`0x4f0c28...0f9bca`, chain 196)
- UnnamedContract (`0x550774...7372ff`, chain 196)
- UnnamedContract (`0x661e93...70f08d`, chain 196)
- UnnamedContract (`0x7197e2...2f4e53`, chain 196)
- UnnamedContract (`0xd1b797...204343`, chain 196)
- UnnamedContract (`0xda00ae...0956d3`, chain 196)
- UnnamedContract (`0xe2023f...7843f4`, chain 196)
- UnnamedContract (`0xe53890...d59b2b`, chain 196)
- UnnamedContract (`0x000000...f714fa`, chain 324)
- UnnamedContract (`0x000000...c78ba3`, chain 324)
- UnnamedContract (`0x0616e5...690a86`, chain 324)
- UnnamedContract (`0x0c68a7...16a65c`, chain 324)
- UnnamedContract (`0x28731b...136c06`, chain 324)
- UnnamedContract (`0x5aea57...9d9a91`, chain 324)
- UnnamedContract (`0x611841...9dac8e`, chain 324)
- UnnamedContract (`0x7d67b8...97674d`, chain 324)
- UnnamedContract (`0x8cb537...ea3e28`, chain 324)
- UnnamedContract (`0x8fda5a...215422`, chain 324)
- UnnamedContract (`0x99c563...07e8a3`, chain 324)
- UnnamedContract (`0xa819de...fcdd1e`, chain 324)
- UnnamedContract (`0xaeabf2...13ee81`, chain 324)
- UnnamedContract (`0xbb7927...89b557`, chain 324)
- UnnamedContract (`0xe10ff1...e24f89`, chain 324)
- UnnamedContract (`0xf84268...5e78e1`, chain 324)
- UnnamedContract (`0x000000...c78ba3`, chain 8453)
- UnnamedContract (`0x000000...37030e`, chain 8453)
- UnnamedContract (`0x000000...f27ba0`, chain 8453)
- UnnamedContract (`0x000000...5a7f58`, chain 8453)
- UnnamedContract (`0x091e99...bd0693`, chain 8453)
- UnnamedContract (`0x0cdee0...c9ac6d`, chain 8453)
- UnnamedContract (`0x23cf10...acd2d7`, chain 8453)
- UnnamedContract (`0x262666...41e481`, chain 8453)
- UnnamedContract (`0x33128a...f6fdfd`, chain 8453)
- UnnamedContract (`0x3334d8...621fa9`, chain 8453)
- UnnamedContract (`0x3d4e44...35b76a`, chain 8453)
- UnnamedContract (`0x420000...000006`, chain 8453)
- UnnamedContract (`0x42be4d...25c3c1`, chain 8453)
- UnnamedContract (`0x4615c3...121463`, chain 8453)
- UnnamedContract (`0x4752ba...72ad24`, chain 8453)
- UnnamedContract (`0x4f2259...401009`, chain 8453)
- UnnamedContract (`0x5bb4ba...11e000`, chain 8453)
- UnnamedContract (`0x6ff569...299b43`, chain 8453)
- UnnamedContract (`0x8909dc...e18ec6`, chain 8453)
- UnnamedContract (`0x9c5a6f...8c389a`, chain 8453)
- UnnamedContract (`0xc46143...d9c134`, chain 8453)
- UnnamedContract (`0xc6ef4c...dac9d4`, chain 8453)
- UnnamedContract (`0xf9d107...577d9f`, chain 8453)
- UnnamedContract (`0x000000...c78ba3`, chain 42161)
- UnnamedContract (`0x000000...37030e`, chain 42161)
- UnnamedContract (`0x18608a...bee000`, chain 42161)
- UnnamedContract (`0x1f9843...31f984`, chain 42161)
- UnnamedContract (`0x42b24a...0a48ec`, chain 42161)
- UnnamedContract (`0x4752ba...72ad24`, chain 42161)
- UnnamedContract (`0x61ffe0...30b21e`, chain 42161)
- UnnamedContract (`0x68b346...65fc45`, chain 42161)
- UnnamedContract (`0x91ae84...9294f3`, chain 42161)
- UnnamedContract (`0xa51afa...e381a3`, chain 42161)
- UnnamedContract (`0xa5644e...f92b34`, chain 42161)
- UnnamedContract (`0xadf885...2806db`, chain 42161)
- UnnamedContract (`0xb27308...ce5ab6`, chain 42161)
- UnnamedContract (`0xb274d5...04a87c`, chain 42161)
- UnnamedContract (`0xb75354...e90cf2`, chain 42161)
- UnnamedContract (`0xbfd813...47f573`, chain 42161)
- UnnamedContract (`0xc36442...11fe88`, chain 42161)
- UnnamedContract (`0xc6ef4c...dac9d4`, chain 42161)
- UnnamedContract (`0xe34139...c6fe65`, chain 42161)
- UnnamedContract (`0xe59242...861564`, chain 42161)
- UnnamedContract (`0xee6a57...c24785`, chain 42161)
- UnnamedContract (`0xf1d7cc...0fbcf9`, chain 42161)
- UnnamedContract (`0x000000...c78ba3`, chain 42220)
- UnnamedContract (`0x0ec9d3...548824`, chain 42220)
- UnnamedContract (`0x245d3f...162cfd`, chain 42220)
- UnnamedContract (`0x3c1fcf...0f5673`, chain 42220)
- UnnamedContract (`0x3cfd4d...14c582`, chain 42220)
- UnnamedContract (`0x3d79ed...90d95a`, chain 42220)
- UnnamedContract (`0x505b43...33fde9`, chain 42220)
- UnnamedContract (`0x5615cd...01abc4`, chain 42220)
- UnnamedContract (`0x5f115d...0acd3d`, chain 42220)
- UnnamedContract (`0x633987...324204`, chain 42220)
- UnnamedContract (`0x643770...3255b4`, chain 42220)
- UnnamedContract (`0x644023...6dd554`, chain 42220)
- UnnamedContract (`0x6586fb...8791c6`, chain 42220)
- UnnamedContract (`0x82825d...efa8e8`, chain 42220)
- UnnamedContract (`0x8ac47d...53208f`, chain 42220)
- UnnamedContract (`0x8c456f...ea3ef0`, chain 42220)
- UnnamedContract (`0xa9fd76...831186`, chain 42220)
- UnnamedContract (`0xafe208...7acdec`, chain 42220)
- UnnamedContract (`0xb00b8c...4f8d7e`, chain 42220)
- UnnamedContract (`0xc1b262...4bf49a`, chain 42220)
- UnnamedContract (`0x000000...c78ba3`, chain 43114)
- UnnamedContract (`0x000000...5a7f58`, chain 43114)
- UnnamedContract (`0x27dd7e...299e99`, chain 43114)
- UnnamedContract (`0x44f5f1...1f0f97`, chain 43114)
- UnnamedContract (`0x4752ba...72ad24`, chain 43114)
- UnnamedContract (`0x655c40...184f8b`, chain 43114)
- UnnamedContract (`0x740b1c...dc1bad`, chain 43114)
- UnnamedContract (`0x94b753...aa73b7`, chain 43114)
- UnnamedContract (`0x9ada7d...8c6381`, chain 43114)
- UnnamedContract (`0x9e5a52...22799c`, chain 43114)
- UnnamedContract (`0xb31f66...fd66c7`, chain 43114)
- UnnamedContract (`0xbb00ff...a578ce`, chain 43114)
- UnnamedContract (`0xbe0f55...e6257f`, chain 43114)
- UnnamedContract (`0xca9d06...d76ac3`, chain 43114)
- UnnamedContract (`0xe1f93a...993c09`, chain 43114)
- UnnamedContract (`0xe89b7c...daebaf`, chain 43114)
- UnnamedContract (`0xeb9ffc...e21950`, chain 43114)
- UnnamedContract (`0x000000...c78ba3`, chain 7777777)
- UnnamedContract (`0x048352...9d0b60`, chain 7777777)
- UnnamedContract (`0x0f797d...50ee3c`, chain 7777777)
- UnnamedContract (`0x11867e...7e64df`, chain 7777777)
- UnnamedContract (`0x209aad...7e3044`, chain 7777777)
- UnnamedContract (`0x3315ef...04b020`, chain 7777777)
- UnnamedContract (`0x420000...000006`, chain 7777777)
- UnnamedContract (`0x5ef5a6...e4206f`, chain 7777777)
- UnnamedContract (`0x7145f8...c42cbb`, chain 7777777)
- UnnamedContract (`0x7de04c...281557`, chain 7777777)
- UnnamedContract (`0x843b0b...e7741b`, chain 7777777)
- UnnamedContract (`0xa00f34...5beec7`, chain 7777777)
- UnnamedContract (`0xa51c76...a37c15`, chain 7777777)
- UnnamedContract (`0xbc91e8...137d78`, chain 7777777)
- UnnamedContract (`0xd41098...ded03b`, chain 7777777)
- UnnamedContract (`0xf15d9e...996422`, chain 7777777)
- UnnamedContract (`0xfff2bf...bdcdd1`, chain 7777777)
- AdvancedLBPStrategyFactory (`0x982dc1...6129c5`, chain 1)
- AlgebraInterfaceMulticall (`0x1f9841...61f984`, chain 10)
- ContinuousClearingAuctionFactory (`0x0000cc...6faa1d`, chain 1)
- ExclusiveDutchOrderReactor (`0x6000da...b645c4`, chain 1)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- Firepit (`0x0d5cd3...6d6721`, chain 1)
- FullRangeLBPStrategyFactory (`0x39e5eb...b04252`, chain 8453)
- GoldToken (`0x471ece...78a438`, chain 42220)
- LiquidityLauncher (`0x000000...40637c`, chain 1)
- MainnetDeployer (`0xd3aa12...038c0c`, chain 1)
- NonfungiblePositionManager (`0x03a520...ed34f1`, chain 8453)
- OptimismBridgedResourceFirepit (`0xe0a780...a77eeb`, chain 130)
- OrderQuoter (`0x000000...5a7f58`, chain 56)
- Permit2 (`0x000000...c78ba3`, chain 1)
- PriorityOrderReactor (`0x000000...8de729`, chain 8453)
- SwapRouter (`0xe59242...861564`, chain 1)
- TokenJar (`0xd576bd...9140b5`, chain 130)
- TransparentUpgradeableProxy (`0x0dfa04...6a2004`, chain 130)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- UERC20Factory (`0x0cde87...9bd1b5`, chain 1)
- Uni (`0x1f9840...01f984`, chain 1)
- UnichainDeployer (`0xd16c47...f18dea`, chain 130)
- UniswapInterfaceMulticall (`0x013914...1ef0c2`, chain 43114)
- UniswapV2Router02 (`0x284f11...0063ff`, chain 130)
- UniversalRouter (`0x109569...c49223`, chain 137)
- USUPERC20Factory (`0x24016e...b7ac6a`, chain 130)
- V2DutchOrderReactor (`0x000000...6289be`, chain 1)
- V3DutchOrderReactor (`0x000000...7385ef`, chain 43114)
- V3FeeAdapter (`0x5e74c9...40867d`, chain 1)
- VirtualLBPStrategyFactory (`0x000000...bbc487`, chain 1)
- WBNB (`0xbb4cdb...bc095c`, chain 56)
- WETH9 (`0x420000...000006`, chain 10)
- WMATIC (`0x0d500b...df1270`, chain 137)

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 260/406 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/33 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 260 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 319 discovered implementations excluded (0 third-party/infra; 6 standard proxy/library)
- Proxy deployments represented within implementation groups: 40
- Deployed-live implementations: 260 of 581 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 227
- Unique implementations: 581
- Raw deployments: 581
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (340)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accounts | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x7d2168...d0aab7` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed976...ea0aab` | ⚠️ Unaudited |
| AdvancedLBPStrategyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260365 | `0x982dc1...6129c5` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e05...2f629e` | ⚠️ Unaudited |
| AIP1Point1Target | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b075f...430184` | ⚠️ Unaudited |
| AIP1Point2Action | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x627410...5ed516` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c58c2...3902d9` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | optimism | unit-260392 | `0x1f9841...61f984` | ⚠️ Unaudited |
| APROracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc33...919361` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad...47ca14` | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd0dd2...2de79a` | ⚠️ Unaudited |
| ArbGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4d2f4...46161a` | ⚠️ Unaudited |
| ArbUXRNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fa063...6ff61a` | ⚠️ Unaudited |
| Attestations | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xdc5538...d88d20` | ⚠️ Unaudited |
| BalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91688f...10b20a` | ⚠️ Unaudited |
| BatchVote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5e44c7...741e1c` | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x863491...a1bda9` | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6cae...6c6c18` | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22fbfb...d270e3` | ⚠️ Unaudited |
| BEP20Cardano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ee220...435d47` | ⚠️ Unaudited |
| BEP20Cosmos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb3a7...62f335` | ⚠️ Unaudited |
| BEP20DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1af3f3...b1dbc3` | ⚠️ Unaudited |
| BEP20EOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6fb...dccbd6` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2170ed...f933f8` | ⚠️ Unaudited |
| BEP20Ontology | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd7b3a...850335` | ⚠️ Unaudited |
| BEP20Polkadot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x708360...873402` | ⚠️ Unaudited |
| BEP20Tezos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16939e...12623a` | ⚠️ Unaudited |
| BEP20XRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2f0d...c60dbe` | ⚠️ Unaudited |
| BEP20YFII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f7064...53eda5` | ⚠️ Unaudited |
| BEP20Zcash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba42e...ef8eeb` | ⚠️ Unaudited |
| BestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d52c2...1cd318` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd0...5da3dc` | ⚠️ Unaudited |
| BlockchainParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x6e10a8...9d5bfa` | ⚠️ Unaudited |
| BOBO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x588864...d3be38` | ⚠️ Unaudited |
| BridgeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03b2fb...8f7d5c` | ⚠️ Unaudited |
| CaliburEntry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...9b8f00` | ⚠️ Unaudited |
| CATERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb43570...090343` | ⚠️ Unaudited |
| CoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8145eb...1d8f5c` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8...1b96c1` | ⚠️ Unaudited |
| CommunityTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x650f58...a72358` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b94...4b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb...6aa870` | ⚠️ Unaudited |
| ContinuousClearingAuctionFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260328 | `0x0000cc...6faa1d` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e6556...1dc4c8` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e...8039ca` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d0...5d322e` | ⚠️ Unaudited |
| CrossChainAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2339c0...a26c77` | ⚠️ Unaudited |
| CrosschainAccountLinea | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x581f86...2201a8` | ⚠️ Unaudited |
| DAAORacle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5030...2723fe` | ⚠️ Unaudited |
| DackieInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xdc7f37...cf4705` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c110...db072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674...69ebbb` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0...cfa017` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08...368d6d` | ⚠️ Unaudited |
| DoubleSigningSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x50c100...6772ec` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf28164...8a16b1` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84...057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca0...8f1483` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4...92640e` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083...cc5523` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9...4b5f60` | ⚠️ Unaudited |
| ElectionProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x8d6677...5a7ff6` | ⚠️ Unaudited |
| ElkDexInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe3dbcd...68f1fa` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6...559ad4` | ⚠️ Unaudited |
| EmojiGuess | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xecd580...b7c8c7` | ⚠️ Unaudited |
| EpochRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x07f007...28d8b7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xcdf144...36b999` | ⚠️ Unaudited |
| ERC20Manageable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07f1dc...405a35` | ⚠️ Unaudited |
| ERC6160Ext20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d010b...8f90b8` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xf4fa51...e7ada5` | ⚠️ Unaudited |
| ExchangeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x673163...c66275` | ⚠️ Unaudited |
| ExclusiveDutchOrderReactor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260352 | `0x6000da...b645c4` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e...c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e3...9fef3f` | ⚠️ Unaudited |
| FeeCurrencyWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xbb024e...381b3c` | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x55e74a...d25826` | ⚠️ Unaudited |
| FeeTo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf819...7f0970` | ⚠️ Unaudited |
| FeeToSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e433...771360` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-260742 | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| Firepit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260335 | `0x0d5cd3...6d6721` | ⚠️ Unaudited |
| FixidityLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd9ce42...72284d` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b5...f2893a` | ⚠️ Unaudited |
| FreezerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x47a472...f4ff5a` | ⚠️ Unaudited |
| FullRangeLBPStrategyFactory | unknown | project_anchor | own_supporting | 0 | base | unit-260715 | `0x39e5eb...b04252` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f09...6dc10f` | ⚠️ Unaudited |
| GasPriceMinimum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xdfca3a...270ecc` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd2...61081c` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e93...845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e...83c275` | ⚠️ Unaudited |
| GoldToken | unknown | project_anchor | own_supporting | 1 | celo | unit-260746 | `0x471ece...78a438` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212f...0cb735` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x68f04a...5294d5` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2e1fb7...8b6143` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2...a1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086...e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061940...082f23` | ⚠️ Unaudited |
| HToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x761c06...5829be` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705d...f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11...3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fe...3ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d...ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb...a867fa` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8a...268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029fea...44c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135...50edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680...884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0...cd25eb` | ⚠️ Unaudited |
| Implementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x346239...d6e8a4` | ⚠️ Unaudited |
| IndicesPayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ff7e...37d73c` | ⚠️ Unaudited |
| IndicesSplit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d994b...3f34b0` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e...2863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d...457bcf` | ⚠️ Unaudited |
| itokendeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050a97...f78844` | ⚠️ Unaudited |
| ItokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ddb30...8c7bf5` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca...104e3e` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f358...2f57f1` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772...af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7d...02d10d` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5c...185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2...5a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x739689...ab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef20...924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733538...70282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4...f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6...132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf162...c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be...7880cb` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec...ba0f82` | ⚠️ Unaudited |
| L1NetRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xab88c8...916b83` | ⚠️ Unaudited |
| L2AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e84af...d901e8` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775...c5d0f3` | ⚠️ Unaudited |
| LimitOrderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0337d3...f6636f` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d...a3e8ce` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288324...5a56cd` | ⚠️ Unaudited |
| LiquidityLauncher | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260324 | `0x000000...40637c` | ⚠️ Unaudited |
| LiquidityPoolManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x912b5d...397994` | ⚠️ Unaudited |
| LmPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65df3e...00532f` | ⚠️ Unaudited |
| LmPoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3453...8fb249` | ⚠️ Unaudited |
| LockedGoldProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x6cc083...03349e` | ⚠️ Unaudited |
| MainnetDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260377 | `0xd3aa12...038c0c` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dc3ed...3bca2c` | ⚠️ Unaudited |
| MasterChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x327339...e0d1d0` | ⚠️ Unaudited |
| MasterKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0d922f...b74df9` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090d46...1d256e` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa8...0a9372` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe8882d...faf4b7` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708f45...82fb7b` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x003aa1...8690ce` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a20...3669ea` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x52dfc0...446a60` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xcb2436...f27a9d` | ⚠️ Unaudited |
| MXTK | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3e4ffe...70d9ba` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a288...de7a28` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x041b81...ed4514` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 1 | base | unit-260747 | `0x03a520...ed34f1` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a6...f023aa` | ⚠️ Unaudited |
| OptimismBridgedResourceFirepit | unknown | project_anchor | own_supporting | 0 | unichain | unit-260461 | `0xe0a780...a77eeb` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x570b15...b83947` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6d...76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1...d86309` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x5b6318...dd065d` | ⚠️ Unaudited |
| OrderQuoter | unknown | project_anchor | own_supporting | 0 | bsc | unit-260649 | `0x000000...5a7f58` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf6308...1ed0f1` | ⚠️ Unaudited |
| PancakeInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x0d922f...b74df9` | ⚠️ Unaudited |
| PangolinFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcdeea3...959737` | ⚠️ Unaudited |
| PangolinRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe54ca8...c89106` | ⚠️ Unaudited |
| PEAKDEFI_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b103d...403a45` | ⚠️ Unaudited |
| PEAKDEFI_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x630d98...eaad78` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260322 | `0x000000...c78ba3` | ⚠️ Unaudited |
| Png | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60781c...aca982` | ⚠️ Unaudited |
| PoolConfiguration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3212e3...b962e4` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...e08a90` | ⚠️ Unaudited |
| PoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1df7f8...6b7109` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x170732...7d7a9f` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa...3be471` | ⚠️ Unaudited |
| PriorityOrderReactor | unknown | project_anchor | own_supporting | 0 | base | unit-260702 | `0x000000...8de729` | ⚠️ Unaudited |
| Proposals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd4b9fd...79cbc4` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | celo | n/a | `0x41822d...e933d3` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | blast | n/a | `0x430000...000004` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0cb49b...2aa355` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753...33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d7...5239ea` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a7b5d...c962c2` | ⚠️ Unaudited |
| QuoterMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4752ba...72ad24` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x276bfe...6e200c` | ⚠️ Unaudited |
| Random | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x22a4aa...c93dfe` | ⚠️ Unaudited |
| Recover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x075b36...aa8a60` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x203fdf...74cb66` | ⚠️ Unaudited |
| Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x9380fa...ed4eb9` | ⚠️ Unaudited |
| ReserveSpenderMultiSigProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x554fca...4d2a19` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073931...e8fe50` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea...fb3c40` | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f8577...dfd713` | ⚠️ Unaudited |
| Signatures | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x926a9e...792b7d` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb...7081fc` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd...bf4b8a` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f...9f3b27` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5268ba...b120a3` | ⚠️ Unaudited |
| SortedOracles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xefb849...7b7b33` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e2...9eb4cd` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9e...ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17...26f5f9` | ⚠️ Unaudited |
| StableTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x765de8...b1282a` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d...d834e7` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d8...537e1c` | ⚠️ Unaudited |
| StarLLMDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x718448...d4f4e1` | ⚠️ Unaudited |
| StarToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67e1a3...a93d8c` | ⚠️ Unaudited |
| StateView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x12a88a...85df30` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d9...f9e88b` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98...549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf...d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354...11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c77...a64bd8` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a4...e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a...69156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510...e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20c...597c7a` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c4...4ec989` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4...ba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca...20d8d6` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e...da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93...88797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055...edfa70` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb91...41978f` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x849bae...e9f44d` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02e5be...6db2a9` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-260743 | `0xe59242...861564` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075b36...aa8a60` | ⚠️ Unaudited |
| SwapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x73e883...9471ea` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a4...e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9...38ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a4...f8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf...04c2cf` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c42...51f14f` | ⚠️ Unaudited |
| TaraClient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x973204...18bca6` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6...e24a9f` | ⚠️ Unaudited |
| TestERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f42b7...7b4d6e` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0281e9...44c55c` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df934...60da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b5...929b81` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b...1dfb61` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057b1f...aa8e83` | ⚠️ Unaudited |
| TokenJar | unknown | project_anchor | own_supporting | 0 | unichain | unit-260458 | `0xd576bd...9140b5` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2b915f...3bbb34` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20...733ed4` | ⚠️ Unaudited |
| TransferWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb49e4d...178bcf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x672035...4a7427` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x070b84...8d1896` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | unichain | unit-260744 | `0x0dfa04...6a2004` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x15533b...5d6844` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-260745 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | blast | n/a | `0x0747ad...676f97` | ⚠️ Unaudited |
| TreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a62d...a0efde` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d30b1...3f1e94` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b670...d1b987` | ⚠️ Unaudited |
| UERC20Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260334 | `0x0cde87...9bd1b5` | ⚠️ Unaudited |
| Uni | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260339 | `0x1f9840...01f984` | ⚠️ Unaudited |
| UnichainDeployer | unknown | project_anchor | own_supporting | 0 | unichain | unit-260456 | `0xd16c47...f18dea` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b...61d136` | ⚠️ Unaudited |
| UniSwap_ETH_CDAIZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05a3c1...9af165` | ⚠️ Unaudited |
| UniswapAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c70d8...ce3d95` | ⚠️ Unaudited |
| UniswapInsuranceQuote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5071b1...c03e60` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260618 | `0x013914...1ef0c2` | ⚠️ Unaudited |
| UniswapOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b5a6b...75d02f` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x056588...752633` | ⚠️ Unaudited |
| UniswapV2Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16d4f2...a2996b` | ⚠️ Unaudited |
| UniswapV2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4940...30b19a` | ⚠️ Unaudited |
| UniswapV2Router01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf164fc...97b92a` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | project_anchor | own_supporting | 0 | unichain | unit-260436 | `0x284f11...0063ff` | ⚠️ Unaudited |
| UniswapV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x06d830...4e4e23` | ⚠️ Unaudited |
| UniswapV3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055284...86669d` | ⚠️ Unaudited |
| UniswapV3PositionUtility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df154...3df6c0` | ⚠️ Unaudited |
| UniswapV3Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9840...b0f00d` | ⚠️ Unaudited |
| UniswapYieldV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25407d...794508` | ⚠️ Unaudited |
| UniswapYieldV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48fe62...4a3a8a` | ⚠️ Unaudited |
| UniversalERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca27a2...e2334c` | ⚠️ Unaudited |
| UniversalRouter | unknown | project_anchor | own_supporting | 0 | polygon | unit-260468 | `0x109569...c49223` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x352a86...b67155` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded882...626341` | ⚠️ Unaudited |
| USUPERC20Factory | unknown | project_anchor | own_supporting | 0 | unichain | unit-260435 | `0x24016e...b7ac6a` | ⚠️ Unaudited |
| UXLINKToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a6b3a...c8cff1` | ⚠️ Unaudited |
| V2DutchOrderReactor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260326 | `0x000000...6289be` | ⚠️ Unaudited |
| V3DutchOrderReactor | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260612 | `0x000000...7385ef` | ⚠️ Unaudited |
| V3FeeAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260351 | `0x5e74c9...40867d` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x03a520...ed34f1` | ⚠️ Unaudited |
| V4Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d5e0f...32048d` | ⚠️ Unaudited |
| Validators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xaeb865...4d0c58` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d2...9cfbc8` | ⚠️ Unaudited |
| vASTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36fab2...be1a42` | ⚠️ Unaudited |
| vBNC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa64cf1...878c05` | ⚠️ Unaudited |
| vDOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2681a...2c8e37` | ⚠️ Unaudited |
| VenomNetworkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777777...84c4b7` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa44557...a66a2b` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5981...a7f03c` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bafc3...0950d3` | ⚠️ Unaudited |
| vGLMR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x026479...432be9` | ⚠️ Unaudited |
| VirtualLBPStrategyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260325 | `0x000000...bbc487` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1d...2499bf` | ⚠️ Unaudited |
| VToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b5dfd...f54271` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2157a7...e0f708` | ⚠️ Unaudited |
| WAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fc6d4...1d51d4` | ⚠️ Unaudited |
| WBNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-260663 | `0xbb4cdb...bc095c` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f89...c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | optimism | unit-260395 | `0x420000...000006` | ⚠️ Unaudited |
| WMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-260466 | `0x0d500b...df1270` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71...231981` | ⚠️ Unaudited |
| X1NetworkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x111111...0b8dce` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae...e419c5` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2a...53b367` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0a...bca9ae` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd02...e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411...2a221c` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597ea...bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66...3931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59...f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71...a6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610258...a05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba...b73d99` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41303e...343eeb` | ⚠️ Unaudited |
| YFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc529...6ad93e` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea...d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738...98340b` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b...d41380` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad9...54203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b642...e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052...a8190f` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c068...af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea74...b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118ee...b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6...367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f...a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dea...f677b5` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51...787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06...025298` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (241)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260323 | `0x000000...37030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260327 | `0x00004c...63d4e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260329 | `0x00cca2...ce0632` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260338 | `0x1a9c81...be35bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260340 | `0x1f9841...61f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260341 | `0x1f9843...31f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260347 | `0x42b24a...0a48ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260348 | `0x5ba1e1...eed696` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260350 | `0x5c69be...c5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260353 | `0x61ffe0...30b21e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260354 | `0x65af3b...05b332` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260355 | `0x66a989...dba8af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260356 | `0x68b346...65fc45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260359 | `0x7a250d...f2488d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260362 | `0x8ad599...b6e6d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260364 | `0x91ae84...9294f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260367 | `0xa5644e...f92b34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260368 | `0xb27308...ce5ab6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260369 | `0xb75354...e90cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260370 | `0xb98766...a3e000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260371 | `0xbbbb6f...3316b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260372 | `0xbfd813...47f573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260373 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260374 | `0xc36442...11fe88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260375 | `0xc6ef4c...dac9d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260376 | `0xcccccc...6e0bd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260379 | `0xe34139...c6fe65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260384 | `0xee6a57...c24785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260385 | `0xf38521...995f85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260387 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260388 | `0x000000...37030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260389 | `0x0c3c1c...e074bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260393 | `0x1f9843...31f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260396 | `0x42b24a...0a48ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260398 | `0x4a7b5d...c962c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260400 | `0x61ffe0...30b21e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260401 | `0x68b346...65fc45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260404 | `0x851116...8b3507` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260407 | `0x91ae84...9294f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260410 | `0xb27308...ce5ab6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260411 | `0xb75354...e90cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260412 | `0xbfd813...47f573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260414 | `0xc36442...11fe88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260423 | `0xe34139...c6fe65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260424 | `0xe59242...861564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260427 | `0xee6a57...c24785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260647 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260648 | `0x000000...37030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260650 | `0x000000...e18eb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260651 | `0x0281e9...44c55c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260652 | `0x1906c1...4eae07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260653 | `0x326818...9e760f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260654 | `0x4752ba...72ad24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260655 | `0x49b53c...e32c71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260656 | `0x78d78e...3eb077` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260657 | `0x7b8a01...170613` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260658 | `0x831d93...995071` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260659 | `0x8909dc...e18ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260660 | `0x963df2...087184` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260661 | `0xaec98e...97ee97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260662 | `0xb971ef...dd85d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260664 | `0xc9a7f5...8b1c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260665 | `0xd92700...01a47c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260666 | `0xdb1d10...4461f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260429 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260430 | `0x000000...ca1406` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260431 | `0x000000...37030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260432 | `0x1f9840...000002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260433 | `0x1f9840...000003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260434 | `0x1f9843...31f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260438 | `0x385a5c...fa7658` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260439 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260440 | `0x435ddc...60ae24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260443 | `0x73855d...12ff9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260444 | `0x824a3e...c9a000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260446 | `0x943e6e...3c46e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260449 | `0xaa56d4...0b38e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260451 | `0xb7610f...c54f0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260453 | `0xb9d0c2...5b60dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260455 | `0xc6ef4c...dac9d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260459 | `0xd5d76f...cbe443` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260462 | `0xeb4419...620529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260463 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260469 | `0x1f9841...61f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260470 | `0x1f9843...31f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260473 | `0x42b24a...0a48ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260474 | `0x61ffe0...30b21e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260475 | `0x68b346...65fc45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260481 | `0x91ae84...9294f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260482 | `0x9e5a52...22799c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260485 | `0xa5644e...f92b34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260486 | `0xb27308...ce5ab6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260487 | `0xb75354...e90cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260488 | `0xbfd813...47f573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260490 | `0xc36442...11fe88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260491 | `0xe34139...c6fe65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260492 | `0xe59242...861564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260496 | `0xedf606...077ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260497 | `0xee6a57...c24785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-260498 | `0x000000...9b8f00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260502 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260503 | `0x2e9d45...c5b3ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260504 | `0x315e41...6638ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260505 | `0x4b2ab3...1d6804` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260506 | `0x4f0c28...0f9bca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260507 | `0x550774...7372ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260508 | `0x661e93...70f08d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260509 | `0x7197e2...2f4e53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260513 | `0xd1b797...204343` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260514 | `0xda00ae...0956d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260515 | `0xe2023f...7843f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260516 | `0xe53890...d59b2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260517 | `0x000000...f714fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260518 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260519 | `0x0616e5...690a86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260520 | `0x0c68a7...16a65c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260521 | `0x28731b...136c06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260522 | `0x5aea57...9d9a91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260523 | `0x611841...9dac8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260524 | `0x7d67b8...97674d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260526 | `0x8cb537...ea3e28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260527 | `0x8fda5a...215422` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260528 | `0x99c563...07e8a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260530 | `0xa819de...fcdd1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260531 | `0xaeabf2...13ee81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260532 | `0xbb7927...89b557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260534 | `0xe10ff1...e24f89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260535 | `0xf84268...5e78e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260701 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260703 | `0x000000...37030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260704 | `0x000000...f27ba0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260705 | `0x000000...5a7f58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260707 | `0x091e99...bd0693` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260708 | `0x0cdee0...c9ac6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260710 | `0x23cf10...acd2d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260711 | `0x262666...41e481` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260713 | `0x33128a...f6fdfd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260714 | `0x3334d8...621fa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260716 | `0x3d4e44...35b76a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260717 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260718 | `0x42be4d...25c3c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260719 | `0x4615c3...121463` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260720 | `0x4752ba...72ad24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260723 | `0x4f2259...401009` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260724 | `0x5bb4ba...11e000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260725 | `0x6ff569...299b43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260726 | `0x8909dc...e18ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260729 | `0x9c5a6f...8c389a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260732 | `0xc46143...d9c134` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260734 | `0xc6ef4c...dac9d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260740 | `0xf9d107...577d9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260536 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260537 | `0x000000...37030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260540 | `0x18608a...bee000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260541 | `0x1f9843...31f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260546 | `0x42b24a...0a48ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260547 | `0x4752ba...72ad24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260549 | `0x61ffe0...30b21e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260550 | `0x68b346...65fc45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260553 | `0x91ae84...9294f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260556 | `0xa51afa...e381a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260557 | `0xa5644e...f92b34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260558 | `0xadf885...2806db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260559 | `0xb27308...ce5ab6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260560 | `0xb274d5...04a87c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260561 | `0xb75354...e90cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260562 | `0xbfd813...47f573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260564 | `0xc36442...11fe88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260565 | `0xc6ef4c...dac9d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260566 | `0xe34139...c6fe65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260567 | `0xe59242...861564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260568 | `0xee6a57...c24785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260569 | `0xf1d7cc...0fbcf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260570 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260571 | `0x0ec9d3...548824` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260573 | `0x245d3f...162cfd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260574 | `0x3c1fcf...0f5673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260575 | `0x3cfd4d...14c582` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260576 | `0x3d79ed...90d95a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260577 | `0x505b43...33fde9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260578 | `0x5615cd...01abc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260579 | `0x5f115d...0acd3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260580 | `0x633987...324204` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260581 | `0x643770...3255b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260582 | `0x644023...6dd554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260583 | `0x6586fb...8791c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260585 | `0x82825d...efa8e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260587 | `0x8ac47d...53208f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260589 | `0x8c456f...ea3ef0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260593 | `0xa9fd76...831186` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260594 | `0xafe208...7acdec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260596 | `0xb00b8c...4f8d7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260600 | `0xc1b262...4bf49a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260608 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260614 | `0x000000...5a7f58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260620 | `0x27dd7e...299e99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260622 | `0x44f5f1...1f0f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260624 | `0x4752ba...72ad24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260626 | `0x655c40...184f8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260628 | `0x740b1c...dc1bad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260632 | `0x94b753...aa73b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260633 | `0x9ada7d...8c6381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260634 | `0x9e5a52...22799c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260636 | `0xb31f66...fd66c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260637 | `0xbb00ff...a578ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260638 | `0xbe0f55...e6257f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260640 | `0xca9d06...d76ac3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260641 | `0xe1f93a...993c09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260642 | `0xe89b7c...daebaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260643 | `0xeb9ffc...e21950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1e2a70...e7857e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x27f971...11faa2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-260741 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4752ba...72ad24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x492e64...184104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4e0caf...b57f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x94cc0a...e12bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xc52900...df5e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xcbf8b7...e23e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd73034...24a79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd7c6e8...584c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd867e2...91d2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xedf606...077ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260667 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260668 | `0x048352...9d0b60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260669 | `0x0f797d...50ee3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260670 | `0x11867e...7e64df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260671 | `0x209aad...7e3044` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260673 | `0x3315ef...04b020` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260674 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260679 | `0x5ef5a6...e4206f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260683 | `0x7145f8...c42cbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260684 | `0x7de04c...281557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260685 | `0x843b0b...e7741b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260687 | `0xa00f34...5beec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260690 | `0xa51c76...a37c15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260692 | `0xbc91e8...137d78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260695 | `0xd41098...ded03b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260696 | `0xf15d9e...996422` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260698 | `0xfff2bf...bdcdd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-260428 | `0x000000...37030e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-core/blob/main/audits/abdk/audit.pdf) | ABDK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-core/blob/main/audits/tob/audit.pdf) | Trail of Bits | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-periphery/blob/main/audits/abdk/audit.pdf) | ABDK | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Uniswap-final.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-final.md) | ConsenSys | Audit | 2019-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Uniswap-standalone-working.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-standalone-working.md) | ConsenSys | Audit | 2018-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Uniswap-working.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-working.md) | ConsenSys | Audit | 2019-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [coverage_output.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/coverage-reports/coverage_output.md) | ConsenSys | Audit | 2018-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [mythril_output_exchange.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/tool-output/mythril/mythril_output_exchange.md) | Mythril | Audit | 2018-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [mythril_output_factory.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/tool-output/mythril/mythril_output_factory.md) | Mythril | Audit | 2018-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [DRAFT_ABDK_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_ABDK_audit_core.pdf) | ABDK | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 46 | high |
| [DRAFT_Certora_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Certora_audit_core.pdf) | Certora | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [DRAFT_Spearbit_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Spearbit_audit_core.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [OpenZeppelin_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/OpenZeppelin_audit_core.pdf) | OpenZeppelin | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 46 | high |
| [TrailOfBits_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/TrailOfBits_audit_core.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [DRAFT_ABDK_audit_periphery_universal_router.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/DRAFT_ABDK_audit_periphery_universal_router.pdf) | ABDK | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [DRAFT_Spearbit_audit_periphery.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/DRAFT_Spearbit_audit_periphery.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 30 | high |
| [OpenZeppelin_audit_periphery_universal_router.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/OpenZeppelin_audit_periphery_universal_router.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 44 | high |
| [- [Audits](): Learn about the audits for Uniswap v2](https://developers.uniswap.org/docs/protocols/v2/audits) | unknown | Audit | 2020-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [Resources](): Explore audits, core contracts, and infrastructur…](https://developers.uniswap.org/docs/protocols/the-compact/resources) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [- [Audits](): Learn about the audits for Uniswap v3](https://developers.uniswap.org/docs/protocols/v3/audits) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18444] audit.pdf — no match: All contracts and libraries explicitly listed in the scope section of the audit report.
- [18445] audit.pdf — no match: Extracted 19 contracts from the Coverage section (pages 8-11) and the report date from the cover page.
- [18446] audit.pdf — no match: The report explicitly lists two files audited: NonfungiblePositionManager.sol and SwapRouter.sol. The audit date is given as 26th April 2021.
- [18448] Uniswap-final.md — no match: Scope table explicitly lists two Vyper contracts: uniswap_exchange.vy and uniswap_factory.vy. Audit date is January 11th 2019 from the dashboard.
- [18449] Uniswap-standalone-working.md — no match: The provided text is a template with placeholders and does not contain any actual contract names or audit details.
- [18450] Uniswap-working.md — no match: Scope table explicitly lists two Vyper contracts: uniswap_exchange.vy and uniswap_factory.vy. Audit date is January 11th 2019.
- [18451] coverage_output.md — no match: The provided text is a pytest test output, not an audit report. No contracts or audit date found.
- [18452] mythril_output_exchange.md — no match: Only contract name found is 'MAIN' from Mythril output; no explicit scope section or file paths provided.
- [18453] mythril_output_factory.md — no match: The provided text is a Docker command output for Mythril analysis, not an audit report. No contracts or scope information found.
- [18454] DRAFT_ABDK_audit_core.pdf — no match: Extracted contract names from the 'Project scope' section which lists all files in scope. The audit date is from the changelog: 0.1 05.09.24, interpreted as 2024-09-05.
- [18455] DRAFT_Certora_audit_core.pdf — no match: Scope explicitly lists 'src/*' and formal verification sections name specific contracts: PoolManager, LPFeeLibrary, ProtocolFeeLibrary, SqrtPriceMath, TickBitmap. Audit date inferred from work period May 28 to July 2, 2024.
- [18456] DRAFT_Spearbit_audit_core.pdf — no match: Extracted contract names from findings context and file paths mentioned throughout the report. Audit date from report cover page: September 5, 2024.
- [18457] OpenZeppelin_audit_core.pdf — no match: All contracts listed in the Scope section of the audit report, including both fully audited files and diff-checked files.
- [18458] TrailOfBits_audit_core.pdf — no match: Extracted contract names from scope section, project targets, and detailed findings. Audit date from cover page and project timeline.
- [18459] DRAFT_ABDK_audit_periphery_universal_router.pdf — no match: Extracted contract names from the 'Project scope' section which lists files under 'unirouter/' and 'v4peri/' directories. The audit date is from the changelog and title page: 5th September 2024.
- [18460] DRAFT_Spearbit_audit_periphery.pdf — no match: Extracted from the audit report of Uniswap v4-periphery by Spearbit. The report lists contracts in scope via findings and context references. The audit date is September 5, 2024 from the cover page.
- [18461] OpenZeppelin_audit_periphery_universal_router.pdf — no match: Extracted all contracts and libraries listed in the Scope section of the audit report. The audit date is from the report header: 'September 5, 2024'.
- [18462] - [Audits](): Learn about the audits for Uniswap v2 — no match: The report mentions Uniswap v2 core and periphery smart contracts but does not list specific contract names or file paths. The audit date is inferred from the range 'January to April 2020' as the end date.
- [18463] - [Resources](): Explore audits, core contracts, and infrastructur… — no match: The document is a resource index page, not an audit report. It lists core contracts and peripheral contracts but does not specify which are in scope for an audit. No audit date found.
- [18464] - [Audits](): Learn about the audits for Uniswap v3 — no match: The text mentions audits for Uniswap v3 core and periphery contracts, but does not list specific contract names or file paths. The audit date is inferred from the latest mentioned audit (April 2021).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit.pdf | IUniswapV3FlashCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3MintCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolActions | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolDerivedState | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolEvents | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolImmutables | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolOwnerActions | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolState | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IERC20Minimal | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3Factory | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolDeployer | unmatched — not counted | — | listed in scope | no |
| audit.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LowGasSafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Position | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SecondsOutside | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3Factory | ambiguous — not counted | 0x1f9843… (alternative) `0x1f9843...31f984` — liveness: live (current_address_book_code)<br>0x7145f8… (alternative) `0x7145f8...c42cbb` — liveness: live (current_address_book_code)<br>0xdb1d10… (alternative) `0xdb1d10...4461f7` — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f9843...31f984` — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f9843...31f984` — liveness: live (current_address_book_code)<br>0x33128a… (alternative) `0x33128a...f6fdfd` — liveness: live (current_address_book_code)<br>0x740b1c… (alternative) `0x740b1c...dc1bad` — liveness: live (current_address_book_code)<br>0x8fda5a… (alternative) `0x8fda5a...215422` — liveness: live (current_address_book_code)<br>0x4b2ab3… (alternative) `0x4b2ab3...1d6804` — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f9843...31f984` — liveness: live (current_address_book_code)<br>0xafe208… (alternative) `0xafe208...7acdec` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | UniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3PoolDeployer | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3Factory | ambiguous — not counted | 0x1f9843… (alternative) `0x1f9843...31f984` — liveness: live (current_address_book_code)<br>0x7145f8… (alternative) `0x7145f8...c42cbb` — liveness: live (current_address_book_code)<br>0xdb1d10… (alternative) `0xdb1d10...4461f7` — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f9843...31f984` — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f9843...31f984` — liveness: live (current_address_book_code)<br>0x33128a… (alternative) `0x33128a...f6fdfd` — liveness: live (current_address_book_code)<br>0x740b1c… (alternative) `0x740b1c...dc1bad` — liveness: live (current_address_book_code)<br>0x8fda5a… (alternative) `0x8fda5a...215422` — liveness: live (current_address_book_code)<br>0x4b2ab3… (alternative) `0x4b2ab3...1d6804` — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f9843...31f984` — liveness: live (current_address_book_code)<br>0xafe208… (alternative) `0xafe208...7acdec` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | UniswapV3PoolDeployer | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LowGasSafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Position | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SecondsOutside | unmatched — not counted | — | listed in scope | no |
| audit.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| audit.pdf | NonfungiblePositionManager | ambiguous — not counted | 0xc36442… (alternative) `0xc36442...11fe88` — liveness: live (current_address_book_code)<br>0x0616e5… (alternative) `0x0616e5...690a86` — liveness: live (current_address_book_code)<br>0xbc91e8… (alternative) `0xbc91e8...137d78` — liveness: live (current_address_book_code)<br>0x7b8a01… (alternative) `0x7b8a01...170613` — liveness: live (current_address_book_code)<br>NonfungiblePositionManager (proxy) (alternative) `0x03a520...ed34f1` — deployed 2023-07-16 21:39:35+03 — liveness: live (current_address_book_code)<br>0x3d79ed… (alternative) `0x3d79ed...90d95a` — liveness: live (current_address_book_code)<br>0x655c40… (alternative) `0x655c40...184f8b` — liveness: live (current_address_book_code)<br>0xc36442… (alternative) `0xc36442...11fe88` — liveness: live (current_address_book_code)<br>0x315e41… (alternative) `0x315e41...6638ae` — liveness: live (current_address_book_code)<br>0xc36442… (alternative) `0xc36442...11fe88` — liveness: live (current_address_book_code)<br>0xc36442… (alternative) `0xc36442...11fe88` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | SwapRouter | ambiguous — not counted | 0xe59242… (alternative) `0xe59242...861564` — liveness: live (current_address_book_code)<br>0xe59242… (alternative) `0xe59242...861564` — liveness: live (current_address_book_code)<br>SwapRouter (proxy) (alternative) `0xe59242...861564` — deployed 2021-05-04 22:30:41+03 — liveness: live (current_address_book_code)<br>0xe59242… (alternative) `0xe59242...861564` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Uniswap-final.md | uniswap_exchange | unmatched — not counted | — | listed in scope table | no |
| Uniswap-final.md | uniswap_factory | unmatched — not counted | — | listed in scope table | no |
| Uniswap-working.md | uniswap_exchange | unmatched — not counted | — | listed in scope table | no |
| Uniswap-working.md | uniswap_factory | unmatched — not counted | — | listed in scope table | no |
| mythril_output_exchange.md | MAIN | unmatched — not counted | — | Mythril output references contract 'MAIN' in findings | no |
| DRAFT_ABDK_audit_core.pdf | ERC6909 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | ERC6909Claims | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Extsload | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Exttload | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | PoolManager | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | ProtocolFees | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IUnlockCallback | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IERC20Minimal | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IERC6909Claims | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IExtsload | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IExttload | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IHooks | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IPoolManager | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IProtocolFeeController | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IProtocolFees | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | CurrencyDelta | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | CustomRevert | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | LPFeeLibrary | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | NonZeroDeltaCount | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | ParseBytes | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Position | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | ProtocolFeeLibrary | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Reserves | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | StateLibrary | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | TransientStateLibrary | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | BalanceDelta | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | BeforeSwapDelta | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Currency | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | PoolId | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | PoolKey | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Slot0 | unmatched — not counted | — | listed in scope | no |
| DRAFT_Certora_audit_core.pdf | PoolManager | unmatched — not counted | — | listed in scope and formal verification section | no |
| DRAFT_Certora_audit_core.pdf | LPFeeLibrary | unmatched — not counted | — | listed in formal verification section | no |
| DRAFT_Certora_audit_core.pdf | ProtocolFeeLibrary | unmatched — not counted | — | listed in formal verification section | no |
| DRAFT_Certora_audit_core.pdf | SqrtPriceMath | unmatched — not counted | — | listed in formal verification section | no |
| DRAFT_Certora_audit_core.pdf | TickBitmap | unmatched — not counted | — | listed in formal verification section | no |
| DRAFT_Spearbit_audit_core.pdf | PoolManager | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | Pool | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | TickMath | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | SqrtPriceMath | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | SwapMath | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | BitMath | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | TickBitmap | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | CustomRevert | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | PoolIdLibrary | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | ProtocolFees | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | ERC6909 | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | ERC6909Claims | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | Currency | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | CurrencyReserves | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | IProtocolFees | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | IPoolManager | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | IHooks | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | LPFeeLibrary | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | TransientStateLibrary | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | StateLibrary | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | UnsafeMath | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | Constants | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | CurrencyDelta | unmatched — not counted | — | mentioned in findings context | no |
| OpenZeppelin_audit_core.pdf | ERC6909 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | ERC6909Claims | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Extsload | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Exttload | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | PoolManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | ProtocolFees | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IHooks | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IExtsload | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IExttload | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IPoolManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IProtocolFeeController | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IProtocolFees | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IERC20Minimal | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IERC6909Claims | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IUnlockCallback | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | CurrencyDelta | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | CustomRevert | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | LPFeeLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | NonZeroDeltaCount | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | ParseBytes | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | ProtocolFeeLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Reserves | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | StateLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | TransientStateLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | BalanceDelta | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | BeforeSwapDelta | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Currency | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | PoolId | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | PoolKey | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Slot0 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | BitMath | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | FullMath | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | Position | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | SwapMath | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | TickBitmap | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | TickMath | unmatched — not counted | — | listed in scope (diff check) | no |
| TrailOfBits_audit_core.pdf | PoolManager | unmatched — not counted | — | listed in scope and detailed findings | no |
| TrailOfBits_audit_core.pdf | Hooks | unmatched — not counted | — | listed in scope and detailed findings | no |
| TrailOfBits_audit_core.pdf | ERC6909 | unmatched — not counted | — | listed in scope | no |
| TrailOfBits_audit_core.pdf | ProtocolFeeController | unmatched — not counted | — | listed in scope | no |
| TrailOfBits_audit_core.pdf | Pool | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | LPFeeLibrary | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | SwapMath | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | ProtocolFeeLibrary | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | PoolId | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | PoolKey | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | PoolIdLibrary | unmatched — not counted | — | mentioned in findings | no |
| TrailOfBits_audit_core.pdf | ActionsRouter | unmatched — not counted | — | mentioned in invariant testing | no |
| TrailOfBits_audit_core.pdf | End2End | unmatched — not counted | — | mentioned in invariant testing | no |
| TrailOfBits_audit_core.pdf | ActionFuzzEntrypoint | unmatched — not counted | — | mentioned in invariant testing | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Callbacks | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Dispatcher | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Locker | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V4SwapRouter | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | MigratorImmutables | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V3ToV4Migrator | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | UniversalRouter | ambiguous — not counted | 0x66a989… (alternative) `0x66a989...dba8af` — liveness: live (current_address_book_code)<br>0xa51afa… (alternative) `0xa51afa...e381a3` — liveness: live (current_address_book_code)<br>0x851116… (alternative) `0x851116...8b3507` — liveness: live (current_address_book_code)<br>0x94b753… (alternative) `0x94b753...aa73b7` — liveness: live (current_address_book_code)<br>0x1906c1… (alternative) `0x1906c1...4eae07` — liveness: live (current_address_book_code)<br>UniversalRouter (alternative) `0x109569...c49223` — deployed 2025-01-21 23:40:47+03 — liveness: live (current_address_book_code)<br>0x3315ef… (alternative) `0x3315ef...04b020` — liveness: live (current_address_book_code)<br>0x643770… (alternative) `0x643770...3255b4` — liveness: live (current_address_book_code)<br>0x6ff569… (alternative) `0x6ff569...299b43` — liveness: live (current_address_book_code)<br>0x28731b… (alternative) `0x28731b...136c06` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | BaseActionsRouter | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | DeltaResolver | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | EIP712_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ImmutableState | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Multicall_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Notifier | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Permit2Forwarder | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PoolInitializer | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ReentrancyLock | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SafeCallback | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | UnorderedNonce | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IEIP712_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IMulticall_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | INotifier | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IPositionManager | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IQuoter | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ISubscriber | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IV4Router | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Quoter | ambiguous — not counted | 0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ActionConstants | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Actions | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | BipsLibrary | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | CalldataDecoder | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ERC721PermitHash | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PathKey | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PositionConfig | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SlippageCheck | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V4Router | unmatched — not counted | — | listed in scope | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionManager | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | Notifier | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | Quoter | ambiguous — not counted | 0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DRAFT_Spearbit_audit_periphery.pdf | V4Router | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | DeltaResolver | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | SlippageCheck | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | CalldataDecoder | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | ERC721Permit_v4 | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolInitializer | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionConfig | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionConfigLibrary | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | ERC721PermitHashLibrary | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | BaseHook | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | Multicall_v4 | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | EIP712_v4 | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | StateView | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | PathKey | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | ActionConstants | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | BipsLibrary | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | ImmutableState | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | IQuoter | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | IV4Router | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | IERC721Permit_v4 | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | IERC20PermitAllowed | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | IMulticall_v4 | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | INotifier | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | Actions | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | UnorderedNonce | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | BaseActionsRouter | unmatched — not counted | — | listed in scope and findings | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V4Router | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BaseActionsRouter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | DeltaResolver | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | EIP712_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ImmutableState | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Multicall_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Notifier | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Permit2Forwarder | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PoolInitializer | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ReentrancyLock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SafeCallback | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | UnorderedNonce | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BaseHook | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IEIP712_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IMulticall_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | INotifier | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IPositionManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IQuoter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ISubscriber | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IV4Router | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IERC20PermitAllowed | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Quoter | ambiguous — not counted | 0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308...ce5ab6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | StateView | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ActionConstants | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Actions | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BipsLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | CalldataDecoder | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ERC721PermitHash | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Locker | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PathKey | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PositionConfig | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SlippageCheck | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | UniversalRouter | ambiguous — not counted | 0x66a989… (alternative) `0x66a989...dba8af` — liveness: live (current_address_book_code)<br>0xa51afa… (alternative) `0xa51afa...e381a3` — liveness: live (current_address_book_code)<br>0x851116… (alternative) `0x851116...8b3507` — liveness: live (current_address_book_code)<br>0x94b753… (alternative) `0x94b753...aa73b7` — liveness: live (current_address_book_code)<br>0x1906c1… (alternative) `0x1906c1...4eae07` — liveness: live (current_address_book_code)<br>UniversalRouter (alternative) `0x109569...c49223` — deployed 2025-01-21 23:40:47+03 — liveness: live (current_address_book_code)<br>0x3315ef… (alternative) `0x3315ef...04b020` — liveness: live (current_address_book_code)<br>0x643770… (alternative) `0x643770...3255b4` — liveness: live (current_address_book_code)<br>0x6ff569… (alternative) `0x6ff569...299b43` — liveness: live (current_address_book_code)<br>0x28731b… (alternative) `0x28731b...136c06` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Callbacks | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Dispatcher | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | MigratorImmutables | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V3ToV4Migrator | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V4SwapRouter | unmatched — not counted | — | listed in scope | no |
| - [Resources](): Explore audits, core contracts, and infrastructur… | TheCompact | unmatched — not counted | — | listed as main protocol implementation in Core Contracts section | no |
| - [Resources](): Explore audits, core contracts, and infrastructur… | ITheCompact | unmatched — not counted | — | listed as core interface definition in Core Contracts section | no |
| - [Resources](): Explore audits, core contracts, and infrastructur… | ITheCompactClaims | unmatched — not counted | — | listed as claims interface in Core Contracts section | no |
| - [Audits](): Learn about the audits for Uniswap v3 | Uniswap v3 core contracts | unmatched — not counted | — | mentioned as audited by ABDK Consulting and Trail of Bits | no |
| - [Audits](): Learn about the audits for Uniswap v3 | Uniswap v3 Periphery contracts | unmatched — not counted | — | mentioned as audited by ABDK Consulting | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x982dc1...6129c5` | AdvancedLBPStrategyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1f9841...61f984` | AlgebraInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0000cc...6faa1d` | ContinuousClearingAuctionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6000da...b645c4` | ExclusiveDutchOrderReactor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b869...06eb48` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d5cd3...6d6721` | Firepit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x39e5eb...b04252` | FullRangeLBPStrategyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x471ece...78a438` | GoldToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...40637c` | LiquidityLauncher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3aa12...038c0c` | MainnetDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x03a520...ed34f1` | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xe0a780...a77eeb` | OptimismBridgedResourceFirepit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x000000...5a7f58` | OrderQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x000000...8de729` | PriorityOrderReactor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe59242...861564` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xd576bd...9140b5` | TokenJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cde87...9bd1b5` | UERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f9840...01f984` | Uni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xd16c47...f18dea` | UnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x013914...1ef0c2` | UniswapInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x284f11...0063ff` | UniswapV2Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x109569...c49223` | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x24016e...b7ac6a` | USUPERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...6289be` | V2DutchOrderReactor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x000000...7385ef` | V3DutchOrderReactor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5e74c9...40867d` | V3FeeAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...bbc487` | VirtualLBPStrategyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbb4cdb...bc095c` | WBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000006` | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0d500b...df1270` | WMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 324 |
| upstream | 2 |
| standard_library | 14 |
| needs_review | 241 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 20
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 305 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, low=6, medium=1
- Match method counts: n/a

Zero-match audit list:

- [18444] audit.pdf
- [18445] audit.pdf
- [18446] audit.pdf
- [18448] Uniswap-final.md
- [18449] Uniswap-standalone-working.md
- [18450] Uniswap-working.md
- [18451] coverage_output.md
- [18452] mythril_output_exchange.md
- [18453] mythril_output_factory.md
- [18454] DRAFT_ABDK_audit_core.pdf
- [18455] DRAFT_Certora_audit_core.pdf
- [18456] DRAFT_Spearbit_audit_core.pdf
- [18457] OpenZeppelin_audit_core.pdf
- [18458] TrailOfBits_audit_core.pdf
- [18459] DRAFT_ABDK_audit_periphery_universal_router.pdf
- [18460] DRAFT_Spearbit_audit_periphery.pdf
- [18461] OpenZeppelin_audit_periphery_universal_router.pdf
- [18462] - [Audits](): Learn about the audits for Uniswap v2
- [18463] - [Resources](): Explore audits, core contracts, and infrastructur…
- [18464] - [Audits](): Learn about the audits for Uniswap v3

Fork inheritance lineage and inherited audits are included when available.
