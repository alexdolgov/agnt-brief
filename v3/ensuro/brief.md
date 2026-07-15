# Agentic Audit Brief: Ensuro

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ensuro (`ensuro`)
- Website: [https://ensuro.co](https://ensuro.co)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 155 unique implementations (351 raw deployments)
- Coverage basis: 2/19 confirmed own live verified implementations (10.5%); conservative 10.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,102,228.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ensuro. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 116 contract row(s) across ethereum, polygon. Structural roles: 113 unclassified, 2 supporting, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 116
- Structural roles: unclassified (113), supporting (2), core (1)
- Contract kinds: contract (115), abstract (1)
- Detected standards: erc165 (1), erc1967proxy (1), erc20 (1), multicall (1), pausable (1)
- Frameworks: openzeppelin (3), aave (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- EToken (`0x495d41...50b191`, chain 1)
- EToken (`0x54012f...12577b`, chain 1)
- EToken (`0x6192b4...7e4302`, chain 1)
- EToken (`0x6bf86a...0f7895`, chain 1)
- EToken (`0xa695f8...880fb7`, chain 1)
- EToken (`0xcd71f1...4d48bf`, chain 1)
- PremiumsAccount (`0x09a1e8...04abd6`, chain 1)
- PremiumsAccount (`0x0c798a...d0a811`, chain 1)
- PremiumsAccount (`0x1a4a62...012f43`, chain 1)
- PremiumsAccount (`0x2dd9db...f55747`, chain 1)
- PremiumsAccount (`0x8ae72a...62a2f2`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 116; live-surface rows included: 116 (35 live, 81 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/98 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/19 (10.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 38 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 133
- Confirmed-live implementations: 19 of 155 unique; 136 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/151
- Verified + Unaudited implementations: 149
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 155
- Raw deployments: 351
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 10.5% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 1.3% | 2025-12 |
| SlowMist | Tier 1 | 2 | 1.3% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LPManualWhitelist | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384384 | `0xca0d8d...28e545` | ✅ Audited |
| PolicyPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384382 | `0xd81a8b...9fa0a3` | ✅ Audited |

### ⚠️ Verified + Unaudited (149)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3InvestStrategy | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-384356 | `0xd74a28...ac2497` | ⚠️ Unaudited |
| AccessControlAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x90c5a7...c5477d`; polygon `0xe8b412...140fe9` | ⚠️ Unaudited |
| AccessManagedMSV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x8f73f5...64b18f`; polygon `0xef2f73...a10a0e` | ⚠️ Unaudited |
| AccessManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x367a03...f3a9d4`; ethereum `0xc3d6b7...373c07`; ethereum `0xf5866b...e69b3e`; polygon `0xa29df9...cdd79a`; polygon `0xf5866b...e69b3e` | ⚠️ Unaudited |
| AccessManager | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-384335 | `0x47e2af...026544` | ⚠️ Unaudited |
| AccessManager | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384404 | 2 deployments: polygon `0x47e2af...026544`; polygon `0x691a4d...22efb8` | ⚠️ Unaudited |
| AccessManagerAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x144749...a077e5`; polygon `0x520501...dbc4c0`; polygon `0xbf148e...bdcc64` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x98c23e...e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa4d940...c762bd` | ⚠️ Unaudited |
| BatchRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa433f6...cac317` | ⚠️ Unaudited |
| CashFlowLender | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384327 | `0x291a65...08d0d2` | ⚠️ Unaudited |
| CashFlowLender | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384385 | `0x5fe11f...ae33e6` | ⚠️ Unaudited |
| CashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384386 | 2 deployments: polygon `0x02221b...e3dd58`; polygon `0xccd55d...c24982` | ⚠️ Unaudited |
| CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x2efd18...430b08`; polygon `0xd5b68b...da8ee7`; polygon `0xd8f301...b12330`; polygon `0xdda5c1...af3f70` | ⚠️ Unaudited |
| CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6cacea...8d10b5`; polygon `0x74e4f7...1c4be5` | ⚠️ Unaudited |
| Cooler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x492e50...074c6a`; ethereum `0x9ec1c4...8e255b` | ⚠️ Unaudited |
| CurrencyMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x992a2b...715df7`; polygon `0xbfe4a3...c42f63` | ⚠️ Unaudited |
| cUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3e55...ee0102` | ⚠️ Unaudited |
| cUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xad55ae...23e7c0` | ⚠️ Unaudited |
| ERC2771ForwarderAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x101dea...ddec73`; ethereum `0x62e479...d023e9` | ⚠️ Unaudited |
| ERC2771ForwarderAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb89e7...99a106` | ⚠️ Unaudited |
| ERC4626AssetManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x33681a...f8d86f`; polygon `0x4b9d6a...7609a1`; polygon `0x89f2c0...e8ac12` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384410 | 2 deployments: polygon `0x1858a3...1a85e8`; polygon `0x92d473...91a014` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | polygon | n/a | 6 deployments: polygon `0x199a1f...abbde7`; polygon `0x36d049...ed72d8`; polygon `0x4187e0...6586c6`; polygon `0x4e0693...a85fe2`; polygon `0xa72b2b...48192a`; polygon `0xb642d9...309d50` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x1d04a9...293b85`; polygon `0x401fc5...45be0f`; polygon `0x5a38cb...6b351f`; polygon `0x7a95c4...5d06a9`; polygon `0x9b0b4f...e01bb3`; polygon `0xc49336...e1cd16`; polygon `0xccf281...6c8373` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x1d878b...bdf113`; polygon `0x42015e...d6708a`; polygon `0x4dbd84...a5f6c5` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 2 deployments: polygon `0x802930...ba8261`; polygon `0xa32138...2f056c` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384413 | 2 deployments: polygon `0xc0cad6...e4ec76`; polygon `0xfeddf0...3e1aaf` | ⚠️ Unaudited |
| ERC4626InvestStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x7c19bc...dff81d`; ethereum `0xde79ce...95ca80`; ethereum `0xf7bbf9...81b9ca`; polygon `0x758130...b0a33d`; polygon `0xe89598...df245a` | ⚠️ Unaudited |
| ERC4626PlusVaultAssetManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x0a175e...f411e2`; polygon `0xa2679f...632b7b`; polygon `0xa5a2b0...7a8d85` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384381 | 2 deployments: ethereum `0x12a4f3...9025e7`; ethereum `0xa695f8...880fb7` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384373 | 2 deployments: ethereum `0x176057...5341c2`; ethereum `0x495d41...50b191` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384383 | 2 deployments: ethereum `0x2cf13b...5a7387`; ethereum `0xcd71f1...4d48bf` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384374 | 2 deployments: ethereum `0x54012f...12577b`; ethereum `0xb375f4...4249c7` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384375 | 2 deployments: ethereum `0x6192b4...7e4302`; ethereum `0xfa9888...980b34` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384377 | 2 deployments: ethereum `0x6bf86a...0f7895`; ethereum `0xa55128...8ad224` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384389 | 2 deployments: polygon `0x08639c...b147bf`; polygon `0x55bae6...421fb6` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | polygon | n/a | 6 deployments: polygon `0x0aa662...b0e4e3`; polygon `0x15f76f...7c1aab`; polygon `0x1c7f0c...aceb45`; polygon `0x45435f...b22b99`; polygon `0x926248...26d410`; polygon `0xb1dff6...ac7414` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 3 deployments: polygon `0x138ca6...b3d50e`; polygon `0x32a9cb...3ed858`; polygon `0x71d390...a55d00` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x167107...16b823`; polygon `0x16b1da...04a406` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384397 | 2 deployments: polygon `0x1c48ac...52defc`; polygon `0x401482...5d4e06` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384392 | 2 deployments: polygon `0x28e039...86ef0e`; polygon `0x8d2ee8...9c0274` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | polygon | n/a | 6 deployments: polygon `0x32bebb...9615c5`; polygon `0x623677...373cd7`; polygon `0x732088...9934a6`; polygon `0x883a45...f63f8f`; polygon `0xbc05fa...6c7df0`; polygon `0xbca3dd...d13823` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384401 (2 proxies) | 3 deployments: polygon `0x53802d...09000c`; polygon `0x6229d7...d1528c`; polygon `0xe36d65...74b476` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 3 | polygon | unit-384402 (3 proxies) | 4 deployments: polygon `0x5be652...ce9546`; polygon `0x6a0e61...b4515e`; polygon `0xbc33c2...88dec6`; polygon `0xf383ef...a9f229` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384418 (2 proxies) | 3 deployments: polygon `0x9078dd...bfb6f9`; polygon `0x9f967c...f7ec9d`; polygon `0xec4122...ac5aab` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb96eaa...cf6af2`; polygon `0xce9cd5...b14bc1` | ⚠️ Unaudited |
| ETokensBundleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6202a0...28f681`; polygon `0xc17e60...78c54b` | ⚠️ Unaudited |
| ETokensBundleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x981989...5992db`; polygon `0xc77b1d...0eb4aa` | ⚠️ Unaudited |
| ETokensBundleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf2174...703664` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384394 | 2 deployments: polygon `0x2bb764...fe4c08`; polygon `0x31f1c2...0c3849` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384399 | 2 deployments: polygon `0x4d2da5...d835ae`; polygon `0xe7dc8c...3cdeae` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x747be0...9af311`; polygon `0x8d2ccb...5eaace` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0096af...f9e59d`; polygon `0x43882a...ef8777` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x023c94...be77c8`; polygon `0xca583c...209a32` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x084730...5f55c0`; polygon `0x90d04a...4082a5` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2e25a2...aada26`; polygon `0xb37c44...afa197` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384395 | 2 deployments: polygon `0x32ca53...c3a70b`; polygon `0x3eab5b...d6539f` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3d6c64...ce57ca`; polygon `0xc4d328...493e93` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384409 | 2 deployments: polygon `0x91d44e...dad830`; polygon `0xe64b6b...d6f460` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xa1edaf...81910d`; polygon `0xa60bcf...60b1db` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xca3f0a...2429df`; polygon `0xfc8199...e7af2e` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xd76171...9f088a`; polygon `0xdf0e56...8f66ce` | ⚠️ Unaudited |
| FullSignedUW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb259d0...170cf0` | ⚠️ Unaudited |
| IdleInvestStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0xdd71d3...e1e570`; polygon `0x1c8b02...e08d12`; polygon `0xebeb6d...0c0047` | ⚠️ Unaudited |
| LimitOutflowModifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x90f9b3...de3efa`; polygon `0xec9b26...9de36f` | ⚠️ Unaudited |
| LPManualWhitelist | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384339 | `0x4e8ac0...b897dc` | ⚠️ Unaudited |
| LPManualWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xe43be3...518bf5`; polygon `0x5dff0f...bbb9be` | ⚠️ Unaudited |
| LPManualWhitelist | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384415 | 2 deployments: polygon `0x99b294...6a0c15`; polygon `0xccb8dc...c5cf6e` | ⚠️ Unaudited |
| LPManualWhitelistV20Upgraded | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x05c779...3f95e3`; polygon `0x13f6d7...1a3fc4` | ⚠️ Unaudited |
| MerklRewardsInvestStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xa637f4...ffedf5`; polygon `0xa67c6b...9cfbf6` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0xe108fb...993add`; polygon `0x781fb7...558c42`; polygon `0xacb0dc...9ed6bc` | ⚠️ Unaudited |
| MigrateAssetMSV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d3542...c38cd7` | ⚠️ Unaudited |
| MigrateERC4626CFL | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384406 (2 proxies) | 3 deployments: polygon `0x48ff8b...958bf4`; polygon `0x7426fe...c4924c`; polygon `0xf6b7a2...016ce0` | ⚠️ Unaudited |
| MigrateERC4626CFL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x81e9a6...d84454`; polygon `0xa53000...69af91`; polygon `0xfd82f6...42a589` | ⚠️ Unaudited |
| MigrateERC4626CFL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x936dac...106f71` | ⚠️ Unaudited |
| MultiRMCashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384391 | 2 deployments: polygon `0x0917c2...9d26c9`; polygon `0x28d3e2...dee14e` | ⚠️ Unaudited |
| MultiRMCashFlowLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe98aaa...623e85` | ⚠️ Unaudited |
| MultiStrategyERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0b351d...a7ec0e`; polygon `0x1ee585...aca418` | ⚠️ Unaudited |
| OutflowLimitedAMMSV | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-384368 | 2 deployments: ethereum `0x167107...16b823`; ethereum `0x55bae6...421fb6` | ⚠️ Unaudited |
| OutflowLimitedAMMSV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x14f6df...5dd6fb`; polygon `0x48ddc3...4897a4` | ⚠️ Unaudited |
| P2PSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0x934164...378377`; ethereum `0xa87ce1...6c1aba`; polygon `0x7801cf...872952` | ⚠️ Unaudited |
| PolicyPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384346 | `0x9165f1...b23463` | ⚠️ Unaudited |
| PolicyPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: ethereum `0xb13557...3c84a0`; polygon `0x076fb4...7f480b`; polygon `0x32d54f...146a78`; polygon `0x367a03...f3a9d4`; polygon `0x49b11d...b8e154`; polygon `0x9633be...c728b7`; polygon `0xb06afa...a76d8d`; polygon `0xd1ab94...4f1251`; polygon `0xd7f8c3...9c01db`; polygon `0xd95478...4f3ef8` | ⚠️ Unaudited |
| PolicyPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384403 | 2 deployments: polygon `0x649b1e...e813cc`; polygon `0xd74a28...ac2497` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384366 | 2 deployments: ethereum `0x09a1e8...04abd6`; ethereum `0x644da7...49c162` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384369 | 2 deployments: ethereum `0x0b2aed...53bbdc`; ethereum `0x1a4a62...012f43` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384367 | 2 deployments: ethereum `0x0c798a...d0a811`; ethereum `0x585b9b...4b5a85` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384372 | 2 deployments: ethereum `0x2153fe...d4f0a9`; ethereum `0x2dd9db...f55747` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384379 | 2 deployments: ethereum `0x33918b...589e1d`; ethereum `0x8ae72a...62a2f2` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: polygon `0x005eae...25e105`; polygon `0x0d40f5...5f5678`; polygon `0x2a85be...506e0b`; polygon `0x68c661...6d3aaa`; polygon `0x6da612...9af084`; polygon `0x9e7cfc...c2681c`; polygon `0xb44083...b324ae`; polygon `0xf5f320...db3616`; polygon `0xf6a429...c7723f`; polygon `0xfc61b4...c33344` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384388 | 2 deployments: polygon `0x056bf8...3fa4e5`; polygon `0x47f35b...6e7b31` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384390 | 2 deployments: polygon `0x06347e...73e6f4`; polygon `0x111775...da21a4` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0f24c3...3cf4ca`; polygon `0x1d71e3...386355` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x11b490...483442`; polygon `0x4dd7ae...2b4d21` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x21b8fc...c5da91`; polygon `0x6d3c1a...621283` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2f2b6a...235806`; polygon `0x452929...0c5fdc` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x33f7b7...ff0957`; polygon `0x6cb730...b3a5f7` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3b8d6c...9bea8d`; polygon `0x41b5a1...092460` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x41716b...025d1e`; polygon `0xd26d50...364eab` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384398 | 2 deployments: polygon `0x42118d...ad9358`; polygon `0x4626e5...5c09af` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x494fcb...45966d`; polygon `0x72b744...6a8dcf` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384411 | 2 deployments: polygon `0x4f43b8...394520`; polygon `0xb12420...7b2f0b` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x585d65...37cf90`; polygon `0xf7ef82...930651` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x74b347...728c75`; polygon `0xa490d8...584e4c` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x76d332...8f6926`; polygon `0xa4c5fc...7017dd` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384407 | 2 deployments: polygon `0x777829...6c521a`; polygon `0xc1a74e...2c6100` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384408 | 2 deployments: polygon `0x79f0a5...057677`; polygon `0x8908d9...bfabc1` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x95d029...f7e89c`; polygon `0xf5fcd1...7f517d` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x99aedc...ecb14a`; polygon `0xe43587...df91e9` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384417 | 2 deployments: polygon `0xa5a8c6...1d80a7`; polygon `0xdf6f5b...d57923` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xaf48bd...6a2567`; polygon `0xd7f0eb...77c4de` | ⚠️ Unaudited |
| PremiumsAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb1b963...3c516d`; polygon `0xf89229...c84f51` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384414 | 2 deployments: polygon `0xc22d26...139cb7`; polygon `0xccf5c4...ba9328` | ⚠️ Unaudited |
| QuadrataWhitelist | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384387 | 2 deployments: polygon `0x052251...0ad684`; polygon `0x0ce31c...57ae12` | ⚠️ Unaudited |
| QuadrataWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2b2a9e...264b30`; polygon `0x61e3cf...08bc6d` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384370 | 2 deployments: ethereum `0x09edb5...50611e`; ethereum `0x2343d9...9840b1` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384380 | 2 deployments: ethereum `0x243604...06107b`; ethereum `0x9c430c...11c425` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384371 | 2 deployments: ethereum `0x251e9f...0397f2`; ethereum `0x95ec92...452891` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384376 | 2 deployments: ethereum `0x69dcc9...adc033`; ethereum `0xb0ff48...f5a623` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384378 | 2 deployments: ethereum `0x84e0be...c020d5`; ethereum `0xd51002...c4f9bb` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0b9988...194e58`; polygon `0xfd43d3...8338c4` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x0cde6c...9f6bd9`; polygon `0x0e144b...5051e2`; polygon `0x36af72...b3fc06`; polygon `0x55ff47...e5074a`; polygon `0x96719a...305bc2`; polygon `0xb051dd...c7abd3`; polygon `0xe899f8...5603a8`; polygon `0xf4496e...06e3c9` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384412 | 2 deployments: polygon `0x34c560...a94b78`; polygon `0xbc8773...ff9c27` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x416fed...83853a`; polygon `0x7341a1...78a297` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x45e6c2...2b7bd3`; polygon `0x9d4225...31f46f` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x641e72...37d30c`; polygon `0xd1ed79...31947d` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384405 | 2 deployments: polygon `0x6cd383...b34798`; polygon `0xa2f279...11683c` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7a0ebb...5296e1`; polygon `0x94d9b5...0d718c` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x87c7b5...274f00`; polygon `0xf41e84...c77124` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384419 | 2 deployments: polygon `0xa65c9d...366df8`; polygon `0xef49d2...ffcbe8` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xdea3de...d33c8f`; polygon `0xef4c0a...b0b069` | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03562d...cfc40e` | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384396 | 2 deployments: polygon `0x32ca74...9ef142`; polygon `0x4d85a3...93121c` | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384416 | 2 deployments: polygon `0x37fe45...c162ca`; polygon `0xd66eae...d11f95` | ⚠️ Unaudited |
| StableSwapPayoutHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb920b7...940689`; polygon `0xe6b349...c909b7` | ⚠️ Unaudited |
| SwapLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x8b6411...a3cae3`; polygon `0x204ad7...f71aff`; polygon `0x8bb0f8...9f2175`; polygon `0x8dd211...322922` | ⚠️ Unaudited |
| SwapStableInvestStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x84bdaa...961dd8`; ethereum `0xd2bb05...124069`; polygon `0x219108...81891b`; polygon `0x3a8096...ecceb9`; polygon `0x56eced...621bb5`; polygon `0x829cb3...bf740a` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x219aa0...8fcaa4`; polygon `0x787b67...a9c4f4` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384393 | 2 deployments: polygon `0x303fe7...8c32fd`; polygon `0xdad2df...dd4df5` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b96b9...9032c0` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8355b7...35a091`; polygon `0xed1908...1c2ac6` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x371d67...0ac666`; polygon `0x76934c...623d2a`; polygon `0xc0d3ec...4e81a2` | ⚠️ Unaudited |
| TrustfulRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384400 (2 proxies) | 3 deployments: polygon `0x42842f...b31b28`; polygon `0x4e717f...082ed7`; polygon `0xdfc75a...e06e93` | ⚠️ Unaudited |
| USDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x823888...823bfe` | ⚠️ Unaudited |
| USDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a074c...091b9b` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x56bfa6...373ecf`; ethereum `0x8c106e...afa3d0` | ⚠️ Unaudited |
| WEToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e4704...249b67` | ⚠️ Unaudited |
| wUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x82b09f...791c04`; ethereum `0x960348...ac6df6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a7441...55afe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33eb64...456325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34460d...61749b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-384365 | `0x3a80c5...0f32cb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Quantstamp-Ensuro-Final-Report-2022-11-09.pdf](https://github.com/ensuro/ensuro/blob/main/audits/Quantstamp-Ensuro-Final-Report-2022-11-09.pdf) | Quantstamp | Audit | 2022-11 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 16 | high |
| [SlowMistAuditReport-Ensuro-2021-09-29.pdf](https://github.com/ensuro/ensuro/blob/main/audits/SlowMistAuditReport-Ensuro-2021-09-29.pdf) | SlowMist | Audit | 2021-09 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 8 | high |
| [DefiSafety.Process_Quality_Review.Ensuro.pdf](https://github.com/ensuro/ensuro/blob/main/audits/DefiSafety.Process_Quality_Review.Ensuro.pdf) | DefiSafety | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf](https://github.com/ensuro/ensuro/blob/main/audits/Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf) | Quantstamp | Audit | 2025-12 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 19 | high |
| [DefiSafety-93-badge.png](https://github.com/ensuro/ensuro/blob/main/audits/DefiSafety-93-badge.png) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13091] Quantstamp-Ensuro-Final-Report-2022-11-09.pdf — matched: Extracted from Quantstamp audit report for Ensuro. Scope includes all contracts listed in the file signatures and findings sections. Date from cover page: November 10th 2022.
- [13092] SlowMistAuditReport-Ensuro-2021-09-29.pdf — matched: Contracts extracted from visibility tables and code locations in the audit report. Audit date is the end date of the audit period (2021.09.03 - 2021.09.24).
- [13093] DefiSafety.Process_Quality_Review.Ensuro.pdf — no match: The document is a process quality review (PQR) for the Ensuro protocol, not a smart contract audit. It does not list specific contracts in scope. The date is extracted from the header: 'Date:18 Mar 2024'.
- [13094] Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf — matched: Scope section explicitly lists 'contracts/*' files included, excluding mocks. All contracts mentioned in findings and test suite are within scope.
- [13095] DefiSafety-93-badge.png — no match: The provided text is a GitHub page snippet showing a badge image file path, not an audit report. No contracts or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | AccessManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | EToken | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x176057...5341c2` — deployed 2026-03-31 19:18:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xa55128...8ad224` — deployed 2026-03-18 22:46:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb375f4...4249c7` — deployed 2026-03-31 19:20:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2cf13b...5a7387` — deployed 2026-03-31 19:15:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x12a4f3...9025e7` — deployed 2026-03-18 22:52:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xfa9888...980b34` — deployed 2026-03-31 19:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | LPManualWhitelist | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xca0d8d...28e545` — deployed 2026-03-19 18:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PolicyPool | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xd81a8b...9fa0a3` — deployed 2026-03-18 22:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PolicyPoolComponent | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PremiumsAccount | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x644da7...49c162` — deployed 2026-03-31 23:29:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x585b9b...4b5a85` — deployed 2026-03-31 23:36:59+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x33918b...589e1d` — deployed 2026-03-31 23:27:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x0b2aed...53bbdc` — deployed 2026-03-31 23:31:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2153fe...d4f0a9` — deployed 2026-03-18 22:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | RiskModule | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0xd51002...c4f9bb` — deployed 2026-04-01 22:43:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x243604...06107b` — deployed 2026-04-01 22:46:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x09edb5...50611e` — deployed 2026-04-01 22:48:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb0ff48...f5a623` — deployed 2026-04-01 22:45:11+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x95ec92...452891` — deployed 2026-03-19 18:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | TrustfulRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PriceRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | FlightDelayRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | Reserve | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | Policy | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | LiquidityThresholdAssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | ERC4626AssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | TimeScaled | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | AAVEv2AssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | AAVEv3AssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | SignedQuoteRiskModule | unmatched — not counted | — | mentioned in test results and findings | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | AaveAssetManager | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | BaseAssetManager | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyPoolComponent | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | EToken | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x176057...5341c2` — deployed 2026-03-31 19:18:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xa55128...8ad224` — deployed 2026-03-18 22:46:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb375f4...4249c7` — deployed 2026-03-31 19:20:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2cf13b...5a7387` — deployed 2026-03-31 19:15:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x12a4f3...9025e7` — deployed 2026-03-18 22:52:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xfa9888...980b34` — deployed 2026-03-31 19:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | LPManualWhitelist | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xca0d8d...28e545` — deployed 2026-03-19 18:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyNFT | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyPool | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xd81a8b...9fa0a3` — deployed 2026-03-18 22:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyPoolConfig | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | RiskModule | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0xd51002...c4f9bb` — deployed 2026-04-01 22:43:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x243604...06107b` — deployed 2026-04-01 22:46:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x09edb5...50611e` — deployed 2026-04-01 22:48:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb0ff48...f5a623` — deployed 2026-04-01 22:45:11+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x95ec92...452891` — deployed 2026-03-19 18:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | TrustfulRiskModule | unmatched — not counted | — | listed in scope and visibility table | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | PolicyPool | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xd81a8b...9fa0a3` — deployed 2026-03-18 22:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | EToken | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x176057...5341c2` — deployed 2026-03-31 19:18:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xa55128...8ad224` — deployed 2026-03-18 22:46:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb375f4...4249c7` — deployed 2026-03-31 19:20:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2cf13b...5a7387` — deployed 2026-03-31 19:15:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x12a4f3...9025e7` — deployed 2026-03-18 22:52:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xfa9888...980b34` — deployed 2026-03-31 19:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | PremiumsAccount | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x644da7...49c162` — deployed 2026-03-31 23:29:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x585b9b...4b5a85` — deployed 2026-03-31 23:36:59+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x33918b...589e1d` — deployed 2026-03-31 23:27:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x0b2aed...53bbdc` — deployed 2026-03-31 23:31:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2153fe...d4f0a9` — deployed 2026-03-18 22:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | RiskModule | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0xd51002...c4f9bb` — deployed 2026-04-01 22:43:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x243604...06107b` — deployed 2026-04-01 22:46:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x09edb5...50611e` — deployed 2026-04-01 22:48:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb0ff48...f5a623` — deployed 2026-04-01 22:45:11+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x95ec92...452891` — deployed 2026-03-19 18:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | Reserve | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | Cooler | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | FullSignedUW | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | FullTrustedUW | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | LPManualWhitelist | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xca0d8d...28e545` — deployed 2026-03-19 18:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | Policy | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | ETKLib | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | PolicyPoolComponent | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IEToken | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | ICooler | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | ILPWhitelist | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPolicyHolder | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPolicyPool | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPolicyPoolComponent | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPremiumsAccount | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IUnderwriter | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5fe11f...ae33e6` | CashFlowLender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12a4f3...9025e7` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x176057...5341c2` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2cf13b...5a7387` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54012f...12577b` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6192b4...7e4302` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6bf86a...0f7895` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09a1e8...04abd6` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b2aed...53bbdc` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c798a...d0a811` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2153fe...d4f0a9` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x33918b...589e1d` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09edb5...50611e` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x243604...06107b` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x251e9f...0397f2` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x69dcc9...adc033` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84e0be...c020d5` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 148 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (6 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 8 ambiguous, 35 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2
- Match method counts: unique_name=6

Zero-match audit list:

- [13093] DefiSafety.Process_Quality_Review.Ensuro.pdf
- [13095] DefiSafety-93-badge.png

Fork inheritance lineage and inherited audits are included when available.
