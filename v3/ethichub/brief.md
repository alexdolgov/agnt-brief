# Agentic Audit Brief: EthicHub

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: EthicHub (`ethichub`)
- Website: [https://ethichub.com](https://ethichub.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: celo, ethereum, gnosis
- Contract surface: 104 unique implementations (221 raw deployments)
- Coverage basis: 3/6 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,533,879.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for EthicHub. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across celo, ethereum, gnosis. Structural roles: 16 unclassified, 11 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: unclassified (16), core (11), supporting (1)
- Contract kinds: contract (28)
- Detected standards: ownable (3), accesscontrol (2), erc1967proxy (1), erc20 (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x751c08...a45119`, chain 42220)
- UnnamedContract (`0xad2f9f...767d4d`, chain 42220)
- AdminUpgradeabilityProxy (`0xfd0991...d80d3e`, chain 1)
- BridgeToken (`0x9995cc...c931ed`, chain 42220)
- ERC20Reserve (`0xb27132...063073`, chain 1)
- IncentiveVestingReserve (`0xcb16e2...273c6b`, chain 1)
- StakingRewards (`0xbfa274...a72684`, chain 42220)
- UniswapV2Pair (`0x62cfa2...85ddb7`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (9 live, 19 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/6 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 80 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 51
- Confirmed-live implementations: 10 of 104 unique; 94 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/89
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 104
- Raw deployments: 221
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 3.4% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20NFTBond | unknown | project_anchor | own_supporting | 1 | celo | unit-239583 | `0x0f497a...378ff0` | ✅ Audited |
| StakedETHIX | unknown | project_anchor | own_supporting | 1 | celo | unit-239585 | 2 deployments: celo `0xc564e1...cad638`; celo `0xcb16e2...273c6b` | ✅ Audited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | celo | unit-239575 | `0xbfa274...a72684` | ✅ Audited |

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd63956...84d361`; ethereum `0xeb69c1...9179ad` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x25e7b7...148d22`; celo `0x7670ea...212ec8` | ⚠️ Unaudited |
| AMBFlashbotHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4c5a...7005a5` | ⚠️ Unaudited |
| BPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239566 | `0xb93aa4...db19f1` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4f386c...34ed56`; ethereum `0x727485...81e8e6` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6943a2...7ad65a` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7169e5...391f89`; ethereum `0xf0b456...131ea9` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd83893...24d218`; ethereum `0xed84a6...9d4064` | ⚠️ Unaudited |
| BridgeValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe3316d...26b543`; ethereum `0xeb6e09...76c36d` | ⚠️ Unaudited |
| ChinosUlti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x6f58a1...c0775e`; celo `0xb04bda...43e9fa`; celo `0xbf83fc...3ad51e` | ⚠️ Unaudited |
| CompensationSystemManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x25e7b7...148d22`; ethereum `0xb26f8f...beb99f` | ⚠️ Unaudited |
| CreditLine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 6 deployments: celo `0x059c8a...35b488`; celo `0x1f6e60...5e03b9`; celo `0x223051...8d4be9`; celo `0x36523a...d5dd5e`; celo `0x95deb3...8e8285`; celo `0xf417e8...7bd076` | ⚠️ Unaudited |
| CreditLine | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | celo | n/a | 3 deployments: celo `0x08e066...2ea21b`; celo `0x1d4e90...92fc7d`; celo `0xdb5d3a...03acdd` | ⚠️ Unaudited |
| CrowdEquityVestingReserve | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2bf3d1...7ef4ef` | ⚠️ Unaudited |
| ERC1155BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf714c3...a17908` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x011042...e0f9d6`; ethereum `0x194cb1...8d7338`; ethereum `0x262569...aa9030`; ethereum `0x36d45e...a7313c`; ethereum `0x573325...7122e2`; ethereum `0x696d74...5679de`; ethereum `0x733e9c...97e49d`; ethereum `0x8eb87a...69cfa6`; ethereum `0xa258ee...51a589`; ethereum `0xa97f2f...80eed9`; ethereum `0xd41e96...9d357e`; ethereum `0xd5277d...61d8a5`; ethereum `0xe84686...cf22b1`; ethereum `0xf3839c...bd46b6`; celo `0x05a71c...a096d3`; celo `0x062eba...b35bdd`; celo `0x1a3417...7967c4`; celo `0x350d1a...8be0ad`; celo `0x3ca21f...944ae4`; celo `0x4426f8...130e3e`; celo `0x485851...7725f0`; celo `0x7cf02b...2f2bca`; celo `0x89cea1...9478f5`; celo `0xa16281...4b8fd0`; celo `0xb3369f...b26de9`; celo `0xbc449d...d9da27`; celo `0xc918ed...a35c93` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x213206...c554d9`; ethereum `0x92be91...7730d2` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x99a6cd...dc0705`; celo `0xe0eb2d...111cbc` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-239576 | `0xd27e31...9b7620` | ⚠️ Unaudited |
| ERC20NFTBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xd8c315...b62c9b` | ⚠️ Unaudited |
| ERC20Reserve | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239561 | `0x1ecc7e...04a5c5` | ⚠️ Unaudited |
| ERC20Reserve | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239565 | `0xb27132...063073` | ⚠️ Unaudited |
| ERC20Reserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239567 | `0xb97ef2...6e3518` | ⚠️ Unaudited |
| ERC20Reserve | token | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0xa14b1d...3e1567`; celo `0xa9a824...b28530` | ⚠️ Unaudited |
| ERC721BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7259b1...c24dfb`; ethereum `0x8b9e7c...4dd21d` | ⚠️ Unaudited |
| EternalStorageProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01db9f...ddb5cf` | ⚠️ Unaudited |
| EthixToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc0c39...c898b5` | ⚠️ Unaudited |
| EthixToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239578 | `0xfd0991...d80d3e` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x07955b...a594e2`; ethereum `0x5f1e78...a924be` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x2140ec...2c8671`; ethereum `0x54c6df...c98ed7`; ethereum `0x5a91b3...bd2b7e` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2946f6...37461e`; ethereum `0xceb06e...6f65a5` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4c36d2...9ce64e` | ⚠️ Unaudited |
| ForeignAMB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x82b67a...7ac6ab`; ethereum `0x872796...a5c943`; ethereum `0xa5ac7d...7aa2a1`; ethereum `0xe804fe...2f4b16` | ⚠️ Unaudited |
| ForeignAMBErc20ToNative | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x218056...d9ff9f`; ethereum `0xf6edfa...fd54ed` | ⚠️ Unaudited |
| ForeignAMBErc677ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x41a4ee...01133e`; ethereum `0xaa60a7...c49faf` | ⚠️ Unaudited |
| ForeignAMBErc677ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6ea6c6...630c2f`; ethereum `0xd92500...2ea7a7` | ⚠️ Unaudited |
| ForeignAMBErc677ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x71f12d...99db8d`; ethereum `0x7c14be...778e24` | ⚠️ Unaudited |
| ForeignAMBNativeToErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb11c0c...ec2540`; ethereum `0xe877fb...deb866` | ⚠️ Unaudited |
| ForeignBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46d811...60256d` | ⚠️ Unaudited |
| ForeignBridgeErcToNative | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x75df5a...a0bb59`; ethereum `0x7e7669...9228c2`; ethereum `0x83c2e0...0fde8b`; ethereum `0xd40355...92c2cd` | ⚠️ Unaudited |
| ForeignFeeManagerAMBNativeToErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f96a4...223bda` | ⚠️ Unaudited |
| ForeignMultiAMBErc20ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x280f04...d22ca9`; ethereum `0x2dca02...38c961`; ethereum `0x4b8618...eb8dbe`; ethereum `0x5275e7...0b85ae`; ethereum `0x7bff37...0cc40e`; ethereum `0xb0a18f...9c2e94` | ⚠️ Unaudited |
| ForeignNFTOmnibridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1762d3...c148f0`; ethereum `0x6c8d0a...73c480` | ⚠️ Unaudited |
| ForeignNFTOmnibridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x51af99...179726`; ethereum `0x564785...daf036`; ethereum `0x89d321...cc1dc8`; ethereum `0xba7bc1...ca85c5`; ethereum `0xd116e8...9f9e3a` | ⚠️ Unaudited |
| ForeignOmnibridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x543fb4...bfb9d5`; ethereum `0x69c707...32cd03` | ⚠️ Unaudited |
| ForeignOmnibridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239581 | 2 deployments: ethereum `0x88ad09...655671`; ethereum `0x8eb3b7...48e347` | ⚠️ Unaudited |
| ForeignOmnibridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94447a...bf98c3` | ⚠️ Unaudited |
| HomeAMBErc677ToErc677 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa8cbad...78a846`; ethereum `0xe7228b...262dcd` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239564 | `0x6f58a1...c0775e` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239568 | `0xbf83fc...3ad51e` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239569 | `0xcb16e2...273c6b` | ⚠️ Unaudited |
| IncentiveVestingReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5bab2...559793` | ⚠️ Unaudited |
| InvestorsVestingReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x08214e...bc86fa`; ethereum `0x34d3c9...216705`; ethereum `0xde629e...870cf5`; celo `0x2c67c2...098858`; celo `0x635775...4beac7`; celo `0xa9383c...de8f20` | ⚠️ Unaudited |
| MembershipBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x302e47...4463bb`; celo `0x4bf4a8...452260`; celo `0x6e0262...53d029`; celo `0xceeb15...a78059`; celo `0xda70b3...228614` | ⚠️ Unaudited |
| MembershipBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x890341...3f3d1f`; celo `0x9dd572...70bbd3` | ⚠️ Unaudited |
| MerkleTreeVestingReserve | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239562 | `0x2f36b4...9b0afd` | ⚠️ Unaudited |
| MultiTokenReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x49bc61...1fe9de`; celo `0x70c85e...92651f`; celo `0x7d7c28...6cbb8d`; celo `0x851029...3c5b62` | ⚠️ Unaudited |
| OriginatorStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239560 | `0x1e70f4...082c8b` | ⚠️ Unaudited |
| OriginatorStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x2f19bd...2de481`; ethereum `0xa7e499...fa44b8`; ethereum `0xe03244...d9784e` | ⚠️ Unaudited |
| OriginatorStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x338833...cbc7ac`; ethereum `0x3ef3ee...852440`; ethereum `0xa1cf21...444444`; ethereum `0xacb56e...135c70`; celo `0x9b755b...62098b` | ⚠️ Unaudited |
| OriginatorStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | ethereum | unit-239577 (2 proxies) | 2 deployments: ethereum `0x3b61cd...04d0e3`; ethereum `0x7435c0...1dd955` | ⚠️ Unaudited |
| OriginatorStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | celo | n/a | 9 deployments: celo `0x0306f7...9043a8`; celo `0x18843e...ab9693`; celo `0x2ffa2c...06389a`; celo `0x519599...acf899`; celo `0x6ed247...5000f7`; celo `0x7d413d...3d2fa1`; celo `0x8181d3...582c7c`; celo `0xcc0d68...a9eef7`; celo `0xe33c7d...74073a` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x12f46a...548b2b`; celo `0x57094e...2e5947` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xaf9ad3...172314`; ethereum `0xf18248...659d17` | ⚠️ Unaudited |
| OriginatorStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0xe03244...d9784e`; celo `0xe1d776...5b153f` | ⚠️ Unaudited |
| OriginatorStakingWithLP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x51246a...ef1f55`; celo `0xdd2ca0...fbf8fa` | ⚠️ Unaudited |
| OriginatorStakingWithLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x59921f...713525` | ⚠️ Unaudited |
| OriginatorStakingWithLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x3a3079...d6dca3`; celo `0xa9f740...494883` | ⚠️ Unaudited |
| OriginatorStakingWithLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5ccf42...30e7d7` | ⚠️ Unaudited |
| PermittableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7c24d0...b254b3`; ethereum `0xe1ca72...aba03d`; ethereum `0xf886bf...245e00` | ⚠️ Unaudited |
| PermittableToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-239582 | `0xec3f3e...3fbb19` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0e0f44...e66029`; ethereum `0x5787b9...3627b6`; celo `0x75a6a0...5aab60` | ⚠️ Unaudited |
| StakedBETHIX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x713782...5bc004`; ethereum `0xcfd8ee...54fd8e` | ⚠️ Unaudited |
| StakedETHIX | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239580 | 2 deployments: ethereum `0x5b2bbb...39cc2d`; ethereum `0x7d8767...ca93c2` | ⚠️ Unaudited |
| StakedETHIX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: ethereum `0x55231a...4c4090`; celo `0x1905ec...fd407c` | ⚠️ Unaudited |
| StakedUETHIX | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-239579 | 2 deployments: ethereum `0x3f4b71...4dd673`; ethereum `0x89cea1...9478f5` | ⚠️ Unaudited |
| TeamVestingReserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239563 | `0x48c5bf...73517b` | ⚠️ Unaudited |
| TeamVestingReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82e336...6211ae` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3efa9b...72502e`; ethereum `0x71d5ba...8f0424` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | celo | unit-239584 | `0x9995cc...c931ed` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14b94...06b458` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-239571 | `0xe5bc36...3577eb` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | celo | unit-239572 | `0x62cfa2...85ddb7` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x342072...955a5d` | ⚠️ Unaudited |
| WETHOmnibridgeRouter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6439c...c9038a` | ⚠️ Unaudited |
| XDaiForeignBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee4f8...6d0473` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-239570 | `0x2b8d7a...f2acd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0e1c2d...23f821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x21cc49...0ea81c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2dfbe4...e1cc9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-239573 | `0x751c08...a45119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x78ccd8...5e2fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7e7457...b3b2e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x84b1d6...8cec25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa317c3...119945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-239574 | `0xad2f9f...767d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc684b1...79d605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd582df...e24bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd9aea7...7aab2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe5b70b...0b1052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe70330...eb5b5a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf](https://gitlab.com/EthicHub/ethix-contracts/-/blob/master/audits/Red4Sec-EthicHub%20-%20Smart%20Contract%20Audit%20Report_v3.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 25 | high |
| [EthicHub - Smart Contract Audit Report Final.pdf](https://gitlab.com/EthicHub/minimice/-/blob/main/audits/EthicHub%20-%20Smart%20Contract%20Audit%20Report%20Final.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2663] Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf — matched: Scope section lists 27 files; contract names extracted from filenames. Note: 'CompensationSystemManager' is misspelled in the report (should be 'CompensationSystemManager' but listed as 'CompenstionSystemManager' in findings; used the scope listing name).
- [2664] EthicHub - Smart Contract Audit Report Final.pdf — matched: Extracted contract names from scope section and findings. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | BaseTokenUpgradeable | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | CompensationSystemManager | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | DistributionTypes | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ERC20Reserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ERC2612Upgradeable | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ERC677Upgradeable | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | EthixERC20Snapshot | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | EthixToken | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | FeesTreasury | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IBPool | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IERC677 | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IERC677Receiver | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IStakedEthix | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | IStakingRewards | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ITransferHook | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | ManagedVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | MerkleTreeVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | NativeFeesTreasury | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | NativeReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | PresaleVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakedBETHIX | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakedETHIX | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xcb16e2...273c6b` — deployed 2022-07-12 17:58:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakedToken | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | StakingRewards | own contract | StakingRewards (selected) `0xbfa274...a72684` — deployed 2022-07-29 21:13:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | TeamVestingReserve | unmatched — not counted | — | listed in scope | no |
| Red4Sec-EthicHub - Smart Contract Audit Report_v3.pdf | VestingReserve | unmatched — not counted | — | listed in scope | no |
| EthicHub - Smart Contract Audit Report Final.pdf | ERC20NFTBond | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0f497a...378ff0` — deployed 2022-07-05 18:14:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| EthicHub - Smart Contract Audit Report Final.pdf | NativeNFTBond | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | CollateralizedBondGranter | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | InterestParameters | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | BondGranter | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | NFTBond | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | AccessManager | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | NFT | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | InterestCalculator | unmatched — not counted | — | listed in scope and findings | no |
| EthicHub - Smart Contract Audit Report Final.pdf | LiquidityRequester | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcb16e2...273c6b` | IncentiveVestingReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x9995cc...c931ed` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 84 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Fork inheritance lineage and inherited audits are included when available.
