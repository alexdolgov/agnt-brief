# Agentic Audit Brief: Snowball

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Snowball (`snowball`)
- Website: [https://snowball.network](https://snowball.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 388 unique implementations (388 raw deployments)
- Coverage basis: 0/17 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $203,496.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Snowball. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across avalanche. Structural roles: 15 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (15), supporting (2)
- Contract kinds: contract (17)
- Detected standards: ownable (3), erc165 (2), erc721 (2), erc20 (1)
- Frameworks: openzeppelin (14)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 36 contracts are derived from known codebases. 36 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x05faf0...ec3703`, chain 43114)
- UnnamedContract (`0x10a2b0...1e7313`, chain 43114)
- UnnamedContract (`0x35f268...db8fe3`, chain 43114)
- UnnamedContract (`0x3d88b8...92d59b`, chain 43114)
- UnnamedContract (`0x5edd9b...eb3899`, chain 43114)
- UnnamedContract (`0x6a8186...bebe93`, chain 43114)
- UnnamedContract (`0x7b097a...dac724`, chain 43114)
- UnnamedContract (`0x83952e...d6d64e`, chain 43114)
- UnnamedContract (`0xad86ef...2c7839`, chain 43114)
- UnnamedContract (`0xae88be...0e2638`, chain 43114)
- UnnamedContract (`0xb954ae...881c00`, chain 43114)
- UnnamedContract (`0xbff614...ff6119`, chain 43114)
- UnnamedContract (`0xceb829...7a6a3f`, chain 43114)
- UnnamedContract (`0xd65e00...b94e83`, chain 43114)
- UnnamedContract (`0xd66df6...a1c1c9`, chain 43114)
- UnnamedContract (`0xd928ab...9c9cb3`, chain 43114)
- UnnamedContract (`0xf2fa11...d01d8f`, chain 43114)
- UnnamedContract (`0xf7b8d9...d6cb85`, chain 43114)
- UnnamedContract (`0xfdccf6...93f8c0`, chain 43114)
- AaveControllerV4 (`0x425a86...591c6f`, chain 43114)
- AxialControllerV4 (`0xc7d536...00d095`, chain 43114)
- BenqiControllerV4 (`0x252b5f...6f4b59`, chain 43114)
- ControllerV4 (`0xacc69d...d6e046`, chain 43114)
- GaugeProxyV2 (`0x215d5e...15bf27`, chain 43114)
- GnosisSafeProxy (`0xcb4207...0c223b`, chain 43114)
- KyberControllerV4 (`0xee9797...aa6c1b`, chain 43114)
- MultiSigWallet (`0x294ab3...71e38a`, chain 43114)
- MultiSigWalletWithDailyLimit (`0x028933...2f11f5`, chain 43114)
- OptimizerControllerV4 (`0x2f0b4e...514744`, chain 43114)
- PlatypusControllerV4 (`0x14559f...468202`, chain 43114)
- SherpaNFTClimb (`0x89a3e2...36a46b`, chain 43114)
- Snowball (`0xc38f41...542e50`, chain 43114)
- SnowballNFTHolidayHat (`0x9ff191...5161af`, chain 43114)
- SnowglobeZapAvaxPangolin (`0x967506...751375`, chain 43114)
- SnowglobeZapAvaxTraderJoe (`0x2da240...2b5884`, chain 43114)
- VectorControllerV4 (`0x5a068c...74aa06`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 36/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/17 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 36 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 352 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 36 of 388 unique; 352 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/369
- Verified + Unaudited implementations: 369
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 388
- Raw deployments: 388
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (369)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392644 | `0x425a86...591c6f` | ⚠️ Unaudited |
| AccruingStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f563f...94c4b2` | ⚠️ Unaudited |
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x025354...32d4cd` | ⚠️ Unaudited |
| AxialControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392662 | `0xc7d536...00d095` | ⚠️ Unaudited |
| AxialToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf8419...ba3351` | ⚠️ Unaudited |
| BankerJoeControllerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ff4a3...07c437` | ⚠️ Unaudited |
| BenqiControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392637 | `0x252b5f...6f4b59` | ⚠️ Unaudited |
| ControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392656 | `0xacc69d...d6e046` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3754b7...35bc76` | ⚠️ Unaudited |
| Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe517ba...1b1c0d` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d09a8...d510c6` | ⚠️ Unaudited |
| GaugeProxyV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392636 | `0x215d5e...15bf27` | ⚠️ Unaudited |
| GaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0081d2...f7530e` | ⚠️ Unaudited |
| GenArtCollection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46c7d3...0365cc` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-392676 | `0xcb4207...0c223b` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x048713...0eb26b` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96c996...5eafab` | ⚠️ Unaudited |
| IceQueen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb12531...f9d375` | ⚠️ Unaudited |
| KyberControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392670 | `0xee9797...aa6c1b` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x217f8d...e70c80` | ⚠️ Unaudited |
| MasterChefAxialV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fae9b...f2c0f6` | ⚠️ Unaudited |
| MasterChefAxialV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x958c0d...5493d3` | ⚠️ Unaudited |
| MetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26694e...469d72` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba5f10...1a6162` | ⚠️ Unaudited |
| MultiSigWallet | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392638 | `0x294ab3...71e38a` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392631 | `0x028933...2f11f5` | ⚠️ Unaudited |
| OptimizerControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392640 | `0x2f0b4e...514744` | ⚠️ Unaudited |
| PangolinBridgeMigrationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b23aa...f7483c` | ⚠️ Unaudited |
| PlatypusControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392635 | `0x14559f...468202` | ⚠️ Unaudited |
| SherpaNFTClimb | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392652 | `0x89a3e2...36a46b` | ⚠️ Unaudited |
| Snowball | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392661 | `0xc38f41...542e50` | ⚠️ Unaudited |
| SnowballNFTBirthday | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3555ca...9671f7` | ⚠️ Unaudited |
| SnowballNFTClaimedHolidayHat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16437e...8732e4` | ⚠️ Unaudited |
| SnowballNFTHolidayHat | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392654 | `0x9ff191...5161af` | ⚠️ Unaudited |
| SnowGlobe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09d5f6...4595fc` | ⚠️ Unaudited |
| SnowGlobeAaveUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9a447...0ff916` | ⚠️ Unaudited |
| SnowGlobeAaveUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf72297...33cf6b` | ⚠️ Unaudited |
| SnowGlobeAaveWavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x951f6c...09d3b8` | ⚠️ Unaudited |
| SnowGlobeAaveWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb707a...cd7b96` | ⚠️ Unaudited |
| SnowGlobeAxialAC4D | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce589a...a2dff9` | ⚠️ Unaudited |
| SnowGlobeAxialAM3D | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35c219...30b53d` | ⚠️ Unaudited |
| SnowGlobeAxialAS4D | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb164ca...61d40f` | ⚠️ Unaudited |
| SnowGlobeAxialAvaxAxial | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9ebe7...6038a0` | ⚠️ Unaudited |
| SnowglobeBankerJoeDaie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d2bab...a0e19c` | ⚠️ Unaudited |
| SnowGlobeBenqiDaie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c33d6...f33917` | ⚠️ Unaudited |
| SnowGlobeBenqiEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37d4b7...ca37f3` | ⚠️ Unaudited |
| SnowGlobeBenqiEthE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xebecc1...028f76` | ⚠️ Unaudited |
| SnowGlobeBenqiLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32d9d1...fe9eb7` | ⚠️ Unaudited |
| SnowGlobeBenqiLinkE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecce05...b33353` | ⚠️ Unaudited |
| SnowGlobeBenqiQi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x124f59...2f4c87` | ⚠️ Unaudited |
| SnowGlobeBenqiUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x527aa1...2633ca` | ⚠️ Unaudited |
| SnowGlobeBenqiUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1022ba...441981` | ⚠️ Unaudited |
| SnowGlobeBenqiUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f8050...bfa0e2` | ⚠️ Unaudited |
| SnowGlobeBenqiUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c7887...16bb0c` | ⚠️ Unaudited |
| SnowGlobeBenqiWavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b7432...32dc06` | ⚠️ Unaudited |
| SnowGlobeBenqiWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8fa104...9d8b44` | ⚠️ Unaudited |
| SnowGlobeBenqiWbtcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26cbea...c6b5dd` | ⚠️ Unaudited |
| SnowGlobeEcdAvaxEcd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e3884...a1dac5` | ⚠️ Unaudited |
| SnowGlobeEcdDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0ff02...1bfa59` | ⚠️ Unaudited |
| SnowGlobeEcdecdPTP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2a295...c32ed1` | ⚠️ Unaudited |
| SnowGlobeEcdPtpEcdPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x231d3d...c44106` | ⚠️ Unaudited |
| SnowGlobeEcdUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90aca2...a9cd8f` | ⚠️ Unaudited |
| SnowGlobeEcdUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f6bbf...9950fe` | ⚠️ Unaudited |
| SnowGlobeJoeAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d587f...99e9a2` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxAmpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12fc6a...c6afeb` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a4dae...8262eb` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxApex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c57cd...ebe131` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxCrabx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x702999...846630` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxCraft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18b608...ac97a2` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxDeg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63f9df...381b6a` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxDfiat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c502e...8e887b` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxDomi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13a531...fc0078` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxEcd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5136a6...9feba9` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxEthE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e97a1...50e373` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxFief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f1ba4...c5155f` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxFly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb5fbe...3f62cb` | ⚠️ Unaudited |
| SnowGlobeJoeAVAXFRAXMini | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a9d06...5c5313` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x494348...ba9e60` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxgOhm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd12661...53cdf0` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxGro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82a4f9...96c7db` | ⚠️ Unaudited |
| SnowGlobeJoeAVAXHCTMini | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe720fc...43edcf` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxHon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9dd25e...267eb4` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxIce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x291964...5ea0f1` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20dcde...aedfe1` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxKlo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6e843...b27769` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxLost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91667c...2fbd20` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxMai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b227c...a8b8d3` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x293be2...2b1db7` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxMoney | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a4f87...f213a7` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxMore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c0a2c...ee832d` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxOh | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6aed4...b04032` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxRoco | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed69ba...ee6515` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxSnob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0377c3...aed04b` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxTractor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfb27f...e5c97c` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxTus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdeebf8...580baa` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d91f4...b43be4` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10c13f...529ae8` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x089a27...aca1e5` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3430ae...26966d` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxVtx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x217c51...c26a99` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxWbtcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb21ed8...47d655` | ⚠️ Unaudited |
| SnowGlobeJoeDaieUsdce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c9155...90ee93` | ⚠️ Unaudited |
| SnowGlobeJoeEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49e6a1...7cb092` | ⚠️ Unaudited |
| SnowGlobeJoeLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6b56...6b150e` | ⚠️ Unaudited |
| SnowGlobeJoeMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3aaf99...2444d8` | ⚠️ Unaudited |
| SnowGlobeJoeSjoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f5048...08f43b` | ⚠️ Unaudited |
| SnowGlobeJoeUsdceLinke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc28f8a...6ae3d5` | ⚠️ Unaudited |
| SnowGlobeJoeUsdcEUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ec40b...61add5` | ⚠️ Unaudited |
| SnowGlobeJoeUsdcJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a8384...a5ba95` | ⚠️ Unaudited |
| SnowGlobeJoeWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c9fae...4dd0a6` | ⚠️ Unaudited |
| SnowGlobeJoeWbtcUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafb27f...a94219` | ⚠️ Unaudited |
| SnowGlobeJoeXJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a52e6...10ee3c` | ⚠️ Unaudited |
| SnowGlobeKyAvaxKnc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52ba98...e6a05a` | ⚠️ Unaudited |
| SnowGlobeKySavaxAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb94486...000ccc` | ⚠️ Unaudited |
| SnowGlobeKySavaxKnc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a46dd...f5770d` | ⚠️ Unaudited |
| SnowGlobeOptimizeDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8665e1...2e7eeb` | ⚠️ Unaudited |
| SnowGlobeOptimizeWavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a3a05...5722a8` | ⚠️ Unaudited |
| SnowGlobePngAvaxAaveE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x342476...b34106` | ⚠️ Unaudited |
| SnowGlobePngAvaxAcre | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8cc91b...f2d0c0` | ⚠️ Unaudited |
| SnowGlobePngAvaxAvme | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x492e7f...9362f2` | ⚠️ Unaudited |
| SnowGlobePngAvaxAvxt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44f8c6...a291c8` | ⚠️ Unaudited |
| SnowGlobePngAvaxBava | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3edf51...76f240` | ⚠️ Unaudited |
| SnowGlobePngAvaxBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa80f9...59cffe` | ⚠️ Unaudited |
| SnowGlobePngAvaxCycle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42c3fa...9c0ab2` | ⚠️ Unaudited |
| SnowGlobePngAvaxDcau | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54c898...8afb30` | ⚠️ Unaudited |
| SnowGlobePngAvaxDep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31412d...ba192d` | ⚠️ Unaudited |
| SnowGlobePngAvaxFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa68d54...bba703` | ⚠️ Unaudited |
| SnowGlobePngAvaxFire | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3018ee...39291b` | ⚠️ Unaudited |
| SnowGlobePngAvaxFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0686a...210d57` | ⚠️ Unaudited |
| SnowGlobePngAvaxGb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3c68a...fb2d73` | ⚠️ Unaudited |
| SnowGlobePngAvaxIme | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x678c00...bb6926` | ⚠️ Unaudited |
| SnowGlobePngAVAXINSURMini | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x433de3...dcdd8c` | ⚠️ Unaudited |
| SnowGlobePngAVAXJOEMini | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98c64d...0a94ad` | ⚠️ Unaudited |
| SnowGlobePngAvaxLoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ce263...87a052` | ⚠️ Unaudited |
| SnowGlobePngAvaxLost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf19e16...9476a6` | ⚠️ Unaudited |
| SnowGlobePngAvaxLuna | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cc6f4...4fc628` | ⚠️ Unaudited |
| SnowGlobePngAvaxMoney | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ca13f...b77efc` | ⚠️ Unaudited |
| SnowGlobePngAvaxMyak | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc88477...05e698` | ⚠️ Unaudited |
| SnowGlobePngAvaxOddz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x467252...d77f19` | ⚠️ Unaudited |
| SnowGlobePngAVAXOOEMini | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe128e...dbce50` | ⚠️ Unaudited |
| SnowGlobePngAvaxPng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x621207...a63815` | ⚠️ Unaudited |
| SnowGlobePngAvaxSavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51d914...112a65` | ⚠️ Unaudited |
| SnowGlobePngAvaxShibx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e9f0b...e57456` | ⚠️ Unaudited |
| SnowGlobePngAvaxSnob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x026402...33b295` | ⚠️ Unaudited |
| SnowGlobePngAvaxTryb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb1010...a889ce` | ⚠️ Unaudited |
| SnowGlobePngAvaxTus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x445182...fe0178` | ⚠️ Unaudited |
| SnowGlobePngAvaxUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5fbe7...6dadc6` | ⚠️ Unaudited |
| SnowGlobePngAvaxUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b1a41...8c1656` | ⚠️ Unaudited |
| SnowGlobePngAvaxVee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8aa85...06e685` | ⚠️ Unaudited |
| SnowGlobePngAvaxXUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52a27e...e85514` | ⚠️ Unaudited |
| SnowGlobePngAVAXYAYMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7601d...4c393f` | ⚠️ Unaudited |
| SnowGlobePngAvaxYdr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2fb9d9...5f646b` | ⚠️ Unaudited |
| SnowGlobePngAvaxZee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x476b77...7a3d35` | ⚠️ Unaudited |
| SnowGlobePngUsdcEUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44b4c3...9ef06f` | ⚠️ Unaudited |
| SnowGlobePngUsdcUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0676cd...3376df` | ⚠️ Unaudited |
| SnowGlobePngUsdcUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96e94a...ba845d` | ⚠️ Unaudited |
| SnowGlobePngUstDlaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e50be...2b0ad6` | ⚠️ Unaudited |
| SnowGlobePngUstWPng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfaaf43...f20885` | ⚠️ Unaudited |
| SnowGlobeTeddyxTeddy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55f87b...484d8c` | ⚠️ Unaudited |
| SnowGlobeVtxDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f4326...6ec3c9` | ⚠️ Unaudited |
| SnowGlobeVtxUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12cc89...3c20e2` | ⚠️ Unaudited |
| SnowGlobeVtxUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xace7ed...af43b8` | ⚠️ Unaudited |
| SnowGlobeVtxUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a85f5...f4afe0` | ⚠️ Unaudited |
| SnowGlobeVtxVtx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06e847...f2c474` | ⚠️ Unaudited |
| SnowGlobeVtxxPtpPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffa188...065e31` | ⚠️ Unaudited |
| SnowglobeZapAvaxPangolin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392653 | `0x967506...751375` | ⚠️ Unaudited |
| SnowglobeZapAvaxTraderJoe | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392639 | `0x2da240...2b5884` | ⚠️ Unaudited |
| Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53c3d8...9f91f4` | ⚠️ Unaudited |
| StrategyAaveUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x260cf3...7f15c1` | ⚠️ Unaudited |
| StrategyAaveUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f5237...1a5838` | ⚠️ Unaudited |
| StrategyAxialAA3DLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x351af4...ab87c2` | ⚠️ Unaudited |
| StrategyAxialAC4D | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01c4ff...a25597` | ⚠️ Unaudited |
| StrategyAxialAC4DLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92794b...5eae5d` | ⚠️ Unaudited |
| StrategyAxialAM3DLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4c6b3...d21685` | ⚠️ Unaudited |
| StrategyAxialAS4DLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3e9fe...18266a` | ⚠️ Unaudited |
| StrategyAxialAvaxAxialLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ab2ea...5bfdee` | ⚠️ Unaudited |
| StrategyBenqiDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33a026...442990` | ⚠️ Unaudited |
| StrategyBenqiDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ab9ab...4b93da` | ⚠️ Unaudited |
| StrategyBenqiEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46a6ac...ba968e` | ⚠️ Unaudited |
| StrategyBenqiEthE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160a77...85c86f` | ⚠️ Unaudited |
| StrategyBenqiLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd86dd...c323fe` | ⚠️ Unaudited |
| StrategyBenqiLinkE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38675d...5f5878` | ⚠️ Unaudited |
| StrategyBenqiQi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21997a...163a9b` | ⚠️ Unaudited |
| StrategyBenqiUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87a542...f6a332` | ⚠️ Unaudited |
| StrategyBenqiUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f254a...07088a` | ⚠️ Unaudited |
| StrategyBenqiUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd09173...d5e1b4` | ⚠️ Unaudited |
| StrategyBenqiUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d864b...9638e9` | ⚠️ Unaudited |
| StrategyBenqiWavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2098e8...362a33` | ⚠️ Unaudited |
| StrategyBenqiWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3dd8c4...e49ed6` | ⚠️ Unaudited |
| StrategyBenqiWbtcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35c340...d528b1` | ⚠️ Unaudited |
| StrategyEcdAvaxEcd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6897da...9e94fa` | ⚠️ Unaudited |
| StrategyEcdDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac28a5...c76d4c` | ⚠️ Unaudited |
| StrategyEcdecdPTP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8224c...87240b` | ⚠️ Unaudited |
| StrategyEcdPtpEcdPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x974a70...721675` | ⚠️ Unaudited |
| StrategyEcdUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63387d...07d63e` | ⚠️ Unaudited |
| StrategyEcdUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ff96b...3d2d0b` | ⚠️ Unaudited |
| StrategyJoeAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ae989...a82c8d` | ⚠️ Unaudited |
| StrategyJoeAvaxAmplLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc95ca1...76fe6d` | ⚠️ Unaudited |
| StrategyJoeAvaxApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f23a9...2d06c2` | ⚠️ Unaudited |
| StrategyJoeAvaxBnbLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63e46c...b1649c` | ⚠️ Unaudited |
| StrategyJoeAvaxCly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8e3c2...aed0cb` | ⚠️ Unaudited |
| StrategyJoeAvaxCook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64d597...ab19fb` | ⚠️ Unaudited |
| StrategyJoeAvaxCraftLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x923023...3ff66f` | ⚠️ Unaudited |
| StrategyJoeAvaxCraxLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf5ca9...04036d` | ⚠️ Unaudited |
| StrategyJoeAvaxDeg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65558d...80999b` | ⚠️ Unaudited |
| StrategyJoeAvaxDfiat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fa536...07ba34` | ⚠️ Unaudited |
| StrategyJoeAvaxDomi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x340056...7651ee` | ⚠️ Unaudited |
| StrategyJoeAvaxEcd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e02c1...c116e3` | ⚠️ Unaudited |
| StrategyJoeAvaxEgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe19069...90dd83` | ⚠️ Unaudited |
| StrategyJoeAvaxEthE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54e0ea...36c0d7` | ⚠️ Unaudited |
| StrategyJoeAvaxEthELp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f69c5...f1e41f` | ⚠️ Unaudited |
| StrategyJoeAvaxFief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ca781...0cbf12` | ⚠️ Unaudited |
| StrategyJoeAvaxFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x821700...1c4269` | ⚠️ Unaudited |
| StrategyJoeAvaxGbLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65124e...c50f62` | ⚠️ Unaudited |
| StrategyJoeAvaxGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc231e5...bd3c1c` | ⚠️ Unaudited |
| StrategyJoeAvaxgOhmLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c946f...1884c3` | ⚠️ Unaudited |
| StrategyJoeAvaxGroLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e0f5d...fc8f75` | ⚠️ Unaudited |
| StrategyJoeAvaxH2O | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7849ec...3fc277` | ⚠️ Unaudited |
| StrategyJoeAvaxHon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b4938...c28a40` | ⚠️ Unaudited |
| StrategyJoeAvaxIceLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74c8f0...78c8d3` | ⚠️ Unaudited |
| StrategyJoeAvaxIme | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d38ed...04ff7d` | ⚠️ Unaudited |
| StrategyJoeAvaxIsa | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e2530...3d52d9` | ⚠️ Unaudited |
| StrategyJoeAvaxJgn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x037464...b959e3` | ⚠️ Unaudited |
| StrategyJoeAvaxJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51918e...6083f1` | ⚠️ Unaudited |
| StrategyJoeAvaxJoeLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22b79f...e488de` | ⚠️ Unaudited |
| StrategyJoeAvaxKloLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ac78a...fb7c55` | ⚠️ Unaudited |
| StrategyJoeAvaxLost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc66af7...e20719` | ⚠️ Unaudited |
| StrategyJoeAvaxMaiLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x848f8b...a50d46` | ⚠️ Unaudited |
| StrategyJoeAvaxMeltLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f3823...0e483d` | ⚠️ Unaudited |
| StrategyJoeAvaxMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e34ad...169663` | ⚠️ Unaudited |
| StrategyJoeAvaxMimLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafca35...98b2b8` | ⚠️ Unaudited |
| StrategyJoeAvaxMoney | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae3994...bd5c97` | ⚠️ Unaudited |
| StrategyJoeAvaxMore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfeb478...90357c` | ⚠️ Unaudited |
| StrategyJoeAvaxPefiLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a211a...a828a7` | ⚠️ Unaudited |
| StrategyJoeAvaxPln | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaad354...2abd08` | ⚠️ Unaudited |
| StrategyJoeAvaxPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d93db...3adb1d` | ⚠️ Unaudited |
| StrategyJoeAvaxQiLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98019f...261f27` | ⚠️ Unaudited |
| StrategyJoeAvaxRelayLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90d6f3...c752d8` | ⚠️ Unaudited |
| StrategyJoeAvaxRocoLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3892a9...677864` | ⚠️ Unaudited |
| StrategyJoeAvaxSavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37ffc9...86347c` | ⚠️ Unaudited |
| StrategyJoeAvaxSnobLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d9bc6...026fca` | ⚠️ Unaudited |
| StrategyJoeAvaxSpellLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4a9a9...1635c6` | ⚠️ Unaudited |
| StrategyJoeAvaxTus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40ed81...aafde5` | ⚠️ Unaudited |
| StrategyJoeAvaxUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e61da...8097bb` | ⚠️ Unaudited |
| StrategyJoeAvaxUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66cde3...89a995` | ⚠️ Unaudited |
| StrategyJoeAvaxUsdcELp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x753949...966bb2` | ⚠️ Unaudited |
| StrategyJoeAvaxUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8ea39...5a05fc` | ⚠️ Unaudited |
| StrategyJoeAvaxUsdtELp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92dad9...ddac5f` | ⚠️ Unaudited |
| StrategyJoeAvaxUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb63cd...32801f` | ⚠️ Unaudited |
| StrategyJoeAvaxUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb26154...f76bc0` | ⚠️ Unaudited |
| StrategyJoeAvaxVtx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2669c9...f4e099` | ⚠️ Unaudited |
| StrategyJoeAvaxWbtcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a7579...1471a4` | ⚠️ Unaudited |
| StrategyJoeAvaxWbtcELp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5eed5f...166919` | ⚠️ Unaudited |
| StrategyJoeAvaxXavaLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f623a...fe34da` | ⚠️ Unaudited |
| StrategyJoeAvaxYakLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd19f9...a54658` | ⚠️ Unaudited |
| StrategyJoeDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b0d66...a9272f` | ⚠️ Unaudited |
| StrategyJoeEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46a8c7...af0eef` | ⚠️ Unaudited |
| StrategyJoeLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x997fbb...2172f9` | ⚠️ Unaudited |
| StrategyJoeMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f4191...a5a564` | ⚠️ Unaudited |
| StrategyJoeSjoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6c51b...07d805` | ⚠️ Unaudited |
| StrategyJoeUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbaca67...329186` | ⚠️ Unaudited |
| StrategyJoeUsdceEtheLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9204e...01ad29` | ⚠️ Unaudited |
| StrategyJoeUsdceJoeLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x351d69...2cee22` | ⚠️ Unaudited |
| StrategyJoeUsdcEUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59fe2e...8cd8e9` | ⚠️ Unaudited |
| StrategyJoeUsdcEUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb80b5a...5a8e17` | ⚠️ Unaudited |
| StrategyJoeUsdceWbtceLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51ed80...5cea3e` | ⚠️ Unaudited |
| StrategyJoeUsdcJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa10248...7f7b34` | ⚠️ Unaudited |
| StrategyJoeUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f8eea...11c8c2` | ⚠️ Unaudited |
| StrategyJoeUsdteJoeLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08c897...ee5148` | ⚠️ Unaudited |
| StrategyJoeWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x794792...245ea3` | ⚠️ Unaudited |
| StrategyJoeXJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4078b1...3bfbca` | ⚠️ Unaudited |
| StrategyKyAvaxKnc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d8001...934e3b` | ⚠️ Unaudited |
| StrategyKyAvaxWethE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37c000...db6ab3` | ⚠️ Unaudited |
| StrategyKySavaxAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0148a4...bd7bbc` | ⚠️ Unaudited |
| StrategyKySavaxKnc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x150a0e...d208c6` | ⚠️ Unaudited |
| StrategyPlatypusDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50c4bb...242133` | ⚠️ Unaudited |
| StrategyPlatypusMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf94020...bc4d31` | ⚠️ Unaudited |
| StrategyPlatypusUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76f722...27c38a` | ⚠️ Unaudited |
| StrategyPlatypusUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40ade0...e3fe09` | ⚠️ Unaudited |
| StrategyPngAvaxAcre | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44110d...521762` | ⚠️ Unaudited |
| StrategyPngAvaxAgEUR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x696aa6...e4f946` | ⚠️ Unaudited |
| StrategyPngAvaxAmpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc5fc3...1a8eec` | ⚠️ Unaudited |
| StrategyPngAvaxAvmeLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2295e2...2327c4` | ⚠️ Unaudited |
| StrategyPngAvaxAvxt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10df5e...408511` | ⚠️ Unaudited |
| StrategyPngAvaxBava | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb6dd4...c1a6c5` | ⚠️ Unaudited |
| StrategyPngAvaxBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x394b88...49c369` | ⚠️ Unaudited |
| StrategyPngAvaxBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08434e...6d2cdb` | ⚠️ Unaudited |
| StrategyPngAvaxCly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc4c18...8586ba` | ⚠️ Unaudited |
| StrategyPngAvaxCra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x824915...d5aded` | ⚠️ Unaudited |
| StrategyPngAvaxCraft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c9f1a...0910a9` | ⚠️ Unaudited |
| StrategyPngAvaxDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x972ce5...ee247a` | ⚠️ Unaudited |
| StrategyPngAvaxDcau | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a6153...df9543` | ⚠️ Unaudited |
| StrategyPngAvaxDep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x575fcc...6cfbdd` | ⚠️ Unaudited |
| StrategyPngAvaxDyp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68faf4...c0b659` | ⚠️ Unaudited |
| StrategyPngAvaxFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b3fb9...661e2b` | ⚠️ Unaudited |
| StrategyPngAvaxFire | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5c8df...465b20` | ⚠️ Unaudited |
| StrategyPngAvaxFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ba0fa...73578f` | ⚠️ Unaudited |
| StrategyPngAvaxgOhm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08f49b...a73ef9` | ⚠️ Unaudited |
| StrategyPngAVAXHCTMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x451202...4870c2` | ⚠️ Unaudited |
| StrategyPngAvaxHtz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13cbdb...dd07b8` | ⚠️ Unaudited |
| StrategyPngAvaxIme | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfaca0f...bd364e` | ⚠️ Unaudited |
| StrategyPngAvaxInsur | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49fe0b...899e5f` | ⚠️ Unaudited |
| StrategyPngAvaxJewel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8df22f...7d6f07` | ⚠️ Unaudited |
| StrategyPngAvaxJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb897e1...92160f` | ⚠️ Unaudited |
| StrategyPngAvaxKlo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x043ae0...3ebcad` | ⚠️ Unaudited |
| StrategyPngAvaxLinkE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfbba29...109005` | ⚠️ Unaudited |
| StrategyPngAvaxLoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2272c...e0f273` | ⚠️ Unaudited |
| StrategyPngAvaxLost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x073ad5...5424ce` | ⚠️ Unaudited |
| StrategyPngAvaxLuna | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x024cc2...155c66` | ⚠️ Unaudited |
| StrategyPngAvaxMage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b2bfb...dfd64e` | ⚠️ Unaudited |
| StrategyPngAvaxMaxi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6caae9...bae8ec` | ⚠️ Unaudited |
| StrategyPngAvaxMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23abc5...ab8b03` | ⚠️ Unaudited |
| StrategyPngAvaxMoney | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc819b6...dd1290` | ⚠️ Unaudited |
| StrategyPngAvaxOddz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc59748...be7083` | ⚠️ Unaudited |
| StrategyPngAvaxOrca | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59a07b...4be1bc` | ⚠️ Unaudited |
| StrategyPngAvaxPefi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabda97...f2e45f` | ⚠️ Unaudited |
| StrategyPngAvaxPln | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4c083...8245ef` | ⚠️ Unaudited |
| StrategyPngAvaxPng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8d665...de12c4` | ⚠️ Unaudited |
| StrategyPngAvaxPngMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc9163...e7a283` | ⚠️ Unaudited |
| StrategyPngAvaxQi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e2a70...51de1b` | ⚠️ Unaudited |
| StrategyPngAvaxRoco | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x765fbb...bced3e` | ⚠️ Unaudited |
| StrategyPngAvaxSavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5e785...0e1447` | ⚠️ Unaudited |
| StrategyPngAvaxShibxLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b7880...527dda` | ⚠️ Unaudited |
| StrategyPngAVAXSNOBMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0bcf9d...0d3b24` | ⚠️ Unaudited |
| StrategyPngAvaxSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93147a...7f1f9d` | ⚠️ Unaudited |
| StrategyPngAvaxTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2eb7b6...5514d5` | ⚠️ Unaudited |
| StrategyPngAvaxTus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x776e12...16d592` | ⚠️ Unaudited |
| StrategyPngAvaxUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88569a...3e8060` | ⚠️ Unaudited |
| StrategyPngAvaxUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x721e99...72cc05` | ⚠️ Unaudited |
| StrategyPngAvaxUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x142f27...853ce1` | ⚠️ Unaudited |
| StrategyPngAvaxUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x711894...dbd34b` | ⚠️ Unaudited |
| StrategyPngAvaxWbtcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec6504...60b560` | ⚠️ Unaudited |
| StrategyPngAvaxWethE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe1ba5e...e44643` | ⚠️ Unaudited |
| StrategyPngAvaxWow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x519145...d584b1` | ⚠️ Unaudited |
| StrategyPngAVAXXAVAMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40a3cc...a4c924` | ⚠️ Unaudited |
| StrategyPngAvaxYak | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6020e...aa25da` | ⚠️ Unaudited |
| StrategyPngAvaxYay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5304d...49cac6` | ⚠️ Unaudited |
| StrategyPngAVAXYAYMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a622f...22b97f` | ⚠️ Unaudited |
| StrategyPngAvaxYdr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c7359...66f829` | ⚠️ Unaudited |
| StrategyPngAvaxZee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0f8e0...01500f` | ⚠️ Unaudited |
| StrategyPngPefiPngLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e1e3d...594b3a` | ⚠️ Unaudited |
| StrategyPngSherpaPngLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x765900...3e1066` | ⚠️ Unaudited |
| StrategyPngSporePngLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e35cb...102cee` | ⚠️ Unaudited |
| StrategyPngStakePng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e431a...c4ce10` | ⚠️ Unaudited |
| StrategyPngUsdcEDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda8a1b...cd15d7` | ⚠️ Unaudited |
| StrategyPngUsdcEMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x335e0f...579630` | ⚠️ Unaudited |
| StrategyPngUsdcEPng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x072507...31dc37` | ⚠️ Unaudited |
| StrategyPngUsdcEUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b1442...5cd240` | ⚠️ Unaudited |
| StrategyPngUsdcUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb068cb...c77da3` | ⚠️ Unaudited |
| StrategyPngUsdcUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e8d14...3ba7e9` | ⚠️ Unaudited |
| StrategyPngUstDlaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x394d7c...1655d6` | ⚠️ Unaudited |
| StrategyPngUstWPng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6f159...d5e289` | ⚠️ Unaudited |
| StrategyPngXPngLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x472174...373084` | ⚠️ Unaudited |
| StrategyTeddyxTeddy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x058484...df85d2` | ⚠️ Unaudited |
| StrategyVtxDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9078e4...f8ee81` | ⚠️ Unaudited |
| StrategyVtxPtpxPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39e2e9...8d1965` | ⚠️ Unaudited |
| StrategyVtxUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b673c...01dc30` | ⚠️ Unaudited |
| StrategyVtxUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23380f...9d3b09` | ⚠️ Unaudited |
| StrategyVtxUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ced4b...85bbc0` | ⚠️ Unaudited |
| StrategyVtxVtx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacd26b...e2bd32` | ⚠️ Unaudited |
| StrategyVtxxPtpPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6605a1...5ab783` | ⚠️ Unaudited |
| SwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc37e5...77636d` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05c5db...43732a` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadbb5e...6b8ba6` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd24c1...2d79a2` | ⚠️ Unaudited |
| VectorControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392645 | `0x5a068c...74aa06` | ⚠️ Unaudited |
| VestingStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed7f93...2820d8` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x084cfe...a3c9f7` | ⚠️ Unaudited |
| WithdrawStuck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb44459...fc5429` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392632 | `0x05faf0...ec3703` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392633 | `0x10a2b0...1e7313` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392641 | `0x35f268...db8fe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392643 | `0x3d88b8...92d59b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392647 | `0x5edd9b...eb3899` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392648 | `0x6a8186...bebe93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392650 | `0x7b097a...dac724` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392651 | `0x83952e...d6d64e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392657 | `0xad86ef...2c7839` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392658 | `0xae88be...0e2638` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392659 | `0xb954ae...881c00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392660 | `0xbff614...ff6119` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392664 | `0xceb829...7a6a3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392665 | `0xd65e00...b94e83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392666 | `0xd66df6...a1c1c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392667 | `0xd928ab...9c9cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392671 | `0xf2fa11...d01d8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392673 | `0xf7b8d9...d6cb85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392675 | `0xfdccf6...93f8c0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xc7d536...00d095` | AxialControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x252b5f...6f4b59` | BenqiControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xacc69d...d6e046` | ControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x215d5e...15bf27` | GaugeProxyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xee9797...aa6c1b` | KyberControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x294ab3...71e38a` | MultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x028933...2f11f5` | MultiSigWalletWithDailyLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2f0b4e...514744` | OptimizerControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x14559f...468202` | PlatypusControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x89a3e2...36a46b` | SherpaNFTClimb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc38f41...542e50` | Snowball | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9ff191...5161af` | SnowballNFTHolidayHat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x967506...751375` | SnowglobeZapAvaxPangolin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2da240...2b5884` | SnowglobeZapAvaxTraderJoe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5a068c...74aa06` | VectorControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 366 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
