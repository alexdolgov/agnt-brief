# Agentic Audit Brief: BabySwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL changed 1.0% over 90 days

## Project Overview

- Project: BabySwap (`babyswap`)
- Website: [https://home.babyswap.finance/](https://home.babyswap.finance/)
- Lifecycle: dead (Tier 0, 99.6% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 119 unique implementations (194 raw deployments)
- Coverage basis: 1/12 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,301,945.33
- On-chain TVL (included contracts): $197,171.29
- TVL by chain: Bsc $197,171.29

## Project Description

This brief describes the observed EVM deployment and audit surface for BabySwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across bsc. Structural roles: 14 core, 2 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (14), supporting (2)
- Contract kinds: contract (16)
- Detected standards: ownable (10), erc165 (4), erc721 (4), erc20 (2), pausable (1)
- Frameworks: openzeppelin (16), foundry (7)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BabyAutoPoolV2 (`0x3b6279...2554b1`, chain 56)
- BabyERC721 (`0x9f0225...fd91a8`, chain 56)
- BabyExchange (`0xe7bef5...ae2d00`, chain 56)
- BabyFactory (`0x86407b...f889da`, chain 56)
- BabyFarmV2 (`0xcb5946...0842bb`, chain 56)
- BabyPoolV2 (`0xad7a58...94ef1c`, chain 56)
- BabySBTs (`0x8c2710...76fa7c`, chain 56)
- BabySmartRouter (`0x8317c4...e2ad32`, chain 56)
- BabyToken (`0x53e562...3d2657`, chain 56)
- BabyWonderland (`0x1fe7f2...1dd68d`, chain 56)
- RewardClaim (`0xf28298...1f856d`, chain 56)
- vBABYToken (`0x051344...e5cb22`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (13 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/12 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 104 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 13 of 119 unique; 106 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/71
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 119
- Raw deployments: 194
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $195,282.35
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $195,282.35 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 1.4% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BabyWonderland | unknown | project_anchor | own_supporting | 0 | bsc | unit-380088 | `0x1fe7f2...1dd68d` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BabyToken | token | project_anchor | third_party_dependency | 0 | bsc | unit-380091 | `0x53e562...3d2657` | ⚠️ Unaudited |
| BabyPoolV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-380095 | `0xad7a58...94ef1c` | ⚠️ Unaudited |
| AutoBabyPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3e1ead...e94dbc`; bsc `0x5aeb26...ca3f52` | ⚠️ Unaudited |
| NFTFarm | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa28072...363318` | ⚠️ Unaudited |
| NFTFarmV4 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x391079...aa4ae0` | ⚠️ Unaudited |
| NFTFarmV5 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2f5822...3f1a30`; bsc `0xadca12...798ea1` | ⚠️ Unaudited |
| BabyAutoPoolV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-380090 | `0x3b6279...2554b1` | ⚠️ Unaudited |
| BabyERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x00a234...981169`; bsc `0x1e1c96...50c248`; bsc `0x30cd3e...de1702`; bsc `0x57b342...a039fe` | ⚠️ Unaudited |
| BabyERC721 | token | project_anchor | own_core | 0 | bsc | n/a | 8 deployments: bsc `0x103aa3...4975e7`; bsc `0x402f4e...be0981`; bsc `0x548351...42e7bf`; bsc `0x60e1c3...bf11da`; bsc `0x65328a...0de500`; bsc `0x9f0225...fd91a8`; bsc `0xd92a8d...6909d5`; bsc `0xf3a360...eef11e` | ⚠️ Unaudited |
| BabyExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7b8c94...e0e47f`; bsc `0xc30321...ca94b6` | ⚠️ Unaudited |
| BabyExchange | unknown | project_anchor | own_supporting | 0 | bsc | unit-380099 | `0xe7bef5...ae2d00` | ⚠️ Unaudited |
| BabyFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380092 | `0x86407b...f889da` | ⚠️ Unaudited |
| BabyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xa97629...8987a1`; bsc `0xabff61...8d70b6`; bsc `0xc695d8...f792a4` | ⚠️ Unaudited |
| BabyFarmV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-380097 | `0xcb5946...0842bb` | ⚠️ Unaudited |
| BabyMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5588b2...b09aaf` | ⚠️ Unaudited |
| BabyNormalRouter | unknown | project_anchor | own_supporting | 1 | bsc | unit-380101 | 2 deployments: bsc `0x8317c4...e2ad32`; bsc `0xdab669...64df67` | ⚠️ Unaudited |
| BabyProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000c86...c28d43` | ⚠️ Unaudited |
| BabyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x540a80...73c86b`; bsc `0xc655e7...908f7a` | ⚠️ Unaudited |
| BabyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x237b0a...93213d`; bsc `0x26c8b1...c17d28` | ⚠️ Unaudited |
| BabyRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380089 | `0x325e34...6b38bd` | ⚠️ Unaudited |
| BabySBTs | unknown | project_anchor | own_supporting | 0 | bsc | unit-380093 | `0x8c2710...76fa7c` | ⚠️ Unaudited |
| BabySwapFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x48c3fb...08baf1`; bsc `0x81e0ec...b7d2f0`; bsc `0x8ac71c...03f483`; bsc `0x8ca0a6...915d5c`; bsc `0xc37e7a...aaeb00`; bsc `0xd8ef56...b93b4e`; bsc `0xdaf273...0583bf`; bsc `0xe9d14b...a77389` | ⚠️ Unaudited |
| BabySwapFeeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x137f5d...dcf4ed` | ⚠️ Unaudited |
| BabySwapFeeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6bef42...3d41d3`; bsc `0x90457d...09c4f0` | ⚠️ Unaudited |
| BabyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x2b1d01...3e74e9`; bsc `0x98ce25...6603d7`; bsc `0xbaa6ef...1e66f7`; bsc `0xd7dda7...f1b160`; bsc `0xf2c313...08c535` | ⚠️ Unaudited |
| BabyTokenTransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xde2ca9...62532b`; bsc `0xeddc6a...734e18` | ⚠️ Unaudited |
| BabyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5da29e...cfd6e4` | ⚠️ Unaudited |
| BabyWonderlandAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e15b0...5d0eb6` | ⚠️ Unaudited |
| BabyWonderlandMakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc96df0...223f22` | ⚠️ Unaudited |
| BabyWonderlandMakeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa02062...09d6a9` | ⚠️ Unaudited |
| BabyWonderlandReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4212d...39f887` | ⚠️ Unaudited |
| Bottle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x2556f4...1ddc80`; bsc `0x2ab54e...77bb68`; bsc `0x36e221...680c51`; bsc `0x3ac266...095bb5`; bsc `0x3ed1b1...643ce6`; bsc `0x40d7d4...53cca5`; bsc `0x4cd80f...587a3c`; bsc `0x4e06b2...a5a2df`; bsc `0x7e7886...959fe6`; bsc `0x95333b...e4082a`; bsc `0xf06823...fe90f9` | ⚠️ Unaudited |
| BoxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44e974...89c215` | ⚠️ Unaudited |
| CalculateRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90055e...5e01d3` | ⚠️ Unaudited |
| IDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d6525...2b5e35` | ⚠️ Unaudited |
| IFO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x31ba7a...de2849`; bsc `0xb88be5...aeecd9` | ⚠️ Unaudited |
| ILO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x03d13d...b798e3`; bsc `0x27a97c...72f556`; bsc `0x8fb1b5...6a60cc`; bsc `0x92f32a...4d3002`; bsc `0xb669b3...eb4e39`; bsc `0xcc4fe7...c5ef14`; bsc `0xde31fb...c5ff16` | ⚠️ Unaudited |
| INO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x6533c0...0ae6d7`; bsc `0xa1d2ec...10bba3`; bsc `0xd55262...5ac3e3` | ⚠️ Unaudited |
| LandClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x614214...2cc759` | ⚠️ Unaudited |
| LandFragments | unknown | project_anchor | own_supporting | 0 | bsc | unit-380096 | `0xc646d1...59c317` | ⚠️ Unaudited |
| LandFragmentSynthesis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x170659...c4417e`; bsc `0x63dbc1...043fb1`; bsc `0x8706a4...3b4051`; bsc `0xb1cee4...63cf9f` | ⚠️ Unaudited |
| LotteryTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9105aa...9307e5` | ⚠️ Unaudited |
| MarketFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x2d2434...dfe722`; bsc `0x4f808d...e1f906`; bsc `0x6748b1...396b04`; bsc `0xb7949a...a791d0` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x860038...54bda7` | ⚠️ Unaudited |
| MasterChef | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380098 | `0xdfaa0e...0ac730` | ⚠️ Unaudited |
| MasterChefMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x5063b4...bb6939`; bsc `0x8c344f...ce2928` | ⚠️ Unaudited |
| MasterChefTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48fcaf...af99ff` | ⚠️ Unaudited |
| MockLevel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x007156...8b3237` | ⚠️ Unaudited |
| MultHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc81c1...9274b2` | ⚠️ Unaudited |
| MultHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48de67...3aa526` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5db99d...fb47a3`; bsc `0x726cb7...1f9528`; bsc `0xb81d47...6fa468` | ⚠️ Unaudited |
| OracleCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc26a75...603597` | ⚠️ Unaudited |
| PoolFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc83829...82a9c9` | ⚠️ Unaudited |
| RewardClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc50297...38b1b6` | ⚠️ Unaudited |
| RewardClaim | unknown | project_anchor | own_supporting | 0 | bsc | unit-380100 | `0xf28298...1f856d` | ⚠️ Unaudited |
| ScratchOffTickets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27e30d...e98a5c` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x9871a9...afd5b6`; bsc `0xa0a3df...07092b` | ⚠️ Unaudited |
| SmartRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x098ccf...b20e05`; bsc `0xe56b7d...778f66` | ⚠️ Unaudited |
| SwapMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x50e55d...90c617`; bsc `0x5c9f1a...e49636`; bsc `0x826cd3...c46b90` | ⚠️ Unaudited |
| SyrupBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x930c40...8da9be` | ⚠️ Unaudited |
| TaskReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x681392...9616ec` | ⚠️ Unaudited |
| TokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0e84f6...361a9d`; bsc `0x92c0f3...9267de`; bsc `0xc5d56b...ea3bc8`; bsc `0xf33de8...d6b179` | ⚠️ Unaudited |
| TOYSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1df30a...07f3b4`; bsc `0x44e609...b1c26d`; bsc `0x487b17...98375e`; bsc `0x67fda6...26d9a0`; bsc `0x9ef1b8...5e8587` | ⚠️ Unaudited |
| TOYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1618b5...e107bb`; bsc `0x476906...83693f`; bsc `0x820fa3...d095e6`; bsc `0x9f529e...ff495b`; bsc `0xcc1e6d...f33b4c`; bsc `0xfa8d65...569453` | ⚠️ Unaudited |
| VBabyDispatch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc501a6...5e871c` | ⚠️ Unaudited |
| VBabyDonateSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x740ce9...9146c6` | ⚠️ Unaudited |
| VBabyFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x272d02...2bf963` | ⚠️ Unaudited |
| VBabyFarmerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d2176...86edc9` | ⚠️ Unaudited |
| VBabyOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec6113...594a73` | ⚠️ Unaudited |
| vBABYToken | token | project_anchor | own_supporting | 0 | bsc | unit-380087 | `0x051344...e5cb22` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03657b...800c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0def70...f15a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b802b...b86995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23a62a...0aefd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24b6af...b8e0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26611b...ab9105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3325fb...1cc1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x364d10...301589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x399d7e...d109d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f2221...905fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4577f7...9f6b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46fe30...6bcc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47313a...4bbf02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47e84e...06d9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47f08c...a90be9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6be...b69189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c4370...72c5a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f0108...cff787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f4f15...342fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61e53a...d194ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x682f26...2aaa3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69dc8e...69edf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c6fde...895fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f1b8f...3c5aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7542bc...33ad43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x797940...350b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e1b40...f10005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x807e1b...25c07e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86d611...0dda6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86fddf...f05028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c6e50...617199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99ae91...c044bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb270c7...ff20e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb57ffd...ffffdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb91b1a...2ad836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc9e22...fe031a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2262b...aecb40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc439c1...d37350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8ea0d...1faef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc3f1a...1bd434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd44a94...ddd3f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed3215...b0c4dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee1af9...e7408c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5844c...fc4d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7b5bd...332eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb7980...1847a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcefc1...82e708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd5062...e8f59a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/babyswap](https://skynet.certik.com/projects/babyswap) | CertiK | Audit | 2022-08 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3102] skynet.certik.com/projects/babyswap — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/babyswap | BabyWonderland | own contract | BabyWonderland (selected) `0x1fe7f2...1dd68d` — deployed 2022-09-07 13:32:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/babyswap | IBabyWonderlandMintable | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x53e562...3d2657` | BabyToken | token | $179,141.49 | Verified native implementation with $179,141.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xad7a58...94ef1c` | BabyPoolV2 | core_logic | $16,140.86 | Verified native implementation with $16,140.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3b6279...2554b1` | BabyAutoPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x103aa3...4975e7` | BabyERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe7bef5...ae2d00` | BabyExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcb5946...0842bb` | BabyFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8317c4...e2ad32` | BabyNormalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8c2710...76fa7c` | BabySBTs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc646d1...59c317` | LandFragments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf28298...1f856d` | RewardClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x051344...e5cb22` | vBABYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
