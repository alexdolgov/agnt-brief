# Agentic Audit Brief: IntentX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: IntentX (`intentx`)
- Website: [https://intentx.io](https://intentx.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, blast, mantle
- Contract surface: 149 unique implementations (352 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,673,214.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for IntentX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, base, mantle. Structural roles: 2 supporting, 1 core, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (2), core (1), unclassified (1)
- Contract kinds: contract (4)
- Detected standards: erc20 (2), erc20permit (1), ownable (1), pausable (1)
- Frameworks: layerzero (1), openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- IntxOFT (`0x7d27187eb33a7b1d99258ff222633670f84fa342`, chain 8453)
- IntxToken (`0x1cb4b1dcee1ebde41c272c7c14bf55d565e2830c`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (3 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 146 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 85
- Confirmed-live implementations: 2 of 149 unique; 147 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/105
- Verified + Unaudited implementations: 105
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 149
- Raw deployments: 352
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (105)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 8 deployments: mantle `0x0b60140dcc98a6a9e9985ab165dc54903861d50a`; mantle `0x66df9fbd9793ebab65d50d3a9efd9877923f6484`; mantle `0x9f8f9d8b8bfccf3d782564e6d9cc09371792c2cb`; mantle `0xa0679100a22a607c8355ce507968bd29b9d4760c`; arbitrum `0x356ecc2f034ebd5def88d0e2f371222e0dda19a1`; arbitrum `0x3adc81cc43d9e1636de9cbac764afcb1f3ae6cde`; arbitrum `0xbd80e18dd65441ffebfe6c3b4b8df183f185f989`; arbitrum `0xca90564ae6904429338f129551456a824e2030c7` | ⚠️ Unaudited |
| AirdropClaimXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1d3942a18bad03e8d36e3fbdc6fc4df2d7bebd48` | ⚠️ Unaudited |
| BatchSetForceCloseGapRatio | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x078b56db7a1e61ac76a2865d9ef5ff546754b222`; arbitrum `0x7b914ce741fc4f93c20a0ce1e1935349758af701` | ⚠️ Unaudited |
| BatchSymbolTradingFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e7540325a4a0ebfe46ad9ab35ddd7a91d58a306` | ⚠️ Unaudited |
| BridgeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: mantle `0x20dd479c8210ca675f9351b8daaf439026541a5a`; mantle `0xaf7c79de22cf99001c8ca906b5e88de4182adf59`; arbitrum `0x5485af25f0e978ce914b01a92f6f1897d47a5660`; arbitrum `0xc9a868a5da669c66aaaa6d2103e72974ee81d52f`; arbitrum `0xdc983b6d8642207340fcf74eac7e9545f8aef179` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5640afec6252b0e25b431f28a1fd1285c3c91cb1`; arbitrum `0xb7a912342e943fb8392cff2f10c4a74805b3e866` | ⚠️ Unaudited |
| CarbonFeeRebate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6c81c0efa63cb8c705fb98d79ad88852c5157164`; base `0xcb420c74625fec41671458f3ac660616e1ad1357` | ⚠️ Unaudited |
| ControlFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 8 deployments: mantle `0x0e35fa030fd3bbed41993bc288b7378cc43f39ac`; mantle `0x16ed711ea95697e66d5e0b1dfe5d80b83ba40b5c`; mantle `0x4d5be5e9b8e0cd46bb34f79045eeb9941ffd8be2`; mantle `0x6ae14800c45ae9383db2c3f2ee6019ebe1e32403`; arbitrum `0x50b12727deb2b3f48a2befa4664aa1390ff4e691`; arbitrum `0x91834f84d768716f94d75ec40fa2775fa84c634d`; arbitrum `0xb5076d20f1a898f370b3938e78e69c1546c6f33a`; arbitrum `0xecbd0788bb5a72f9dfdac1ffeaaf9b7c2b26e456` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50998077befe097434b43eb630d1301b62552b58` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: mantle `0x464873026877c9d947e2778a1b4cb4a3cbc688f0`; arbitrum `0x7143e60140e3d18302794e7a4bef717dc26dc9cb`; arbitrum `0xf39352ec34a007b2726e2c4610a13f7aea86684e` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: mantle `0xb74629900981f2977cd7a8e37052fee0d7a4c395`; arbitrum `0x663db73309226debe1d2f6e5cb9180c7e7dbcbbc`; arbitrum `0xd6ee1fd75d11989e57b57aa6fd75f558fbf02a5e` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: mantle `0xcf74c49be20351ef069e3f32b6e646d4b2ba69d9`; mantle `0xd1559bab2423644ac489ef52c76ab92b0f05fc01`; mantle `0xdea50824a9e50bd1e9943155938f3b82854b2eec`; arbitrum `0x45c3e20b9d8129f90c1a2ade4eb468b752552ba9`; arbitrum `0x5044238ea045585c704dc2c6387d66d29ed56648`; arbitrum `0xa7f7c83ca713e48844818c4993ddb55840692342` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xb49cae38c96f6425ce4a46e8220549c6a13362be` | ⚠️ Unaudited |
| FakeStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5aee30c5a5649cb8a46a43bf7978619b506de896` | ⚠️ Unaudited |
| ForceActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x94b34689c1f75e2385e3a6b2ed727af9b0109a48`; arbitrum `0xe6422354dc6ac438cc8593be63e2c383170e1dd3` | ⚠️ Unaudited |
| FundingRateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 7 deployments: mantle `0x04abd9b019dce47d7b05b4c672fa41ee54eeb771`; mantle `0x8c466c5af916a7ef6250bc82fc7c7d022e3114f2`; mantle `0xf39352ec34a007b2726e2c4610a13f7aea86684e`; arbitrum `0x0fb857a93cf54c69c95ef56c977b7971d287904e`; arbitrum `0x34ca2eb0a329b0d33dd485fcb8781e155fdaf361`; arbitrum `0x5d51e783487a65c49c091b6b6d4ae36bd612c079`; arbitrum `0xe6a62ca9da02f43978ad726907ba26558509259d` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-242958 | `0xef23f554af7fa7421af1ff53f2b4838c05afd7a2` | ⚠️ Unaudited |
| ICOClaimXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x229795d6d3f3cb11dd0bb7973038fd2f733c2927`; mantle `0xd4e5aad348a5c5c5411ee404a4ef2c7c24165c10` | ⚠️ Unaudited |
| IntentXAffiliates | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x6ed953a7124d77258a6e43a342615d61fb6c5ff6`; mantle `0x98f632989ddd68be9ffbe8f64f45cd2304a158cf` | ⚠️ Unaudited |
| IntentXFeeRebate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x01a97c03fce8dce233a269678fb5f9ba6c6a3ab9`; mantle `0xf5a10b4124dc503e79350f81cfa2108eac1964dc` | ⚠️ Unaudited |
| IntentXFeeRebate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8bb1a5fe8655ecd38de1af9c5f7f4975c24f4fd8` | ⚠️ Unaudited |
| IntentXMinigame | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x433be520b115d771d6da17a573fdcb01d69d579d`; mantle `0x55477c3dd49e8f5a90b8f3acab6ade2baa8d627d` | ⚠️ Unaudited |
| IntentXMinigame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x703c4927945aac2b5a76f4c1d85bc85e6faaddb6` | ⚠️ Unaudited |
| IntxOFT | unknown | project_anchor | own_supporting | 0 | base | unit-242959 | `0x7d27187eb33a7b1d99258ff222633670f84fa342` | ⚠️ Unaudited |
| IntxOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d55e52e32266459ecf09684f0abaab6c2acc3c2` | ⚠️ Unaudited |
| IntxToken | unknown | project_anchor | own_supporting | 1 | mantle | unit-242960 | 2 deployments: mantle `0x1cb4b1dcee1ebde41c272c7c14bf55d565e2830c`; mantle `0x4b7f28397b4294277e7825f224172944f4f5a877` | ⚠️ Unaudited |
| LimitedSymbolAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: mantle `0x1b86fa3fe0f41fd8ad455427a5a375eba234327b`; mantle `0x59891326b7b2a1ccba745e32b726bb31e66f3348`; arbitrum `0x0826116c41487d170dd08de414779af105ccf3a2`; arbitrum `0x75bd495f94d251341827c4a6b3975ac5cd096f71`; arbitrum `0xeb14622c46d934b04ecc72ac4dfcf9853269c974` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x2ecc7da3cc98d341f987c85c3d9fc198570838b5`; mantle `0x50154e11edf5d7d528cbc7ec0d507ddb70b8b1c6` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: mantle `0x5e0663deb8683b70e0ff36e6e6e0dfa0f0069934`; mantle `0x619805f8f698b92012bb68c570ae54756ab7476d`; arbitrum `0xaeca7cca8bd9b8c8641d6e27a259f429b3bcaae6`; arbitrum `0xd8b5f48cd465eb7d3efa7bdeee99caaaedfe0d57`; arbitrum `0xd9d2340762b45288264a118639fffdfa994493d2` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x91cf2d8ed503ec52768999aa6d8dbea6e52dbe43` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x50e88c692b137b8a51b6017026ef414651e0d5ba`; arbitrum `0x8f06459f184553e5d04f07f868720bdacab39395` | ⚠️ Unaudited |
| MntRewardsClaimXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc38342125ded49ea7e62e04a30df29c736ffb47d` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 11 deployments: mantle `0x188ff44e2f3dc62e519a0ff29eda4d7a896c67af`; base `0x2190315d8497b721d28401e4acb268496c9d53e9`; base `0x515d4e4a04a9138a2c39b287317c5a0d8c9c6653`; base `0xa784292b2dae2922303a712e039159fe452926c7`; base `0xbcf806cf7d8b4b637e52ef66218539b89bb46e84`; base `0xce15dcf16f502b0c58f02a14348cb785a19f37b0`; base `0xe3337432d80556541fdb3e1cbe2bc8bc454ba7b0`; base `0xee93f20713add2a49890da69fe432b37ccb7a63b`; arbitrum `0x4cc5741303e2ba3cfaf837892b8a6a299de67765`; arbitrum `0x703c4927945aac2b5a76f4c1d85bc85e6faaddb6`; arbitrum `0x8bb1a5fe8655ecd38de1af9c5f7f4975c24f4fd8` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0x359ffa5a49c8ee0e6a481c4a698f90fd896dd262`; mantle `0xd6ee1fd75d11989e57b57aa6fd75f558fbf02a5e`; mantle `0xfa8a07fcb6204ce2229c244a26f42563a72f369e` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x829af7dda2538b78acf64babe683a7eb34ad8373`; mantle `0xecbd0788bb5a72f9dfdac1ffeaaf9b7c2b26e456` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x39ecc772f6073242d6fd1646d81fa2d87fe95314`; base `0xc38342125ded49ea7e62e04a30df29c736ffb47d` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x54a870306b2ed367d135c43f2c2dafa9061bb887`; base `0x921dd892d67aed3d492f9ad77b30b60160b53fe1` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9341529a0cf73d6165ed98e5705d8e54f74f1c53`; base `0xbc029264eb164f36d7dfefc46a607b66c2b4f379` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb95d177398916b2b1fc1e648717e85115c5be7a2`; base `0xc3ecd872c7242b83025657e39b7fda926c6f5896` | ⚠️ Unaudited |
| MultiAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x141269e29a770644c34e05b127ab621511f20109`; arbitrum `0x1cb4b1dcee1ebde41c272c7c14bf55d565e2830c` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x152a8e045a30f350f8784a20b6d8f0f39353e6d6`; arbitrum `0x45850f9459d2e1c410954deb9306533b1ec06715`; arbitrum `0x6a3c63ed5e558a4c4810ecc980ba6075476602d6`; arbitrum `0xc258535aaf6ad3ced5d2e03e2b66c35262488309` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x48d0d59b3660f07f85f5b87b65567ed1f322508b`; arbitrum `0xbc029264eb164f36d7dfefc46a607b66c2b4f379` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6273242a7e88b3de90822b31648c212215caafe4`; arbitrum `0xb057dc6e70549e68f3ac342cce90b8809e05d99c` | ⚠️ Unaudited |
| MultiCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: mantle `0x2fddfb05b63d00b2047a11de30695685a575cb57`; mantle `0x679a9cf2d4392ea4925cf925194761ffbeafc7e0`; arbitrum `0x5ba275fa26a34d79a8747cc661edddfd8fd1d597`; arbitrum `0x8aa3b1be39d11d90ab66dec6d6c112d5bf2219dd`; arbitrum `0x94641ea474df3db396ddbe9ce6b420b93776efe7` | ⚠️ Unaudited |
| MultiCall | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | mantle | n/a | `0xfb515c78f799e1b71c7153914583645f04b57919` | ⚠️ Unaudited |
| MultiCall | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1224b47f1b68f2bc244a1bc3ccd094b88c17cc75`; arbitrum `0x94e31301da4502e63a0ab590543418d5afe187cc` | ⚠️ Unaudited |
| NoxPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1d26bcf3b8416373ea1956e2bcffe1f3c9b0beb5`; base `0x975dabab7677aa1c9998cdd32be69103da22c55a`; base `0xd7ed5f8a5f52c6ccdeb7282318652cd8cfc51329` | ⚠️ Unaudited |
| NoxPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x324de1e7078b9809b4c17849f3ddbf39befd330d`; base `0xabf0c8b383e02a41b60b833cdcf81c0d464ad914` | ⚠️ Unaudited |
| NoxPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9f20bad77cca97f2f96de88b146603ca3f65bad5`; base `0xdd409c784477101bc7cdfb4d8ca4bf81b6e0089d` | ⚠️ Unaudited |
| NoxPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3c3de3739d1c8092ad378e44220829eebe062855`; arbitrum `0xd600a4f314d3f1ee8869a340d298a69ff070e574` | ⚠️ Unaudited |
| OnChainSymmioVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x40423ef1fdcc21738a9031d0295b7ce6739cd1ae`; arbitrum `0x68ef307822138027a26f7fffc05178be9c446ac9` | ⚠️ Unaudited |
| PartyAFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: mantle `0x79d706c08b5df87d047262de55c97fd785f0b06d`; mantle `0x8f00a481c046e98fdee4ea673df2984376946953`; mantle `0x9d4c169703bb0116751a6965952a5e4adfdffb05`; arbitrum `0x6ea2effeb3f0f2582df5ad52cbe847fa50b628b2`; arbitrum `0x803de354cbd853d9ae3bc58131a5d538de7a72e3`; arbitrum `0x87a1f9ff86d6dd411e333a3c0ca09a234c965168`; arbitrum `0xd6bddfb6cf94fed1b99ef6d32ce6bf980d39aa8d` | ⚠️ Unaudited |
| PartyBFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mantle `0x4d8e97f44cd90504e790827137334d9a42bbec55`; mantle `0xa46e5d77a18b93803fa0d3641d868dc9bdd381b4`; arbitrum `0x1a521c6a05d56a52b9203b6f5d86dd0f2e8d38b4`; arbitrum `0xcccda5c17dbdb6f786f432239887d6d51b4b9ad8` | ⚠️ Unaudited |
| PartyBGroupActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: mantle `0xceb9c23951df8b70e7ea11532f2f87fd75ea98ea`; arbitrum `0x13cfd2dfe11092a755ff2d6aecd33b3ea204a60b`; arbitrum `0xcf78ea7c8785fb3d228da7001d3864994c6665a2` | ⚠️ Unaudited |
| PartyBPositionActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mantle `0x410cd8ed7963530d551413c17dc9b954fc3b8991`; mantle `0x68f6a30b42a61cc8d25d1b3dd7c47d4b8ad4dd03`; mantle `0xa64012cb09f1754c16a97b885405504f03f911ac`; arbitrum `0x2115415aacd20c84a9ff58354bc8011c06f627eb` | ⚠️ Unaudited |
| PartyBQuoteActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: mantle `0x0734f47a1e0b6254e61e1d22c2e9957beb43f3fb`; arbitrum `0x017474144617c8082f0182a241f1bcb9265a3e56`; arbitrum `0x45f0d42dcd339f44d9ce6b1aca17945e4f935a04` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: mantle `0x2d2463bb95077eb38b3658d71d299da0f6453188`; mantle `0x3adc81cc43d9e1636de9cbac764afcb1f3ae6cde`; mantle `0x4b96938f28918b07e88a8e909a49a29dbcd65865`; base `0x48d0d59b3660f07f85f5b87b65567ed1f322508b`; base `0x55df513efa481df6ebdf1661784fa159919bee49`; base `0xd0ecc75816cb01b3e904766391cb34214a5458e7`; base `0xf2b9d5462243348d48cc3f9e680fca5727e77637`; arbitrum `0x0392e9cf758cd1566dab547fdaf3ddcfed1d7375`; arbitrum `0x2d2463bb95077eb38b3658d71d299da0f6453188`; arbitrum `0x433be520b115d771d6da17a573fdcb01d69d579d`; arbitrum `0x9f6d3e88c09face21bbc4bb5944551967083399e`; arbitrum `0xb5317e9b93fe8e6873ad6045f8ee617910b7d112` | ⚠️ Unaudited |
| RasaOffChainSymmioDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x5784899b4f5e0589394a9fcf52b2423de2f37ea3`; mantle `0xf8c1cb5cb3e38b12b78752219bea94fd6672b9bb` | ⚠️ Unaudited |
| RasaOffChainSymmioDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xac0f19334521c0047e658f7ed7b11a6319d629da` | ⚠️ Unaudited |
| RasaOnChainSymmioDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x1f050a434763de043363adc58cabcd8f3662c320`; mantle `0xb814fd719c5920ae24192a59a78b35b18804f6f0` | ⚠️ Unaudited |
| SettlementFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: mantle `0x5618cdb49eb92d4d48531923668033426fc657db`; arbitrum `0x185cb4c923a9eefa9945989eb951005ab71e147c`; arbitrum `0x75c539efb5300234e5daa684502735fc3886e8b4` | ⚠️ Unaudited |
| SignatureStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x1c1d04ef6c60c1e66455d2d8ec7945283246a117`; arbitrum `0x94eea58de1c8945c342db4be9670301638e403e2`; arbitrum `0xb3b72fab0f185e353cfbb4bceae83f7e45f14fed`; arbitrum `0xebef48beb5485d9061b2fc4b37a7a247a79b5c4d` | ⚠️ Unaudited |
| SnapshotAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x8ed90b74141390f835d0d866790741497c8b0ea1`; mantle `0xa2d796aaf5e06e64ebad01f72358aac310717cf0`; mantle `0xa3a93aa0d1b98124e9a48b18f7387ecaedf699bd`; mantle `0xd3aadc7645d03d605607acbcfaa2fbc99603b1cf` | ⚠️ Unaudited |
| SolverVault | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | arbitrum | n/a | 8 deployments: arbitrum `0x2190315d8497b721d28401e4acb268496c9d53e9`; arbitrum `0x319f10d14b5b7195a1693f4f5c015370c4324fa6`; arbitrum `0x7d27187eb33a7b1d99258ff222633670f84fa342`; arbitrum `0x8e42263a12929b909c9d5ad70515ce117094587c`; arbitrum `0x98058ab24b31e9987f3c5d74ecf351a8ce3f59f1`; arbitrum `0xadbb55b3d7f93a6c213754e8b7a89996cd009179`; arbitrum `0xb86b965e95dd21fcdaffd94712fa908b1052d73c`; arbitrum `0xbb62c3894eba432ec09fc86c194ea4a8b31373d1` | ⚠️ Unaudited |
| StakedINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x0b5b3f9b727656a254ec1203d8b2a86b4540f5f5`; mantle `0x921dd892d67aed3d492f9ad77b30b60160b53fe1`; mantle `0xbc029264eb164f36d7dfefc46a607b66c2b4f379`; mantle `0xe72284fc2d56be2c1649742fd131bcea41a94a6a` | ⚠️ Unaudited |
| StakedINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x2554727881c5fb22965c6fcb7c6042b367845362`; mantle `0xf8be5779bf58b0cbf6db21feb8d5d89e4f65e9b6` | ⚠️ Unaudited |
| SymmExecutorUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0xb90fce52618ca0f46bd5f750978be6874fc267bf`; mantle `0xeb02a6887a2e0b65ce8d267aad012312db19db05`; mantle `0xf7b6d079c62a10e2d106113f998520f144a12bcf` | ⚠️ Unaudited |
| SymmExecutorUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | base | n/a | 6 deployments: base `0x1c529cf1392cde198b5cdac11c7e50780a0686a4`; base `0x25d7572f32d9cfb96799efdf50804a982a983f0a`; base `0x2d36f52bfebf74fcc048bae866b54ea685ee5eca`; base `0x3c3de3739d1c8092ad378e44220829eebe062855`; base `0x433be520b115d771d6da17a573fdcb01d69d579d`; base `0xbf41d10016e34ed0b290c45e2a0e0627318155d5` | ⚠️ Unaudited |
| SymmExecutorUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x19e3efce03fecc63af0fc8769ee7799551622dbe`; arbitrum `0xee93f20713add2a49890da69fe432b37ccb7a63b`; arbitrum `0xf7b6d079c62a10e2d106113f998520f144a12bcf` | ⚠️ Unaudited |
| SymmioBridgeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x8aa3b1be39d11d90ab66dec6d6c112d5bf2219dd`; mantle `0x94054634e2f54c753187f204d7803b25fc2375b5` | ⚠️ Unaudited |
| SymmioDepositorLpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x074849c3f9f9a948c07fe141d0520df9a7b0b182`; mantle `0x14ef4f5afd3928d983fa7dcaa2c1ff6d1956f1e9` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | mantle | n/a | 4 deployments: mantle `0x471806397f95a1184c623465c6f79ee3188a1a4a`; mantle `0x4882900e76fe1fe8c5a034a85abd71eb20b72e85`; mantle `0x8952f24fa7a3f800532634791fe8592e031aeb3c`; mantle `0xa2c779f0950aa771663cf1b0b8ce64d5b3b29c19` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1279655feed886f44958733bbb6b26252d1d4f99` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0532c5008a9214e669c41ce782c0e64095e6fb22`; arbitrum `0x8452ed3225c323fcf2811a586d8005be7c258538` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x196a2bf382f55e53cc555aa018aebab32bf0c1c1`; arbitrum `0x94054634e2f54c753187f204d7803b25fc2375b5` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x59b00d7097b7952ec9180590b3bd43c39a4608f4`; arbitrum `0x96af9f2893f1fd79fa039ecb56c4b47425c8f74b`; arbitrum `0xaf2abcabde3d965354868385b6c657c27267989a`; arbitrum `0xb719545849b099b40172782753626c22cf086ed8` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: mantle `0xc19e66d08350eb88a41377b16c8ab93ee0fb4996`; arbitrum `0x82895a2e3d5cc74f76694edcaeec1da0e0e5081d` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x5044238ea045585c704dc2c6387d66d29ed56648`; mantle `0x50e88c692b137b8a51b6017026ef414651e0d5ba` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x1bd0c5557f63921ad7553b7ad5cce1585a0ed424`; base `0x4a23e09b706e5e930497f723dd412d172e16404e`; base `0xb3ccac825e5515ca6b8d18ceb22a00066793499c` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9206d9d8f7f1b212a4183827d20de32af3a23c59` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x0b5b3f9b727656a254ec1203d8b2a86b4540f5f5`; arbitrum `0x556f255e0e671c760e21e01cd7c3a4fb4722ed3a`; arbitrum `0xe72284fc2d56be2c1649742fd131bcea41a94a6a` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0eb92f476a9a74b15a9fdcc6c252b2013afc2dec`; arbitrum `0x1347a83d1eb2121b15f944b21ddbe22ebf8cf8d1` | ⚠️ Unaudited |
| SymmioSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x5618c747f4877f3c39689f6777156d0b831a3ee2`; arbitrum `0x9c9138a4428eb09914271e3f055baa225c5c308f`; arbitrum `0xd2d78e6b13bc468ac971ed3cf240de6b3af3b62b` | ⚠️ Unaudited |
| SymmioSymbolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 10 deployments: mantle `0x1786ac43e205cd6d0630551946c6fb3326d6dedd`; mantle `0x4d9a1d231278431bb7d4bf55b111cdac20ade1a1`; mantle `0x551c904776a869d518a7072262dd1739327e2b1a`; mantle `0x9ab075f54f026b2decfb4f5546898a26e2436844`; mantle `0xb4d660df395bc66acaa5d149083d4c4d04e7aa53`; arbitrum `0x2f374c48b902cf3b55339a358126329dc35f1a12`; arbitrum `0x5d55d608127e6b72c9030b8c1be0d57d5932700b`; arbitrum `0x644d05bb20d53e6bf68b09ae22f8cf3466727738`; arbitrum `0xba45a0299cfeb8e6f4aa87a1c530069ea532363c`; arbitrum `0xe07e635fdb1dfeb5968a3cf198ece5040befaa3c` | ⚠️ Unaudited |
| SymmioTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mantle `0xa75fbaae9d952913bca5a21e96225e90a592ce63`; mantle `0xd02f2cc0c2bc1799ff0674b64620a351f986ebde`; arbitrum `0x0cbf07176e67671c99222bebdb166efc58dacd95`; arbitrum `0xffe2c25404525d2d4351d75177b92f18d9daf4af` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3256de92e1e2f588950b009346f5c77d07807b66`; base `0xade616c06ec097d5716c5225d7c6b2afb6873fa9` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: mantle `0x7aded3c2d7224495f96d82bf52b6998f230c04f0`; base `0x319f10d14b5b7195a1693f4f5c015370c4324fa6`; arbitrum `0xe802853f67c618dbbb071d59e0b9537a4a7fe8b7` | ⚠️ Unaudited |
| TradingCompetitionClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x49024995376c4218348c5c9f578f8c80a99ed8e2`; mantle `0x839d230b779f739214a69a2f16c16722760c2be7` | ⚠️ Unaudited |
| TradingCompetitionClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x50f1cd5da4fccfe62b8382281007eef5264649b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x0f5af1ab88350cc62875e7c57ebfbb95091e83b2`; mantle `0xc7e3f48c050082c4c3db7430348c1786c21ce20c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x327945c6acc9d554594666b5e9ebd29a588e7022`; mantle `0xec9190e9d88d18aabc5557296b3fdef137e47d22` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | mantle | n/a | 4 deployments: mantle `0x4318fd1edb3ed2b5e018b00fe1b886e85719b672`; mantle `0x77263ff6f88bc1e49feb425aba602dec3e477641`; mantle `0xb5317e9b93fe8e6873ad6045f8ee617910b7d112`; mantle `0xfaf5c6800b5026c500e540bc977cc6025db79aea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x4fad271896eaf7228da1d7c23efb63cb62b50d1a`; mantle `0xbea14475f6357ac6c16aeb5134f6d7862fa0dfd2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0x6d0be4100407b2d198a253ec88efe75e1cd8e7f5`; mantle `0x7495e8e4810d7af0be847268cee53c0055e082e9`; mantle `0x8e9342bcbb7d4c875362cc79f2cc212bb818ea82` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x73c9c5c09435886e58ba0a4265702cc607cf7529`; mantle `0xa6e69fbc45a435410414b4ca23b1eaba6babfa90` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x703c4927945aac2b5a76f4c1d85bc85e6faaddb6`; base `0xa6b67072128d073709b9a83705417489b0619e56` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x78c98512ba92b8f27557b8861c811343f5905091`; base `0xc9f8a55864381d3be28aae79091256448fd8da21` | ⚠️ Unaudited |
| UserPowers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99c430d6ad83f7d375f1b44aea66f155a1c5c69b` | ⚠️ Unaudited |
| VestingXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0x083e449ac8ddd874efb2d9315301b8188df6366f`; mantle `0x0863c4b573d1a672bab87ea83dd26dce7a508146`; mantle `0x805045f5594939bfe3e78c6d21c4e276d21186dc` | ⚠️ Unaudited |
| VestingXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0x1c529cf1392cde198b5cdac11c7e50780a0686a4`; mantle `0x388e7afc43a30ed8004b0d61aea1df5f48e55d60`; mantle `0xb98b2499f54745a08423a82c4b3313b3854120cc` | ⚠️ Unaudited |
| VestingXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0xb33b67be2774b6ed634ffd041b6900f5e1dea44b`; mantle `0xd012ec002bffe0b3d76f7899cd0d6f306d7a5040` | ⚠️ Unaudited |
| VestingXINTXAdv | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x5a242601270389ce307de3ce2283f7a4b7e97edf`; mantle `0xef79643cda5a6a9a6bf5a5ea4e85e77bad671ef8` | ⚠️ Unaudited |
| ViewFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 8 deployments: mantle `0x27e3de4dbc90a486e541ceff9449bff9ba6d641b`; mantle `0x359ae1329f4070f81079b415249fb13664b6ce76`; mantle `0x7e8b57477727c46d13d573340d72dd27e4dd98d3`; mantle `0x9f6d3e88c09face21bbc4bb5944551967083399e`; arbitrum `0x48b9a883aa90fc7972aef5368df47044642a237a`; arbitrum `0x5b5c7b6494ec52d9316a7f578ef3fbbbaa53be63`; arbitrum `0x67d3bbbf68eb9ba032ae65552643fc20461b9054`; arbitrum `0xcb7c888d46bf02f4595f73dc18c4156f3e227a14` | ⚠️ Unaudited |
| XIntentXTraderIncentives | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x316cee10dd877c4b503ad50afbbc216b08da653c`; mantle `0xd1eb4aaa6cfad466d39371d1d4a909168ab1b95f` | ⚠️ Unaudited |
| ZenithSymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48e416a281435be12d66d35ea2d6a0bc124bf21b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x01114b93f9bf5c7ebbbc2eb03d7626b761a4fb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1221da8abb02304a6ac4078c61b98b4f3a550586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3499939df75e18839d58b3a57498e85cb4c4d2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3683f09a85f09eb6c4928d341f51af27b1214a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x39f64b4abcdba840ced0c9bab25589bd8fdfc024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x40423ef1fdcc21738a9031d0295b7ce6739cd1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x41ad9f7c493df4ba80548271c7df78d515e31d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4458a9603b91c8e1286add0805a3b8e60b72fad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x458d175a42049cfb8ddcdc561d1be147da5b3f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x46c397bd01c2a34b66c7b2166d08cdb0f7563656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4951f0a62ef2d2a49391e848e723fbb650bede3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4d8835046c622ee75968407f6383a7c92d57273c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5996d87b7d30e2f1c5d5064428335cf7d2f924b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6d8a38c8f4a6c999c2dbb004e75032e41281362a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x78253f316a42be93e631578f79bd773ad011b4f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7d8691e0da3fa787ad3361aa2d74113dda928de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x93c9bfe30c26c6336d0b2f54dad01495b0edbbb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9c40113ade0e6d284f2f7f2380f12eb6b62a8ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb86b965e95dd21fcdaffd94712fa908b1052d73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc1680dcfb47609efc522880cb82972f41b7b7b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xca8e343cf7059345fcb9cc8a59e1a57a630d7bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd008af79f16880029cf1a52cec55de0201adb5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd6e1167fe6278a13f365cc8da30eeb4aea1452ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x141269e29a770644c34e05b127ab621511f20109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d2463bb95077eb38b3658d71d299da0f6453188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc4a6308b505c7d372275648d7b75480755fa725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6118aa6d0a8ee7a86d12c48a8de4edcb695767a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3d7d35ed6346d8078390208b0b6cf7e85a2477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00e158b39433b734ddef5f3b3463d8ad647a33f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f9171b4644ce8d4fe84fec9f4c3998a5da80d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c6b1408049a1452d17a387006d9b8ac903420ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a26a2dd3e43912456504a1a5e954182e0273284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a17c91f259e7da6c78ed73896c782ba23d2496c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cf142eb3ddd8eaab7e887d179573ea828c22185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6282333249cf3d36f64bd71a7a38a9cbcbe0a7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63dc3cab8df8af8b4845eec74921c4433ca892e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68e300f21518be6223f4505b013808f2d5554cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bf9280cf43c5853d3e575f709e29c21cf36d3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90d56365f02190f3ee2c520454b1e4b7a5392a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x940ac5c0f0cdbb73c78768dc9cba934b25ef77fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c1d3b3d0aaf60bb5db3f589a07e6cdf9c3bdd1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2a1fcd1e6d6c3c806fac707b28126b072f045b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe067abbc09e147216443a0c91169616aa4c423a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0df464fa265cdfab5ef33efe2d4d862821c76dd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 338
- Live contracts: 2
- Unknown liveness contracts: 336
- Source-verified contracts: 286
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=64, candidate hard block=23, contamination review=13, source verified unclassified=186, unverified unclassified=52

Showing first 200 of 338 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | ERC1967Proxy<br>`0x0b5b3f9b727656a254ec1203d8b2a86b4540f5f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | ERC1967Proxy<br>`0xd600a4f314d3f1ee8869a340d298a69ff070e574` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | ERC1967Proxy<br>`0xe72284fc2d56be2c1649742fd131bcea41a94a6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | ProxyAdmin<br>`0x2d2463bb95077eb38b3658d71d299da0f6453188` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | ProxyAdmin<br>`0x433be520b115d771d6da17a573fdcb01d69d579d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | ProxyAdmin<br>`0xb5317e9b93fe8e6873ad6045f8ee617910b7d112` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x2190315d8497b721d28401e4acb268496c9d53e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x319f10d14b5b7195a1693f4f5c015370c4324fa6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x40423ef1fdcc21738a9031d0295b7ce6739cd1ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x7d27187eb33a7b1d99258ff222633670f84fa342` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x8e42263a12929b909c9d5ad70515ce117094587c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xadbb55b3d7f93a6c213754e8b7a89996cd009179` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xb86b965e95dd21fcdaffd94712fa908b1052d73c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xbb62c3894eba432ec09fc86c194ea4a8b31373d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xbc029264eb164f36d7dfefc46a607b66c2b4f379` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xee93f20713add2a49890da69fe432b37ccb7a63b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0xf7b6d079c62a10e2d106113f998520f144a12bcf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | MultiAccount<br>`0x1cb4b1dcee1ebde41c272c7c14bf55d565e2830c` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | MultiAccount<br>`0x48d0d59b3660f07f85f5b87b65567ed1f322508b` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | MultiAccount<br>`0x4cc5741303e2ba3cfaf837892b8a6a299de67765` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | MultiAccount<br>`0x703c4927945aac2b5a76f4c1d85bc85e6faaddb6` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | MultiAccount<br>`0x8bb1a5fe8655ecd38de1af9c5f7f4975c24f4fd8` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | NoxPartyB<br>`0x3c3de3739d1c8092ad378e44220829eebe062855` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | OnChainSymmioVaultV2<br>`0x68ef307822138027a26f7fffc05178be9c446ac9` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | SolverVault<br>`0x98058ab24b31e9987f3c5d74ecf351a8ce3f59f1` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | SymmExecutorUpgradeable<br>`0x19e3efce03fecc63af0fc8769ee7799551622dbe` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | SymmioPartyB<br>`0x556f255e0e671c760e21e01cd7c3a4fb4722ed3a` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | source verified unclassified | TimelockController<br>`0xe802853f67c618dbbb071d59e0b9537a4a7fe8b7` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x63dc3cab8df8af8b4845eec74921c4433ca892e1` | non_address_book | unknown | unknown | unverified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x68e300f21518be6223f4505b013808f2d5554cff` | non_address_book | unknown | unknown | unverified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| arbitrum | candidate review | ProxyAdmin<br>`0x9f6d3e88c09face21bbc4bb5944551967083399e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | ProxyAdmin<br>`0x0392e9cf758cd1566dab547fdaf3ddcfed1d7375` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0x0eb92f476a9a74b15a9fdcc6c252b2013afc2dec` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0x152a8e045a30f350f8784a20b6d8f0f39353e6d6` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0x45850f9459d2e1c410954deb9306533b1ec06715` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0x6273242a7e88b3de90822b31648c212215caafe4` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0x6a3c63ed5e558a4c4810ecc980ba6075476602d6` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0x94054634e2f54c753187f204d7803b25fc2375b5` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0x94e31301da4502e63a0ab590543418d5afe187cc` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0x96af9f2893f1fd79fa039ecb56c4b47425c8f74b` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0xaf2abcabde3d965354868385b6c657c27267989a` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0xb719545849b099b40172782753626c22cf086ed8` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | candidate hard block | TransparentUpgradeableProxy<br>`0xb7a912342e943fb8392cff2f10c4a74805b3e866` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | contamination review | DiamondInit<br>`0x663db73309226debe1d2f6e5cb9180c7e7dbcbbc` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | contamination review | PartyBFacet<br>`0x1a521c6a05d56a52b9203b6f5d86dd0f2e8d38b4` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | contamination review | PartyBGroupActionsFacet<br>`0x13cfd2dfe11092a755ff2d6aecd33b3ea204a60b` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | contamination review | PartyBQuoteActionsFacet<br>`0x017474144617c8082f0182a241f1bcb9265a3e56` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | contamination review | SettlementFacet<br>`0x185cb4c923a9eefa9945989eb951005ab71e147c` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | AccountFacet<br>`0x356ecc2f034ebd5def88d0e2f371222e0dda19a1` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | AccountFacet<br>`0x3adc81cc43d9e1636de9cbac764afcb1f3ae6cde` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | AccountFacet<br>`0xbd80e18dd65441ffebfe6c3b4b8df183f185f989` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | AccountFacet<br>`0xca90564ae6904429338f129551456a824e2030c7` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | BatchSetForceCloseGapRatio<br>`0x7b914ce741fc4f93c20a0ce1e1935349758af701` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | BatchSymbolTradingFee<br>`0x2e7540325a4a0ebfe46ad9ab35ddd7a91d58a306` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | BridgeFacet<br>`0x5485af25f0e978ce914b01a92f6f1897d47a5660` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | BridgeFacet<br>`0xc9a868a5da669c66aaaa6d2103e72974ee81d52f` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | BridgeFacet<br>`0xdc983b6d8642207340fcf74eac7e9545f8aef179` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | CallProxy<br>`0x5640afec6252b0e25b431f28a1fd1285c3c91cb1` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | ControlFacet<br>`0x50b12727deb2b3f48a2befa4664aa1390ff4e691` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | ControlFacet<br>`0x91834f84d768716f94d75ec40fa2775fa84c634d` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | ControlFacet<br>`0xb5076d20f1a898f370b3938e78e69c1546c6f33a` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | ControlFacet<br>`0xecbd0788bb5a72f9dfdac1ffeaaf9b7c2b26e456` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | Diamond<br>`0x50998077befe097434b43eb630d1301b62552b58` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | Diamond<br>`0x8f06459f184553e5d04f07f868720bdacab39395` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | DiamondCutFacet<br>`0x7143e60140e3d18302794e7a4bef717dc26dc9cb` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | DiamondCutFacet<br>`0xf39352ec34a007b2726e2c4610a13f7aea86684e` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | DiamondInit<br>`0xd6ee1fd75d11989e57b57aa6fd75f558fbf02a5e` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | DiamondLoupeFacet<br>`0x45c3e20b9d8129f90c1a2ade4eb468b752552ba9` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | DiamondLoupeFacet<br>`0x5044238ea045585c704dc2c6387d66d29ed56648` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | DiamondLoupeFacet<br>`0xa7f7c83ca713e48844818c4993ddb55840692342` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | FakeStablecoin<br>`0x5aee30c5a5649cb8a46a43bf7978619b506de896` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | ForceActionsFacet<br>`0xe6422354dc6ac438cc8593be63e2c383170e1dd3` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | FundingRateFacet<br>`0x0fb857a93cf54c69c95ef56c977b7971d287904e` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | FundingRateFacet<br>`0x34ca2eb0a329b0d33dd485fcb8781e155fdaf361` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | FundingRateFacet<br>`0x5d51e783487a65c49c091b6b6d4ae36bd612c079` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | FundingRateFacet<br>`0xe6a62ca9da02f43978ad726907ba26558509259d` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | LimitedSymbolAdder<br>`0x0826116c41487d170dd08de414779af105ccf3a2` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | LimitedSymbolAdder<br>`0x75bd495f94d251341827c4a6b3975ac5cd096f71` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | LimitedSymbolAdder<br>`0xeb14622c46d934b04ecc72ac4dfcf9853269c974` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | LiquidationFacet<br>`0x50e88c692b137b8a51b6017026ef414651e0d5ba` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | LiquidationFacet<br>`0xaeca7cca8bd9b8c8641d6e27a259f429b3bcaae6` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | LiquidationFacet<br>`0xd8b5f48cd465eb7d3efa7bdeee99caaaedfe0d57` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | LiquidationFacet<br>`0xd9d2340762b45288264a118639fffdfa994493d2` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | MultiAccount<br>`0xb057dc6e70549e68f3ac342cce90b8809e05d99c` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | MultiAccount<br>`0xc258535aaf6ad3ced5d2e03e2b66c35262488309` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | MultiCall<br>`0x1224b47f1b68f2bc244a1bc3ccd094b88c17cc75` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | MultiCall<br>`0x5ba275fa26a34d79a8747cc661edddfd8fd1d597` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | MultiCall<br>`0x8aa3b1be39d11d90ab66dec6d6c112d5bf2219dd` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | MultiCall<br>`0x94641ea474df3db396ddbe9ce6b420b93776efe7` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | PartyAFacet<br>`0x6ea2effeb3f0f2582df5ad52cbe847fa50b628b2` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | PartyAFacet<br>`0x803de354cbd853d9ae3bc58131a5d538de7a72e3` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | PartyAFacet<br>`0x87a1f9ff86d6dd411e333a3c0ca09a234c965168` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | PartyAFacet<br>`0xd6bddfb6cf94fed1b99ef6d32ce6bf980d39aa8d` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | PartyBFacet<br>`0xcccda5c17dbdb6f786f432239887d6d51b4b9ad8` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | PartyBGroupActionsFacet<br>`0xcf78ea7c8785fb3d228da7001d3864994c6665a2` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | PartyBPositionActionsFacet<br>`0x2115415aacd20c84a9ff58354bc8011c06f627eb` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | PartyBQuoteActionsFacet<br>`0x45f0d42dcd339f44d9ce6b1aca17945e4f935a04` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SettlementFacet<br>`0x75c539efb5300234e5daa684502735fc3886e8b4` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SignatureStore<br>`0x94eea58de1c8945c342db4be9670301638e403e2` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SignatureStore<br>`0xb3b72fab0f185e353cfbb4bceae83f7e45f14fed` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SignatureStore<br>`0xebef48beb5485d9061b2fc4b37a7a247a79b5c4d` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioFeeDistributor<br>`0x196a2bf382f55e53cc555aa018aebab32bf0c1c1` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioFeeDistributor<br>`0x59b00d7097b7952ec9180590b3bd43c39a4608f4` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioFeeDistributor<br>`0x82895a2e3d5cc74f76694edcaeec1da0e0e5081d` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioFeeDistributor<br>`0x8452ed3225c323fcf2811a586d8005be7c258538` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioPartyB<br>`0x1347a83d1eb2121b15f944b21ddbe22ebf8cf8d1` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioSwapHelper<br>`0x5618c747f4877f3c39689f6777156d0b831a3ee2` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioSwapHelper<br>`0x9c9138a4428eb09914271e3f055baa225c5c308f` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioSwapHelper<br>`0xd2d78e6b13bc468ac971ed3cf240de6b3af3b62b` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioSymbolManager<br>`0x2f374c48b902cf3b55339a358126329dc35f1a12` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioSymbolManager<br>`0x5d55d608127e6b72c9030b8c1be0d57d5932700b` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioSymbolManager<br>`0x644d05bb20d53e6bf68b09ae22f8cf3466727738` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioSymbolManager<br>`0xba45a0299cfeb8e6f4aa87a1c530069ea532363c` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioSymbolManager<br>`0xe07e635fdb1dfeb5968a3cf198ece5040befaa3c` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioTimelockController<br>`0x0cbf07176e67671c99222bebdb166efc58dacd95` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | SymmioTimelockController<br>`0xffe2c25404525d2d4351d75177b92f18d9daf4af` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | UserPowers<br>`0x99c430d6ad83f7d375f1b44aea66f155a1c5c69b` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | ViewFacet<br>`0x48b9a883aa90fc7972aef5368df47044642a237a` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | ViewFacet<br>`0x5b5c7b6494ec52d9316a7f578ef3fbbbaa53be63` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | ViewFacet<br>`0x67d3bbbf68eb9ba032ae65552643fc20461b9054` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | source verified unclassified | ViewFacet<br>`0xcb7c888d46bf02f4595f73dc18c4156f3e227a14` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x00e158b39433b734ddef5f3b3463d8ad647a33f4` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09f9171b4644ce8d4fe84fec9f4c3998a5da80d6` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1c6b1408049a1452d17a387006d9b8ac903420ac` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a26a2dd3e43912456504a1a5e954182e0273284` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4a17c91f259e7da6c78ed73896c782ba23d2496c` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4cf142eb3ddd8eaab7e887d179573ea828c22185` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6282333249cf3d36f64bd71a7a38a9cbcbe0a7a6` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8bf9280cf43c5853d3e575f709e29c21cf36d3af` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x90d56365f02190f3ee2c520454b1e4b7a5392a9b` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x940ac5c0f0cdbb73c78768dc9cba934b25ef77fc` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c1d3b3d0aaf60bb5db3f589a07e6cdf9c3bdd1e` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc2a1fcd1e6d6c3c806fac707b28126b072f045b6` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe067abbc09e147216443a0c91169616aa4c423a9` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf0df464fa265cdfab5ef33efe2d4d862821c76dd` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| base | candidate review | ERC1967Proxy<br>`0x1bd0c5557f63921ad7553b7ad5cce1585a0ed424` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | ERC1967Proxy<br>`0x324de1e7078b9809b4c17849f3ddbf39befd330d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | ERC1967Proxy<br>`0x9f20bad77cca97f2f96de88b146603ca3f65bad5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | ERC1967Proxy<br>`0xb3ccac825e5515ca6b8d18ceb22a00066793499c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | ProxyAdmin<br>`0x48d0d59b3660f07f85f5b87b65567ed1f322508b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | ProxyAdmin<br>`0x55df513efa481df6ebdf1661784fa159919bee49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | ProxyAdmin<br>`0xf2b9d5462243348d48cc3f9e680fca5727e77637` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x25d7572f32d9cfb96799efdf50804a982a983f0a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x2d36f52bfebf74fcc048bae866b54ea685ee5eca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x3256de92e1e2f588950b009346f5c77d07807b66` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x39ecc772f6073242d6fd1646d81fa2d87fe95314` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x3c3de3739d1c8092ad378e44220829eebe062855` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x433be520b115d771d6da17a573fdcb01d69d579d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x6c81c0efa63cb8c705fb98d79ad88852c5157164` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x703c4927945aac2b5a76f4c1d85bc85e6faaddb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x921dd892d67aed3d492f9ad77b30b60160b53fe1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xb95d177398916b2b1fc1e648717e85115c5be7a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xbc029264eb164f36d7dfefc46a607b66c2b4f379` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xbf41d10016e34ed0b290c45e2a0e0627318155d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xc9f8a55864381d3be28aae79091256448fd8da21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | CarbonFeeRebate<br>`0xcb420c74625fec41671458f3ac660616e1ad1357` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | MultiAccount<br>`0x2190315d8497b721d28401e4acb268496c9d53e9` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | MultiAccount<br>`0x515d4e4a04a9138a2c39b287317c5a0d8c9c6653` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | MultiAccount<br>`0x54a870306b2ed367d135c43f2c2dafa9061bb887` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | MultiAccount<br>`0x9341529a0cf73d6165ed98e5705d8e54f74f1c53` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | MultiAccount<br>`0xc38342125ded49ea7e62e04a30df29c736ffb47d` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | MultiAccount<br>`0xc3ecd872c7242b83025657e39b7fda926c6f5896` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | MultiAccount<br>`0xce15dcf16f502b0c58f02a14348cb785a19f37b0` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | MultiAccount<br>`0xee93f20713add2a49890da69fe432b37ccb7a63b` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | NoxPartyB<br>`0x1d26bcf3b8416373ea1956e2bcffe1f3c9b0beb5` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | NoxPartyB<br>`0x975dabab7677aa1c9998cdd32be69103da22c55a` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | NoxPartyB<br>`0xabf0c8b383e02a41b60b833cdcf81c0d464ad914` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | NoxPartyB<br>`0xd7ed5f8a5f52c6ccdeb7282318652cd8cfc51329` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | NoxPartyB<br>`0xdd409c784477101bc7cdfb4d8ca4bf81b6e0089d` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | SymmExecutorUpgradeable<br>`0x1c529cf1392cde198b5cdac11c7e50780a0686a4` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | SymmioPartyB<br>`0x4a23e09b706e5e930497f723dd412d172e16404e` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | TestToken<br>`0xade616c06ec097d5716c5225d7c6b2afb6873fa9` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | TimelockController<br>`0x319f10d14b5b7195a1693f4f5c015370c4324fa6` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | source verified unclassified | ZenithSymmioPartyB<br>`0x48e416a281435be12d66d35ea2d6a0bc124bf21b` | non_address_book | unknown | unknown | verified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | unverified unclassified | UnnamedContract<br>`0x141269e29a770644c34e05b127ab621511f20109` | non_address_book | unknown | unknown | unverified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | unverified unclassified | UnnamedContract<br>`0x2d2463bb95077eb38b3658d71d299da0f6453188` | non_address_book | unknown | unknown | unverified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | unverified unclassified | UnnamedContract<br>`0x78c98512ba92b8f27557b8861c811343f5905091` | non_address_book | unknown | unknown | unverified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | unverified unclassified | UnnamedContract<br>`0xa6b67072128d073709b9a83705417489b0619e56` | non_address_book | unknown | unknown | unverified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | unverified unclassified | UnnamedContract<br>`0xdc4a6308b505c7d372275648d7b75480755fa725` | non_address_book | unknown | unknown | unverified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | unverified unclassified | UnnamedContract<br>`0xe6118aa6d0a8ee7a86d12c48a8de4edcb695767a` | non_address_book | unknown | unknown | unverified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| base | unverified unclassified | UnnamedContract<br>`0xf3d7d35ed6346d8078390208b0b6cf7e85a2477c` | non_address_book | unknown | unknown | unverified | n/a | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | ProxyAdmin<br>`0x2d2463bb95077eb38b3658d71d299da0f6453188` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x01a97c03fce8dce233a269678fb5f9ba6c6a3ab9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x083e449ac8ddd874efb2d9315301b8188df6366f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x1c529cf1392cde198b5cdac11c7e50780a0686a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x2554727881c5fb22965c6fcb7c6042b367845362` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x316cee10dd877c4b503ad50afbbc216b08da653c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x388e7afc43a30ed8004b0d61aea1df5f48e55d60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x4318fd1edb3ed2b5e018b00fe1b886e85719b672` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x433be520b115d771d6da17a573fdcb01d69d579d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x4b7f28397b4294277e7825f224172944f4f5a877` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x5a242601270389ce307de3ce2283f7a4b7e97edf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x73c9c5c09435886e58ba0a4265702cc607cf7529` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x7495e8e4810d7af0be847268cee53c0055e082e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x77263ff6f88bc1e49feb425aba602dec3e477641` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x805045f5594939bfe3e78c6d21c4e276d21186dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x839d230b779f739214a69a2f16c16722760c2be7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x8e9342bcbb7d4c875362cc79f2cc212bb818ea82` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x98f632989ddd68be9ffbe8f64f45cd2304a158cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0xbea14475f6357ac6c16aeb5134f6d7862fa0dfd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67736569b61bdb7f1a756ef069ab5b9590668e4c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.sherlock.xyz/contests/85](https://audits.sherlock.xyz/contests/85) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [index.html](https://certificate.quantstamp.com/full/intent-x/a195e62f-30b6-4219-b9e5-42af8a9e2fd5/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2415] audits.sherlock.xyz/contests/85 — no match: The provided text is a header snippet from a contest page, not an audit report. No contract names or audit date could be identified.
- [2416] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x7d27187eb33a7b1d99258ff222633670f84fa342` | IntxOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x1cb4b1dcee1ebde41c272c7c14bf55d565e2830c` | IntxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 90 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [2415] audits.sherlock.xyz/contests/85
- [2416] index.html

Fork inheritance lineage and inherited audits are included when available.
