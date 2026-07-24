# Agentic Audit Brief: BabySwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DEAD - TVL changed 1.0% over 90 days

## Project Overview

- Project: BabySwap (`babyswap`)
- Website: [https://home.babyswap.finance/](https://home.babyswap.finance/)
- Lifecycle: dead (Tier 0, 99.6% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
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

- BabyAutoPoolV2 (`0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1`, chain 56)
- BabyERC721 (`0x9f0225d5c92b9cee4024f6406c4f13e546fd91a8`, chain 56)
- BabyExchange (`0xe7bef5f9a31a1b31d6c0b08c861a916937ae2d00`, chain 56)
- BabyFactory (`0x86407bea2078ea5f5eb5a52b2caa963bc1f889da`, chain 56)
- BabyFarmV2 (`0xcb59468d06b812f457c1763738217fb0430842bb`, chain 56)
- BabyPoolV2 (`0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c`, chain 56)
- BabySBTs (`0x8c27103eee75eed8801b808ff23eb02c9876fa7c`, chain 56)
- BabySmartRouter (`0x8317c460c22a9958c27b4b6403b98d2ef4e2ad32`, chain 56)
- BabyToken (`0x53e562b9b7e5e94b81f10e96ee70ad06df3d2657`, chain 56)
- BabyWonderland (`0x1fe7f243eb49f3b9575f51a2f9fba9fc2c1dd68d`, chain 56)
- RewardClaim (`0xf282988582538e58332a78edc98ea304921f856d`, chain 56)
- vBABYToken (`0x05134427ca04fe0712b29fb50c4d573f63e5cb22`, chain 56)

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
| BabyWonderland | unknown | project_anchor | own_supporting | 0 | bsc | unit-380088 | `0x1fe7f243eb49f3b9575f51a2f9fba9fc2c1dd68d` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BabyToken | token | project_anchor | third_party_dependency | 0 | bsc | unit-380091 | `0x53e562b9b7e5e94b81f10e96ee70ad06df3d2657` | ⚠️ Unaudited |
| BabyPoolV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-380095 | `0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c` | ⚠️ Unaudited |
| AutoBabyPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3e1ead5cbe817689f4bdb96bceeb112fdbe94dbc`; bsc `0x5aeb265c5c8eac437b506088f57304cd10ca3f52` | ⚠️ Unaudited |
| NFTFarm | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2807219c6154d21d8d96acd55c4841d63363318` | ⚠️ Unaudited |
| NFTFarmV4 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x391079902156b90f0ece775350643fcfb5aa4ae0` | ⚠️ Unaudited |
| NFTFarmV5 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2f5822ad24ab4cddbcea82765ab851f86d3f1a30`; bsc `0xadca12e35766af075540163387e85822cf798ea1` | ⚠️ Unaudited |
| BabyAutoPoolV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-380090 | `0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1` | ⚠️ Unaudited |
| BabyERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x00a2340610cb54ee68fb86f6be357d3731981169`; bsc `0x1e1c96991652bf94a21e047af075fe5b3150c248`; bsc `0x30cd3ee0a3208f6475836c483471aec3eede1702`; bsc `0x57b342b732f220fef649c18c4ce1242477a039fe` | ⚠️ Unaudited |
| BabyERC721 | token | project_anchor | own_core | 0 | bsc | n/a | 8 deployments: bsc `0x103aa302b5f0acd1a4512033f103126faf4975e7`; bsc `0x402f4ec314ab39bdb2573d3229eb39e5d3be0981`; bsc `0x548351a6d2c912b134d6ddad0a3606942142e7bf`; bsc `0x60e1c3120492dc98268239d4a4a7957478bf11da`; bsc `0x65328a26c37495780882946f64369745400de500`; bsc `0x9f0225d5c92b9cee4024f6406c4f13e546fd91a8`; bsc `0xd92a8dee914ae6e1a86de70d4ace2a57b36909d5`; bsc `0xf3a360d731c0fce897002b7fa28e1c642aeef11e` | ⚠️ Unaudited |
| BabyExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7b8c94acec4a0faa0be9e99628dd24eb65e0e47f`; bsc `0xc303210c9b792facaa81b1bf60908f578bca94b6` | ⚠️ Unaudited |
| BabyExchange | unknown | project_anchor | own_supporting | 0 | bsc | unit-380099 | `0xe7bef5f9a31a1b31d6c0b08c861a916937ae2d00` | ⚠️ Unaudited |
| BabyFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380092 | `0x86407bea2078ea5f5eb5a52b2caa963bc1f889da` | ⚠️ Unaudited |
| BabyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xa97629459a9edd71940af74e4272a068768987a1`; bsc `0xabff615ad198e93b1450b1b9cfbc5a3f428d70b6`; bsc `0xc695d8a53fefc4d09bba615a015eac6c03f792a4` | ⚠️ Unaudited |
| BabyFarmV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-380097 | `0xcb59468d06b812f457c1763738217fb0430842bb` | ⚠️ Unaudited |
| BabyMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5588b270b077310828610613ef2cebfb42b09aaf` | ⚠️ Unaudited |
| BabyNormalRouter | unknown | project_anchor | own_supporting | 1 | bsc | unit-380101 | 2 deployments: bsc `0x8317c460c22a9958c27b4b6403b98d2ef4e2ad32`; bsc `0xdab669a83dde77cf0f3836ae3bef0e247e64df67` | ⚠️ Unaudited |
| BabyProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000c86bb08f24261453a289fa3af839e23c28d43` | ⚠️ Unaudited |
| BabyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x540a805dcb1b06820f1361c3ec3e89ba2273c86b`; bsc `0xc655e790c4fd222de23d32956186c7d745908f7a` | ⚠️ Unaudited |
| BabyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x237b0a07edc7932bdd3260393ae7a9570a93213d`; bsc `0x26c8b115ab130d477fccdd7438bce46956c17d28` | ⚠️ Unaudited |
| BabyRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380089 | `0x325e343f1de602396e256b67efd1f61c3a6b38bd` | ⚠️ Unaudited |
| BabySBTs | unknown | project_anchor | own_supporting | 0 | bsc | unit-380093 | `0x8c27103eee75eed8801b808ff23eb02c9876fa7c` | ⚠️ Unaudited |
| BabySwapFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x48c3fb5d1c8820bf867efe1d8217c41ea208baf1`; bsc `0x81e0ec42023072e71afbd90ad14aa7e947b7d2f0`; bsc `0x8ac71cff64c5a08dc1cbe89e7cda10e4ec03f483`; bsc `0x8ca0a6ad1c481612fbf5a0c9a44ce72388915d5c`; bsc `0xc37e7abcdafd798c7734ff5daccff37b82aaeb00`; bsc `0xd8ef5664a8083ac989c66f428a62b0488fb93b4e`; bsc `0xdaf273bdd39164bebd6cef99a0099e4e3b0583bf`; bsc `0xe9d14bc688e4df3dfbf04b6f08606b3b7aa77389` | ⚠️ Unaudited |
| BabySwapFeeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x137f5d13295f2641124d5eb7283a20d0b4dcf4ed` | ⚠️ Unaudited |
| BabySwapFeeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6bef4238761aee8ea773405d60ba93cd183d41d3`; bsc `0x90457d1b1da076abf4cbbae1b248349d9809c4f0` | ⚠️ Unaudited |
| BabyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x2b1d01c316a41c11dc1a3d691a9aca66c63e74e9`; bsc `0x98ce25b2a1e8aa4cc3b81e31feca307a846603d7`; bsc `0xbaa6ef4298b7b1a0cc461dc9f6c303de461e66f7`; bsc `0xd7dda7284522aa6085fc534bcec975beb4f1b160`; bsc `0xf2c313a1dd63fb27c8d396aa567acf8c7a08c535` | ⚠️ Unaudited |
| BabyTokenTransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xde2ca923570de15263e3914af0637a38ea62532b`; bsc `0xeddc6a516c37f40ae4da6ceb3cb722eaf7734e18` | ⚠️ Unaudited |
| BabyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5da29e4afe94784fde4b7a62c5cd8a8aebcfd6e4` | ⚠️ Unaudited |
| BabyWonderlandAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e15b08b3a370dd8d115c7ad38b09b69f25d0eb6` | ⚠️ Unaudited |
| BabyWonderlandMakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc96df0fc50cd4eed5823f1c12f92edc6f0223f22` | ⚠️ Unaudited |
| BabyWonderlandMakeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa020624d733a1544b74449add598adefd709d6a9` | ⚠️ Unaudited |
| BabyWonderlandReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4212d35abc69812a8e88ed40e44759d8b39f887` | ⚠️ Unaudited |
| Bottle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x2556f40f6de1a3e24433c215a71dba9a6d1ddc80`; bsc `0x2ab54e712f6c181a554e3d75202103189f77bb68`; bsc `0x36e2210fb6ed2fc94d05741e83ff998b22680c51`; bsc `0x3ac266990f0079a44b9827c1fcfc5a5afa095bb5`; bsc `0x3ed1b155749523ec4e42aa7094cf9531b9643ce6`; bsc `0x40d7d4bb6a4aab23a160cdd133101fcf1553cca5`; bsc `0x4cd80f83cacf2919c807ac82b81a33ab0a587a3c`; bsc `0x4e06b2e641c1720b214edd36ae8ccf4860a5a2df`; bsc `0x7e7886fc415c4c9a588ffafdcb57a01493959fe6`; bsc `0x95333b8723de359bc9e5ba2fdb3d17af65e4082a`; bsc `0xf068237db504d278cad0370d9943f1da6ffe90f9` | ⚠️ Unaudited |
| BoxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44e974d019f62627871638809dadd0e4b289c215` | ⚠️ Unaudited |
| CalculateRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90055e75685d521fabb1ec567d1fbc63fc5e01d3` | ⚠️ Unaudited |
| IDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d65254e85484b5ea062753d4b0f8a66d22b5e35` | ⚠️ Unaudited |
| IFO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x31ba7a0b0f4f4c9b2fd0d84e0c66939324de2849`; bsc `0xb88be58650eee34c3b3ffa1cd2d044d212aeecd9` | ⚠️ Unaudited |
| ILO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x03d13d1c5f0bfed4c5408e0e70322fd0a2b798e3`; bsc `0x27a97c6094b498c81fbdebcec2d576ccc672f556`; bsc `0x8fb1b54b1031fc00a4610158cb872597496a60cc`; bsc `0x92f32a2498bd119bccb18536a0698531bc4d3002`; bsc `0xb669b3ba3ee36fd243f6c40e7726a9fefdeb4e39`; bsc `0xcc4fe72db62f6c55b14617fbdc94f380c0c5ef14`; bsc `0xde31fb5a2062c1f1e130b9a5aee4f39425c5ff16` | ⚠️ Unaudited |
| INO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x6533c0bb3f2834bf35448dc45216dfc6ef0ae6d7`; bsc `0xa1d2ec4394eb2ef462415c59cf8686c2d510bba3`; bsc `0xd552625e81884b6e80bc3ff3e2ccce17ba5ac3e3` | ⚠️ Unaudited |
| LandClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6142143e5d5956c3076a0be2f6b44bfa4f2cc759` | ⚠️ Unaudited |
| LandFragments | unknown | project_anchor | own_supporting | 0 | bsc | unit-380096 | `0xc646d16dbb448d3ec0a6c8430a3236e04559c317` | ⚠️ Unaudited |
| LandFragmentSynthesis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x170659f2d006db964d7b6d2df8906358e1c4417e`; bsc `0x63dbc1eba5d03e18205eb1968817cef4c4043fb1`; bsc `0x8706a4df4c6c5637728bafa8c8fca88c2c3b4051`; bsc `0xb1cee43f8867b38e9173fb425a4519cfd663cf9f` | ⚠️ Unaudited |
| LotteryTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9105aa5fef5d8f91ef10d330970e0151f39307e5` | ⚠️ Unaudited |
| MarketFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x2d24344739530a1c6c63e4d594d56ef4e6dfe722`; bsc `0x4f808d1477c2c195efd717749f24773240e1f906`; bsc `0x6748b1da85856b621f122cdbe5f23e4a50396b04`; bsc `0xb7949aaf569da049b3f140044f9025116ba791d0` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x860038f20e99192d5ca52e3c49591ebc4454bda7` | ⚠️ Unaudited |
| MasterChef | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-380098 | `0xdfaa0e08e357db0153927c7eabb492d1f60ac730` | ⚠️ Unaudited |
| MasterChefMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x5063b4d6e50c0bee3ea5a5f8c50eb2adc3bb6939`; bsc `0x8c344fb1217110839f7e81c8c1cc8e5d76ce2928` | ⚠️ Unaudited |
| MasterChefTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48fcafa24c5599d521447713efb4eeeea3af99ff` | ⚠️ Unaudited |
| MockLevel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00715619bc5b50bf1e02d77292ba6caea08b3237` | ⚠️ Unaudited |
| MultHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc81c169cf71daf17999970bd743c36f2b9274b2` | ⚠️ Unaudited |
| MultHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48de67fc02cef912b037c56d7c1cc99e743aa526` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5db99da94d967e268bbc4b6d9ffbe5da88fb47a3`; bsc `0x726cb726c9d8463f4c999c1d3b4fd558a51f9528`; bsc `0xb81d4780780e5b66ba80a17e8c496dd1616fa468` | ⚠️ Unaudited |
| OracleCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc26a75fbb4c9e1fd06080a1c5f616de95e603597` | ⚠️ Unaudited |
| PoolFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc838290edd6810036bace1806dba0fca4482a9c9` | ⚠️ Unaudited |
| RewardClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc502973a9d49da86eea602b9e63b02d1ed38b1b6` | ⚠️ Unaudited |
| RewardClaim | unknown | project_anchor | own_supporting | 0 | bsc | unit-380100 | `0xf282988582538e58332a78edc98ea304921f856d` | ⚠️ Unaudited |
| ScratchOffTickets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27e30d282e664ad7db613176524f5b13cfe98a5c` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x9871a9c79a4df5669f3ebbb7cbc09627ddafd5b6`; bsc `0xa0a3df5f7ce1c9af73bc21df648001065207092b` | ⚠️ Unaudited |
| SmartRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x098ccf88292d5fe4f71e9ce881f095ae02b20e05`; bsc `0xe56b7dd08df0523327cac33cbc8ab6d92d778f66` | ⚠️ Unaudited |
| SwapMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x50e55d1ca48e02d00a950a6ca11ab16c5290c617`; bsc `0x5c9f1a9ced41ccc5dcecda5afc317b72f1e49636`; bsc `0x826cd338c58e065f5fd84bab1c84051629c46b90` | ⚠️ Unaudited |
| SyrupBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x930c4047d26467e4dec0fd199fb44a92298da9be` | ⚠️ Unaudited |
| TaskReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x681392bf14623dc4ba704ec89bb2537d939616ec` | ⚠️ Unaudited |
| TokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0e84f67dd5f7e8f5e1496f02a9bdedb6d7361a9d`; bsc `0x92c0f335458a62561111e54c971b82233f9267de`; bsc `0xc5d56bc2c681932621564a8f71062da614ea3bc8`; bsc `0xf33de8220d33c7d21f712573a9079a2f60d6b179` | ⚠️ Unaudited |
| TOYSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1df30a49b1638a7479c97940bf3f2dc79a07f3b4`; bsc `0x44e6098f791d68ba4ba7e3c9d45ccb4fc2b1c26d`; bsc `0x487b17d4f1286de88739cc933535d3b81e98375e`; bsc `0x67fda6d4af8e96c7fb6a211a5c5f0ab6e926d9a0`; bsc `0x9ef1b82d0c28627bff72f9484b89f199de5e8587` | ⚠️ Unaudited |
| TOYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1618b5a5aaab1e622a242c6982f3905c2ce107bb`; bsc `0x4769069e290e1cd7afb5753606dd4c6e9183693f`; bsc `0x820fa39207d8ab505fa411582b21ccd1e8d095e6`; bsc `0x9f529e50de4e90756152ce4bf7c465c38dff495b`; bsc `0xcc1e6d8045b2ecf1ec04eebaf8ea082a08f33b4c`; bsc `0xfa8d6565caa0490b5c9a5e57e645a234cb569453` | ⚠️ Unaudited |
| VBabyDispatch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc501a6db19f7e088d9af57b5997045967f5e871c` | ⚠️ Unaudited |
| VBabyDonateSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x740ce924fc0c7fb904f151c08fb34160ec9146c6` | ⚠️ Unaudited |
| VBabyFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x272d02966c416ecf6fde052ec09dc089022bf963` | ⚠️ Unaudited |
| VBabyFarmerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d21762410cffe4ddbd991ae1503b031ef86edc9` | ⚠️ Unaudited |
| VBabyOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec6113ba8968bd4da9f7c909a0c42085a0594a73` | ⚠️ Unaudited |
| vBABYToken | token | project_anchor | own_supporting | 0 | bsc | unit-380087 | `0x05134427ca04fe0712b29fb50c4d573f63e5cb22` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03657b633423c218b000ca43c59445589c800c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0def70bfa366dc75c5f4b183f7397e4042f15a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b802b50da173d60e34f1f1a9e47125b72b86995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23a62a4f9413a426e826725f41450d97a30aefd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24b6af5521b40d388e923699692944198eb8e0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26611bc1b7bbfd61c684f7901fd4cf5186ab9105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3325fbf79f37e2edac2139a4b2a0fe52d11cc1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x364d10edd4996667cadc939278744f023d301589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x399d7ec539dd9dbd48a15500da6df0edafd109d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f2221e9521604b381df00513659dd9594905fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4577f7c9ee693724974a58f28d2a8b2c269f6b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46fe3000e3f105abc269c1c56d6957af926bcc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47313a908ac15a5cd1f8009c279f4a1c274bbf02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47e84e4dcc862ee5695c695d3cc995f41d06d9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47f08cb2711a31112fa68ed4700beb283fa90be9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6be1215edc606f14387ceb928a771f2b69189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c4370d578a93ab86c85438bf90599b28872c5a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f0108f2c5a6a09e100120907eaf1277e0cff787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f4f159dd58faffc149c64cfee9e2d1cb9342fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61e53a118830eb34f8cda4500ed4ef3f92d194ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x682f267e50d9526405adc153a44f49e3892aaa3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69dc8ee38d27d39a499a49e2430842f7be69edf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c6fdef29f6f262435cc445ac2f15dc12b895fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f1b8fcbb9d680dbdc8658f4e5811ed2e93c5aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7542bc18e0ad83a41bf127cf5cef61ad6833ad43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x797940a30ff3f1ac1ceeb746690eeaae00350b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e1b40832261cac977915eaf2cbf83c5b3f10005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x807e1b600783032e366a85704d6359d5fe25c07e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86d611ea32a4e0f9027d314b8f879d72660dda6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86fddf358fcd275a3749005478e2a4008ef05028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c6e5093883940abf2a77414ab2bdf3e0f617199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99ae912d7bdd6f32c72b675b33321a9905c044bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb270c7c2761d148dec923319c3481c9390ff20e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb57ffdb71d85bb5f482385a90d6f35633bffffdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb91b1a95587619d54a62befea18a3a34b32ad836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc9e2230783d694f00844fb6ce435dcaf8fe031a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2262b0044d3b1ba92f24261bf7ec08c95aecb40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc439c158e070ad5fc1ecde234bd97c3509d37350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8ea0ddb39ea4534b4af773b53fd9c2a3b1faef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc3f1a62c446383d4a6c2e3a4ec74cb8201bd434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd44a947ed506ff268a2785e46053f263c9ddd3f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed321576b17622a6752761a308aebc970db0c4dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee1af9ae8910790e2f6350e1b2656170c1e7408c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5844c48f4488064d181cd4ca927588baefc4d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7b5bdbd2747baa02642f687b8861b1fa8332eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb798048231deb0331106d1b4eb8c3bac81847a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcefc13e8a7cf544b2b0bf5f5a45fde65982e708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd5062baf890ae0438d7949a296a6ffb4ce8f59a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 167
- Live contracts: 3
- Unknown liveness contracts: 164
- Source-verified contracts: 120
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=60, exact address book overlap=2, source verified unclassified=58, unverified unclassified=47

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | candidate review | BabyFactory<br>`0xa97629459a9edd71940af74e4272a068768987a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | BabyFactory<br>`0xabff615ad198e93b1450b1b9cfbc5a3f428d70b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | BabyFactory<br>`0xc695d8a53fefc4d09bba615a015eac6c03f792a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | BabyToken<br>`0x2b1d01c316a41c11dc1a3d691a9aca66c63e74e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | BabyToken<br>`0x98ce25b2a1e8aa4cc3b81e31feca307a846603d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | BabyToken<br>`0xbaa6ef4298b7b1a0cc461dc9f6c303de461e66f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | BabyToken<br>`0xd7dda7284522aa6085fc534bcec975beb4f1b160` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | BabyToken<br>`0xf2c313a1dd63fb27c8d396aa567acf8c7a08c535` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | BabyVault<br>`0x5da29e4afe94784fde4b7a62c5cd8a8aebcfd6e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | BabyWonderlandMakeFactoryV2<br>`0xa020624d733a1544b74449add598adefd709d6a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | BabyWonderlandReserve<br>`0xe4212d35abc69812a8e88ed40e44759d8b39f887` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0x2556f40f6de1a3e24433c215a71dba9a6d1ddc80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0x2ab54e712f6c181a554e3d75202103189f77bb68` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0x36e2210fb6ed2fc94d05741e83ff998b22680c51` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0x3ac266990f0079a44b9827c1fcfc5a5afa095bb5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0x3ed1b155749523ec4e42aa7094cf9531b9643ce6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0x40d7d4bb6a4aab23a160cdd133101fcf1553cca5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0x4cd80f83cacf2919c807ac82b81a33ab0a587a3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0x4e06b2e641c1720b214edd36ae8ccf4860a5a2df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0x7e7886fc415c4c9a588ffafdcb57a01493959fe6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0x95333b8723de359bc9e5ba2fdb3d17af65e4082a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Bottle<br>`0xf068237db504d278cad0370d9943f1da6ffe90f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | ILO<br>`0x03d13d1c5f0bfed4c5408e0e70322fd0a2b798e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | ILO<br>`0x27a97c6094b498c81fbdebcec2d576ccc672f556` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | ILO<br>`0x8fb1b54b1031fc00a4610158cb872597496a60cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | ILO<br>`0x92f32a2498bd119bccb18536a0698531bc4d3002` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | ILO<br>`0xb669b3ba3ee36fd243f6c40e7726a9fefdeb4e39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | ILO<br>`0xcc4fe72db62f6c55b14617fbdc94f380c0c5ef14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | ILO<br>`0xde31fb5a2062c1f1e130b9a5aee4f39425c5ff16` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | LandFragments<br>`0xc646d16dbb448d3ec0a6c8430a3236e04559c317` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | LandFragmentSynthesis<br>`0x170659f2d006db964d7b6d2df8906358e1c4417e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | LandFragmentSynthesis<br>`0x63dbc1eba5d03e18205eb1968817cef4c4043fb1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | LandFragmentSynthesis<br>`0x8706a4df4c6c5637728bafa8c8fca88c2c3b4051` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | LandFragmentSynthesis<br>`0xb1cee43f8867b38e9173fb425a4519cfd663cf9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | MarketFeeManager<br>`0x2d24344739530a1c6c63e4d594d56ef4e6dfe722` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | MarketFeeManager<br>`0x4f808d1477c2c195efd717749f24773240e1f906` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | MarketFeeManager<br>`0x6748b1da85856b621f122cdbe5f23e4a50396b04` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | MasterChef<br>`0x860038f20e99192d5ca52e3c49591ebc4454bda7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | MasterChefMigrator<br>`0x5063b4d6e50c0bee3ea5a5f8c50eb2adc3bb6939` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | MasterChefMigrator<br>`0x8c344fb1217110839f7e81c8c1cc8e5d76ce2928` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | MasterChefTimelock<br>`0x48fcafa24c5599d521447713efb4eeeea3af99ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Oracle<br>`0x5db99da94d967e268bbc4b6d9ffbe5da88fb47a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Oracle<br>`0x726cb726c9d8463f4c999c1d3b4fd558a51f9528` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | Oracle<br>`0xb81d4780780e5b66ba80a17e8c496dd1616fa468` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | OracleCaller<br>`0xc26a75fbb4c9e1fd06080a1c5f616de95e603597` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | SwapMining<br>`0x50e55d1ca48e02d00a950a6ca11ab16c5290c617` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | SwapMining<br>`0x5c9f1a9ced41ccc5dcecda5afc317b72f1e49636` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | SwapMining<br>`0x826cd338c58e065f5fd84bab1c84051629c46b90` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TaskReward<br>`0x681392bf14623dc4ba704ec89bb2537d939616ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYSwap<br>`0x1df30a49b1638a7479c97940bf3f2dc79a07f3b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYSwap<br>`0x44e6098f791d68ba4ba7e3c9d45ccb4fc2b1c26d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYSwap<br>`0x487b17d4f1286de88739cc933535d3b81e98375e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYSwap<br>`0x67fda6d4af8e96c7fb6a211a5c5f0ab6e926d9a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYSwap<br>`0x9ef1b82d0c28627bff72f9484b89f199de5e8587` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYToken<br>`0x1618b5a5aaab1e622a242c6982f3905c2ce107bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYToken<br>`0x4769069e290e1cd7afb5753606dd4c6e9183693f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYToken<br>`0x820fa39207d8ab505fa411582b21ccd1e8d095e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYToken<br>`0x9f529e50de4e90756152ce4bf7c465c38dff495b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYToken<br>`0xcc1e6d8045b2ecf1ec04eebaf8ea082a08f33b4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | candidate review | TOYToken<br>`0xfa8d6565caa0490b5c9a5e57e645a234cb569453` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | exact address book overlap | BabyExchange<br>`0xe7bef5f9a31a1b31d6c0b08c861a916937ae2d00` | project_anchor | unknown | live | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | exact address book overlap | BabySmartRouter<br>`0x8317c460c22a9958c27b4b6403b98d2ef4e2ad32` | project_anchor | unknown | live | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | AutoBabyPool<br>`0x5aeb265c5c8eac437b506088f57304cd10ca3f52` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyERC1155<br>`0x00a2340610cb54ee68fb86f6be357d3731981169` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyERC1155<br>`0x1e1c96991652bf94a21e047af075fe5b3150c248` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyERC1155<br>`0x30cd3ee0a3208f6475836c483471aec3eede1702` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyERC1155<br>`0x57b342b732f220fef649c18c4ce1242477a039fe` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyERC721<br>`0x402f4ec314ab39bdb2573d3229eb39e5d3be0981` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyERC721<br>`0x548351a6d2c912b134d6ddad0a3606942142e7bf` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyERC721<br>`0x60e1c3120492dc98268239d4a4a7957478bf11da` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyERC721<br>`0x65328a26c37495780882946f64369745400de500` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyERC721<br>`0xd92a8dee914ae6e1a86de70d4ace2a57b36909d5` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyERC721<br>`0xf3a360d731c0fce897002b7fa28e1c642aeef11e` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyExchange<br>`0x7b8c94acec4a0faa0be9e99628dd24eb65e0e47f` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyExchange<br>`0xc303210c9b792facaa81b1bf60908f578bca94b6` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyMarket<br>`0x5588b270b077310828610613ef2cebfb42b09aaf` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyNormalRouter<br>`0xdab669a83dde77cf0f3836ae3bef0e247e64df67` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyRegistry<br>`0x540a805dcb1b06820f1361c3ec3e89ba2273c86b` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyRegistry<br>`0xc655e790c4fd222de23d32956186c7d745908f7a` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyRouter<br>`0x237b0a07edc7932bdd3260393ae7a9570a93213d` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyRouter<br>`0x26c8b115ab130d477fccdd7438bce46956c17d28` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabySwapFee<br>`0x48c3fb5d1c8820bf867efe1d8217c41ea208baf1` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabySwapFee<br>`0x81e0ec42023072e71afbd90ad14aa7e947b7d2f0` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabySwapFee<br>`0x8ac71cff64c5a08dc1cbe89e7cda10e4ec03f483` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabySwapFee<br>`0x8ca0a6ad1c481612fbf5a0c9a44ce72388915d5c` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabySwapFee<br>`0xc37e7abcdafd798c7734ff5daccff37b82aaeb00` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabySwapFee<br>`0xd8ef5664a8083ac989c66f428a62b0488fb93b4e` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabySwapFee<br>`0xdaf273bdd39164bebd6cef99a0099e4e3b0583bf` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabySwapFee<br>`0xe9d14bc688e4df3dfbf04b6f08606b3b7aa77389` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabySwapFeeV2<br>`0x137f5d13295f2641124d5eb7283a20d0b4dcf4ed` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyTokenTransferProxy<br>`0xde2ca923570de15263e3914af0637a38ea62532b` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyTokenTransferProxy<br>`0xeddc6a516c37f40ae4da6ceb3cb722eaf7734e18` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyWonderlandAirdrop<br>`0x0e15b08b3a370dd8d115c7ad38b09b69f25d0eb6` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BabyWonderlandMakeFactory<br>`0xc96df0fc50cd4eed5823f1c12f92edc6f0223f22` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | BoxFactory<br>`0x44e974d019f62627871638809dadd0e4b289c215` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | CalculateRouter<br>`0x90055e75685d521fabb1ec567d1fbc63fc5e01d3` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | IDO<br>`0x7d65254e85484b5ea062753d4b0f8a66d22b5e35` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | IFO<br>`0x31ba7a0b0f4f4c9b2fd0d84e0c66939324de2849` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | IFO<br>`0xb88be58650eee34c3b3ffa1cd2d044d212aeecd9` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | INO<br>`0x6533c0bb3f2834bf35448dc45216dfc6ef0ae6d7` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | INO<br>`0xa1d2ec4394eb2ef462415c59cf8686c2d510bba3` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | INO<br>`0xd552625e81884b6e80bc3ff3e2ccce17ba5ac3e3` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | LandClaim<br>`0x6142143e5d5956c3076a0be2f6b44bfa4f2cc759` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | LotteryTicket<br>`0x9105aa5fef5d8f91ef10d330970e0151f39307e5` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | MockLevel<br>`0x00715619bc5b50bf1e02d77292ba6caea08b3237` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | MultHelper<br>`0xbc81c169cf71daf17999970bd743c36f2b9274b2` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | MultHelperV2<br>`0x48de67fc02cef912b037c56d7c1cc99e743aa526` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | PoolFactoryV2<br>`0xc838290edd6810036bace1806dba0fca4482a9c9` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | RewardClaim<br>`0xc502973a9d49da86eea602b9e63b02d1ed38b1b6` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | ScratchOffTickets<br>`0x27e30d282e664ad7db613176524f5b13cfe98a5c` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | SmartChefFactory<br>`0x9871a9c79a4df5669f3ebbb7cbc09627ddafd5b6` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | SmartChefFactory<br>`0xa0a3df5f7ce1c9af73bc21df648001065207092b` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | SmartRouter<br>`0x098ccf88292d5fe4f71e9ce881f095ae02b20e05` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | SmartRouter<br>`0xe56b7dd08df0523327cac33cbc8ab6d92d778f66` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | TokenLocker<br>`0x0e84f67dd5f7e8f5e1496f02a9bdedb6d7361a9d` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | TokenLocker<br>`0x92c0f335458a62561111e54c971b82233f9267de` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | TokenLocker<br>`0xc5d56bc2c681932621564a8f71062da614ea3bc8` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | TokenLocker<br>`0xf33de8220d33c7d21f712573a9079a2f60d6b179` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | VBabyFarmer<br>`0x272d02966c416ecf6fde052ec09dc089022bf963` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | source verified unclassified | VBabyOwner<br>`0xec6113ba8968bd4da9f7c909a0c42085a0594a73` | non_address_book | unknown | unknown | verified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x03657b633423c218b000ca43c59445589c800c62` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0def70bfa366dc75c5f4b183f7397e4042f15a77` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1b802b50da173d60e34f1f1a9e47125b72b86995` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x23a62a4f9413a426e826725f41450d97a30aefd4` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x24b6af5521b40d388e923699692944198eb8e0be` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x26611bc1b7bbfd61c684f7901fd4cf5186ab9105` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x364d10edd4996667cadc939278744f023d301589` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x399d7ec539dd9dbd48a15500da6df0edafd109d5` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3f2221e9521604b381df00513659dd9594905fab` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4577f7c9ee693724974a58f28d2a8b2c269f6b61` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x46fe3000e3f105abc269c1c56d6957af926bcc13` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47313a908ac15a5cd1f8009c279f4a1c274bbf02` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47e84e4dcc862ee5695c695d3cc995f41d06d9e8` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47f08cb2711a31112fa68ed4700beb283fa90be9` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x56b6be1215edc606f14387ceb928a771f2b69189` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5c4370d578a93ab86c85438bf90599b28872c5a8` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5f0108f2c5a6a09e100120907eaf1277e0cff787` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5f4f159dd58faffc149c64cfee9e2d1cb9342fce` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x61e53a118830eb34f8cda4500ed4ef3f92d194ac` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x682f267e50d9526405adc153a44f49e3892aaa3d` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x69dc8ee38d27d39a499a49e2430842f7be69edf3` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6c6fdef29f6f262435cc445ac2f15dc12b895fe2` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6f1b8fcbb9d680dbdc8658f4e5811ed2e93c5aec` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7542bc18e0ad83a41bf127cf5cef61ad6833ad43` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x797940a30ff3f1ac1ceeb746690eeaae00350b0f` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7e1b40832261cac977915eaf2cbf83c5b3f10005` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x807e1b600783032e366a85704d6359d5fe25c07e` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x86d611ea32a4e0f9027d314b8f879d72660dda6f` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x86fddf358fcd275a3749005478e2a4008ef05028` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8c6e5093883940abf2a77414ab2bdf3e0f617199` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99ae912d7bdd6f32c72b675b33321a9905c044bc` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb270c7c2761d148dec923319c3481c9390ff20e0` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb57ffdb71d85bb5f482385a90d6f35633bffffdf` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb91b1a95587619d54a62befea18a3a34b32ad836` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbc9e2230783d694f00844fb6ce435dcaf8fe031a` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc2262b0044d3b1ba92f24261bf7ec08c95aecb40` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc439c158e070ad5fc1ecde234bd97c3509d37350` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc8ea0ddb39ea4534b4af773b53fd9c2a3b1faef9` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcc3f1a62c446383d4a6c2e3a4ec74cb8201bd434` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd44a947ed506ff268a2785e46053f263c9ddd3f3` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xed321576b17622a6752761a308aebc970db0c4dd` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xee1af9ae8910790e2f6350e1b2656170c1e7408c` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf5844c48f4488064d181cd4ca927588baefc4d4f` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf7b5bdbd2747baa02642f687b8861b1fa8332eac` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfb798048231deb0331106d1b4eb8c3bac81847a2` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfcefc13e8a7cf544b2b0bf5f5a45fde65982e708` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfd5062baf890ae0438d7949a296a6ffb4ce8f59a` | non_address_book | unknown | unknown | unverified | n/a | `0xc0a56aee755bd397235367008f7c2c4599768395` |

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
| skynet.certik.com/projects/babyswap | BabyWonderland | own contract | BabyWonderland (selected) `0x1fe7f243eb49f3b9575f51a2f9fba9fc2c1dd68d` — deployed 2022-09-07 13:32:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/babyswap | IBabyWonderlandMintable | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x53e562b9b7e5e94b81f10e96ee70ad06df3d2657` | BabyToken | token | $179,141.49 | Verified native implementation with $179,141.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xad7a5809dc2c0ebbec32786780b3469f3c94ef1c` | BabyPoolV2 | core_logic | $16,140.86 | Verified native implementation with $16,140.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3b6279a3826bc6d2c7216182a4c25fe43d2554b1` | BabyAutoPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x103aa302b5f0acd1a4512033f103126faf4975e7` | BabyERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe7bef5f9a31a1b31d6c0b08c861a916937ae2d00` | BabyExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcb59468d06b812f457c1763738217fb0430842bb` | BabyFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8317c460c22a9958c27b4b6403b98d2ef4e2ad32` | BabyNormalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8c27103eee75eed8801b808ff23eb02c9876fa7c` | BabySBTs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc646d16dbb448d3ec0a6c8430a3236e04559c317` | LandFragments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf282988582538e58332a78edc98ea304921f856d` | RewardClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x05134427ca04fe0712b29fb50c4d573f63e5cb22` | vBABYToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
