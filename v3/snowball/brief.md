# Agentic Audit Brief: Snowball

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Snowball (`snowball`)
- Website: [https://snowball.network](https://snowball.network)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche
- Contract surface: 1142 unique implementations (1142 raw deployments)
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
- Outside the address book: 1106 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 36 of 1142 unique; 1106 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/369
- Verified + Unaudited implementations: 369
- Verified by bytecode match: 0
- Unverified implementations: 773
- Unique implementations: 1142
- Raw deployments: 1142
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

### ❓ Unverified (773)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00537cf29fe45f8b216840ba7f36663ad1bfea61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00933c16e06b1d15958317c2793bc54394ae356c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00d75d30def04df020462dacb0ed2b5f653ad0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0136c57831f8174144e571393efb52e69ade4265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x016c5d89fefcaeb3f56c4ca1b59516f2107ffbef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01f348b7cb1c7227cbfcb48bdcb9667611af4f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x025f134952f74b59888d0d3d1545865aa8a9bf98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02be560748c4f547fbe653821eef16b2cd8cce8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0305e53aab1634013131c3d8d729e712a3237a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x037e116a780d58be59b5c673abd4a6f415f5c3ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x040d72568303927c8eef626ec8ab8271162da120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04249d6b55769f69e8e810e60ae885ad75646306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x043a2ece3c99fcbcb879a469c35bf267bf842d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04a3b139fcd004b2a4f957135a3f387124982133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04d8e9cd2c40f75ea4a2750bf4cdf8e5d915975b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05bba89e406792d2d73d6d4022347c3893b02a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05c32bd783849d53ae375805f8edfa3d9e5e87db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392632 | `0x05faf04e3416e40af70eca1deefe2e8b6fec3703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0666b3db2441a50b6a1c1d330d2f36df18ad5651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06cb3c743924fef73967d88aa9b1c98b13f8021c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07309850e6d0a925da0b1a57cfa1ed8ca68aac36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0750b2c5db83fbc3cd3a441193566ab88e9b61b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07e7df7f0612b7dc6789ba402b17c7108c932d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07e837d2ae3f2fb565abdaa80797d47412fc3a94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x083f7864d89c80e3f613043bb3926d0dc2fb6f18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0889b224f2851fe88dbe0176dd598d8e434b9e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08d5cfaf58a10d306937aaa8b0d2eb40466f7461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08d8c7c1a6e8543a4674e77cc0111eaa1d520f8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x096bae6c45b0047ef3f1cf1f1c8a56ef0cd58cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09e26431e600f22d111a6f3c8f88d9bae2a64ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a6dbfb865244af080d2da1a39b78ee5ca673762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0aa01af55a576895bfd0c29062da6e91d3f64442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ae07ea99c985571cd17883f9a27340e06a01dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c33aa168e0882bf0b3e4affbf139f44d3ac8d7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e05bf8ff712dafad85dbf5e15ecfa55af3ea96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0eea398c113fe9e9b2b516920ce5b91f1beda585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f30223798499ef8a0825229aba9353537108f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f776b5b97bfa366f929fe82bd50c312c39f26f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fd5eeef2261597369b51471ed5b9ebeef7a4c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fffa4ca317df728439a51e3101a894dc5080802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x100b9693c40fcb361331c71243fa30971917cf98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x101f61a62d8821873b37af12ea171c13f17775a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10286816b50821dc7c1575adf5aefd97f256e165` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392633 | `0x10a2b0cc29d36f2816cdc3f3db17a4f0f91e7313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10ecfd99af6f17ec70074f5e75ad19d2365bee5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x118eaa52519ac8e022f1587d4ec0ef1f7c2246e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1314ed1816c26a61f0471ca5ac8c9f9b861179f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13197f9693646caa9fa2bf8c1078f76531109026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13944645342e733f1b8036914d5b23eada2df4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13d753c651526bf3501818813b829b339ae867af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1435c96785b64d4d9452812645c3cd423c1f73ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14519abf2f04a632ee65d84d9a37d9eec02955f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14636a5a5dc8836e7e378b9b6e4614a3c94f48e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14ec55f8b4642111a5af4f5ddc56b7be867eb6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14f98349af847ab472eb7f7c705dc4bee530713b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x150bc67072c2db7c55d83302b7da7d930eed1c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x157a9673fa05288bf3dd5d41bc47d4f84c2e2c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15f1366b0063c837b4c32d1fe6d0c6a0d14b9ac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x162ed770e1fb50aa5ea98bb1bde4c7f7e3063269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16784e86a0cca1e5b7f00916251a1daae7a9a57b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1713f3a63581a380568c5db145a2afe76387ff13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x178a1c71bdb02ee0ffb7aa1818bbbb4291af2b06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17fd2418bcae447ab383a437e4991f5536646681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1812f42de15ea7da3901ce34237ee8ca5f01857a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x187aad7fdaed7ad49b15483059f4d232ee3e2b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18807d2e81f4dd7cef1348b70d23257a587e304e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x190b01c4821480dfdcfba404eacd64bdc225b5e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x192ae260676ba79ccc57a6f4ed692bfe371658b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x193c769f13ebc953c0e70823f1e15d47b56019a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x196ae2cbb9d25aecc0b414ae4fede1e01e55b258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a07f2aeec34e3cadaf85eeee45fcc70881178df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a4e561d2568ec59edfc969da6bc202c933e40d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b23790edacb2e586a49271e4fac3b7fe3bbc103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b42b6a66545ccebfc54dff3aabd55f49b0a617b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b4468dc172b94b7b8307ca5b1f63466b086acc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b5c98ff40724f75fec8e947022ff6a86601288e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b60d88cb3db98a02594a85d0f823ac08194100f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bf90bdeb965a76af56024ef3e70439dea89bf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c242ae2350f7c6a6124215cbdd9a55e6c124369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d98f1408638ba389f6b0c6481b4b9974b02eb8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ec206a9dd85625e1940cd2b0c8e14a894d2e9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f49ce2d792d50b5db60b7500615821a72155f4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fa6cce8c303fd826e761d789799115ff68ad8c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1feb2be70d38e3a58c38fe591c95e63fb978285b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2070bf205a649de46f92c4f187ae941a13688850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x208d9e674e0e3f4d081e346293690b756c0bd536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20b6c71d1724a8d8510fb3d2486e4ccf2a8d91ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20e06050c310822cfe067bb3a12aa85b3466346b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2127af110b27404c53dbb8f201a22a0176026d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22dbe776844052578ef2b400ff72d3e2fef31aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x234ed7c95be12b2a0a43ff602e737225c83c2aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x243343c17183e2192f5b9e6d1d599f9ae171aa11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x263a211b1e597cc336466f15ecc3bc8243f65118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2736a1d575c115b0899f8b9699898b9a2ba04238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2754376740f51516594b691f8e545f718f6200bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27f8fe86a513baaf18b59d3dd15218cc629640fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2896d1ba16affbc5608784e33e8b901c2a515f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28a5e50d0841d7ac5d858a76a1c54f27bab6eda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x298e7c9b03388fae7005cad5dcb4f78df5c7bbd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29b8d539ecfc1d850dceb22cc2e9a07eb2ff9438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29bf8c19e044732b110faa1ff0cc59ca35c13f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a199382b371dd4df72aab2139628a698d469095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a1d2d2fdb76ab3bab6ba424612ddafc5750de59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a1efddb7f864af3474e9459c4ff3b83e90f728d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a4d86edd7a5776a5602cf0d07fe8d377897f201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a69ad5337a3e99c0658135ec796c7428830ad51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ad520b64e6058654fe6e67bc790221772b63ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b30b282405c3ee946843901ddbec1a82562a1fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b3a816e753b6309bf2d0e408a9a067eb0a9a5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b48ff2ca4374562cdeea82534519076105663f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ba4b6054b0cd9c587b623526166cf63f2ee55f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c33c3e35c019dbf9ee67f71365f9500602aabaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c4e0425160bb45abb3fc7ac72fd3d3fef013466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c638f7ef1052cfd5782ba07c6693b6e6126bc41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c6f37c4e80ae6a553a639f706e62fe5b3d9bb81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ca2f78d38d05489c95f4499e6abb669b5e42546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2cef114159a6313b8d3a04f3885c678084350832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d26a50d4b4213b5bd3e4856a6acdfc493d0b12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d5c3aad971af39e64b9d611ef3d3f5504c9335c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d5e1d3b8cddf9527467c523c485985cff2004aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d80354f56fa8c342c249412739ca06b8556bd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2edc6522d658946fba5116ffaa60d8760d1b21a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2eded980b5a3f97d27f8238e80c1a3f261f55196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ee78b4d4f15ae2489617ae82df83bffa5cfbb0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f17bac3e0339c1bfb6e0dd380d65bd2fc665c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f1b13ade16019b50585df6289e46da988e07d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f2ba207f86b46b05a1c79e50b9f980e267719b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30298513aa731bee0f4c3ef3a339857ecc99b8a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x304c0acd0b5e78db331952834281f75eb5b9ec7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x307524eea94780884150583ab0332c94f6b1feb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x307d8c5b83d5aea72d683ed62a172572b10185d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x322094fdb02677e7a993e735826c9e183fc605a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3270b685a4a61252c6f30c1ebca9dbe622984e22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3274c42c24b190ffe5b168b2690829cda7bf710e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32930cfe5b9c5c5d247e36c31837562fdcd68553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x331ce1623f9012de2d0bd0c2c3159dc71c49eaf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34aae98720d90c095ac1137ab88766946b7c1c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34b5f24ab10a36cf1e82ea95c9c611162d6e3f60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35192ac36f7203b4916bed14e04959cfb6c5ec31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x351ba4c9b0f09aa76a8aba8b1cf924ae98beb790` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392641 | `0x35f268dac74f94785135aa134dedef7e67db8fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35fe62800440595a77a11ff5474b91be00ea1705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3653546bdb22168031cd7a159bb5c12ef4d585d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36a7e3b1ba34167f655ee8c90361dac5e258dd81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36c98a11a2b41a5b9b5ebaf8d3160eb8d2fc1800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3815f36c3d60d658797958ead8778f6500be16df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3821dd43da32c22ff38a344c2b70e970fcb19239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38342ee92b71ce36152a02a062ec1a1ea39da339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x384bcaea70ae79823312327a52e498e55c6730da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38d730fc61e98fcb90f4e92ede994ba59cbe3cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39259a07c7b21189bf1bc2bd75967565b3c1f16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x392c51ab0af3017e3e22713353ecf5b9d6fbde84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39be35904f52e83137881c0ac71501edf0180181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a4b529d887e0d5672ded31ce0d7a5202fdb43b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ab14374bb3fb175c4a61f3e934ec42bfed0d259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3af37b647a08d443ef08aff8cddeae33bba56779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b4a657d578234eb4c24e4301c42ddf53ffee69e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b4cf7745bbdbe0ccd9e480e224e08b81caf7747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bdb66dd3d23feb8ed60c1f02e5c5f1d2b295156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ce30991623dc1398c10a9f933d7a614a42cc597` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392643 | `0x3d88b8022142ea2693ba43ba349f89256392d59b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3db4b5a0164d832cd0f87d3051f3ba2377935b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3df8a277304f253d426178a3c7a2884d7afd0a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e3dce098fd09273bdae26fa166efa4070df956d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e93ba607534046c561d0c536265ac656a92eac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3eb8393433eed933f7417846fb0ab1c2e621bb22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ef0b909f993e06dd0d3fbd4a82a21f38538c5da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ef4dc17b344cd234fa264d8d0be424207f07532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f2b777d055dbd4d0812f3750ee71190431d3fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f84273a3d9419b3cada6c0080073deca2c1383b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fca0b10820008baa20c466fd972f3a453037bae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fcfbcb4b368222fcb4d9c314eca597489fe8605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40e5245d1f708f5e25fe6189e47c3e63b752adbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40f9c78ce39b4ce12b65daedca7f3f699613ff42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x421ec5fa43fc37ce1d822144259f9ca0f5a8c440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42a8bcb58e8507c8987ca59374daf5aef4974bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42cb18c220a11f08e855cebb02f4623329cd676b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42dcee8f17ec7e8129c54a2026f9a6febdbcc515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42e1cdd48884c9027e965600b4a725a91d27255b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4304db2d76a55754ae8b0d71d6ecbe10e545bf40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x432be17144cc16b1fefc58952467e7539073519a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x434eca6c9e62c6ab0dc8c93da9ed6e9553cc343a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43d5fa3aa458c13291ba72b1758078646584f7b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x443ea91cad685e8985ac056175a03a899a35742f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4550e794f3ba870032854b4c35ad4e469fa7b989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x457e7d6a598a129132d3a80eff3dd9d7235548aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45981ab8ce749466c1d2022f50e24abbee71d15a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45ad9be2ce4af483e7a86e534f20dc3847e9e51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46b90502cbf21941c99fad102c1f388a33b83eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46fb3edfb188ec4e81f92445989e4931c7fecd93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47f03750ead827656b7027386dc6b5d928aaec43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47f884e0bfc0e56ecdc581e2774efec12874f7fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x487d26394402398ee4a9bba557a4a1ae9c325de9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48b0b58699e110b0718591aa75eb1bf7f9cd09fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48f736cc619cad053f559cf24edfa2401bed9c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4951d821f933c179823444621a230e9212d541fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a0aee254e6a4c03695b202eaa381bffc2d3e035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a11ff8a0012c3f32ef50b748ae8933800313dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ab4944bf4d376b9914ae4b81e7c31ff88d633b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b5f643489965bd9383a578c5fb55808caa4f225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b99b3d1f6f00ffef08a81148b980dee748a05a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bcfb10465a8d22f0a047df3afa8ee06cbcc8e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bd6d4fe5e3bbaa0ffb075ee9f0980fbcc6c0192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c073d1f04ec6208f79c097c239153d3797711d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c2fbb535461b54371ad3d1bb290fc7816ebb036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c7f9bd56807becf086681326cfa6ff41b688a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c885e844283d9faf10607106963768113342543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d7661fb1c16cb12ebe12c2c1dd4edd29d725c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4dc029fa4c7d3171e826afff90b222f57e347fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e341fd12202db8cb6e725bcde0ff3fc2d742e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e36d0c4ce14a62ca0b3bba9d786cf7fc1eae9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e6749dbdb617069c8e53f208b08316f7f87b669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e79f10ac7534cf3b23aafbf01dd5e7fb69d07f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f4b353f69f8c37dddeb8d558561ba68ebf73275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5132ceabde3c997c3eddb92361c26861f0b336ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x517c02bf0ffd2c5c382991c0aa3b306d9e357fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5181349636664f27d0ffa98ff77d7315e3d3d6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51b03a4a57da8ea9fc4549d1c54f6ccd678e2892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51b29aa47588a0dcae748297c7a9dde10035522e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51db72d82063a31fac612c36e2b3ac577d20dd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52bc8e025c2a24841c946339a5eb4c727c4f6766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53a646a61038f05e7e4584b367fdfabcf62e0844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53a6ffe10adb8db0d861bf264134d42cac03a1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5450fba1464a32afb62efd1327c9f7741f7d2c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54773bb26f7d725366e68ab5a196e8f9ca761aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54811015ff584b354751ec59834754edcc2c6d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54fffeeda53a49f0fe59a89e8cc44d4d80fc4ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x550c3f57a5d81315ff4217d3a7fa53244e7e9d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5547e1aad9c6557c625da99a0da1aecda1ce2992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55864d8f42452b3afef83b4831e3253581bee080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5586630339c015df34eab3ae0343d37be89671f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55cf0783a28715bb90b5632a8dff7a46ac9e58ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5618041c863228dc6298bc5fd17eada6fe9df618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5639322281647935f64efbd74df231f5066ccaa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x567350328db688d49284e79f7dbfad2aad094b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56852178f378cf07c8bdc2e8583fa963abcd8f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56a6e103d860fbb991ef1afd24250562a292b2a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56d35a040ca2c92772e0857b4a6b99476ebf865e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x585de92a24057400a7c445c89338c7d6c61dd080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x586554828ee99811a8ef75029351179949762c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x593e089a899fe398a5c9f2799dd31f1bda4cb64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59551fed736e3ebe845df4e0a1c15fc59911aa27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59c7b6e757ca14ef6f47e06a30b74cae1017d92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a403d7613cc0df2e0920f99690b4f1c5f59dab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a58d563f83d3c52b646eaaf7761e84684618b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b140894bf65144cdb8377528e00276b282f64a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b32e4b2734e2f6d540249607f11797d2beb1715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b75e56e7ee78ff42f1fd0261f83a31f89f7b5f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b8ee2c0a4f249e16f26d31636f1ed79df5405f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bd7bb54e3b6798ca33acbd1f26541053721e69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c02dc0c2aa2ee9e5cf79628c8d6bc00ca78bfb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c4908065abd41c7b16c2e43e13af06c7a657d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c52587bd441a6e6916d2c2d32a84735b9ee4ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c97cd512093bc1b4a89fe543e60ef2002789f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cce813cd2bbba5aee6fddffade1d3976150b860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d0f76119f75db1593e984e02fe85b6c17a25f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e473523370f301bedec43f0a142b83b31802275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e881de5b6127134600e03705966f3ea37d9e2d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e8b060639646117539fd33ee221364012332c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5eb8942fc2b1e43ed89d673757affd7b9cfdd22c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392647 | `0x5edd9bc699b6a613875e6760b4978d14d6eb3899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f677da7deea20907c3d6df2fcad9f80651121c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fb4d08bcbd444fdd5a0545fdb0c86783d186382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x605431b1843951830b82ba84ad1be847f6e84fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60b1a1eb0374861fe79ce946726db1ffe2b6ec54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x616124d95e23ca3a5805d50dadabbe6e4b78b6d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x620ba147d7fff419b18ec99335c9691c4c0940d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6239a3a0c873f0262bbf7e6f72935a655d90bc17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x631651f89d1136504713248757cf7fdb2008aeed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6440365e1c9282f50477b1f00289b3a7218e47ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x648c3fa14e0cd7f1741bad078d8c72cbe91cf4dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6556d1575f17ec06e867090de03c6e39ddf749db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66f37f73fac11f4012dd2e9d2844b386212c1961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x67826abe6b06b1469569c18787b90f5747b4d948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x67b2d2579e631512fafbb1534214ea2d3403563b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6860d66928325b03971200fd34b93353add187ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68691a1e8eaae3dfdcc300bbc0d6d3902ba06e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x689d22e2d749bcd0e5812193ee1187de8c21456c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68b8037876385bbd6bbe80babb2511b95da372c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68dd3282dea3679425f57fab9b9ffa52692b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6941618661205d5aad2c880a0b123d19615916b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69ef7ddcf133fad8e0f80cf357812b5a96cd3708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a7464013bab4724fc62d5ff8f8dc8583cc143ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a803904b9ea0fc982fbb077c7243c244ae05a2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392648 | `0x6a81866c94efc097e75abcbcddd3e8b63ebebe93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ab8dac517c244f53d86a155a14064e86c2de653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ae438db606c631c851de0f0a7a1382e0ba88c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b0f6e341e6e8a6fd9996db5cc6d1e13a3fc6a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b32266e7793359fa199c32e950cf5c0eb4b284a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b3913b3a7450d1339b53298065cd6e10b93a4c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b41e5c07f2d382b921de5c34ce8e2057d84c042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b74ea96c781266b710715ac88842da9ea9014c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c74b1f14a999bf3ff6f0764d87269f7f0c7808f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d1be2cde72abc0a0a02b723c1ef880fa61ebcd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d4b539b0b3d85998c1745204580691c0f7170b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d7a3364bcdbe3341db19088ffd5d720aa8dd228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d94512442980dca2d63aa6d526ddc8fef47ca53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e2e307d77532801fb22195fb502c5538c0fda7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ea2c23750011ddef82b2b2a2d622e82cef172ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ea4bda10f42ef289539230ffed24fcb844f79a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6eb9cb199c55de50279a69705ba88c146fadc574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6fdd5d2d2c2ea4f41d32f94750eff0c2341e7a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x702490d609bcaaf697f345d502b15f7c60f35856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x705985e6d18f15b35272acab2c49c8024ef031c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x707090bbcfd3b4470c724af560fe3d7d7d0590e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70807713924697cc5a4a252aceaed921365bbf29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7092e1468b1a3f4db78f32dcd697d7d9abaf7241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70c5aa8c3677fd1773309030c6d7cff2e2c499e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x717342dd24b21447dd76228a0fe017167f039277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7259368223cd321cd92e34a06225a8f3212f36cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x726b0011837c0121915446c4a3b1ffa1d49b66aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72ae79be09df28eecb5212d664d3c1f70e5c01b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72b7addaefe3e4b6452cfaecf7c0d11e5ebd05a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72f88b9ceb3010a839e8191462c3e6b8df9634cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x730ad83e992ae5a328a5cceeef26b0e821acb524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7322fd7b3b4f213f003355cdfef62fdac1d0d58a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73733cdcc7315389a847bfa2c1847013cb1b4190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73da3fcdcd5b6c4c58383ddc6a2e19046981d71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x746d7e1292d6fc82ffcf503f56bb4b0f4e1e6878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x747f114effd243f80e4fff6d846f9b7ef5e794e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74db28797957a52a28963f424daf2b10226ba04c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74fb638dd049556ce3de6fb93742e9843ca49581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7508de4f00a397a107e9c8e9c0f6fa848a328e07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x751089f1bf31b13fa0f0537ae78108088a2253bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75312b14ce830ec078d93ac8fa667b14beac18e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7541373605f5446c8b6f5b91515d3f0e3709941c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x759eed71e5086bbe903036f5d289e20fc263ab69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75f1ed15d3974f4d9f2072d92eb509b82c2ac4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7625c966cb3cd43d84bce81d6a8b76b8adc66121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x763aa38c837f61dd8429313933cc47f24e881430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x766a5531c82eed7aea2d7fa0b59bee0c5cd4ddc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76d3f5f15988ec34cb79b888fea2e68cccd32a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76d6c102af065b73d5aa8a9a96cd92a4d14027f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77c0025a7b8ea95f863e3529e57bc07f981e6a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77fa7d7a4e2c9dab1bd1cc3a0f4d03e719299d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7987adb3c789f071fefc1beb15ce6dfdfbc75899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x798bb45e61b6c3c273b2852a1d648ee449d9c4b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79ddb17026ffab0cbecd4bf91ccd34f339863737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79f0d1c498a6541807c3b86255d3391c7c79ab0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a0030387ea0607dc54293785af3ad7b43207150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a6351fdccc60d3a059d2210486672a49b56b4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a6cbd5488723ef8b801cca50404ce499417c309` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392650 | `0x7b097a18738ca9fd524384dab74c57cb12dac724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b5ffcf45193986b757986379628432d90f20aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c39b0a13fad04ead56fa22793089ad15940c980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c57937dd753b47fcb17c3dc49e05888e07425fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cc8068ab5fc2d8c843c4b1a6572a1d1e742d7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cd232a7c94be0fb64880f3ab68855cd164f703a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7dcdd73b827e21e75aa3f011821426ceac9053d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e24f0f6278e9ea526022d28fca12cf66d882460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e4196fe4a9c661b1bbd27b54214e669351bdf23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e7f4522911a537811aa7a37ead9fbdd52b50447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e80407f9f9f49458be62aa13729e4640597baec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ee467f38f5f78bf07d5876db8608dd02c35418a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ee5a96fda9883837f17f2b866b74c7c2322b96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f00e024ca3c514a1c9228f89f96db0dcb6ce04f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f18f104146ec24493cfce346ad761ad5136c406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f24dd7073a83c3de1fb4aff10f72835b239c897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f68e4635b4ee504028d4b54d07681861d063e48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f716a918503611b7949f8c76324a8422d5567ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fc1954fbc383e5c477b81c0e1cfbf3846d0de10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fda2cc23c1c763923a7718565b0fa82c64611d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80e47c48e9375c6431be3fcb7dcd30dcc2bb5a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x810cf29576e61695ba7fe1e4d493663185691854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81128ec81399f140ea9ccc40834c41710ca8b029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81be7fbf66cf52a5cc6ad77f32361c5f3bbdaad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81e1bfb1830252dfd8ecb2ce1af077f27621622f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81f42f182247fa75ae0ba2b3d0a312cfde661521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x823c529e4289deeb0854c5496826c9f195a1410c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x827f874167fc620b4f13a2a3d2aa2e453b62712b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82b5b50aa44cb42e1a350b10ab9a326357ee1ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8309c64390f376fd778bdd701d54d1f8dffe1f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8325c0bae797fe52e5e5f8a13ab93f86a7d880ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x833f270504de13c699a05a0fe39fc65475cb2c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x834ac088077db3fba31fde3829c77a46d038efc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83866b7817ab99451f773193d307d9e7fe4d191d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392651 | `0x83952e7ab4aca74ca96217d6f8f7591bead6d64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83b12706d27052be68f97bc2d52fbd898ce72fde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8406aaf035c2c50239b32d1cb4583916c1f1c094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x846275d9153f6c89de066b5eaf9deb658298f54b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x846e79a9d8ccc6bbafc3939177a3d53e51c634fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84a538fad778a56f76e78fe255de8fcc9e83f53e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x857f9a61c97d175eae9e0a8bb74cf701d45a18dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85c3dcb47b048c7b08ba5f7c48843116a0375c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x868d0f1985e7e5585747bd6e9b111d031b71f960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86b109380ab2c34b740848b06bee62c882f01df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86c70ce247cd76b776748687634382a1830b3ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86d7abcbde8c55999aa73f459be140d672ddb70d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88757f542b9152ee0cacdc2a0e4ab9c480b0817a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x888ab4cb2279bdb1a81c49451581d7c243affbef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88fa96f332944d478fa0783f424004e894372f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8924cecf2083341b13597e1175d7a318e0547c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x894e10eaf14cc5a7fca4670039114139cd5aeabe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a099a31808a4ee396e3b415a71361ea060876f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ab22febc8e71fc400c228948403f847433a8c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b2e1802a7e0e0c7e1eae8a7c636058964e21047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b382e9badb63ceab38c7d4cc649e9983bdd6d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ba8d732109a4ee78b0f8976b21fc88009280bd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c06828a1707b0322baaa46e3b0f4d1d55f6c3e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c4185d7303c7865a45b46d705f40a8faad43add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c86f4ac42814a1ec136dbb607259b1bf98998c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d0e0ad4648f2d68566a462b547f5f846f0cf3e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d56e13c06d0d66f58b8c33a08701a1dc186eb55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8dbdc64d691f44d538338d18403c6fb12972696a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e537db83f802fd29e45f6ff926c4b792123ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8edd233546730c51a9d3840e954e5581eb3fdab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ee25bdfe0b749b78157505b92bd919414af696c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f28465b03bc726a7993b96fd788ec279e4d39d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f88a62a39d6b24cfa5b38ccd98f7a88f2338ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8fa18a9fcb3b20f7f10eb10215ef98f66f417ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ffa3c1547479b77d9524316d5192777beda40a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9004b64e5d793b70394a96f57b0da869fad328c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x908b70df88c49a12ce876106ff25ceaf6f9acf7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x914556b16c1220e4af63084db1acbd4e6f9c65aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x916aebee43e2be7ed126a21208db4092392d80ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9185d1f86592dc670568b240c7cc5bff7a04dc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92aae7428773ae8e8156a3270e91641807d68a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92f75da67c5e647d86a56a5a3d6c9a25e887504a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92f979215c9aae3584b268ad99fac2ced16f28fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x933609da60b6112fc9ca5e55a0ab5ec56b91f2ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9397a0257631955dbee5404506b363ab276d2315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93bc576943ef7452888dd810f502595ee83187ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93defbb24f3af3afbbea7a90a9ae16759ef1f2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9463b67bb6c2deba1c6b948e0eb17a3bca7b343e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94ccea84bf9b212f363915294e4a7e7d3e9af213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x953853590b805a0e885a75a3c786d2affceea3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x953a04a757f88122b428f1c08f5d43b48c3af951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x958eda413aec5817315ea3dc532091c0b0021919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x961890586dfb84919d8c6c5f6304192a2b3ddab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x962ecf51a169090002cc88b4bf16e447d2e13100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9632ade92ad2d533309c8c66e9d92e1d4823b680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x968c7ba82397dbf1291ac51441b245215e3d57bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x968fc5ffb5948938099b1884f21aeee0fe560198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96e751710e88c867a9449e4eb97c65b9ea2d6ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x973509a4e6dfaa2b5753fc8fb4f85f861ffba8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x974ef0bda58c81f3094e124f530ef34fe70dc103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97958b45a70554ee492d7b6d10fe2cddc642fe64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x982925d85d3173045c08d90d6f465f78b44d50b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9854f6615f73e533940f90ffe8db1eafb424a3c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x985fc02b429c8de491e78ec4a8f320cc0e8d7051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9937dd4aaacfd77bd34a88f9282fae36fae364f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x994eec382bcece558f1352efe1a681765db9ba9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a389b52e05514c67352237776750a1ab7b304e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a82488b2733e930d33b227060fa79b97a79b409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ab812e91d5b2a6870c30756829bd9e54b7309e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b3298dba29a1fc7061a4ef9b360eaa12879c911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b34b6028995addc514fa2bc2b5957174cd84e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b965438fd29565586fdc8c2d074060719b88860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bd4441de6524ef86ecdf7c377082eec66654523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c07d57b90550fd759ea3717e52e059deb1a96c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cf0ad80edfef600de04704b66a3042863d9fc51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9dcb28e8c2db31b44ce0448d567f48e8a310e808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e1a0c4670057129e809e0059734c078cbae836c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e4ca07daae819de12ff9edc4647a1bbf3e34305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ec50ee696bb1c6f8f4e2181f61ad687700005cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ed64da10fdf35e86eac89675bb032e9d54d0510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0a72f0b5056fba03158fc2d75cf6b4e364c6520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0d64682d6e9416a2d1c3e32a3b121207a62c329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa15000c4a476c04442fc4712263ffa35e98121bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1edff60a604bb9dfef25fc00b6d82a07ceaaf91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa22d8fd15fb36aa9e1db795a78db8b688f6284f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa250a94d8d5a1a9cb1fb65e8d1d4ba666d484d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa29b26ee5a1dae68bf994bd8313bb4d697aa728f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2fc79c82e53d4b605f28f1ca33a2bb209232665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3528e975ed30326e4930c8f70b01f9d9608d8b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa362a10ba6b59ee113faa00e41e01c0087dd9ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa39785a4e4cdda7509751ed152a00f3d37fbfa9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3e7a591c3d35b0c72d1be7a6805c7288b5ae6c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3fdd3ab82cdce96aa5eb74c38f15ae478f6cccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa49c03221461a3f26bddbc347f8ece8354559dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4a8dae6a4940ea625769e0d7fe2991cca4ea7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4bb2c3bde08fab2c1a9537b57f08653f51e8fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa514c642b92c8a2c3cbf7cf7af53f5c2c835afc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa54579e2c59be00e92b63440492e817dba398aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5545a713348d1b7114d30f341006731d439b059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa562f95db32a0d72e0692f731bbfb9e20648870b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa568d7b8c2a15d66e515a5a8bc9a1f9aa73f6926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5806bebcb3dc811532d1b69c303bc4d38a56156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5ede9da8b5bdb042562aa07ec01a33ae3f4d52d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa66e5568d5b79338d99d8a10fbca2bb813615e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6c0a88fcc92ee0a40faaa988eee1bf4af4d04c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7282b214e437f79e124d0b4fd58a4421d964f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7c9b7b58ee418b2ce7d261221c7f2c58b9f235a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7f6898d26637023ab386aa38ce3d19dff6618ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa829397af2add7c6564a74dc072b3d9095581d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa87b8ca33cc97ceeb28086edddea75d6b3ea4e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa888388f6f54e25e59a99498731e71ca10aaf77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8981eab82d0a471b37f7d87a221c92ae60c0e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa89947f32669ee3414ece27f2eb26e274a0f6c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8ab5ad340a3a728c835f93190357088c8ad5225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa96030a8527966c0e23033f1248906866a99d9d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa96f7afd4651319be90bba35175fbcbd6758e79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9e1cdb332f28469c1d9beccd740bd7a3dd46f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9ff3d5de5dd50a0b64c7e82f158de9c3be611ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa0af92524c2cdf744c1cd39be559a280f3796c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa933c94c255f092711c70e366b01939c349d84b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaad21eb26464c1e37e4bfbcb1ea99ba5576f4e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaafaf2271f58b88cde048af40c49ae0b5b59cafe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab8ec44bc3d64b4e43c87b30faa045a9b93343e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabb7aef3862daf3bebf5d7e23f62499bda9f922a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabc27564d7ca2a4bc05b49298e4182f4b86108ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabd637a6881a2d4bbf279ae484c2447c070f7c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac73306de97abd0a8e5243e7902a9a860cdf8343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacf2814cf22fcb08b3dda331221a52ad7b05639b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad050d11521dd1dd2cc136a9e979baa8f6fab69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad48811fe7777b2c89ce2f3a19cd5bdabe93d364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad53e02601eca3ebd828646a80539868543c1747` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392657 | `0xad86ef5fd2ebc25bb9db41a1fe8d0f2a322c7839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadccbfd3c79c19130bea56e8f848db1bd6c74976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae1ff783c231686112f00d3dc5e9ab3d4a43a661` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392658 | `0xae88be7d3fe6545c688b640b427af4bab90e2638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae99ea8666cb3b04d2b5b7eeec9e9565b2a4808a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae9d046c27a824de4b5babea75d0754132664d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaebf59cb4af3061e2455867feb1000e2f32b7df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf1f77739e87a1bda1114e13d4af86c8546f3996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf48b215121c3aec30ed5c7256918c6e0de3c678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf7f6e131da000ef61e0501c1daf5bdc440d0f31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf931ded9dbb9d8f84bae9748e71485c45dd69c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafba321b14a22501466d18ea0d9616f8e90fc378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaff50d65fe5b97faf7cbe429e3ce594fbc1f4c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb065138e46fbdd0ae412cbc369cf7f1d1c121e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb09359516366111ace33d5ed6b5f6bbec9cdf9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0b9d5ba89ec52306284bdd0f63cae2656126753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0ffcef8630867035a721e805410f3222b8579e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb156a564262f91b221c29ac2df6730eb66976f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1c5867847a347ae84b53cb0eeaea76e9aff91f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb21b21e4fa802ee4c158d7cf4bd5416b8035c5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb251d1ae7d83c7621a409a03d4f706e53065e736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb26a7f2bca1de2e6bff411d2ce04ca6c3285e0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2c8ba7e9d633ccfb88efaba2553bedf73f18bc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2dc2aabb618cf733e5e1389f83ff80ae40a89d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb305856c54efc004955bc51e3d20cef566c11eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb357ba896818cccd020fb3781a443e3d3f93beff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3d3e6854ae65de9119b5a5a675f14940a09ac27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3dbf3ff266a604a66dbc1783257377239792828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4281c75bab70734cde886a9f6624385e88429cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb467d6831c115e9cb6e35cd700136d61611a1718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb485080f8adaaebd62a34f9a8ab5d63891b4a059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4db531076494432eaaa4c6fcd59fcc876af2734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4fe95e89ed8894790aa6164f29fac4b0de94f47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb57fb9532a79b1bac40d69a7f4fb253ae7940316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb58fa0e89b5a32e3beecf6b16704cabf8471f0e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb650d77ef3e1305fdf96c27a920149cd71576495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb66d2fbc206644d962ef3a8eaded938a8ff1edb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7094fd4a26397adb1ac1beb73046c55f91aca82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7c142576db57e618f08f8b059a756c9d8fc77d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7f50a256c42f780f1402bf9014222b30854962e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb81159b533f517f0e36978b7b8e9e8409fb9c169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9309d98b29a9527a9b0367dea55a54177373f9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392659 | `0xb954ae9a4374751cb3d578cfa3db96e0e5881c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9b9800d18287ddb04296bd47192daba159d8128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba0eac2575e5e3d2cfdf29bf777305c3ef121231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbad2899ef9a1012fc75e8b70a1e2ae6543d98432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb5831ad10ad89726d1dba0c01f991842f576c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbba0f8a3aa16657d1df2a6e87a73ee74fec42711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbba3ccc3c74c10947c7480324155e933133997a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbc1340b6cebe4bd90660f926d40a84ab1f4d0bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbcb4cafe31dcc777a45569005a2b7a48a006b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc00e639a4795d7dfb43179866acb45ee5169fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc6b1ee6d574b2bb25565aff0dcd0959175f9483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe290f7e69d5ec6941f9a3d6f1ebf93c179ad6de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe3c2e1f49fdb56f297bcc1df89bd088ad3e4d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe609cf73c25cf64fe90dd31c4b0157f199e777b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe7527a9cb26e62b7e9f1850f8141f289682f665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbecce444339edaec647e78e271fdaee5cc133dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf9be7db1c49dc4c1a7a3cbf219aedf6945889fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfae4242e38e25747bda19af0519784f20c2112f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392660 | `0xbff6149b2a1eeb145b84e897d2af5afa3bff6119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc155b1a2e0e06f37a4f52e1b4770cdc682bc45e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc172b716363a379fefc0c83ec3c48f481a189692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc19d130e8fc40a23d0a094e9caac5916b75060ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2436709616340c4138c0d36e0120b2ea6168462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc32912310bac6140409f83f50acb372f7509c1b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc33b19c3d166ccd844aedc475a989f5c0fc79e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc38f6f1be006b7d7de9f08aa5e6f82f93c7b5220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc392a73ebc1fead1680683aee0d8cdce0fde4bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3c7787957b03540ccf8f7c06924dbd6a18ed944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3cd6b9ec31ff3d7eba85061e07a7ddf23a6054d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc42701ae4bacf65a23b82abd42e549aab4fcc2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc49942399d8baf835e6806a5bd93d4315f292e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc561812b2e3962a89a99c2dd583b3537a32b15d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc592114e5a94c0f66a5f3c4a8777e26df9e37e0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5e7aeb5a2f80e157c3ad801e15cdcfea74551df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc623a46ebd2398db4188070efde2f355f5832399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc72901e3dbe5258728b329352fc4742f4966bc1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc79e3f17b88e7e621196cc2d5a6b23617dc62ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7ca863275b2d0f7a07ca6e2550504362705aa1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8d8ee913a62cbc243280a70a7d3e1760de35a8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8f5066222c0a639c253154de69cbbbf08febc1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8fd2f1a5b2ac9b85121a43a80bb2d75b3b9bef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc915e9feffceacfd037089be47e1c94c43bdd329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc932639f60bc2f839126298a9f9130084a038f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc94913678b4f27301f319945299b6fd12c0afa67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9a6a413fbaf5029a4d4b9ca9e15efe88c8e70d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9d31726a48444e1b440c8534fe6a16bda563db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca238ae83aa7647c8c86ba01c652e6eacbdedc0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca26bf455974b85df3ed9cfdbf0b620d616738bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca778f0766be3b7e5ffe10373b0dd95d69e67817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca900500b549e25120c59b886c9e02a8e9c38d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcaa216b286e286a831f009e67d72c40cb1a5b72a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb0a11dfa23e457a917488f11843822085edf146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb201e37113681e216c49c7c40b54a12b58e9288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb3828453b688b7ab9ec44fa71653d57344a6eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb99cfaf774eec0f4600b610bc429204a8b9ddde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc6f8bef7387a9ad0e6041530367d66cfd2addfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc757081c972d0326de42875e0da2c54af523622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xccb342985a2963cd3643cfb40b63d145ec8c5a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xccb8adafff911be27e51c6ccb03fae041d391454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd4a6733d1e497672290b0c4b891dfc10e03e973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd4cbfa3ee44b9500b4730a075ced0122d824dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd651ad29835099334d312a9372418eb2b70c72f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd9aa4d1a0cee1d0ed3798ded6fb925cbfe598a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce1a073f8df6796bd3b969f8ce1a04f569965a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce2da0c09b28db317b2177464a2e6e56444884fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392664 | `0xceb829a0881350689dae8cbd77d0e012cf7a6a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcebffa4c80291e80ea0684e4c8884124d6a81197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xceea9292e3c5a2036f1b48a7ab7cd53b3e5a8646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf082105bb9339ad91760c4bb900f349b0e11dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf08e9d9e41cdadccb751d36fc76b97b2ea2bf13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd00a375784162b6e727c4ea8ce8aacf32607a2de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd06e4a8a7aef46b488bd4c558a3513f9782647b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0d8cac872113d241b7e19398d519299f2156755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd160f3696511624d27052eee084b996c48004fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd20c684298da144289776224e5c19d7feea6152a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2cf3994b667c9fcb64b3549fa3edba980a2d30c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd342244b7552c028b1e8703658819b76a5313b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3829b16a2a7338a15078c541ba331e49d635e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4adad0ca62bc5b504dcf302c85e649e6175424f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd525536c24394fb966a31f70c4ea974356c9905c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd579719d3a58492d803c7d60e3565733a4ba3dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd596136ee746baee7ac159b3c21e71b3aeb81a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5b368f41f48b6f629dd76c00e565bea030bb04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd61336cea581d9c99fe73bff1fbf2e9082b230dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd63359ff51bf1217730ae2c37979242b1a3f7c53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392665 | `0xd65e006644d417af6a9385182c21733762b94e83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392666 | `0xd66df640a2f213b6e5087204caee2b2145a1c1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd686ad524e3324f20eafbaf0e80f4553f749431d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6fe1ea4c8b7b7ee34386ee2e6cf5277f5906550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7b8f0eef30749b636cb5df7074d938719e8da4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7bbef974995fbb96cdb57a81b49ab4c6178fab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7d6bf069c7deb1baaeca8331a6035dc0b118722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7e8d994e0ac76a8c41496290a11ca212f074851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd84d88bde1b5c15c78d09741d7a9d21e73929ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd84f5c83b2dc67d9ac7af06a93509ccbe4e81aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd85cbb70074423a6e0aec7955c8e147d608e2d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8612404d472d7dcf4863147dabb7740fd0b25c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd865b861365c777b3942122933ff6f8ad1cd28e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd900deb68fee93cee62a35fdcb0cf21214653566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd92389266914b0528c853df01b7624ee5e23673c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392667 | `0xd928ab4b54f7fd0498160ee52ac0c92bbb9c9cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd98b1afd49671074c86f31a76d0f87c438f1d8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9b5b4ae699504323a48b97455bc6637da141866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9eb45274edea6780d0608e8406706f7e072a1e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda14d01c068503cab9cd4a8bc54748cbdba21dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda59abc89c7be9d7fb3e049ebcc42b1de84a6272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb3bc06d644e4d71731664d3f4bbe1c3c4726bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb8f74b8505ca485ce75aabd3f73715bdfa3a19b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb9a4adeb25f2010a929459bc86a096459d049c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc132af22690c0d3812adf7260f083e7935092bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc2159a913a99d22b771bd614c77c45738461188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc35f62a8f958dcda19c33955837d4426332c311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc3f53a364be3b38d6f8e6a087f61cb2af58fc51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcc59a5163d8c74852172869d332cc4ed0a1d4fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde138f00685f6dd2920afff1b012eb114050b305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde3be8a846e4311447462482e91e4b97115222e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde9f979fedf595fcfd1d09c85d194c700678cc83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf5250704bd1ea4c1813159f9a06fee7b56bd8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf7f15d05d641df701d961a38d03028e0a26a42d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe004bf940fc80bf603eccea6456f205aa14e1fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0290c183e9f63a6f28938051443d9ed47710073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe02e4ee85c91dde19938a2997014224d28f977e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe09b040d09ee2d4d1f2c976b3ccd3db52f9b49bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe11248e5c0a98038633603f291267b74183ab7be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe128a7f1797f66030387a8e3edb720dcee3c3a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe13e1a491edc640b0591d70390897620f31bbf6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe1d65ca772afa5800bddf3e95b3e573079907c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe234532d0d2c119a8bf11f7fd77f792887a46a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe33acadf398fe64512689b5fbae440ccb1abaa5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe34e6d0992aaeb9f313a455a9a030ce677acc60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe38fbfd228a6afc9335e7fca067c7bfb38477778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4543c234d4b0ad6d29317cfe5feecaf398f5649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5614c304d73d990b8bca8f055ec0f2685ebf60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe61e5291ba241027b10064ac0c99411aa51dac52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe67fa5a5a1560c26c8a8a4c0691f7a88f4708ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6d20fc3fc82c8526994d9923b2bbbdd69b227d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6d5806b2248777761ade4bc4f38e9aab6bf9bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe708b42b2a0a28754a390f40b2140a7ea1e14b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7c94325a06e203e56224803196d2cabff9bd439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7f83a91adb20edae3e34e819ee53970ab5b8ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7fffc0d15fc238f8f1acc40db5b5a0240fb116a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe82f6f1e9e01b4998f81d5e6507cc03d0b8de89b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe82fa68d84fcf5cbef0d97c09c33673ea9b849f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8c651b51460248457b80dfdee0e545bd474bd68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8caa3e0cbbdadcbfa5d1a7b77111f77a0a95cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe90a5cedabe829b5dcf596b326ef03e74ae60fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9141904272bb15b4913e3730eae7cf17908423b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe93344566bfdf803ee3042019f31c214213ecfdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9d842c46e3be5ab68b226d9329515a85df7cee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9d8c31c5bd5f2939731387dbc4f1c984828f532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9f8a97a7ff1c1e5cea45d5819be5cf912ad310c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea121b74f88c9e8dcad5f415f012f2deea08ee88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea8783a22be3222b0f7e253c7447719af7431e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeaa9aaa86d65b52e5f8a8c256e156c143b2c3b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb3fcf637d45d92c5d4128831e073581dbd1d246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xebbdec4bfdd23ecc53225214faf4612c19dd0347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xebe24296f9e8ddf26c7fb86b17a7172269ebf934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xebee8807a671a858dbb2a1894ba8336a73a5b6b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec09cba71ea33c8f3559889b8191ec889f3f0f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec54a22b53ee66a77c5f26f860c6913472199661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec7da05c3fa5612f708378025fe1c0e1904afbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec908ea85e321fd3c9675f6d1be41183aaf3c3e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec96cbe0d178cb18ecf0d7bf6c2b599dad28da47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed4e5b01cb6f67fa65f622b0fc14c0006a5ec22e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee4f816ac2333a346b7b3a76579f0b5342511822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeea1a5a847d891ff298fa33f5ba9e5603bb3384c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeec0b6b6af1a5ec3571ca5e219511bbd630f0477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeec21abc6dad38a8515a7c3388e5ef962cd960e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeee6606dd8ae536d9302f512961dae0f6e9b1cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef28dbfdb08c4475f5fa07ac2ad4b8c1cfe2938a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefd3c8c866d93b71314114dfdd4f64fc5525d000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefed6fa1ebebf6800ef097130f2e1678be7f3bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0034462e91bab693d3052c619ed67c0613ef047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0b2c31c44e72eb19c49c21bace58aecc6268c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf12fabc34439bf884f43d6c9e6b9149bbde24262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf23c55a05c9f24177fff5934e8192461aee4f304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2596c84acf1c7350dcf6941604ded359dd506db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf25f6f5dad18a16033d05c1f2f558119665fdef4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392671 | `0xf2fa11fc9247c23b3b622c41992d8555f6d01d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf332d93a556a556a785ac0b010791918d7b8e927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3c9d8f8f2784e63bd2631c4a4c6ef02973aa6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3f3a211df29316ef1971d2f894dd154d2858f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4072358c1e3d7841bd7afde31f61e17e8d99be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf41f4b7e40baac51ba4507cd471dc092670bb839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4a591beac3a4d864c3293477bbd3f86880ada16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf561eae92039ab1540a75fdfd50ce8c6800bc078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf58b2320817c2aff5a70349907a18986a2f13469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5b4ba166b8b351c0df92bdd6bf7d46d537185fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6734c085d54f30eae8620f43a495117ee4fa39f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf67d65074500964a0bec8f6e99dfd56c8f9368b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6838ba67f68279bcdb1e0997cfee2df8b1dd7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6aaab65b735e71951af436bba7ac4461c9e3e83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6af690a89862a4704230e91b3e91570490d6580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf74886b3f234a20ffe38d11d7a0f7100b5873179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7818a2ff5c31e1f2dea45fa4fb93b451864cfaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf79bb7ebe67a58f78ee8ee16566e2b170e0cdbf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392673 | `0xf7b8d9f8a82a7a6dd448398afc5c77744bd6cb85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7e5ca8456cebeda6dd51cff2b0ae8ce1fa58f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf809b288e339a3dd1b8b61096fa41c573e14deea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf87dc60a4026b11f393b3b4bf886b042d52e970c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8a0dfe490cbf543dc27163183b71bd80f817bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf9506dd2d34e589f415c8ebadeb251139ac479b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa0fe5a50c35832e11dc75a124a9ed761f43a43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfaa4f21a8ef346370d00f1a7693fdc5d87c3e12a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfaf355a32271d569e957a2b54c450631252a81a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb3ba5884ad5ebd93c7cb095e4ce08b1c365c2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb49ea67b84f7c1bbd825de7febd2c836bc4b47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb7102506b4815a24e3ce3eaa6b834be7a5f2807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb9dad0d71ea4d61bc4efbd43a5b7a2f6be2cc66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc139c3a5892a48ecc0fbac10f496e356b511d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc371ba1e7874ad893408d7b581f3c8471f03d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfccb3eae602cc663bd8a841cd13ae3be5026441e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd1d72843653cc794fd604b61d25c03919d8d3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd2400b36a20a07c4ca79dfbef4045ea249b2a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdbd10b0354f2291d535a07d3bee1815b3cb7bff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392675 | `0xfdccf6d49a29f435e509dffaafdecb0add93f8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdd994ad468cd39a4a3a3c3a0c460bb2213159b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe19f34873fc2c7ddcb8e392791b97526b4d22e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe1a87cc4a2144f7ebb7d731be80bf0e4cc6e909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfec005280ec0870a5db1924588ae532743ceb90f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfeda214455c227ca148bec384aebb156fdcd77c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff03ec2d9311c40baa503abd2028431fbb6bc301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff86e2a7fa6165fcef5872ae72458df7473b63a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffa285481745cce2e02a4ea6e51ce1ef44cbd9c7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 754
- Live contracts: 0
- Unknown liveness contracts: 754
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=754

Showing first 200 of 754 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x0aa01af55a576895bfd0c29062da6e91d3f64442` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x27f8fe86a513baaf18b59d3dd15218cc629640fc` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4bcfb10465a8d22f0a047df3afa8ee06cbcc8e13` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6e2e307d77532801fb22195fb502c5538c0fda7c` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6eb9cb199c55de50279a69705ba88c146fadc574` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x747f114effd243f80e4fff6d846f9b7ef5e794e3` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8309c64390f376fd778bdd701d54d1f8dffe1f39` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x888ab4cb2279bdb1a81c49451581d7c243affbef` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x92f979215c9aae3584b268ad99fac2ced16f28fc` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa39785a4e4cdda7509751ed152a00f3d37fbfa9f` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb4db531076494432eaaa4c6fcd59fcc876af2734` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd98b1afd49671074c86f31a76d0f87c438f1d8cb` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdc132af22690c0d3812adf7260f083e7935092bd` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdf7f15d05d641df701d961a38d03028e0a26a42d` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe93344566bfdf803ee3042019f31c214213ecfdf` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xebee8807a671a858dbb2a1894ba8336a73a5b6b3` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xec96cbe0d178cb18ecf0d7bf6c2b599dad28da47` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf4072358c1e3d7841bd7afde31f61e17e8d99be7` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfc371ba1e7874ad893408d7b581f3c8471f03d2c` | non_address_book | unknown | unknown | unverified | n/a | `0x0507d42b80d52d3495d625a03ecffa4a30c2061b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xad53e02601eca3ebd828646a80539868543c1747` | non_address_book | unknown | unknown | unverified | n/a | `0x10c2963988f0a33ac7c729ecd5e925b2d09a7674` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfdbd10b0354f2291d535a07d3bee1815b3cb7bff` | non_address_book | unknown | unknown | unverified | n/a | `0x10c2963988f0a33ac7c729ecd5e925b2d09a7674` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0eea398c113fe9e9b2b516920ce5b91f1beda585` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ce30991623dc1398c10a9f933d7a614a42cc597` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ef0b909f993e06dd0d3fbd4a82a21f38538c5da` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x40f9c78ce39b4ce12b65daedca7f3f699613ff42` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x42a8bcb58e8507c8987ca59374daf5aef4974bfb` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x434eca6c9e62c6ab0dc8c93da9ed6e9553cc343a` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x443ea91cad685e8985ac056175a03a899a35742f` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45ad9be2ce4af483e7a86e534f20dc3847e9e51b` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x48f736cc619cad053f559cf24edfa2401bed9c76` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5c02dc0c2aa2ee9e5cf79628c8d6bc00ca78bfb7` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5e473523370f301bedec43f0a142b83b31802275` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x620ba147d7fff419b18ec99335c9691c4c0940d1` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6c74b1f14a999bf3ff6f0764d87269f7f0c7808f` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x70807713924697cc5a4a252aceaed921365bbf29` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x73733cdcc7315389a847bfa2c1847013cb1b4190` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x77c0025a7b8ea95f863e3529e57bc07f981e6a46` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x88fa96f332944d478fa0783f424004e894372f32` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8dbdc64d691f44d538338d18403c6fb12972696a` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x908b70df88c49a12ce876106ff25ceaf6f9acf7d` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x97958b45a70554ee492d7b6d10fe2cddc642fe64` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9a82488b2733e930d33b227060fa79b97a79b409` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa15000c4a476c04442fc4712263ffa35e98121bd` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa49c03221461a3f26bddbc347f8ece8354559dd7` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa562f95db32a0d72e0692f731bbfb9e20648870b` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xabc27564d7ca2a4bc05b49298e4182f4b86108ae` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc592114e5a94c0f66a5f3c4a8777e26df9e37e0a` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xca778f0766be3b7e5ffe10373b0dd95d69e67817` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd00a375784162b6e727c4ea8ce8aacf32607a2de` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd525536c24394fb966a31f70c4ea974356c9905c` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd6fe1ea4c8b7b7ee34386ee2e6cf5277f5906550` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd84d88bde1b5c15c78d09741d7a9d21e73929ec6` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd8612404d472d7dcf4863147dabb7740fd0b25c2` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd92389266914b0528c853df01b7624ee5e23673c` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xde138f00685f6dd2920afff1b012eb114050b305` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe6d20fc3fc82c8526994d9923b2bbbdd69b227d6` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xeaa9aaa86d65b52e5f8a8c256e156c143b2c3b7b` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xeb3fcf637d45d92c5d4128831e073581dbd1d246` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xed4e5b01cb6f67fa65f622b0fc14c0006a5ec22e` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xeea1a5a847d891ff298fa33f5ba9e5603bb3384c` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xff03ec2d9311c40baa503abd2028431fbb6bc301` | non_address_book | unknown | unknown | unverified | n/a | `0x2648281c7559425d861eccd46784c289ab40d566` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x187aad7fdaed7ad49b15483059f4d232ee3e2b0c` | non_address_book | unknown | unknown | unverified | n/a | `0x3b7631f8e3428deab77634bf799b622ce412e9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1b60d88cb3db98a02594a85d0f823ac08194100f` | non_address_book | unknown | unknown | unverified | n/a | `0x3b7631f8e3428deab77634bf799b622ce412e9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2b3a816e753b6309bf2d0e408a9a067eb0a9a5f2` | non_address_book | unknown | unknown | unverified | n/a | `0x3b7631f8e3428deab77634bf799b622ce412e9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x331ce1623f9012de2d0bd0c2c3159dc71c49eaf7` | non_address_book | unknown | unknown | unverified | n/a | `0x3b7631f8e3428deab77634bf799b622ce412e9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x56852178f378cf07c8bdc2e8583fa963abcd8f90` | non_address_book | unknown | unknown | unverified | n/a | `0x3b7631f8e3428deab77634bf799b622ce412e9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5a403d7613cc0df2e0920f99690b4f1c5f59dab3` | non_address_book | unknown | unknown | unverified | n/a | `0x3b7631f8e3428deab77634bf799b622ce412e9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x60b1a1eb0374861fe79ce946726db1ffe2b6ec54` | non_address_book | unknown | unknown | unverified | n/a | `0x3b7631f8e3428deab77634bf799b622ce412e9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9b34b6028995addc514fa2bc2b5957174cd84e85` | non_address_book | unknown | unknown | unverified | n/a | `0x3b7631f8e3428deab77634bf799b622ce412e9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc3cd6b9ec31ff3d7eba85061e07a7ddf23a6054d` | non_address_book | unknown | unknown | unverified | n/a | `0x3b7631f8e3428deab77634bf799b622ce412e9ea` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x08d8c7c1a6e8543a4674e77cc0111eaa1d520f8b` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x14f98349af847ab472eb7f7c705dc4bee530713b` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x234ed7c95be12b2a0a43ff602e737225c83c2aa1` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3270b685a4a61252c6f30c1ebca9dbe622984e22` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3815f36c3d60d658797958ead8778f6500be16df` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x392c51ab0af3017e3e22713353ecf5b9d6fbde84` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x47f884e0bfc0e56ecdc581e2774efec12874f7fd` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x53a6ffe10adb8db0d861bf264134d42cac03a1bd` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x763aa38c837f61dd8429313933cc47f24e881430` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7987adb3c789f071fefc1beb15ce6dfdfbc75899` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8edd233546730c51a9d3840e954e5581eb3fdab1` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8ee25bdfe0b749b78157505b92bd919414af696c` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x93bc576943ef7452888dd810f502595ee83187ee` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x994eec382bcece558f1352efe1a681765db9ba9c` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9b3298dba29a1fc7061a4ef9b360eaa12879c911` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaf1f77739e87a1bda1114e13d4af86c8546f3996` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xafba321b14a22501466d18ea0d9616f8e90fc378` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcd651ad29835099334d312a9372418eb2b70c72f` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdc3f53a364be3b38d6f8e6a087f61cb2af58fc51` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe11248e5c0a98038633603f291267b74183ab7be` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xea121b74f88c9e8dcad5f415f012f2deea08ee88` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf9506dd2d34e589f415c8ebadeb251139ac479b0` | non_address_book | unknown | unknown | unverified | n/a | `0x6f6fa54d4c680aa40077608592d59dc1a306baf6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaa0af92524c2cdf744c1cd39be559a280f3796c5` | non_address_book | unknown | unknown | unverified | n/a | `0xc99ee029ebaeaf473ef69aef6633489d9ae53385` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x00537cf29fe45f8b216840ba7f36663ad1bfea61` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x00933c16e06b1d15958317c2793bc54394ae356c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x00d75d30def04df020462dacb0ed2b5f653ad0a3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0136c57831f8174144e571393efb52e69ade4265` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x016c5d89fefcaeb3f56c4ca1b59516f2107ffbef` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x025f134952f74b59888d0d3d1545865aa8a9bf98` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x02be560748c4f547fbe653821eef16b2cd8cce8d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0305e53aab1634013131c3d8d729e712a3237a93` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x037e116a780d58be59b5c673abd4a6f415f5c3ab` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x040d72568303927c8eef626ec8ab8271162da120` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x043a2ece3c99fcbcb879a469c35bf267bf842d4c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x04a3b139fcd004b2a4f957135a3f387124982133` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x05bba89e406792d2d73d6d4022347c3893b02a20` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x05c32bd783849d53ae375805f8edfa3d9e5e87db` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0666b3db2441a50b6a1c1d330d2f36df18ad5651` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x06cb3c743924fef73967d88aa9b1c98b13f8021c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x07309850e6d0a925da0b1a57cfa1ed8ca68aac36` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0750b2c5db83fbc3cd3a441193566ab88e9b61b8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x07e7df7f0612b7dc6789ba402b17c7108c932d05` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x07e837d2ae3f2fb565abdaa80797d47412fc3a94` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x083f7864d89c80e3f613043bb3926d0dc2fb6f18` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0889b224f2851fe88dbe0176dd598d8e434b9e30` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x08d5cfaf58a10d306937aaa8b0d2eb40466f7461` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x096bae6c45b0047ef3f1cf1f1c8a56ef0cd58cde` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x09e26431e600f22d111a6f3c8f88d9bae2a64ad5` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0a6dbfb865244af080d2da1a39b78ee5ca673762` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0ae07ea99c985571cd17883f9a27340e06a01dc3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0c33aa168e0882bf0b3e4affbf139f44d3ac8d7f` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0e05bf8ff712dafad85dbf5e15ecfa55af3ea96e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0f30223798499ef8a0825229aba9353537108f80` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0fd5eeef2261597369b51471ed5b9ebeef7a4c6a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0fffa4ca317df728439a51e3101a894dc5080802` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x10286816b50821dc7c1575adf5aefd97f256e165` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x10ecfd99af6f17ec70074f5e75ad19d2365bee5d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x118eaa52519ac8e022f1587d4ec0ef1f7c2246e0` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x13944645342e733f1b8036914d5b23eada2df4ae` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1435c96785b64d4d9452812645c3cd423c1f73ca` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x14519abf2f04a632ee65d84d9a37d9eec02955f3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x14636a5a5dc8836e7e378b9b6e4614a3c94f48e5` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x14ec55f8b4642111a5af4f5ddc56b7be867eb6cc` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x150bc67072c2db7c55d83302b7da7d930eed1c3e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x15f1366b0063c837b4c32d1fe6d0c6a0d14b9ac1` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x16784e86a0cca1e5b7f00916251a1daae7a9a57b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1713f3a63581a380568c5db145a2afe76387ff13` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x17fd2418bcae447ab383a437e4991f5536646681` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1812f42de15ea7da3901ce34237ee8ca5f01857a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x18807d2e81f4dd7cef1348b70d23257a587e304e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x190b01c4821480dfdcfba404eacd64bdc225b5e8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x192ae260676ba79ccc57a6f4ed692bfe371658b9` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x193c769f13ebc953c0e70823f1e15d47b56019a3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x196ae2cbb9d25aecc0b414ae4fede1e01e55b258` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1b42b6a66545ccebfc54dff3aabd55f49b0a617b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1b4468dc172b94b7b8307ca5b1f63466b086acc8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1b5c98ff40724f75fec8e947022ff6a86601288e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1bf90bdeb965a76af56024ef3e70439dea89bf3f` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1c242ae2350f7c6a6124215cbdd9a55e6c124369` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1d98f1408638ba389f6b0c6481b4b9974b02eb8e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1ec206a9dd85625e1940cd2b0c8e14a894d2e9ac` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1f49ce2d792d50b5db60b7500615821a72155f4b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1fa6cce8c303fd826e761d789799115ff68ad8c3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1feb2be70d38e3a58c38fe591c95e63fb978285b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2070bf205a649de46f92c4f187ae941a13688850` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x208d9e674e0e3f4d081e346293690b756c0bd536` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x20b6c71d1724a8d8510fb3d2486e4ccf2a8d91ad` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x22dbe776844052578ef2b400ff72d3e2fef31aae` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x243343c17183e2192f5b9e6d1d599f9ae171aa11` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x263a211b1e597cc336466f15ecc3bc8243f65118` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2736a1d575c115b0899f8b9699898b9a2ba04238` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2754376740f51516594b691f8e545f718f6200bb` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x28a5e50d0841d7ac5d858a76a1c54f27bab6eda9` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x298e7c9b03388fae7005cad5dcb4f78df5c7bbd9` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x29bf8c19e044732b110faa1ff0cc59ca35c13f17` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2a199382b371dd4df72aab2139628a698d469095` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2a1d2d2fdb76ab3bab6ba424612ddafc5750de59` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2a1efddb7f864af3474e9459c4ff3b83e90f728d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2a4d86edd7a5776a5602cf0d07fe8d377897f201` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2a69ad5337a3e99c0658135ec796c7428830ad51` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2ad520b64e6058654fe6e67bc790221772b63ece` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2b30b282405c3ee946843901ddbec1a82562a1fc` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2b48ff2ca4374562cdeea82534519076105663f2` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2ba4b6054b0cd9c587b623526166cf63f2ee55f3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2c6f37c4e80ae6a553a639f706e62fe5b3d9bb81` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2cef114159a6313b8d3a04f3885c678084350832` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d26a50d4b4213b5bd3e4856a6acdfc493d0b12b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d5c3aad971af39e64b9d611ef3d3f5504c9335c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d5e1d3b8cddf9527467c523c485985cff2004aa` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d80354f56fa8c342c249412739ca06b8556bd63` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2edc6522d658946fba5116ffaa60d8760d1b21a8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2ee78b4d4f15ae2489617ae82df83bffa5cfbb0d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f17bac3e0339c1bfb6e0dd380d65bd2fc665c75` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f1b13ade16019b50585df6289e46da988e07d61` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f2ba207f86b46b05a1c79e50b9f980e267719b8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x30298513aa731bee0f4c3ef3a339857ecc99b8a0` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x304c0acd0b5e78db331952834281f75eb5b9ec7b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x307524eea94780884150583ab0332c94f6b1feb8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x307d8c5b83d5aea72d683ed62a172572b10185d6` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x322094fdb02677e7a993e735826c9e183fc605a6` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3274c42c24b190ffe5b168b2690829cda7bf710e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x34aae98720d90c095ac1137ab88766946b7c1c50` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x35192ac36f7203b4916bed14e04959cfb6c5ec31` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x351ba4c9b0f09aa76a8aba8b1cf924ae98beb790` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x35fe62800440595a77a11ff5474b91be00ea1705` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3653546bdb22168031cd7a159bb5c12ef4d585d3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x36a7e3b1ba34167f655ee8c90361dac5e258dd81` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x36c98a11a2b41a5b9b5ebaf8d3160eb8d2fc1800` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3821dd43da32c22ff38a344c2b70e970fcb19239` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x38342ee92b71ce36152a02a062ec1a1ea39da339` | non_address_book | unknown | unknown | unverified | n/a | `0xc9a51fb9057380494262fd291aed74317332c0a2` |

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
| needs_review | 773 |

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
