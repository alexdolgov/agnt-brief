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

- UnnamedContract (`0x05faf04e3416e40af70eca1deefe2e8b6fec3703`, chain 43114)
- UnnamedContract (`0x10a2b0cc29d36f2816cdc3f3db17a4f0f91e7313`, chain 43114)
- UnnamedContract (`0x35f268dac74f94785135aa134dedef7e67db8fe3`, chain 43114)
- UnnamedContract (`0x3d88b8022142ea2693ba43ba349f89256392d59b`, chain 43114)
- UnnamedContract (`0x5edd9bc699b6a613875e6760b4978d14d6eb3899`, chain 43114)
- UnnamedContract (`0x6a81866c94efc097e75abcbcddd3e8b63ebebe93`, chain 43114)
- UnnamedContract (`0x7b097a18738ca9fd524384dab74c57cb12dac724`, chain 43114)
- UnnamedContract (`0x83952e7ab4aca74ca96217d6f8f7591bead6d64e`, chain 43114)
- UnnamedContract (`0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839`, chain 43114)
- UnnamedContract (`0xae88be7d3fe6545c688b640b427af4bab90e2638`, chain 43114)
- UnnamedContract (`0xb954ae9a4374751cb3d578cfa3db96e0e5881c00`, chain 43114)
- UnnamedContract (`0xbff6149b2a1eeb145b84e897d2af5afa3bff6119`, chain 43114)
- UnnamedContract (`0xceb829a0881350689dae8cbd77d0e012cf7a6a3f`, chain 43114)
- UnnamedContract (`0xd65e006644d417af6a9385182c21733762b94e83`, chain 43114)
- UnnamedContract (`0xd66df640a2f213b6e5087204caee2b2145a1c1c9`, chain 43114)
- UnnamedContract (`0xd928ab4b54f7fd0498160ee52ac0c92bbb9c9cb3`, chain 43114)
- UnnamedContract (`0xf2fa11fc9247c23b3b622c41992d8555f6d01d8f`, chain 43114)
- UnnamedContract (`0xf7b8d9f8a82a7a6dd448398afc5c77744bd6cb85`, chain 43114)
- UnnamedContract (`0xfdccf6d49a29f435e509dffaafdecb0add93f8c0`, chain 43114)
- AaveControllerV4 (`0x425a863762bbf24a986d8eae2a367cb514591c6f`, chain 43114)
- AxialControllerV4 (`0xc7d536a04ecc43269b6b95ac1ce0a06e0000d095`, chain 43114)
- BenqiControllerV4 (`0x252b5fd3b1cb07a2109bf36d5bde6a247c6f4b59`, chain 43114)
- ControllerV4 (`0xacc69deef119ab5bbf14e6aaf0536eafb3d6e046`, chain 43114)
- GaugeProxyV2 (`0x215d5edeb6a6a3f84ae9d72962feaccdf815bf27`, chain 43114)
- GnosisSafeProxy (`0xcb42072b73fbd80a4c8005336c2ea78f770c223b`, chain 43114)
- KyberControllerV4 (`0xee9797f49e729dddca58f357febe5ba1ffaa6c1b`, chain 43114)
- MultiSigWallet (`0x294ab3200ef36200db84c4128b7f1b4eec71e38a`, chain 43114)
- MultiSigWalletWithDailyLimit (`0x028933a66dd0ccc239a3d5c2243b2d96672f11f5`, chain 43114)
- OptimizerControllerV4 (`0x2f0b4e7ac032d0708c082994fb21dd75db514744`, chain 43114)
- PlatypusControllerV4 (`0x14559fb4d15cf8dcbc35b7edd1215d56c0468202`, chain 43114)
- SherpaNFTClimb (`0x89a3e2b87ea5fca3a68ead5643f040a0f636a46b`, chain 43114)
- Snowball (`0xc38f41a296a4493ff429f1238e030924a1542e50`, chain 43114)
- SnowballNFTHolidayHat (`0x9ff1918d212c435ad1f1734e9c4dc2db835161af`, chain 43114)
- SnowglobeZapAvaxPangolin (`0x9675064a9b93dc4156366a4e5f1400185d751375`, chain 43114)
- SnowglobeZapAvaxTraderJoe (`0x2da2409cdf11c607375ac9a43c18fab2152b5884`, chain 43114)
- VectorControllerV4 (`0x5a068c00e32d18a354755cddb01ac65ca074aa06`, chain 43114)

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
| AaveControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392644 | `0x425a863762bbf24a986d8eae2a367cb514591c6f` | ⚠️ Unaudited |
| AccruingStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f563f7efc6dc55adfc1b64bc6bd4bc5f394c4b2` | ⚠️ Unaudited |
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x025354c6d1434793a69b6538dc746ff3e432d4cd` | ⚠️ Unaudited |
| AxialControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392662 | `0xc7d536a04ecc43269b6b95ac1ce0a06e0000d095` | ⚠️ Unaudited |
| AxialToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf8419a615c57511807236751c0af38db4ba3351` | ⚠️ Unaudited |
| BankerJoeControllerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ff4a38113aa12663b49c151c9ce283aa507c437` | ⚠️ Unaudited |
| BenqiControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392637 | `0x252b5fd3b1cb07a2109bf36d5bde6a247c6f4b59` | ⚠️ Unaudited |
| ControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392656 | `0xacc69deef119ab5bbf14e6aaf0536eafb3d6e046` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3754b79e122b8e42f4286dace29b31cd2835bc76` | ⚠️ Unaudited |
| Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe517bab69a1a63a01c492d49e1d466385b1b1c0d` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d09a80369071e6ac91634e0bf889ee54dd510c6` | ⚠️ Unaudited |
| GaugeProxyV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392636 | `0x215d5edeb6a6a3f84ae9d72962feaccdf815bf27` | ⚠️ Unaudited |
| GaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0081d28d1138fbb9007d2aa1f65b1b9f72f7530e` | ⚠️ Unaudited |
| GenArtCollection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46c7d3ad69d82360047bdc4204891483610365cc` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-392676 | `0xcb42072b73fbd80a4c8005336c2ea78f770c223b` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0487137732d33529a22bef3119be3dc9610eb26b` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96c996f3f31fc1500882c086272e653f3d5eafab` | ⚠️ Unaudited |
| IceQueen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb12531a2d758c7a8bf09f44fc88e646e1bf9d375` | ⚠️ Unaudited |
| KyberControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392670 | `0xee9797f49e729dddca58f357febe5ba1ffaa6c1b` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x217f8d198f1c2172bb2b40eb09dba60493e70c80` | ⚠️ Unaudited |
| MasterChefAxialV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fae9b2637dbeb6cc570784ba886145fa5f2c0f6` | ⚠️ Unaudited |
| MasterChefAxialV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x958c0d0baa8f220846d3966742d4fb5edc5493d3` | ⚠️ Unaudited |
| MetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26694e4047ea77cc96341f0ac491773ac5469d72` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba5f105a3e3d7c0eaa36aaa1e3be11d77f1a6162` | ⚠️ Unaudited |
| MultiSigWallet | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392638 | `0x294ab3200ef36200db84c4128b7f1b4eec71e38a` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392631 | `0x028933a66dd0ccc239a3d5c2243b2d96672f11f5` | ⚠️ Unaudited |
| OptimizerControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392640 | `0x2f0b4e7ac032d0708c082994fb21dd75db514744` | ⚠️ Unaudited |
| PangolinBridgeMigrationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b23aa72a1214d0e4fd3f2c8da7c6ba660f7483c` | ⚠️ Unaudited |
| PlatypusControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392635 | `0x14559fb4d15cf8dcbc35b7edd1215d56c0468202` | ⚠️ Unaudited |
| SherpaNFTClimb | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392652 | `0x89a3e2b87ea5fca3a68ead5643f040a0f636a46b` | ⚠️ Unaudited |
| Snowball | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392661 | `0xc38f41a296a4493ff429f1238e030924a1542e50` | ⚠️ Unaudited |
| SnowballNFTBirthday | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3555cab4b6628beea81d20cb8a832a16b69671f7` | ⚠️ Unaudited |
| SnowballNFTClaimedHolidayHat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16437ed3d48315865173b85a81972f42b08732e4` | ⚠️ Unaudited |
| SnowballNFTHolidayHat | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392654 | `0x9ff1918d212c435ad1f1734e9c4dc2db835161af` | ⚠️ Unaudited |
| SnowGlobe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09d5f6dc51485985ef248d9ea796b349134595fc` | ⚠️ Unaudited |
| SnowGlobeAaveUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9a447dca4882d6a75cdb905ec5251fcf10ff916` | ⚠️ Unaudited |
| SnowGlobeAaveUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf72297a7f441ad65e5ea12bcd0faba91f533cf6b` | ⚠️ Unaudited |
| SnowGlobeAaveWavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x951f6c751a9bc5a75a4e4d43be205aada709d3b8` | ⚠️ Unaudited |
| SnowGlobeAaveWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb707aa965aeb9cb03d21dfadf496e6581cd7b96` | ⚠️ Unaudited |
| SnowGlobeAxialAC4D | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce589add607a2e541eea8eefb3544e3b0ba2dff9` | ⚠️ Unaudited |
| SnowGlobeAxialAM3D | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35c21956ca9876f98059c12f81e31425bb30b53d` | ⚠️ Unaudited |
| SnowGlobeAxialAS4D | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb164ca68a881cb7cabae22fcd2ac02008561d40f` | ⚠️ Unaudited |
| SnowGlobeAxialAvaxAxial | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9ebe7b640f65077c16803ff1275d790796038a0` | ⚠️ Unaudited |
| SnowglobeBankerJoeDaie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d2babac2708770bb6d27831bf38a4ac84a0e19c` | ⚠️ Unaudited |
| SnowGlobeBenqiDaie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c33d6076f0dce93db6e6103e98ad951a0f33917` | ⚠️ Unaudited |
| SnowGlobeBenqiEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37d4b7b04ccfc14d3d660edca1637417f5ca37f3` | ⚠️ Unaudited |
| SnowGlobeBenqiEthE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xebecc1f55963f52649b71bceca663d2a03028f76` | ⚠️ Unaudited |
| SnowGlobeBenqiLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32d9d114a2f5ac4ce777463e661bfa28c8fe9eb7` | ⚠️ Unaudited |
| SnowGlobeBenqiLinkE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecce05f99cc3d9252eb22699c4fa4b0268b33353` | ⚠️ Unaudited |
| SnowGlobeBenqiQi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x124f5991e1ead696d3082139154db787e52f4c87` | ⚠️ Unaudited |
| SnowGlobeBenqiUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x527aa1d955c75edb206b698cb74cbf08682633ca` | ⚠️ Unaudited |
| SnowGlobeBenqiUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1022bad88471d7e7d59893a86e4e2fc49f441981` | ⚠️ Unaudited |
| SnowGlobeBenqiUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f8050ecb2f95ed7ddd6eae3ee223c71c2bfa0e2` | ⚠️ Unaudited |
| SnowGlobeBenqiUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c7887f2c555ba214582d7935ed60d004816bb0c` | ⚠️ Unaudited |
| SnowGlobeBenqiWavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b74324f523831687fc8fce946f15a3aa632dc06` | ⚠️ Unaudited |
| SnowGlobeBenqiWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8fa104f65bdfddeca211867b77e83949fc9d8b44` | ⚠️ Unaudited |
| SnowGlobeBenqiWbtcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26cbea666139daade08a5e6e8bc3bb7245c6b5dd` | ⚠️ Unaudited |
| SnowGlobeEcdAvaxEcd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e38849fd0df9e5a69a22d68e218f07a79a1dac5` | ⚠️ Unaudited |
| SnowGlobeEcdDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0ff02ab1fa36858f7af62ddf2bddd48c01bfa59` | ⚠️ Unaudited |
| SnowGlobeEcdecdPTP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2a295ab7a1a677db98233f4bef9af0141c32ed1` | ⚠️ Unaudited |
| SnowGlobeEcdPtpEcdPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x231d3db9d74b4b155d00514edda7af5b19c44106` | ⚠️ Unaudited |
| SnowGlobeEcdUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90aca2958ab913d0b2568800fc7fd43ed5a9cd8f` | ⚠️ Unaudited |
| SnowGlobeEcdUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f6bbfa40e1589cd2ea32ef203023e5d009950fe` | ⚠️ Unaudited |
| SnowGlobeJoeAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d587f520590bb80153356271d33828bf499e9a2` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxAmpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12fc6ab54fbfa9b582c3ed9e39b05cf933c6afeb` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a4daeceb0b205507b901cba6e669e32a38262eb` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxApex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c57cdc3fe879411df390aac56ae853ae0ebe131` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxCrabx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x702999be42a3f5b47c7b983bf445b1607b846630` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxCraft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18b608c54440b3a952a8ba6948a2a971a1ac97a2` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxDeg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63f9df540085bb5e0f9375197af9904330381b6a` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxDfiat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c502ef4149dafbf40bcb651e4d275dee68e887b` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxDomi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13a531d4ef7eba06985751569af8b1ec3bfc0078` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxEcd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5136a6af8b8470e270570d9d54204c93229feba9` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxEthE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e97a1535888ee1d75114f2767dc81ade550e373` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxFief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f1ba471a9945cd97f519225b578223d75c5155f` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxFly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb5fbe1eee42adc9c85e009593e4a586373f62cb` | ⚠️ Unaudited |
| SnowGlobeJoeAVAXFRAXMini | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a9d06976073715461d66d595523a06c7b5c5313` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4943489a97ac7228effb3d6b06c6a106a1ba9e60` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxgOhm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd12661461b09c5f440191d90fca907769453cdf0` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxGro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82a4f9e0f3612227dc86d293244467935a96c7db` | ⚠️ Unaudited |
| SnowGlobeJoeAVAXHCTMini | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe720fca4cff42f03ec01a12f23592b731a43edcf` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxHon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9dd25e3221523ba1789cde59bba904dc05267eb4` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxIce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2919641d1069a9af9675b977f96d8ccc725ea0f1` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20dcdeb63a5cde3eab46e4e6d395c44cb6aedfe1` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxKlo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6e8432ef7d85ae1202dc537106d3696ebb27769` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxLost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91667ca26c0d81b2134ee210aced5a93d22fbd20` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxMai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b227c2d55f5fdd084a86b8ef0c8bf1eaba8b8d3` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x293be2b418ff47d2f4be1b0831cae08cf12b1db7` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxMoney | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a4f87ec5291175403ca0b290bcb00c37df213a7` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxMore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c0a2cd047d2da517dc51b189edfbdc150ee832d` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxOh | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6aed4920517ebd338acba2fcb15c4fef2b04032` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxRoco | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed69ba2c371aad5e34ad42e57ad0a427f5ee6515` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxSnob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0377c3e6072bea5cb34a19adce67394373aed04b` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxTractor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfb27f6f03312d0828045fac1a8d6f0bf6e5c97c` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxTus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdeebf872edc520560296693f87a35a14ed580baa` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d91f4ace55472df8863957cf69d2be497b43be4` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10c13f1b951029595b8ff817f11a76a7e2529ae8` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x089a2792f373901c4969b2acd2fcb6115eaca1e5` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3430aef4c648e1838f7d702179b372765226966d` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxVtx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x217c51e85205ae8278c08583c9f2c89f85c26a99` | ⚠️ Unaudited |
| SnowGlobeJoeAvaxWbtcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb21ed8459aa9c1068f985d99b7100bd4ec47d655` | ⚠️ Unaudited |
| SnowGlobeJoeDaieUsdce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c915564607d62b007d203c04473152bc090ee93` | ⚠️ Unaudited |
| SnowGlobeJoeEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49e6a1255defe0b194a67199e78ad5aa5d7cb092` | ⚠️ Unaudited |
| SnowGlobeJoeLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6b562100663b4179c95e5b199576f2e16b150e` | ⚠️ Unaudited |
| SnowGlobeJoeMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3aaf997fdda51ebb0918e3e59021f5fde52444d8` | ⚠️ Unaudited |
| SnowGlobeJoeSjoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f504817200d690bb508125022857fe08808f43b` | ⚠️ Unaudited |
| SnowGlobeJoeUsdceLinke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc28f8a82018c0b92c903fc2d3013381b7e6ae3d5` | ⚠️ Unaudited |
| SnowGlobeJoeUsdcEUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ec40b3c0f1c861f40c02e992ccb17dcb761add5` | ⚠️ Unaudited |
| SnowGlobeJoeUsdcJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a838403f3fab35867b29cf3f9f8afa89ba5ba95` | ⚠️ Unaudited |
| SnowGlobeJoeWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c9faebd41c68b801d628902edad43d88e4dd0a6` | ⚠️ Unaudited |
| SnowGlobeJoeWbtcUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafb27fb1c5bd91a80d18a321d6dc09add6a94219` | ⚠️ Unaudited |
| SnowGlobeJoeXJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a52e6b23700a63ea4a0db313ebd386fb510ee3c` | ⚠️ Unaudited |
| SnowGlobeKyAvaxKnc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52ba98d39ea11effb517aca9c72167f44fe6a05a` | ⚠️ Unaudited |
| SnowGlobeKySavaxAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9448655770333362f339f3042bf9eb19a000ccc` | ⚠️ Unaudited |
| SnowGlobeKySavaxKnc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a46dd9d73f380fc1e816ffc435876e6d1f5770d` | ⚠️ Unaudited |
| SnowGlobeOptimizeDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8665e1fad19d14b16eecb96a7608cd42962e7eeb` | ⚠️ Unaudited |
| SnowGlobeOptimizeWavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a3a0570f66cd5dfacb3c72b5214fec88e5722a8` | ⚠️ Unaudited |
| SnowGlobePngAvaxAaveE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x342476c1f9436277acbc088788d0de53b8b34106` | ⚠️ Unaudited |
| SnowGlobePngAvaxAcre | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8cc91ba89a32ac17b0959c6264ef8e86e6f2d0c0` | ⚠️ Unaudited |
| SnowGlobePngAvaxAvme | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x492e7fcbd4e69d2a0f7f83aa2ca0397de49362f2` | ⚠️ Unaudited |
| SnowGlobePngAvaxAvxt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44f8c64856ea948d502dbee084d3d6293fa291c8` | ⚠️ Unaudited |
| SnowGlobePngAvaxBava | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3edf51fccb9c578386de2f964b5c9a6e6e76f240` | ⚠️ Unaudited |
| SnowGlobePngAvaxBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa80f9cc2121c690c8de19990a0d3242cb59cffe` | ⚠️ Unaudited |
| SnowGlobePngAvaxCycle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42c3fa6514ac55f0f2ca4e910d897282829c0ab2` | ⚠️ Unaudited |
| SnowGlobePngAvaxDcau | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54c89888fc1809baf15413b5ffa99acb0b8afb30` | ⚠️ Unaudited |
| SnowGlobePngAvaxDep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31412df24798a8c635be55c5c100a24da9ba192d` | ⚠️ Unaudited |
| SnowGlobePngAvaxFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa68d5438b7aa4e31ceef616469dfbe26bebba703` | ⚠️ Unaudited |
| SnowGlobePngAvaxFire | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3018eeb374a1a48338836bd3e693a554e739291b` | ⚠️ Unaudited |
| SnowGlobePngAvaxFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0686ac7d0cffd00a29567d37774058452210d57` | ⚠️ Unaudited |
| SnowGlobePngAvaxGb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3c68a28361fa6ba292528fe192cd59296fb2d73` | ⚠️ Unaudited |
| SnowGlobePngAvaxIme | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x678c00250f9ba6f86857d72b1f31f42984bb6926` | ⚠️ Unaudited |
| SnowGlobePngAVAXINSURMini | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x433de3528fe278a6b16072dd5389df8af3dcdd8c` | ⚠️ Unaudited |
| SnowGlobePngAVAXJOEMini | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98c64de8118ef067fe8e3756d77ff134270a94ad` | ⚠️ Unaudited |
| SnowGlobePngAvaxLoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ce2631a9e7075c86f750746aeb385f51287a052` | ⚠️ Unaudited |
| SnowGlobePngAvaxLost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf19e161736746ddbe8baed66b87beada8b9476a6` | ⚠️ Unaudited |
| SnowGlobePngAvaxLuna | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cc6f418cf646e11d783a97415195865014fc628` | ⚠️ Unaudited |
| SnowGlobePngAvaxMoney | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ca13f6cfd20ef14e140e7e8d69d04bc60b77efc` | ⚠️ Unaudited |
| SnowGlobePngAvaxMyak | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc88477dd929837b0e6aeafeb9dd2dd238505e698` | ⚠️ Unaudited |
| SnowGlobePngAvaxOddz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4672520158f7c20e2ccfcdce756910c062d77f19` | ⚠️ Unaudited |
| SnowGlobePngAVAXOOEMini | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe128e46e6c450662d4dcf361e740e787cdbce50` | ⚠️ Unaudited |
| SnowGlobePngAvaxPng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x621207093d2e65bf3ac55dd8bf0351b980a63815` | ⚠️ Unaudited |
| SnowGlobePngAvaxSavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51d914129e4eaf1bfa34e0194ce36f9c46112a65` | ⚠️ Unaudited |
| SnowGlobePngAvaxShibx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e9f0b7fa23e9197ca41afb0e15c3175ede57456` | ⚠️ Unaudited |
| SnowGlobePngAvaxSnob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x026402b96a3ebdeae03b70e4c197d70a8f33b295` | ⚠️ Unaudited |
| SnowGlobePngAvaxTryb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb1010b9cf8484fca2650525d477dd002fa889ce` | ⚠️ Unaudited |
| SnowGlobePngAvaxTus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x445182e6fcb4c41fc5eac224929a0514f9fe0178` | ⚠️ Unaudited |
| SnowGlobePngAvaxUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5fbe71bf4989e2ab72df6c78f69f87be46dadc6` | ⚠️ Unaudited |
| SnowGlobePngAvaxUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b1a41c327a29961c57833bade1c05a9c78c1656` | ⚠️ Unaudited |
| SnowGlobePngAvaxVee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8aa857291b6622a212d4c32eecccfbd6d06e685` | ⚠️ Unaudited |
| SnowGlobePngAvaxXUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52a27ebab7266dac986b66e39f39e73c86e85514` | ⚠️ Unaudited |
| SnowGlobePngAVAXYAYMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7601d15ce8d207ef01f2e45c6e24fc5a34c393f` | ⚠️ Unaudited |
| SnowGlobePngAvaxYdr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2fb9d91530b032079a142d7b3c4c6770c85f646b` | ⚠️ Unaudited |
| SnowGlobePngAvaxZee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x476b7729e57da8a3f48d37c4a36626201f7a3d35` | ⚠️ Unaudited |
| SnowGlobePngUsdcEUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44b4c308421df7b8dfb28a01274788e9279ef06f` | ⚠️ Unaudited |
| SnowGlobePngUsdcUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0676cd100d229b60b0f89f990380af75883376df` | ⚠️ Unaudited |
| SnowGlobePngUsdcUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96e94ae06c49dce4a401afdfaa20f19c3dba845d` | ⚠️ Unaudited |
| SnowGlobePngUstDlaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e50be947a629a7be56b143a1271651b832b0ad6` | ⚠️ Unaudited |
| SnowGlobePngUstWPng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfaaf43102a439f37a0ea016ec3de23176df20885` | ⚠️ Unaudited |
| SnowGlobeTeddyxTeddy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55f87bf4faa8adab2cc76fc7aae92a3dce484d8c` | ⚠️ Unaudited |
| SnowGlobeVtxDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f43263e79cac36ff9963fc860d70083da6ec3c9` | ⚠️ Unaudited |
| SnowGlobeVtxUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12cc8944db2cec67d5a6ed0b33146712c43c20e2` | ⚠️ Unaudited |
| SnowGlobeVtxUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xace7ed26750156008275cb29d7b950c8bcaf43b8` | ⚠️ Unaudited |
| SnowGlobeVtxUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a85f533717965e7eab88b7425c3172350f4afe0` | ⚠️ Unaudited |
| SnowGlobeVtxVtx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06e847a2bf7b2a63ebbd59594d553aebe2f2c474` | ⚠️ Unaudited |
| SnowGlobeVtxxPtpPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffa18894152f4b1869c9dfefb28459468f065e31` | ⚠️ Unaudited |
| SnowglobeZapAvaxPangolin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392653 | `0x9675064a9b93dc4156366a4e5f1400185d751375` | ⚠️ Unaudited |
| SnowglobeZapAvaxTraderJoe | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392639 | `0x2da2409cdf11c607375ac9a43c18fab2152b5884` | ⚠️ Unaudited |
| Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53c3d85106e966e81a43cc80657414e88d9f91f4` | ⚠️ Unaudited |
| StrategyAaveUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x260cf34cf2b6a2ffb9859b1b114dfe25fb7f15c1` | ⚠️ Unaudited |
| StrategyAaveUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f523714930697fb7c08ebaec456d214dd1a5838` | ⚠️ Unaudited |
| StrategyAxialAA3DLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x351af4fdd0bdb0cf6ad31119fec3465977ab87c2` | ⚠️ Unaudited |
| StrategyAxialAC4D | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01c4ff0cbf9507626f2c4821faf35b1942a25597` | ⚠️ Unaudited |
| StrategyAxialAC4DLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92794b4789173dc06304238b1c4a2572a95eae5d` | ⚠️ Unaudited |
| StrategyAxialAM3DLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4c6b32567d79b69bb100251d8e3ec767ad21685` | ⚠️ Unaudited |
| StrategyAxialAS4DLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3e9fe6760145c1f43347bb540d77a4a4518266a` | ⚠️ Unaudited |
| StrategyAxialAvaxAxialLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ab2ea5c4172928d988cfe3e1969c864e15bfdee` | ⚠️ Unaudited |
| StrategyBenqiDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33a026982e8def8d21fc19c68d7a864971442990` | ⚠️ Unaudited |
| StrategyBenqiDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ab9ab0260736cebbf1fda8e0e31650cf14b93da` | ⚠️ Unaudited |
| StrategyBenqiEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46a6acd149f7bea5c469580fee851dd9f5ba968e` | ⚠️ Unaudited |
| StrategyBenqiEthE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160a7780287d778956985f22873e7adcb985c86f` | ⚠️ Unaudited |
| StrategyBenqiLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd86dddf32923763f26a0eb051c35b6442c323fe` | ⚠️ Unaudited |
| StrategyBenqiLinkE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38675dff61b42e535f934cca6c984347705f5878` | ⚠️ Unaudited |
| StrategyBenqiQi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21997ab6ee3f5b382067171705c1f4cc75163a9b` | ⚠️ Unaudited |
| StrategyBenqiUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87a54204755a06f7e52066c388142397bbf6a332` | ⚠️ Unaudited |
| StrategyBenqiUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f254ae4abf97d9501a8ebc8ef989dee1007088a` | ⚠️ Unaudited |
| StrategyBenqiUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0917321d44c2a413453fc37b0b87fa982d5e1b4` | ⚠️ Unaudited |
| StrategyBenqiUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d864b12051adb1e0d65362d852d6f92a59638e9` | ⚠️ Unaudited |
| StrategyBenqiWavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2098e8ce5e24bb6f4984f9667abd7adc3d362a33` | ⚠️ Unaudited |
| StrategyBenqiWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3dd8c4bb2e3fc4dc42e5d2765093ae9325e49ed6` | ⚠️ Unaudited |
| StrategyBenqiWbtcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35c340bffb89e00734e13b245ea2b80570d528b1` | ⚠️ Unaudited |
| StrategyEcdAvaxEcd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6897da4cd9043f25d061154d287d78dfcf9e94fa` | ⚠️ Unaudited |
| StrategyEcdDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac28a5910a47c7e40e037bd06b4eb5f813c76d4c` | ⚠️ Unaudited |
| StrategyEcdecdPTP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8224ce22473c129e7c9fd177096c9ca4e87240b` | ⚠️ Unaudited |
| StrategyEcdPtpEcdPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x974a70ff0926a43fb12a08c0883fe91b0e721675` | ⚠️ Unaudited |
| StrategyEcdUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63387de71f03276f26ba8e21c786df815c07d63e` | ⚠️ Unaudited |
| StrategyEcdUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ff96b1e175ec10f355de6f5968413fafb3d2d0b` | ⚠️ Unaudited |
| StrategyJoeAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ae9893a51008b4815958a1b2341bdc406a82c8d` | ⚠️ Unaudited |
| StrategyJoeAvaxAmplLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc95ca1b7c329a0208e6fa8c071ff62176876fe6d` | ⚠️ Unaudited |
| StrategyJoeAvaxApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f23a92e0e05317b0c468f196456d08b582d06c2` | ⚠️ Unaudited |
| StrategyJoeAvaxBnbLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63e46c6dac4b15ef74ec8ddc4e80721a32b1649c` | ⚠️ Unaudited |
| StrategyJoeAvaxCly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8e3c23f483933d6b7b9dcb89a7d2c605faed0cb` | ⚠️ Unaudited |
| StrategyJoeAvaxCook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64d597123fca932f4494396de898088a06ab19fb` | ⚠️ Unaudited |
| StrategyJoeAvaxCraftLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x923023b9ca78a1da7a5135b3e6b9750adc3ff66f` | ⚠️ Unaudited |
| StrategyJoeAvaxCraxLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf5ca9ac98e292bd1d96a3c750f652367104036d` | ⚠️ Unaudited |
| StrategyJoeAvaxDeg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65558daf77c4496f0fabd2e1d89cda654080999b` | ⚠️ Unaudited |
| StrategyJoeAvaxDfiat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fa536e8756016472e2db072679ce617ab07ba34` | ⚠️ Unaudited |
| StrategyJoeAvaxDomi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x340056c7162270574d1e624a53793756867651ee` | ⚠️ Unaudited |
| StrategyJoeAvaxEcd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e02c1f006b1db56405582c0b52a08ec7bc116e3` | ⚠️ Unaudited |
| StrategyJoeAvaxEgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe190692bf6c3da53b207a5f1893b05859190dd83` | ⚠️ Unaudited |
| StrategyJoeAvaxEthE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54e0ea713e9d96bb390c89ebde33d1c90f36c0d7` | ⚠️ Unaudited |
| StrategyJoeAvaxEthELp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f69c5819c42659af865d28c0e6ea5dcf3f1e41f` | ⚠️ Unaudited |
| StrategyJoeAvaxFief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ca781d0f79fd161ace98772f03063d1ad0cbf12` | ⚠️ Unaudited |
| StrategyJoeAvaxFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82170090ac185ad22e4dceac78030d67fe1c4269` | ⚠️ Unaudited |
| StrategyJoeAvaxGbLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65124e9ae0b09872ca343fba5bb17814b9c50f62` | ⚠️ Unaudited |
| StrategyJoeAvaxGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc231e58f0dcf1d67e0f98b4bf5e27d67c5bd3c1c` | ⚠️ Unaudited |
| StrategyJoeAvaxgOhmLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c946f6d5d7567486d506559f1706001871884c3` | ⚠️ Unaudited |
| StrategyJoeAvaxGroLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e0f5de3d2a4d458345ecdf2fb3b1dc286fc8f75` | ⚠️ Unaudited |
| StrategyJoeAvaxH2O | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7849ec4b73f08370e4686eb0f54c53d0b13fc277` | ⚠️ Unaudited |
| StrategyJoeAvaxHon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b49386a9b8193e98be5870df75aafc11bc28a40` | ⚠️ Unaudited |
| StrategyJoeAvaxIceLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74c8f08485a7e9236829553b9f14ed8eb878c8d3` | ⚠️ Unaudited |
| StrategyJoeAvaxIme | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d38ed04f489f973d2eb497965f084531504ff7d` | ⚠️ Unaudited |
| StrategyJoeAvaxIsa | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e2530efe38eb9f8c7954c9c2686556ec43d52d9` | ⚠️ Unaudited |
| StrategyJoeAvaxJgn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x037464013af5c59f2301884924af159e0bb959e3` | ⚠️ Unaudited |
| StrategyJoeAvaxJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51918e67a3160b3a94826fe141fab7ad116083f1` | ⚠️ Unaudited |
| StrategyJoeAvaxJoeLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22b79f4859daee9e1c1ca83862f4161585e488de` | ⚠️ Unaudited |
| StrategyJoeAvaxKloLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ac78a7cc3c92befaae9b59d4385a10403fb7c55` | ⚠️ Unaudited |
| StrategyJoeAvaxLost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc66af7148559cc59dc98c9a64ad159e730e20719` | ⚠️ Unaudited |
| StrategyJoeAvaxMaiLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x848f8b5e78cb509e1ce49179cc9ad1d278a50d46` | ⚠️ Unaudited |
| StrategyJoeAvaxMeltLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f38233653606e6a12255e15103caae92d0e483d` | ⚠️ Unaudited |
| StrategyJoeAvaxMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e34ad6a2610353b5a4322c0003000e5a2169663` | ⚠️ Unaudited |
| StrategyJoeAvaxMimLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafca35ae5dd4d8fc900ad7b08d7f3e96e498b2b8` | ⚠️ Unaudited |
| StrategyJoeAvaxMoney | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae399489e56a03b1882a3be498a52741aebd5c97` | ⚠️ Unaudited |
| StrategyJoeAvaxMore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfeb47879704e8d2938f09c21b17b5b059790357c` | ⚠️ Unaudited |
| StrategyJoeAvaxPefiLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a211a969aad6dcc5e49952bfcc6769e6ea828a7` | ⚠️ Unaudited |
| StrategyJoeAvaxPln | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaad354a34c11df4781f0c9982721e59f712abd08` | ⚠️ Unaudited |
| StrategyJoeAvaxPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d93db60b1f6783773dcf3d56ab56e9ace3adb1d` | ⚠️ Unaudited |
| StrategyJoeAvaxQiLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98019f3faa175329b1016bd58bf03cc387261f27` | ⚠️ Unaudited |
| StrategyJoeAvaxRelayLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90d6f39e931e519738702149d01f7fef87c752d8` | ⚠️ Unaudited |
| StrategyJoeAvaxRocoLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3892a97d9736617dd44c96fb236a46ffea677864` | ⚠️ Unaudited |
| StrategyJoeAvaxSavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37ffc9cdf0c3b9afc5e0d979cd0acd145a86347c` | ⚠️ Unaudited |
| StrategyJoeAvaxSnobLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d9bc61c14819669c8faa91db6b8b53422026fca` | ⚠️ Unaudited |
| StrategyJoeAvaxSpellLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4a9a9a26e26843a3d4cfa450a36233c3e1635c6` | ⚠️ Unaudited |
| StrategyJoeAvaxTus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40ed810af13671ffa51cc8cab1fc9a63efaafde5` | ⚠️ Unaudited |
| StrategyJoeAvaxUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e61da0111a844b1e1dbbc027edc51d8398097bb` | ⚠️ Unaudited |
| StrategyJoeAvaxUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66cde39a8ad2be17d3060d4a5e77fe13db89a995` | ⚠️ Unaudited |
| StrategyJoeAvaxUsdcELp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x753949e85e50ede6b800d0dfd1e8d1882b966bb2` | ⚠️ Unaudited |
| StrategyJoeAvaxUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8ea39447a42566387efb38062348c20375a05fc` | ⚠️ Unaudited |
| StrategyJoeAvaxUsdtELp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92dad9ea5027df9a3f1417e2597da718c9ddac5f` | ⚠️ Unaudited |
| StrategyJoeAvaxUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb63cdd4ca868e18bf6c6eb8618acd76db32801f` | ⚠️ Unaudited |
| StrategyJoeAvaxUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2615417ede134fd458eaac340682ae910f76bc0` | ⚠️ Unaudited |
| StrategyJoeAvaxVtx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2669c909e95af443f45b5ae96c24e5e409f4e099` | ⚠️ Unaudited |
| StrategyJoeAvaxWbtcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a757940f003109726995c507237edab521471a4` | ⚠️ Unaudited |
| StrategyJoeAvaxWbtcELp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5eed5f460ac62af90147df981c6bf29c7b166919` | ⚠️ Unaudited |
| StrategyJoeAvaxXavaLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f623a88180bd44773aa89de41e53909fcfe34da` | ⚠️ Unaudited |
| StrategyJoeAvaxYakLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd19f93c12333a4f22892eeed04ad31b13a54658` | ⚠️ Unaudited |
| StrategyJoeDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b0d661a1d433a248d3b6ddaf91e189b73a9272f` | ⚠️ Unaudited |
| StrategyJoeEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46a8c759fc2d2cc46b4126d8dc7026de75af0eef` | ⚠️ Unaudited |
| StrategyJoeLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x997fbbbb0957ace0512f38a23f5cffaffc2172f9` | ⚠️ Unaudited |
| StrategyJoeMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f419160d8f05f8ddfa22f04e964613470a5a564` | ⚠️ Unaudited |
| StrategyJoeSjoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6c51bcd97a5677f5a8638a3b8d6fd811d07d805` | ⚠️ Unaudited |
| StrategyJoeUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbaca6772f7313f5852eaef64119b606629329186` | ⚠️ Unaudited |
| StrategyJoeUsdceEtheLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9204e10fb899bbe8005ba4aa799091c1601ad29` | ⚠️ Unaudited |
| StrategyJoeUsdceJoeLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x351d699550c2c194554d77a7763f51efde2cee22` | ⚠️ Unaudited |
| StrategyJoeUsdcEUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59fe2e91c8a42c59cf09d437e5b192c8438cd8e9` | ⚠️ Unaudited |
| StrategyJoeUsdcEUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb80b5a2232241b3b0a27f480099818c8355a8e17` | ⚠️ Unaudited |
| StrategyJoeUsdceWbtceLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51ed80385ec034cb6d2eb064009fd902c45cea3e` | ⚠️ Unaudited |
| StrategyJoeUsdcJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa10248624402acc8733f9697f6e22e10087f7b34` | ⚠️ Unaudited |
| StrategyJoeUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f8eeae99578882ff045d65441b75a85ba11c8c2` | ⚠️ Unaudited |
| StrategyJoeUsdteJoeLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08c89728f1145cb0f2740a91fcd58ae923ee5148` | ⚠️ Unaudited |
| StrategyJoeWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x794792e97c23cd95524a955c79292bdd14245ea3` | ⚠️ Unaudited |
| StrategyJoeXJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4078b1f0192d9b8b14299f8047ce6526f63bfbca` | ⚠️ Unaudited |
| StrategyKyAvaxKnc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d80013b707b347201e6c0cacffbb25174934e3b` | ⚠️ Unaudited |
| StrategyKyAvaxWethE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37c000ce4b11cb76ad55a8a069e774c0d1db6ab3` | ⚠️ Unaudited |
| StrategyKySavaxAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0148a4e2c727753d3503dd49e6988d04f5bd7bbc` | ⚠️ Unaudited |
| StrategyKySavaxKnc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x150a0e17d1769c7e18067ce6d5a232f860d208c6` | ⚠️ Unaudited |
| StrategyPlatypusDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50c4bb8eecd05e2353367c0c9d464ed2d1242133` | ⚠️ Unaudited |
| StrategyPlatypusMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf9402055f6d04d12c949865298f52f9557bc4d31` | ⚠️ Unaudited |
| StrategyPlatypusUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76f722dacba4620563563e05db291b965227c38a` | ⚠️ Unaudited |
| StrategyPlatypusUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40ade0b3baa99d3074f398d42fa0ab9d5ee3fe09` | ⚠️ Unaudited |
| StrategyPngAvaxAcre | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44110d64b56ce8e5c39c7fb12948c915b1521762` | ⚠️ Unaudited |
| StrategyPngAvaxAgEUR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x696aa6439bcd82f17b53df9e74af15a22ce4f946` | ⚠️ Unaudited |
| StrategyPngAvaxAmpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc5fc3178d5f140206530c7e817144b90f1a8eec` | ⚠️ Unaudited |
| StrategyPngAvaxAvmeLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2295e2097025254e9376f95ed7c870d6fb2327c4` | ⚠️ Unaudited |
| StrategyPngAvaxAvxt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10df5ea0e38f1be9625d5f6c3b8545902a408511` | ⚠️ Unaudited |
| StrategyPngAvaxBava | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb6dd4ba6d7d691f6aee2c18937ede2661c1a6c5` | ⚠️ Unaudited |
| StrategyPngAvaxBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x394b8864cfedf4af0234da34bec87502f849c369` | ⚠️ Unaudited |
| StrategyPngAvaxBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08434e42f02a3de0e528fd0f0e16e46f9d6d2cdb` | ⚠️ Unaudited |
| StrategyPngAvaxCly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc4c187b5b2379403d50561a577a45f8758586ba` | ⚠️ Unaudited |
| StrategyPngAvaxCra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82491550daa8365ac4a5121e143d1759f4d5aded` | ⚠️ Unaudited |
| StrategyPngAvaxCraft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c9f1aa3060797d51b63ddba5d650056330910a9` | ⚠️ Unaudited |
| StrategyPngAvaxDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x972ce57943ec6e556d46d1bbf2182e74beee247a` | ⚠️ Unaudited |
| StrategyPngAvaxDcau | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a61530deb770c3bd505eb7fea0e9cc778df9543` | ⚠️ Unaudited |
| StrategyPngAvaxDep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x575fccca4acfbebfe007ba42ab83d0c0766cfbdd` | ⚠️ Unaudited |
| StrategyPngAvaxDyp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68faf4dd1566062abf0a21a8aeaf3a9658c0b659` | ⚠️ Unaudited |
| StrategyPngAvaxFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b3fb9f70ce637409e4d4d9238beb76d6a661e2b` | ⚠️ Unaudited |
| StrategyPngAvaxFire | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5c8df57f60eedfee614c2daa3db28bbb8465b20` | ⚠️ Unaudited |
| StrategyPngAvaxFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ba0fa57188a0d8ff1271b18fcc088658173578f` | ⚠️ Unaudited |
| StrategyPngAvaxgOhm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08f49bb40ae8b988fb507ac10aea55487fa73ef9` | ⚠️ Unaudited |
| StrategyPngAVAXHCTMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4512029e332d184089a5ba00ffccfbe1f04870c2` | ⚠️ Unaudited |
| StrategyPngAvaxHtz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13cbdbf22e26b93f6bac2196febe2a14a8dd07b8` | ⚠️ Unaudited |
| StrategyPngAvaxIme | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfaca0f15887695411238c520219926a230bd364e` | ⚠️ Unaudited |
| StrategyPngAvaxInsur | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49fe0b97b5c193fa181a39f7c68aa6bdf0899e5f` | ⚠️ Unaudited |
| StrategyPngAvaxJewel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8df22f5df3be78b69ab28d28fdd7649a9a7d6f07` | ⚠️ Unaudited |
| StrategyPngAvaxJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb897e1b11e2a84d75932d68bc7c638544292160f` | ⚠️ Unaudited |
| StrategyPngAvaxKlo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x043ae05b10bdbf14ce53f0519e7ff985d83ebcad` | ⚠️ Unaudited |
| StrategyPngAvaxLinkE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfbba29dfa336a93a2a7bd1d9e82496f91d109005` | ⚠️ Unaudited |
| StrategyPngAvaxLoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2272c864cccefbd40937e7611e8082e2fe0f273` | ⚠️ Unaudited |
| StrategyPngAvaxLost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x073ad5c55383007c83bd6fb8d283bdfcd55424ce` | ⚠️ Unaudited |
| StrategyPngAvaxLuna | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x024cc2272738bba1f45289ab52485e8b46155c66` | ⚠️ Unaudited |
| StrategyPngAvaxMage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b2bfb8967e5afd9732ec853c7cd0a012bdfd64e` | ⚠️ Unaudited |
| StrategyPngAvaxMaxi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6caae95c36464509c73195b2c726ff7115bae8ec` | ⚠️ Unaudited |
| StrategyPngAvaxMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23abc50f401589dc8295cf49f3226107efab8b03` | ⚠️ Unaudited |
| StrategyPngAvaxMoney | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc819b69f92dbafc5afb4ae9f01d825c7c9dd1290` | ⚠️ Unaudited |
| StrategyPngAvaxOddz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc59748579367a9c7c1c0edaead7f8dad74be7083` | ⚠️ Unaudited |
| StrategyPngAvaxOrca | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59a07b9cfd80e962fce2cb0992dd62fddf4be1bc` | ⚠️ Unaudited |
| StrategyPngAvaxPefi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabda973019b4038dca46a75ba4ac6066fdf2e45f` | ⚠️ Unaudited |
| StrategyPngAvaxPln | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4c083d3454ea77c3882e61f3e73ee03168245ef` | ⚠️ Unaudited |
| StrategyPngAvaxPng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8d665fbafb87a1baf80cd7d72171cb664de12c4` | ⚠️ Unaudited |
| StrategyPngAvaxPngMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc9163203b5bda65ea6d97c1869788b528e7a283` | ⚠️ Unaudited |
| StrategyPngAvaxQi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e2a701e6bd06c8c5b00f37b03689a42e251de1b` | ⚠️ Unaudited |
| StrategyPngAvaxRoco | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x765fbb8be0eb3434c0aac07c9b3bf02db4bced3e` | ⚠️ Unaudited |
| StrategyPngAvaxSavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5e785d1e349e1de6c03701b88980eb8430e1447` | ⚠️ Unaudited |
| StrategyPngAvaxShibxLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b7880eb81d161742c8ab2af9ccd636888527dda` | ⚠️ Unaudited |
| StrategyPngAVAXSNOBMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0bcf9dca633dce9a519bf809535beb60900d3b24` | ⚠️ Unaudited |
| StrategyPngAvaxSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93147a33cd2faa75f201db7a9f13abd7be7f1f9d` | ⚠️ Unaudited |
| StrategyPngAvaxTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2eb7b6d232c0446ec5424296e7f3e424b55514d5` | ⚠️ Unaudited |
| StrategyPngAvaxTus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x776e12e282dd3685705265ff384e81b12d16d592` | ⚠️ Unaudited |
| StrategyPngAvaxUsdcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88569a232c84b3dda282bfcf2bdc88e5143e8060` | ⚠️ Unaudited |
| StrategyPngAvaxUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x721e9945a95242c48cff85f6336ea8210172cc05` | ⚠️ Unaudited |
| StrategyPngAvaxUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x142f27396416f9ba4592f757d64fdb128a853ce1` | ⚠️ Unaudited |
| StrategyPngAvaxUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7118946c7786e7503d9b0ecf49585637a3dbd34b` | ⚠️ Unaudited |
| StrategyPngAvaxWbtcE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec650443e4818cb6e7cadb75377cfd08a060b560` | ⚠️ Unaudited |
| StrategyPngAvaxWethE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe1ba5e7feb54e50d02985a6781817e04efe44643` | ⚠️ Unaudited |
| StrategyPngAvaxWow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x519145555a961b9cc59fd834790840389bd584b1` | ⚠️ Unaudited |
| StrategyPngAVAXXAVAMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40a3ccd8fdd23dbb41d004873811c4effaa4c924` | ⚠️ Unaudited |
| StrategyPngAvaxYak | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6020e41a65d1b4fe1650f767e1062a110aa25da` | ⚠️ Unaudited |
| StrategyPngAvaxYay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5304d050c5904aa71cebed89a1d5b9b5849cac6` | ⚠️ Unaudited |
| StrategyPngAVAXYAYMiniLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a622fa1e44ba88c658679486fe63860ce22b97f` | ⚠️ Unaudited |
| StrategyPngAvaxYdr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c7359725e2ead20fefc71121e1a96451f66f829` | ⚠️ Unaudited |
| StrategyPngAvaxZee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0f8e092f7dfb7f78e04e8bda651d2f92f01500f` | ⚠️ Unaudited |
| StrategyPngPefiPngLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e1e3da63b35021a69ff8d87b239fac6dd594b3a` | ⚠️ Unaudited |
| StrategyPngSherpaPngLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x765900536e7dbf5df6c17e228851bbfaaf3e1066` | ⚠️ Unaudited |
| StrategyPngSporePngLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e35cb626c62ceab4fbf3235c992ff3226102cee` | ⚠️ Unaudited |
| StrategyPngStakePng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e431a41d75b273cf0bd165c7551838fb3c4ce10` | ⚠️ Unaudited |
| StrategyPngUsdcEDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda8a1b7b2c249f4284a8caf7edc2271b31cd15d7` | ⚠️ Unaudited |
| StrategyPngUsdcEMim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x335e0f76693664b122702119fbfc58b768579630` | ⚠️ Unaudited |
| StrategyPngUsdcEPng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x072507dbff9c2ba6e591ba7e533fe804d931dc37` | ⚠️ Unaudited |
| StrategyPngUsdcEUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b1442d9fc9fc48dd2af11321f20c4f6a55cd240` | ⚠️ Unaudited |
| StrategyPngUsdcUst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb068cbb432ef18618414cb84ec5cd74a2bc77da3` | ⚠️ Unaudited |
| StrategyPngUsdcUstW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e8d14f0db2beb74016c216930887157c13ba7e9` | ⚠️ Unaudited |
| StrategyPngUstDlaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x394d7cd603ad37154d39b898e387d0f8e71655d6` | ⚠️ Unaudited |
| StrategyPngUstWPng | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6f159bd14fc33eecc39c9ef5049ca9f85d5e289` | ⚠️ Unaudited |
| StrategyPngXPngLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x472174d73e5a5cffde80f6e6423f4d1e7b373084` | ⚠️ Unaudited |
| StrategyTeddyxTeddy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x058484da4464379d40e423e2ce32a0afa7df85d2` | ⚠️ Unaudited |
| StrategyVtxDaiE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9078e4249d308f2a995c82d577dbdc1966f8ee81` | ⚠️ Unaudited |
| StrategyVtxPtpxPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39e2e980071b2247365b7acdfd0c6395798d1965` | ⚠️ Unaudited |
| StrategyVtxUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b673cb89b228f3c80ffee189ae5b060d301dc30` | ⚠️ Unaudited |
| StrategyVtxUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23380f176614566ca8212af5a1ed9aaeb29d3b09` | ⚠️ Unaudited |
| StrategyVtxUsdtE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ced4be56e45cc60e254ca06af50e2b1c585bbc0` | ⚠️ Unaudited |
| StrategyVtxVtx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacd26b78778d75c672abd320cf6c25e76be2bd32` | ⚠️ Unaudited |
| StrategyVtxxPtpPtp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6605a199d6c86f2f6c5089a9cc081eec345ab783` | ⚠️ Unaudited |
| SwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc37e5ba5abba3bb67bb76651e04b7c93477636d` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05c5db43db72b6e73702eeb1e5b62a03a343732a` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadbb5e6eb75180069183189ec50c7d4a506b8ba6` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd24c14528ed5f4f244873d42f3d5760e32d79a2` | ⚠️ Unaudited |
| VectorControllerV4 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392645 | `0x5a068c00e32d18a354755cddb01ac65ca074aa06` | ⚠️ Unaudited |
| VestingStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed7f93c8fd3b96b53c924f601b3948175d2820d8` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x084cfe7ba1c91d35fec5015ca65e92db41a3c9f7` | ⚠️ Unaudited |
| WithdrawStuck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb44459f65885bf02fe9a6aac509a8c55e0fc5429` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392632 | `0x05faf04e3416e40af70eca1deefe2e8b6fec3703` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392633 | `0x10a2b0cc29d36f2816cdc3f3db17a4f0f91e7313` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392641 | `0x35f268dac74f94785135aa134dedef7e67db8fe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392643 | `0x3d88b8022142ea2693ba43ba349f89256392d59b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392647 | `0x5edd9bc699b6a613875e6760b4978d14d6eb3899` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392648 | `0x6a81866c94efc097e75abcbcddd3e8b63ebebe93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392650 | `0x7b097a18738ca9fd524384dab74c57cb12dac724` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392651 | `0x83952e7ab4aca74ca96217d6f8f7591bead6d64e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392657 | `0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392658 | `0xae88be7d3fe6545c688b640b427af4bab90e2638` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392659 | `0xb954ae9a4374751cb3d578cfa3db96e0e5881c00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392660 | `0xbff6149b2a1eeb145b84e897d2af5afa3bff6119` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392664 | `0xceb829a0881350689dae8cbd77d0e012cf7a6a3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392665 | `0xd65e006644d417af6a9385182c21733762b94e83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392666 | `0xd66df640a2f213b6e5087204caee2b2145a1c1c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392667 | `0xd928ab4b54f7fd0498160ee52ac0c92bbb9c9cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392671 | `0xf2fa11fc9247c23b3b622c41992d8555f6d01d8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392673 | `0xf7b8d9f8a82a7a6dd448398afc5c77744bd6cb85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392675 | `0xfdccf6d49a29f435e509dffaafdecb0add93f8c0` | ❓ Unverified |

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
| avalanche | `0xc7d536a04ecc43269b6b95ac1ce0a06e0000d095` | AxialControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x252b5fd3b1cb07a2109bf36d5bde6a247c6f4b59` | BenqiControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xacc69deef119ab5bbf14e6aaf0536eafb3d6e046` | ControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x215d5edeb6a6a3f84ae9d72962feaccdf815bf27` | GaugeProxyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xee9797f49e729dddca58f357febe5ba1ffaa6c1b` | KyberControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x294ab3200ef36200db84c4128b7f1b4eec71e38a` | MultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x028933a66dd0ccc239a3d5c2243b2d96672f11f5` | MultiSigWalletWithDailyLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2f0b4e7ac032d0708c082994fb21dd75db514744` | OptimizerControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x14559fb4d15cf8dcbc35b7edd1215d56c0468202` | PlatypusControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x89a3e2b87ea5fca3a68ead5643f040a0f636a46b` | SherpaNFTClimb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc38f41a296a4493ff429f1238e030924a1542e50` | Snowball | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9ff1918d212c435ad1f1734e9c4dc2db835161af` | SnowballNFTHolidayHat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9675064a9b93dc4156366a4e5f1400185d751375` | SnowglobeZapAvaxPangolin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2da2409cdf11c607375ac9a43c18fab2152b5884` | SnowglobeZapAvaxTraderJoe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5a068c00e32d18a354755cddb01ac65ca074aa06` | VectorControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
