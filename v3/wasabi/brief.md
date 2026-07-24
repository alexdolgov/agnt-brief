# Agentic Audit Brief: Wasabi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 8 (3 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Wasabi (`wasabi`)
- Website: [https://app.wasabi.xyz/p/LKHR9](https://app.wasabi.xyz/p/LKHR9)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, berachain, blast, ethereum
- Contract surface: 141 unique implementations (466 raw deployments)
- Coverage basis: 3/8 confirmed own live verified implementations (37.5%); conservative 37.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $866,442.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wasabi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across base, berachain, blast, ethereum. Structural roles: 5 core, 3 supporting, 1 infra. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (5), supporting (3), infra (1)
- Contract kinds: contract (9)
- Detected standards: erc1967proxy (9), ownable (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x8e0edfd6d15f858adbb41677b82ab64797d5afc0`, chain 1)
- ERC1967Proxy (`0xa456c77d358c9c89f4dfb294fa2a47470b7da37c`, chain 8453)
- ERC1967Proxy (`0xbdae5df498a45c5f058e3a09afe9ba4da7b248aa`, chain 8453)
- ERC1967Proxy (`0x0da575d3edd4e3ee1d904936f94ec043c06bb12b`, chain 80094)
- ERC1967Proxy (`0x3ee6c6cdaa0073de6da00091329de4390b0df1ee`, chain 80094)
- ERC1967Proxy (`0x0301079dabdc9a2c70b856b2c51aca02bac10c3a`, chain 81457)
- ERC1967Proxy (`0x046299143a880c4d01a318bc6c9f2c0a5c1ed355`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/8 (37.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 133 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 247
- Confirmed-live implementations: 8 of 141 unique; 133 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/117
- Verified + Unaudited implementations: 114
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 141
- Raw deployments: 466
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 3 | 2.6% | 2024-10 |
| Foobar | Tier 2 | 1 | 0.9% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlastLongPool | core_logic | project_anchor | own_supporting | 1 | blast | unit-396617 | `0x046299143a880c4d01a318bc6c9f2c0a5c1ed355` | ✅ Audited |
| BlastShortPool | core_logic | project_anchor | own_supporting | 1 | blast | unit-396616 | `0x0301079dabdc9a2c70b856b2c51aca02bac10c3a` | ✅ Audited |
| WasabiShortPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-396613 | 2 deployments: ethereum `0x0fdc7b5ce282763d5372a44b01db65e14830d8ff`; ethereum `0x61d0df7c0978d04071c6f1e94beba96e075ebe12` | ✅ Audited |

### ⚠️ Verified + Unaudited (114)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x1c1efa17081cde0c8ee816075369741d89fcd548`; ethereum `0x9979043e4dee08fb61903aefd05aa452ea448f67`; ethereum `0xc3f7e6b2fabe4cda955902e529257c31981543d2` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x023d357d04f2d024993f6c002837ed3195537fcf` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x2b04347413918588b81782cc446524354a15ee72`; ethereum `0x409fb57c5512f303759a5febbc7f2f61f8d075c4`; ethereum `0xdabc8055e21a3d5c1e99d8048023f3c72d8e8c93`; ethereum `0xf7474812890039a744737a7347c3480a4f081828`; base `0xfc55abe89ff83fdb2bc8535b3f9230a124f9252f`; berachain `0x339fb34b6bdcd949cfb1bce6aa0a593f18619c0c`; berachain `0x8b03c6fb9453bc43b30656dbc1c58e700175cf1f`; blast `0x66873693e8b125dbea46274173b0d6dcd1933cca`; blast `0x6c31944a1f0ad46b9fdd570a23b0e8030f94d48f` | ⚠️ Unaudited |
| ArcadeLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf31166390c90c233088a13f60ce08f20bfc8c09a` | ⚠️ Unaudited |
| ArcadeLoanTransferrer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71d5e0a44d602a6b879734b9e99b50fc54d2aee` | ⚠️ Unaudited |
| BalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe668de8d7d6933c47409b2bc14d5d08daefcb0f0` | ⚠️ Unaudited |
| BalancerTokenInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xc84879ac01794fc3bab26b5167e3c287bd1df3e3` | ⚠️ Unaudited |
| BeraLongPool | core_logic | project_anchor | own_supporting | 1 | berachain | unit-396614 | `0x0da575d3edd4e3ee1d904936f94ec043c06bb12b` | ⚠️ Unaudited |
| BeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: berachain `0x215c8d1ab5bcaf172feb7f4b4cf618973af584ba`; berachain `0x4ed9e49f81275d1b5c294997b5acfb73b8d6a413`; berachain `0xeac928bd9c61d85f704f17ceb8691720d3d46398` | ⚠️ Unaudited |
| BeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x4c2142f7ee765de6f9d13b7a9d28b01eb9bb1450`; berachain `0x8c65063da2fda6e3be1debdeb134419011d8cf76` | ⚠️ Unaudited |
| BeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xb93219f8ec414684166e7479c16ba62e14a3237d` | ⚠️ Unaudited |
| BlastVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 25 | blast | n/a | 25 deployments: blast `0x09c885de423eab752bfead9de203c9fe8c33082a`; blast `0x14f86c94d260489c73df7ceeb45205d5bff0d13a`; blast `0x18412f323aede6786993a3f42828e817b4a876b7`; blast `0x1e046bc49eeebd0f5633caa9638fe977cfdaf0c8`; blast `0x237e604e8a946df3332bfa318191d72895f80144`; blast `0x2cb60ad6fb60355d41fd848034c85e20740acce2`; blast `0x3336f14ad8c9731352d4323212d86d231dae1558`; blast `0x3563b4f9a60474a392dab6f188effff3688f9e9a`; blast `0x3ccdbd9336711894126b5f7fc4f26d4547e768ad`; blast `0x4f01f2c50acb3ae759b0b664f5b19a0f18b6b551`; blast `0x5c0f73ced4b7caf05ee46385c548acb77389b5a7`; blast `0x616afdcc1f2606cde40e556570b608904d103558`; blast `0x6b4d371a557c2b5987fcbcc7b841819bb919303c`; blast `0x7274aa6606e7c3afabc6ba3e7e345c03eee7fe81`; blast `0x73ec6a715805236176de2468318f6920efed9d74`; blast `0x7eda4afad0764dbe971ed3e0884ec3196ecacccf`; blast `0x9db92282d040ba7adaab10e4787a5af0eda64cba`; blast `0x9e31ef400c74630ab50066dd64c29c1f4fc57209`; blast `0x9eea5bdb09670c2def6c338bf1cf4f477c48be22`; blast `0xba74ab0bdc17d085dae189499e4d23a124d46c1a`; blast `0xc8061516994aa5d884fdf6385c6b64e7b9e93014`; blast `0xcc082c5fe2919fefaa5356386717b2c7c30d7ab5`; blast `0xcc3eed7dec4471086ac8eb6f799bd1095e56d34a`; blast `0xce979f9a3bc1f3bf57d573c653c8f8b0f2d4de4d`; blast `0xf2abb552eb3c8a8a580c22558ad7fbeb34a6af53` | ⚠️ Unaudited |
| BNPLOptionBidValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x327fe52e44a1fc68e8596df8769a4b5dc538550e` | ⚠️ Unaudited |
| BT404NFTWrapped | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0xb0a19fa556ab92e51ea7969ef5fefef5a357870c`; blast `0xfafd6127541d35c4220134185c0b0688d51a031f` | ⚠️ Unaudited |
| BT404Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x3c169484cfac44ebd491a31abcd767ff2afaa2ce`; blast `0xc8d8d820f88df3bd48c4f8e95bca3b994b73c699` | ⚠️ Unaudited |
| BT404Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd936dee5924ccdac595a0fdb0f560b5bb1d58e26` | ⚠️ Unaudited |
| CappedVaultCompetitionDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x97090d4ac726d6105e0c4b522e9234c0392a9e84` | ⚠️ Unaudited |
| CappedVaultCompetitionDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xdee9f998293bbaee7214f91e45701a317bb55f18` | ⚠️ Unaudited |
| DebtController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xfbc94e5fc406509c9a6d0635c047e1cd601246d1`; ethereum `0xfe7b8f5722ac881242e16bebc8ea0b28c3ee60c2`; base `0x2182b5532d8eb4b614031ac68924975100b84684`; berachain `0x93f287f2c3fd9fde49373afd3e6e679d7a9350f9`; berachain `0xfae69f2c82747f878f74c1e57a1aed945ed8558f`; blast `0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2bf4e5deea48d66226fc25191a01e18378fbc8bb` | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d850f76c671aa2e1c1892a0644c115eb254d165` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | ethereum | unit-396612 | `0x8e0edfd6d15f858adbb41677b82ab64797d5afc0` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1e2c316703f1d3b38c81556e5c853cf30fce04fc`; base `0x851fc799c9f1443a2c1e6b966605a80f8a1b1bf2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x49507722ad672901e2f80f591dc94ff482f52554`; base `0xc69ada3bdb6d89a3599ff6033eca146e2954aa1b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | base | unit-396619 | `0xa456c77d358c9c89f4dfb294fa2a47470b7da37c` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | base | unit-396618 | `0xbdae5df498a45c5f058e3a09afe9ba4da7b248aa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xbfea8285e43437c9ea91e62f7677654339505188`; base `0xc60b95b78b22fe41e4849d51c549cd9b7f288a03` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xfc81dfde25083a286723b7c9dd7213f8723369fe` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x1e39cf440f2872d4b23165275e3f79e90dd095c2`; berachain `0x51abc06f452b4ac625eb10315238b8cf7186fb61` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x8c118eb3ad22598cfa4156241d9497317d1a68c4`; berachain `0xa4bbedd16ff16a1b6f695e097a7e10431cabcab2` | ⚠️ Unaudited |
| ERC20WasabiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed` | ⚠️ Unaudited |
| ERC721CreatorImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0cc3471d024250c7661003063aa5cc3d2c142467` | ⚠️ Unaudited |
| ETHWasabiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046299143a880c4d01a318bc6c9f2c0a5c1ed355` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c`; ethereum `0x9f2781f9e3463b772cbecbc2a0e29bb7b1f3e1ac` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3d1c97fa08a23a15f56fcca7599b0b2a3a4de11b`; base `0x5998faa751c44fb3421c59d2e529d14d40632539` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x457c7b95243b2798a41d1ec9d48c77db3a4f9773`; base `0xa5ba9e4b28b47928cda17952a606b679b0c58dd9` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x6a98876701c8b86a0e8fbe8a28a33b3cd2d8dbf6`; berachain `0xa3ae97b2420d172b6fb3f7f10953289ab7c2a188` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x8399ec27c14f2a25e1a82a63080373ffd102b811`; berachain `0xaec98b9b5e4fddb84ff120f6c543138f6bbd9dd3` | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a` | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf016fe66103c2a9f3d156fef32d2da8db8e38ad9` | ⚠️ Unaudited |
| Flashloan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d` | ⚠️ Unaudited |
| FractionalNFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x5b72dc9d20e5b3c1d65e3e3f516592e7c82bb828`; blast `0xdd1642bce31f2a7c7d00f582f00203c0835fd3bb` | ⚠️ Unaudited |
| FractionalNFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0xc5e2aa6186795440d5ec6ce8d29c74055bcffa3c`; blast `0xdf2fc74879460839b213ad2768d1592ff810d984` | ⚠️ Unaudited |
| LendingAddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc399616937ebace9e45159a60cd77663c4a30e79` | ⚠️ Unaudited |
| MOG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaee1a9723aadb7afa2810263653a34ba2c21c7a` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0d28bcb1ebac497a6ef6d0f980ad4bf74c14610f`; base `0x186ef3bf61c337b4048bb71bfcaf85cf95044a86` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1a3b8ae6fe5b9adaa5fb7df49d832c5ff12f1dc2`; base `0xc2e9ce42325430b9d84722c73f003a736d4ed5ac` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x560b5665293ab61b6f7116a0a3a81cdac21e8d74`; base `0x6188d43285d38dfeb3d6fb3a17ad7502158f4cef` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x696d0d73bd8d3820e9c1d697ebadcf2b372045a7`; base `0xb42520f4c7820778eb1f2446614c09835be20c08` | ⚠️ Unaudited |
| MultiReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd4e31cea708b0125f05fb9b9d25cd1263339a018` | ⚠️ Unaudited |
| NFTfiLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f4f727930c2c73238584f9f195e32e86e32d1b2` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcac10196ae000184107916898f10a9045c934d33` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf0714a3e2f4d78ffc1b400bfdacb7b8869bfe1be` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: ethereum `0xc902f6840699abf5b8d6a787a7943d4783566af2`; base `0x25f32be475f6499b0d60d665688a2e4f8e0bb4a5`; berachain `0x11487aab86a2e1a9346d1e4313fd6fb2dd71575e` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d` | ⚠️ Unaudited |
| PerpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: ethereum `0x2eb99d429bebbbc5910bbad5f34d909a5f55910b`; ethereum `0x3461ae4336a55952d7ce451a9dec3a0d3856eee2`; ethereum `0x7973cb885af3bb67f38b4b2b90caef8043a96952`; ethereum `0x7c478395c652110847edb76aa4ddafa4fb7c740a`; ethereum `0xba5c5828f2fb77237b940187ec785ee4498d2683`; ethereum `0xba8724f19bd01956dc4343084048127e0bd69375`; ethereum `0xff9f87ec3592984cb706d3071a39e33ac24d39dc`; base `0x295d89220399e7cd0a59bcaef54356b47f273815`; berachain `0xb73daa2d2afb4da16bddeb8bf6eb5bbffbcbf220`; blast `0x5c4a1f39ff909adbcb8265f64870cf94bf1e41a2` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xec3e4e0fdb50411f4c5ee9f75436d8b20cf7d70e` | ⚠️ Unaudited |
| PerpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x19c804aa2782561ff03ee3b18f3ca50975c01e08`; berachain `0x1c4a802fd6b591bb71daa01d8335e43719048b24` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x5c285dd01440fb1175ae31934a5d1b3b90b6dd81` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0xff2cdb9cdb79a60a31188fe37bdc6774107cc268` | ⚠️ Unaudited |
| PoolAskVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac` | ⚠️ Unaudited |
| PoolBidVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66873693e8b125dbea46274173b0d6dcd1933cca` | ⚠️ Unaudited |
| RecoveryStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x4b4a53c722d54a21fa848fe72e638ee2550833c9`; berachain `0x7ca07d0a45206db5bad10a76a9761b90049ff889` | ⚠️ Unaudited |
| Signing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bb8475c30fd70675f6250fb725e30b3a6e6094` | ⚠️ Unaudited |
| StakingAccountFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd44f4d5779911f8d5c24681418d22e6374adffda` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08292dff21e8f5ed5510a82cfca5ee141274503d` | ⚠️ Unaudited |
| TellerLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xca954b354dfb73a740f370f71cc8918f1c0982e1`; ethereum `0xee83e50791a35364db279d097c884e1eaee8624a`; ethereum `0xeebbc046508478546cc9a8ca7327f5fa7ba24dc9` | ⚠️ Unaudited |
| TimelockWasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x19fdac68854702b70a8916eef19dce5c8349e250`; ethereum `0x92e56129a5d357a22775ff06bae5716d55f56626`; ethereum `0xacc3cb96532f9d87383bb20297c24798a80be6b9`; ethereum `0xda402f7529ff2ee4a845508d2f5406baeac9683f`; ethereum `0xe0a7090c3f9a36375ac26a8f80ede77a8fe14fe0` | ⚠️ Unaudited |
| TimelockWasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x72ecf7cf074557984417eabcf3f128ffebf1255e`; base `0x7df60d32e275629f4e93c4bc1a11da93a0a3e1a2` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x18145b7b7df58528ca6733cb2fe920677273a442`; base `0x9c937625cb2b49a432fbe2ee985b7888ff1e0312` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2ea6b2a1cdcb622320b6345d9473cd2b6161d7bf`; base `0x63b2f98e3f2ef9ba8650edd405f835d071bd0036` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4f20b6665ab2dfd00e73987a0ffe8f3f517b0978`; base `0xb6544b6aa9be84839eee4d0ab2e8024a159ef813` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5346052d8b49cab75ad80f99e7738fc6c631ac04`; base `0xb772e15989ac1680b03ccbcc3dd82e0798bbd772` | ⚠️ Unaudited |
| VaultBoostManager | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c`; ethereum `0x0424c62eed9b4dab6e22ba42be2173c7557728b3`; ethereum `0xb33c8951d462ccf4aa7a37b70e0be5b8751e7524`; ethereum `0xcc174f151ea55fe2f745c3180ec780c9dbe36abb` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x382a45ab979b69f94346f3c004033ef7c9cbfbd0` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1de4c8251d25e7541fafee4587a8434eca8e5f4e` | ⚠️ Unaudited |
| WasabiACPAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd78f41c714c662406691055dce4b1c261d9847d2` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0137cff5a7ed63c5fc3aa98dcb0c91940c3f48e8`; base `0x54ca911a115776318ccbc5beb9c3d7b6e41f3e5e` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x21bc6937d96a4011a0106ac5ee7b1899b9eeb6ff`; base `0x5ef03e20d722e4a9633b4b35b54f00c209064655` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5557f35607ded91812762aca7754bdb2de255109`; base `0x71d0355af1a332aeff372aaca3425c68b9eaaf0d` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6a12e6ab226032f66f1b87ee3565cd1a7033b71c`; base `0xc7f4e75801266709b45f57af044c8119b8cbeb9b` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x710ab53bd48835d6d7588d893d9d8315c63d9e74`; base `0xa79c3a4741f35e8994dc44a23eb31966d2e04552` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x93ce08bfd63e89849f8e6b88e589b61ea277c487`; base `0xf3299278ebd9afcbcdfa5a71d1980692d9d1e4f8` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xfc8d74d7f5d59d18a4271fe4d70fd3b796bedcad`; base `0xfce8917e85a8e41ab01749cf8f7fccb41efcd05d` | ⚠️ Unaudited |
| WasabiBNPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d` | ⚠️ Unaudited |
| WasabiBNPL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89` | ⚠️ Unaudited |
| WasabiConduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9e31ef400c74630ab50066dd64c29c1f4fc57209`; ethereum `0xf29a66e420c240ebd23f775b93619c8f3cfff856` | ⚠️ Unaudited |
| WasabiFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0301079dabdc9a2c70b856b2c51aca02bac10c3a` | ⚠️ Unaudited |
| WasabiFeeManager2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08c2d6dbeb704efb7a68bd2bb29dfa954625e34` | ⚠️ Unaudited |
| WasabiLongPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x000728488ae4e80b2ed7c3a06462bdeab5fbf1cf`; ethereum `0x023afc8b575ef583ef5596d3834d82b7116a6078`; ethereum `0x095c34c8f852ae99e6424ff4258447768a5599d3`; ethereum `0x17d1634ce3b55843253f954c930683e1ecdb5c3d`; ethereum `0x3a277440bb850d41fa1e50112873abb799e4fd97`; ethereum `0x45a9333102723f606b890579b2d0f8f475aac7cd`; ethereum `0x7041ce0ece257f80fdd3a605eb3438a7257f3e95`; ethereum `0x7f545161fa2cbbb1c9e0d182f2d0c2772ce6cbc8`; ethereum `0x8d9040c66d4453aa66366cd0dbeb610ce7b41b59`; ethereum `0x8e19c040b4c1c8d2a63e6cb375f01ab65d2ddc04`; ethereum `0x94cf96f6c3e683b0a5b668e599d6a6a45fb10c51`; ethereum `0x97eea33f40796861120208c884b5ae6e01ab40f7`; ethereum `0x995c0ab3dd4f0b1080393c62573b7a6bfcb8518b`; ethereum `0xa5a6457dd024bf2e5edf8dbd54dfbca24cac7b96`; ethereum `0xab164476377cf5a58e0b4f34a4ef79029d5df9cb`; ethereum `0xc24f58b36f90c5abc2874d028bfe12f3db656b51`; ethereum `0xcda7ce4b56f719d0f254ea6abda6ba4df4c8c0ca`; ethereum `0xcf41e5b980b109753b11ad7d49bb67a0b6b075dd`; ethereum `0xd2439d7822dac8fcf308fe943361c3b55d165ffe`; ethereum `0xd4a321075cb4b4efdd6e677cb770887056ae430d`; base `0xffdf46d1658d528eed9e91cf76c893add4616543`; berachain `0x1c75bd949aaf5d322aeceb92234ffc993064801d` | ⚠️ Unaudited |
| WasabiOption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc68f2130e094c95b6c4f5494158cbeb172e18a0` | ⚠️ Unaudited |
| WasabiOptionArbitrageV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3` | ⚠️ Unaudited |
| WasabiPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2b50413a53f50e2a059142a9be060294961e40` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x08aad56f494d705eaee20185e02996d5be72ae33`; ethereum `0x0b38cbcc2a215c636d0c3890e64e2a21255f437e`; ethereum `0x1b362e8eccc7aa0e835e3041f5cc10ccece046b7`; ethereum `0x33d2ac6d717376b89382638dbcabea53b677ee9a`; ethereum `0x77abb6fecd1f781765ecc384b57ca5335863dbf4`; ethereum `0x96b10bcd6e770a6fd0bc8992d4b67c8500a63f23`; ethereum `0xe5312d877a5e325524efe7c198f6733c17a564f9`; base `0x892927a8e6cde862c6738c0ab53bd653c49aa03c`; berachain `0x3e1b86e38756323daa2dbdd183a23f4e24a014d9`; berachain `0x760d9ce30059537686074d9162d0cb6938b52d64` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xee5c45dcb0064f9b097edbc5d8adfce23baac03b` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xfae69f2c82747f878f74c1e57a1aed945ed8558f` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x7864d8c34bfcdbd83fda2da917aa6175a4a4b237` | ⚠️ Unaudited |
| WasabiShortPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 24 deployments: ethereum `0x0b9f9e6904194174a53d9c500b84eac1b79ada57`; ethereum `0x1536f738d1dd76a90d3667dca58e85867ea3662b`; ethereum `0x1888f9d504adf9aa5a3e705a7e1d45c59bd46176`; ethereum `0x41247b47823c3a500f4a1f1c98bfa8a089f78fad`; ethereum `0x44ba624d8280a167829baf11a71309f81696559e`; ethereum `0x5bb9e070ed2ef50ca3a1c17a5fa1300b0d088c60`; ethereum `0x62d25402b8ce925c727ecb2dcd62d531749bf842`; ethereum `0x76e8f316cec20c36759c3d80ebaa4cb3b5279499`; ethereum `0x7748355debf8c9bfac8234e3f79f04ac0bbf8b32`; ethereum `0x8826d2ec9229249feda46f9b47fcf62ad73cbc96`; ethereum `0x8ea384f9316abbdae698f2bb6850d23f5fb13277`; ethereum `0x92361209071c76e031133def9092d4920a9312f2`; ethereum `0x96ce21931e8a6abb2977ef17541eee80fb137f78`; ethereum `0xbc07db13399f8b216fa628635d171f943869cbbe`; ethereum `0xc905defd3f049e6ad2b9b105016c9026ceb7dca5`; ethereum `0xcb8d3ca0946f6a50d83e4b15fdb94ebd17e8a2bb`; ethereum `0xcc2a29b8324686ef4b05f7d0aabf919ea4e26bee`; ethereum `0xd5a09a0827c3d91e8530deee3b73edae6b33ae95`; ethereum `0xea9a832c8c25d4447f0cb66bb9987e365bca647c`; ethereum `0xf22b8d73da017288b5f4e214ebc1ccd8d364aafa`; ethereum `0xfb71f098eef68504e3cf9a4dfa78d834d3490c4a`; ethereum `0xfc55a23a2fee805aaf8a8209f2e4e8670028006b`; base `0x8bdec891ced76b333b33ae7e3dff83d351c624a6`; berachain `0x00b6c4e0d058d726316ae1666e353ec72598e7af` | ⚠️ Unaudited |
| WasabiShortPool | core_logic | project_anchor | own_supporting | 1 | berachain | unit-396615 | `0x3ee6c6cdaa0073de6da00091329de4390b0df1ee` | ⚠️ Unaudited |
| WasabiStructs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2885e85a59782197024306483cceae7b99dcd3` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x0db381cfcafee909e66e5244ec5d7d933a747e12`; ethereum `0x3f631b8b318c66858fa1e68f02fccf976c5caa8d`; ethereum `0x65aa8f218ab3fa104af12e786a41b0416459991e`; ethereum `0x7d8c76eaf1858ce5678fc4926f4d8875e967ac53`; ethereum `0x7f1cec2328170e510f2d0375ce1ba7ac45d1681a`; ethereum `0x9720f76eae9b0d864a2a9e247bd82eef6ca84fa4`; ethereum `0xa6354ec7e4a63f0e75ca3e624eff21d57055dadf`; ethereum `0xa9d119979285484a271918b5f8f226dd139771d7`; ethereum `0xb6463fd3ff4bb51cac28d0f6768d49218639f113`; ethereum `0xc883dea716d856e22272b8e14867567b04141c1a`; ethereum `0xcd1953e4d58ef232f4f9c1e0a33e93acc95f7d53`; ethereum `0xd46c774a5f5def368bf30acb7572b01e51563a1d`; ethereum `0xf7855f37ee116a0736e3baa68ddc205467ae8153`; base `0x19c804aa2782561ff03ee3b18f3ca50975c01e08`; base `0xac4550eadcd13a8887c2b939acf1eb8739fb3b8a`; base `0xe6ebfbe68065b7d621f399952cbe50f999a3aab8`; base `0xf2e38144aa3e2699cb29ca3c1be36330e2ed1786`; berachain `0xec0c235788309f6468a651f16cf42e4204806ad5` | ⚠️ Unaudited |
| WasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 54 | ethereum | n/a | 54 deployments: ethereum `0x1831f6b2573e756bfafdcb121880a80894a61ae2`; ethereum `0x1beceace08688e58e649c40831d3cf11fb22e3db`; ethereum `0x1ca1fcf34ba9c6d2e8c6c8ea398b9f562a8a7aba`; ethereum `0x26372904ca7aba32579b2ee4c7d96616eceb8c03`; ethereum `0x2a76938c3dd3d672aa72651f99826084fc62d63b`; ethereum `0x2f49de50405366a794fd00be68fc8f151517d301`; ethereum `0x34f0a81703c2ed935a61372188a8f9ff78edf77d`; ethereum `0x364cb3da96ea3bf24c97c3cd95d59df7a403a1ed`; ethereum `0x36b9bcbcecc87cca372130c331e9905b92c5759a`; ethereum `0x39eed09d42072243b86c054063616568cba16ee2`; ethereum `0x491caf0cb459c53b815aa759eca290fdf0b62669`; ethereum `0x4df48f7abc624ab672d69a18a5fc7bde5944c8e2`; ethereum `0x519db1319f7c4192d1d964a6f932298e76c026af`; ethereum `0x5609ef3b48e79b2328d877ff40d742903810d585`; ethereum `0x5bac8a66c78e4258c964d4c84d62825f5d2a8a64`; ethereum `0x608889f7652a48c07286f1394bcdc1486a34468e`; ethereum `0x63628b4cdaae7c5e3db5c5a57c699bbae77a84b8`; ethereum `0x64b02119a901843a6a6d273d40a8c6b9e099c197`; ethereum `0x6a46002457b743ce9167ff5134fe8de916f54bfa`; ethereum `0x6b419290f77dd9ab881c14427c791184d7ce9736`; ethereum `0x6e9e3baf06db9265f81e0d6862039569e73b076e`; ethereum `0x73ebff4460ca625a59e8c024c333d3501505b8e9`; ethereum `0x75f327239fa495a553ec562e1e75f8c1ffe63d4f`; ethereum `0x79356bf9d3c97ed10dd6f63f7560fd952b929162`; ethereum `0x7dd8f274d21bc568db8c1512e28ad7a0bd248319`; ethereum `0x800187a3c549e323351c1b9cb815c024069bd34a`; ethereum `0x80f035caef10920d6b0be9ed4c44de571493ee9b`; ethereum `0x8320385030690ee6e95c713f586c2a8f5dd07c18`; ethereum `0x8c71baa29d66e2f09627bafef6f8ba1ef8e3ee10`; ethereum `0x8e26dab15e7af842acbe030b65808618b50de32d`; ethereum `0x8e3fddb3142027c49d1b602cd9fc4d9c42ebcf2f`; ethereum `0x94df93123af26de3998032914ba54db1ae5311a2`; ethereum `0x96c2436af099de751a812fe32836ee794dde2020`; ethereum `0x9a8604f5f72769057181ff95f2a9f40906221cfd`; ethereum `0x9b6eee0309d831b59d75e047cc7dff2f3b2d8bea`; ethereum `0xa2a9d2b4905ac2adc00c32aa5489fec7153873b9`; ethereum `0xa4d274fae648b3e20c3458a9ba2acef4b0a8ebf6`; ethereum `0xa4d853b2488aaf2d21d015524bac691bd019f7a7`; ethereum `0xa54151ce4f40b0644990605fc116ada975dd527e`; ethereum `0xad99d667eb39f784612868ba87345362f6179c8d`; ethereum `0xb3324df28d3cd79d358887131e579e95e0e56fb7`; ethereum `0xb586b3a67323a62f55b8910d411a4ac9b962abd8`; ethereum `0xbaaa2a89a7bec92a810e0bf96adf68066bec5c7d`; ethereum `0xc7995acd52ec36a7afa414aad762b8c57cdece5b`; ethereum `0xd4f06205c0e56f953070a9f58a488595377ef118`; ethereum `0xd7738f10a46ca13287a10449dc9e8e8cd5fe2530`; ethereum `0xd8bdfe2d4170fb1b9a316511440878100280021e`; ethereum `0xdd5c60b0dbd51fde5ab2416d4e2d749d27fe058e`; ethereum `0xe29e74b7de69804a536affcc995924e9a98f6f4b`; ethereum `0xe6238f142cf04c2f49c911ba2c217e73b2b21b76`; ethereum `0xe8c96f744f8ef8ecb62195cc4a65c9b756513de9`; ethereum `0xed51799d71acbb44c4c82402635222b2e8f1895b`; ethereum `0xed6f77f15bcfee1a16ebe9d71d905ed9884ab80a`; ethereum `0xf6040cb6c452834ea661b6224afadfb8f9da07e9` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x55161896bf9e5867851de6d063b7284a195b23ca`; ethereum `0xc7d3fa8fbfddfc03d37804838ba38c741323652b` | ⚠️ Unaudited |
| WasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 80 | base | n/a | 80 deployments: base `0x00d7c86c29f11206cae7f30951047bd278990ea1`; base `0x04acd5f315562284b2f70abd06adc139230f5d30`; base `0x091a22979df5b3393bc9a53f49374bca2f862eda`; base `0x0da575d3edd4e3ee1d904936f94ec043c06bb12b`; base `0x0e54d31f84b0aa4638b9a57572edeae1488f0939`; base `0x1140732f229d89592f256d2b3c251793feda64dd`; base `0x11a03038a94d8540d4c5d1aaccd74a69688fc212`; base `0x12c9de7c7d16b7c9bc6e2c7c5e38381b46f9cf49`; base `0x181dc306249f521657bb52efdfdb0ac3e8cbeb13`; base `0x19793485df8484646d1e5c7b3fe7321041181313`; base `0x1e5f25983cf46f86a75b24bbadd7e0a087aa3915`; base `0x215c8d1ab5bcaf172feb7f4b4cf618973af584ba`; base `0x228dca5b1ab36b61bfe2215fe88aa60ea76d192f`; base `0x277c83a5ec25a3da4f3fa71ce1a86b6447ce3ddd`; base `0x2a3c708b6f1df4535db37614c33f109157f9b442`; base `0x2d638c13a9c3f6e3ac7a9e7ac27f03d2e1c54f16`; base `0x2eef8243b231fb93600e3677738b1e1c6152ceaa`; base `0x313409b70a2a6bd149ebe632634659b0dd0b8b2d`; base `0x3733b6804834bf701b19ce5297293cc48cdad959`; base `0x38ba55103afa011769d65381f1fb3d51b20d9865`; base `0x38dc85f3ae4d0d1bb25e873e29c4d5033b384939`; base `0x3b55875a566cd68af90d0b225b5ec9844c1cd8ce`; base `0x3bc860e1db72da9c7ac52d25eeaae85b887f9792`; base `0x3edc1f55d47ff2095216be0f081d907513f3863f`; base `0x3f47af8902dfe25736005b589aa6b8ec40d089af`; base `0x42011d686517cf45e7397c339e9703f54d2e695e`; base `0x4bd3c99d0a79821558701dd8bda72f362de3765b`; base `0x4e8fb8196c765aee1885e71528d244c9d9eb2a2f`; base `0x4eeaed57fbb562cc83d9b8d67ad7f4a231df99f6`; base `0x50afcb5769b8172b756a683bd5cea2900f874687`; base `0x52c88e152ff3551c9c7e4313e98c9dc0a17b2a40`; base `0x542b5dea7c814718ceba73a779127f453893b191`; base `0x55dcdaced7e76d3b3f26eb4216f377c5071af8c2`; base `0x5955cf324283f675848c2734a5c28665bea8cb60`; base `0x5c9258ffbb93d0d99e18b5e72af6c19b579806b0`; base `0x5caa336eb22169c0be3e2bd9e35c8220316c1c2e`; base `0x5f164bae58afa045a8eff8395f2f23ea4b1922da`; base `0x6378a7ffdeb29c3faaced4a44fd82d2359142afd`; base `0x65d8f66537d9497a90ba307f45c1914fb97e94d2`; base `0x6655cfb05f755aeed1d812ac1b344c63a2160f66`; base `0x699cbfed500bd793c5630ef5242ea3948c2dba2c`; base `0x70b808b8e87153b7d2df5ba18bb6aae52b4f979c`; base `0x74b1e4cd04ff9050378aa4a50122cbe3d739780d`; base `0x76106b8d542c84e44845e92cb717835c9d364a95`; base `0x7daa6cdc6d758bbf61e82bad17dab7df3d880d3b`; base `0x7e7d9a262fd841854680b26f585ebd5b00869c94`; base `0x82ff77ab1e41242a7a1c3c4abf1dbbe0dc61dfbe`; base `0x837277a3f10617b6728e64fe8bbe39566bec208c`; base `0x8379dc41795fb1f50f15bcf08c57cafef2285374`; base `0x87b416cec396d0f1233dab5d241ff4fd50ac459e`; base `0x893f9393cc40b259d855b1315db963544cde2c89`; base `0x8d1f90d29ebe420becfc3fc93e998d8f1e601009`; base `0x9a92985cbf3abae6b70b6ae551411e0f5016ea10`; base `0xa10f4d76f19c5ce96eafe87e36b93716c906070f`; base `0xa3480075f3abf26474fb4528b8c08ae379464f80`; base `0xa3a575fa43eb1b6ad393e785ef431dbd53470fb2`; base `0xa3ae97b2420d172b6fb3f7f10953289ab7c2a188`; base `0xabb56620ae17b1a06a11a790d34dc56fc8c3a9d8`; base `0xadac74154febd85a8deb0e972bb26991e8b86a98`; base `0xaec98b9b5e4fddb84ff120f6c543138f6bbd9dd3`; base `0xb1a597b693eb1c843f15485f131eb1d6700bd0c4`; base `0xbcc88965632c84999c29ea4a24588316e7058117`; base `0xbf666865b24c1d64c319fb3e42b58d0a24629cc4`; base `0xc626971985e0c1eee00c95c129924f676cc8970f`; base `0xc84879ac01794fc3bab26b5167e3c287bd1df3e3`; base `0xc857bc762507006c62c1d232173279650cfb4240`; base `0xc8bd3853531dc663a03d8c8b3b0922200b16b5bb`; base `0xcc397465e245290f0c8bbc8fc9509c62d3cdbcf3`; base `0xcc8d0c5f386f28cc830fb30bea57300cc34e6a14`; base `0xcddb2f9224ce99c9707a34d053dd93968258cc8d`; base `0xcfd04fa36e2cb11535fc4be318f45dc03ea8eb6c`; base `0xd7438e9a94c79f51946ef265bf05669a1471d1ac`; base `0xd76dcb65821881f9eafe7fa8d4381584f61af9a1`; base `0xe33cc6783715a4a7c549d3c1664df1f3f95372c5`; base `0xe36530f65efb01f086268a7a76dec63aa6288ca4`; base `0xe8f53b0e5659fb1d925ac69ba79d927bcb8a61bb`; base `0xeb55a1571a8651c6d3922314d2bfdca6013fd4d0`; base `0xeffe2bb4e3bdb3399bcedb5d71271d37a43cea2f`; base `0xf50c6615b6530e61ba15401b597aed5828db1059`; base `0xfb39f454bfc710e92e6fcc5737acd734029cbf8e` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x21aaaa45411f6b5ad9b27ac25bd8c6c41509189e`; base `0x9c4a4942bcd56a0a8cffdbcb4ff5bb218f265057` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x88e23db7e2974133cef7aefb470bcc716c2012a3`; base `0xea3952910b4a356617145e1447a5b21ada50cdab` | ⚠️ Unaudited |
| WasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | berachain | n/a | 3 deployments: berachain `0x0ebddd4cc9758fbadd49263dc57c8ac610be4e9c`; berachain `0x433d1fbf4cf203a0a32b209a8588b6fd24e88e82`; berachain `0xa3134232c2b085be8d500413bf0a35af837100d1` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 8 | ethereum | n/a | 8 deployments: ethereum `0x10432bc30396e70f792b538d7e810c83dd7bfe71`; ethereum `0x127d3615a8865812f76ff8f214f9955c3a74820a`; ethereum `0x630ed8220f9cbc98358a2e2ecb0727d7b9d61397`; ethereum `0x7d7bb40f523266b63319bc3e3f6f351b9e389e8f`; ethereum `0x8d48b8d948726d4636aa15a9d6124422f461e153`; ethereum `0xb533c682553f518a3961eeec2bfdc645c60289f0`; ethereum `0xb86510bfdcd229a66f0617162ef1c45db1ceaba8`; ethereum `0xd2502e8e253a48d229df0e642a404c5bbff1c1b4` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 8 | base | n/a | 8 deployments: base `0x078b931f7759ec09d74dd31316c610e09aac94fc`; base `0x197d5c29072c1444acb4f0935c219738a47e4a18`; base `0x1c4a802fd6b591bb71daa01d8335e43719048b24`; base `0x833fd94958e35d55f2921f45bee4ae8ac82766b6`; base `0x95c81f13d78449b3a02b39e41f26b18a5597fe95`; base `0xb152e957ab1210153ba0ef07c52f5b559f1ad8c9`; base `0xb8da93ded809ac035c72b543ab728a55017239a0`; base `0xe6c109b1f8052f1977c572a952f66677f49962a2` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x42b6044d8fdcc1aebd65c93054bf04caefa7a81f` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | berachain | n/a | 2 deployments: berachain `0xc95ab9eff8fb48760703c74416764b8f898afa1b`; berachain `0xd948212f077e552533158becbc1882c1b19c40fe` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | blast | n/a | 2 deployments: blast `0x4bed2a922654cacc2be974689619768fabf24855`; blast `0x8e2b50413a53f50e2a059142a9be060294961e40` | ⚠️ Unaudited |
| X2Y2Lending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4cd094fcc9f107eed45217b078481bfd8fbbad5f`; ethereum `0xcf7da658f1e3da0916fc66291f10b022406f6ee1` | ⚠️ Unaudited |
| ZhartaLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0466b94a37b9037b6416ca5b1c17de00356fa09b`; ethereum `0x0d08ea010dd3bb0a1dda37443e982c46adb2e4d5`; ethereum `0x2cfe1c35bb695d4eff2736054eac3b6ce4dea90b`; ethereum `0x6209a1b9751f67594427a45b5225bc3492009788`; ethereum `0xb06e99cc97fc95cc9a84ae95c369a8b8299cf383`; ethereum `0xb2a557732b9f5eea359b643d085ad32e2288afaa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082481d2223a1372d975edc9ccfea3d77b1b595f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4b8c77c7775ab0f6914893f67a6c1c54c83b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e74e15e43afa985ed1003e78e652d58d8cdd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe43585a8a5a98a3732026d45c4c7900c566efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0bf0a112684556e825b7be5cc290eda4c7c1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2664a65346db247649d5d7853b7bb4cb4e7734f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x126e131f5cfb60fb6c6f574de611e4a62c637a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e39cf440f2872d4b23165275e3f79e90dd095c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a1842d7054f079603d51f2e9ba8d5516465a408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x323b88a7349f1974cadf645b3dcd824ae5f568cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ddf12feeacc94c475b6d19a3f342f49adc109cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cccdd06a04a93abd668280f346a0c1926d3e03c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51abc06f452b4ac625eb10315238b8cf7186fb61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6da57ce5a5261803d6b71e33cfd2ad340b2027e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78536314b82267ea6c8292d47cfc580217f99af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e881d250b06895cd75cab1aed139272a41f76ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x885296cbdb758bddb770d9a3932614e352c3615f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88c38a9d0c73ccaa06a6c5075b9e51f7746f4358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe98f47bf666fe9f004f8259a36adf56c715a211e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf60304d136b30df72ae5102a74a70e5edad0d1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x313409b70a2a6bd149ebe632634659b0dd0b8b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x323b88a7349f1974cadf645b3dcd824ae5f568cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb1a597b693eb1c843f15485f131eb1d6700bd0c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeaa6b6e3df175b4a2b0307230fb44b15c801dcf6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 189
- Live contracts: 2
- Unknown liveness contracts: 187
- Source-verified contracts: 171
- Currently scope-matched contracts retained as-is: 1
- Classification counts: currently scope matched=1, candidate review=127, contamination review=8, source verified unclassified=35, unverified unclassified=18

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | ERC1967Proxy<br>`0x0fdc7b5ce282763d5372a44b01db65e14830d8ff` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | DebtController<br>`0xfbc94e5fc406509c9a6d0635c047e1cd601246d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | DebtController<br>`0xfe7b8f5722ac881242e16bebc8ea0b28c3ee60c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ERC1967Proxy<br>`0x0424c62eed9b4dab6e22ba42be2173c7557728b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ERC1967Proxy<br>`0x55161896bf9e5867851de6d063b7284a195b23ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ERC1967Proxy<br>`0x9f2781f9e3463b772cbecbc2a0e29bb7b1f3e1ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ERC1967Proxy<br>`0xb33c8951d462ccf4aa7a37b70e0be5b8751e7524` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ERC1967Proxy<br>`0xcc174f151ea55fe2f745c3180ec780c9dbe36abb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ERC20WasabiPool<br>`0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ETHWasabiPool<br>`0x046299143a880c4d01a318bc6c9f2c0a5c1ed355` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ExactOutSwapper<br>`0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | PerpManager<br>`0x2eb99d429bebbbc5910bbad5f34d909a5f55910b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | PoolAskVerifier<br>`0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | PoolBidVerifier<br>`0x66873693e8b125dbea46274173b0d6dcd1933cca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | Signing<br>`0xd3bb8475c30fd70675f6250fb725e30b3a6e6094` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | TimelockWasabiVault<br>`0xe0a7090c3f9a36375ac26a8f80ede77a8fe14fe0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | VaultBoostManager<br>`0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiConduit<br>`0x9e31ef400c74630ab50066dd64c29c1f4fc57209` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiConduit<br>`0xf29a66e420c240ebd23f775b93619c8f3cfff856` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiLongPool<br>`0x3a277440bb850d41fa1e50112873abb799e4fd97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiLongPool<br>`0x45a9333102723f606b890579b2d0f8f475aac7cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiLongPool<br>`0x7f545161fa2cbbb1c9e0d182f2d0c2772ce6cbc8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiLongPool<br>`0x8d9040c66d4453aa66366cd0dbeb610ce7b41b59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiLongPool<br>`0x995c0ab3dd4f0b1080393c62573b7a6bfcb8518b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiLongPool<br>`0xc24f58b36f90c5abc2874d028bfe12f3db656b51` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiLongPool<br>`0xcda7ce4b56f719d0f254ea6abda6ba4df4c8c0ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiLongPool<br>`0xcf41e5b980b109753b11ad7d49bb67a0b6b075dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiOption<br>`0xfc68f2130e094c95b6c4f5494158cbeb172e18a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiPoolFactory<br>`0x8e2b50413a53f50e2a059142a9be060294961e40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiRouter<br>`0x1b362e8eccc7aa0e835e3041f5cc10ccece046b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiRouter<br>`0x33d2ac6d717376b89382638dbcabea53b677ee9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiRouter<br>`0x77abb6fecd1f781765ecc384b57ca5335863dbf4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiShortPool<br>`0x5bb9e070ed2ef50ca3a1c17a5fa1300b0d088c60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiShortPool<br>`0x61d0df7c0978d04071c6f1e94beba96e075ebe12` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiShortPool<br>`0x7748355debf8c9bfac8234e3f79f04ac0bbf8b32` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiShortPool<br>`0x8ea384f9316abbdae698f2bb6850d23f5fb13277` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiShortPool<br>`0xbc07db13399f8b216fa628635d171f943869cbbe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiShortPool<br>`0xcc2a29b8324686ef4b05f7d0aabf919ea4e26bee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiShortPool<br>`0xea9a832c8c25d4447f0cb66bb9987e365bca647c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiShortPool<br>`0xf22b8d73da017288b5f4e214ebc1ccd8d364aafa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiShortPool<br>`0xfb71f098eef68504e3cf9a4dfa78d834d3490c4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0x0db381cfcafee909e66e5244ec5d7d933a747e12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0x3f631b8b318c66858fa1e68f02fccf976c5caa8d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0x65aa8f218ab3fa104af12e786a41b0416459991e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0x7d8c76eaf1858ce5678fc4926f4d8875e967ac53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0x9720f76eae9b0d864a2a9e247bd82eef6ca84fa4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0xa6354ec7e4a63f0e75ca3e624eff21d57055dadf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0xb6463fd3ff4bb51cac28d0f6768d49218639f113` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0xc7d3fa8fbfddfc03d37804838ba38c741323652b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0xc883dea716d856e22272b8e14867567b04141c1a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0xcd1953e4d58ef232f4f9c1e0a33e93acc95f7d53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | WasabiVault<br>`0xd46c774a5f5def368bf30acb7572b01e51563a1d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | DebtController<br>`0x2182b5532d8eb4b614031ac68924975100b84684` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x18145b7b7df58528ca6733cb2fe920677273a442` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x186ef3bf61c337b4048bb71bfcaf85cf95044a86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x21bc6937d96a4011a0106ac5ee7b1899b9eeb6ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x4f20b6665ab2dfd00e73987a0ffe8f3f517b0978` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x5346052d8b49cab75ad80f99e7738fc6c631ac04` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x54ca911a115776318ccbc5beb9c3d7b6e41f3e5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x560b5665293ab61b6f7116a0a3a81cdac21e8d74` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x5998faa751c44fb3421c59d2e529d14d40632539` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x63b2f98e3f2ef9ba8650edd405f835d071bd0036` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x696d0d73bd8d3820e9c1d697ebadcf2b372045a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x710ab53bd48835d6d7588d893d9d8315c63d9e74` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x71d0355af1a332aeff372aaca3425c68b9eaaf0d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x7df60d32e275629f4e93c4bc1a11da93a0a3e1a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x851fc799c9f1443a2c1e6b966605a80f8a1b1bf2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x88e23db7e2974133cef7aefb470bcc716c2012a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x9c4a4942bcd56a0a8cffdbcb4ff5bb218f265057` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0xbfea8285e43437c9ea91e62f7677654339505188` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0xc2e9ce42325430b9d84722c73f003a736d4ed5ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0xc69ada3bdb6d89a3599ff6033eca146e2954aa1b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0xc7f4e75801266709b45f57af044c8119b8cbeb9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0xf3299278ebd9afcbcdfa5a71d1980692d9d1e4f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0xfc8d74d7f5d59d18a4271fe4d70fd3b796bedcad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ExactOutSwapper<br>`0x3d1c97fa08a23a15f56fcca7599b0b2a3a4de11b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ExactOutSwapper<br>`0x457c7b95243b2798a41d1ec9d48c77db3a4f9773` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ExactOutSwapper<br>`0xa5ba9e4b28b47928cda17952a606b679b0c58dd9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | MultiProtocolSwapRouter<br>`0x0d28bcb1ebac497a6ef6d0f980ad4bf74c14610f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | MultiProtocolSwapRouter<br>`0x1a3b8ae6fe5b9adaa5fb7df49d832c5ff12f1dc2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | MultiProtocolSwapRouter<br>`0x6188d43285d38dfeb3d6fb3a17ad7502158f4cef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | MultiProtocolSwapRouter<br>`0xb42520f4c7820778eb1f2446614c09835be20c08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | PerpManager<br>`0x295d89220399e7cd0a59bcaef54356b47f273815` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | TimelockWasabiVault<br>`0x72ecf7cf074557984417eabcf3f128ffebf1255e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | UniversalSwapRouter<br>`0x2ea6b2a1cdcb622320b6345d9473cd2b6161d7bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | UniversalSwapRouter<br>`0x9c937625cb2b49a432fbe2ee985b7888ff1e0312` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | UniversalSwapRouter<br>`0xb6544b6aa9be84839eee4d0ab2e8024a159ef813` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | UniversalSwapRouter<br>`0xb772e15989ac1680b03ccbcc3dd82e0798bbd772` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiACPAccountFactory<br>`0x0137cff5a7ed63c5fc3aa98dcb0c91940c3f48e8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiACPAccountFactory<br>`0x5557f35607ded91812762aca7754bdb2de255109` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiACPAccountFactory<br>`0x5ef03e20d722e4a9633b4b35b54f00c209064655` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiACPAccountFactory<br>`0x6a12e6ab226032f66f1b87ee3565cd1a7033b71c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiACPAccountFactory<br>`0x93ce08bfd63e89849f8e6b88e589b61ea277c487` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiACPAccountFactory<br>`0xa79c3a4741f35e8994dc44a23eb31966d2e04552` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiACPAccountFactory<br>`0xfce8917e85a8e41ab01749cf8f7fccb41efcd05d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiLongPool<br>`0xffdf46d1658d528eed9e91cf76c893add4616543` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiRouter<br>`0x892927a8e6cde862c6738c0ab53bd653c49aa03c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiShortPool<br>`0x8bdec891ced76b333b33ae7e3dff83d351c624a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiVault<br>`0x19c804aa2782561ff03ee3b18f3ca50975c01e08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiVault<br>`0x21aaaa45411f6b5ad9b27ac25bd8c6c41509189e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiVault<br>`0xe6ebfbe68065b7d621f399952cbe50f999a3aab8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiVault<br>`0xea3952910b4a356617145e1447a5b21ada50cdab` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | BeraVault<br>`0x215c8d1ab5bcaf172feb7f4b4cf618973af584ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | BeraVault<br>`0x4c2142f7ee765de6f9d13b7a9d28b01eb9bb1450` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | BeraVault<br>`0xeac928bd9c61d85f704f17ceb8691720d3d46398` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | CappedVaultCompetitionDepositor<br>`0x97090d4ac726d6105e0c4b522e9234c0392a9e84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | DebtController<br>`0x93f287f2c3fd9fde49373afd3e6e679d7a9350f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | DebtController<br>`0xfae69f2c82747f878f74c1e57a1aed945ed8558f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x1c4a802fd6b591bb71daa01d8335e43719048b24` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x51abc06f452b4ac625eb10315238b8cf7186fb61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x6a98876701c8b86a0e8fbe8a28a33b3cd2d8dbf6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x8399ec27c14f2a25e1a82a63080373ffd102b811` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x8c118eb3ad22598cfa4156241d9497317d1a68c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0x8c65063da2fda6e3be1debdeb134419011d8cf76` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0xb93219f8ec414684166e7479c16ba62e14a3237d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0xc84879ac01794fc3bab26b5167e3c287bd1df3e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ERC1967Proxy<br>`0xdee9f998293bbaee7214f91e45701a317bb55f18` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ExactOutSwapper<br>`0xa3ae97b2420d172b6fb3f7f10953289ab7c2a188` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | ExactOutSwapper<br>`0xaec98b9b5e4fddb84ff120f6c543138f6bbd9dd3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | PerpManager<br>`0x19c804aa2782561ff03ee3b18f3ca50975c01e08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiLongPool<br>`0x1c75bd949aaf5d322aeceb92234ffc993064801d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiRouter<br>`0x3e1b86e38756323daa2dbdd183a23f4e24a014d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | WasabiShortPool<br>`0x00b6c4e0d058d726316ae1666e353ec72598e7af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| candidate review | DebtController<br>`0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ERC1967Proxy<br>`0xb0a19fa556ab92e51ea7969ef5fefef5a357870c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ERC1967Proxy<br>`0xc8d8d820f88df3bd48c4f8e95bca3b994b73c699` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | ERC1967Proxy<br>`0xdf2fc74879460839b213ad2768d1592ff810d984` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| candidate review | PerpManager<br>`0x5c4a1f39ff909adbcb8265f64870cf94bf1e41a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| contamination review | ArcadeLending<br>`0xf31166390c90c233088a13f60ce08f20bfc8c09a` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| contamination review | ArcadeLoanTransferrer<br>`0xf71d5e0a44d602a6b879734b9e99b50fc54d2aee` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| contamination review | NFTfiLending<br>`0x7f4f727930c2c73238584f9f195e32e86e32d1b2` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| contamination review | TellerLending<br>`0xca954b354dfb73a740f370f71cc8918f1c0982e1` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| contamination review | X2Y2Lending<br>`0x4cd094fcc9f107eed45217b078481bfd8fbbad5f` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| contamination review | ZhartaLending<br>`0x0466b94a37b9037b6416ca5b1c17de00356fa09b` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| contamination review | BalanceChecker<br>`0xe668de8d7d6933c47409b2bc14d5d08daefcb0f0` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| contamination review | MultiReader<br>`0xd4e31cea708b0125f05fb9b9d25cd1263339a018` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | AddressProvider<br>`0x2b04347413918588b81782cc446524354a15ee72` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | AddressProvider<br>`0xdabc8055e21a3d5c1e99d8048023f3c72d8e8c93` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | AddressProvider<br>`0xf7474812890039a744737a7347c3480a4f081828` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | BNPLOptionBidValidator<br>`0x327fe52e44a1fc68e8596df8769a4b5dc538550e` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | LendingAddressProvider<br>`0xc399616937ebace9e45159a60cd77663c4a30e79` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | TellerLending<br>`0xee83e50791a35364db279d097c884e1eaee8624a` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | TellerLending<br>`0xeebbc046508478546cc9a8ca7327f5fa7ba24dc9` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WASABI<br>`0x0cc3471d024250c7661003063aa5cc3d2c142467` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiBNPL<br>`0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiBNPL2<br>`0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiFeeManager<br>`0x0301079dabdc9a2c70b856b2c51aca02bac10c3a` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiFeeManager2<br>`0xc08c2d6dbeb704efb7a68bd2bb29dfa954625e34` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiLongPool<br>`0x000728488ae4e80b2ed7c3a06462bdeab5fbf1cf` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiLongPool<br>`0xa5a6457dd024bf2e5edf8dbd54dfbca24cac7b96` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiOptionArbitrageV2<br>`0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiShortPool<br>`0x0b9f9e6904194174a53d9c500b84eac1b79ada57` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiShortPool<br>`0x76e8f316cec20c36759c3d80ebaa4cb3b5279499` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiShortPool<br>`0x92361209071c76e031133def9092d4920a9312f2` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | WasabiStructs<br>`0x8f2885e85a59782197024306483cceae7b99dcd3` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | X2Y2Lending<br>`0xcf7da658f1e3da0916fc66291f10b022406f6ee1` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | ZhartaLending<br>`0x0d08ea010dd3bb0a1dda37443e982c46adb2e4d5` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | ZhartaLending<br>`0x2cfe1c35bb695d4eff2736054eac3b6ce4dea90b` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | ZhartaLending<br>`0x6209a1b9751f67594427a45b5225bc3492009788` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | ZhartaLending<br>`0xb06e99cc97fc95cc9a84ae95c369a8b8299cf383` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | ZhartaLending<br>`0xb2a557732b9f5eea359b643d085ad32e2288afaa` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | AddressProvider<br>`0x339fb34b6bdcd949cfb1bce6aa0a593f18619c0c` | non_address_book | unknown | unknown | verified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| source verified unclassified | AddressProvider<br>`0x8b03c6fb9453bc43b30656dbc1c58e700175cf1f` | non_address_book | unknown | unknown | verified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| source verified unclassified | AddressProvider<br>`0x66873693e8b125dbea46274173b0d6dcd1933cca` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | AddressProvider<br>`0x6c31944a1f0ad46b9fdd570a23b0e8030f94d48f` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | BT404NFTWrapped<br>`0xfafd6127541d35c4220134185c0b0688d51a031f` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | BT404Token<br>`0x3c169484cfac44ebd491a31abcd767ff2afaa2ce` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | BT404Token<br>`0xd936dee5924ccdac595a0fdb0f560b5bb1d58e26` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | FractionalNFTRouter<br>`0x5b72dc9d20e5b3c1d65e3e3f516592e7c82bb828` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | FractionalNFTRouter<br>`0xc5e2aa6186795440d5ec6ce8d29c74055bcffa3c` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| source verified unclassified | FractionalNFTRouter<br>`0xdd1642bce31f2a7c7d00f582f00203c0835fd3bb` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| unverified unclassified | UnnamedContract<br>`0x082481d2223a1372d975edc9ccfea3d77b1b595f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| unverified unclassified | UnnamedContract<br>`0x4c4b8c77c7775ab0f6914893f67a6c1c54c83b36` | non_address_book | unknown | unknown | unverified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| unverified unclassified | UnnamedContract<br>`0x60e74e15e43afa985ed1003e78e652d58d8cdd96` | non_address_book | unknown | unknown | unverified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| unverified unclassified | UnnamedContract<br>`0xabe43585a8a5a98a3732026d45c4c7900c566efb` | non_address_book | unknown | unknown | unverified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| unverified unclassified | UnnamedContract<br>`0xc2664a65346db247649d5d7853b7bb4cb4e7734f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| unverified unclassified | UnnamedContract<br>`0x1e2c316703f1d3b38c81556e5c853cf30fce04fc` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0x1e39cf440f2872d4b23165275e3f79e90dd095c2` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0x323b88a7349f1974cadf645b3dcd824ae5f568cf` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0x3ddf12feeacc94c475b6d19a3f342f49adc109cf` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0x49507722ad672901e2f80f591dc94ff482f52554` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0x51abc06f452b4ac625eb10315238b8cf7186fb61` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0xc60b95b78b22fe41e4849d51c549cd9b7f288a03` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0x1e39cf440f2872d4b23165275e3f79e90dd095c2` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0x313409b70a2a6bd149ebe632634659b0dd0b8b2d` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0x323b88a7349f1974cadf645b3dcd824ae5f568cf` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0xa4bbedd16ff16a1b6f695e097a7e10431cabcab2` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0xb1a597b693eb1c843f15485f131eb1d6700bd0c4` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |
| unverified unclassified | UnnamedContract<br>`0xeaa6b6e3df175b4a2b0307230fb44b15c801dcf6` | non_address_book | unknown | unknown | unverified | n/a | `0xdfcf63b785818c47b4ae26a0b66014a0ede4763d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Narya.ai_Wasabi_Smart_Contract_Audit.pdf](https://dkoda-public.s3.amazonaws.com/Narya.ai_Wasabi_Smart_Contract_Audit.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Zellic_Wasabi_Smart_Contract_Audit.pdf](https://dkoda-public.s3.amazonaws.com/Zellic_Wasabi_Smart_Contract_Audit.pdf) | Zellic | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [0xfoobar_Wasabi_Smart_Contract_Audit.pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/0xfoobar_Wasabi_Smart_Contract_Audit.pdf) | Foobar | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [WasabiPerps+Security+Assessment-1+(2).pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/WasabiPerps+Security+Assessment-1+(2).pdf) | Foobar | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 1 | 0 | 4 | n/a |
| [Wasabi+Perps+-+Zellic+Audit+Report.pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 1 | 0 | 7 | n/a |
| [Wasabi+Perps+-+Zellic+Audit+Report+2.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report+2.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 16 | high |
| [Wasabi_Perps_EVM_Audit_Sherlock.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_EVM_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Wasabi_Perps_Solana_Audit_Sherlock.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_Solana_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 39 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3106] Narya.ai_Wasabi_Smart_Contract_Audit.pdf — no match: Extracted contract names from scope section and findings. Audit date from cover page.
- [3107] Zellic_Wasabi_Smart_Contract_Audit.pdf — no match: Scope section explicitly lists 5 contracts. Audit date from cover page: April 18, 2023.
- [3108] 0xfoobar_Wasabi_Smart_Contract_Audit.pdf — no match: Extracted contract names from findings sections where files are explicitly listed. Audit date from cover page and summary.
- [3109] WasabiPerps+Security+Assessment-1+(2).pdf — matched: No reason recorded
- [3110] Wasabi+Perps+-+Zellic+Audit+Report.pdf — matched: No reason recorded
- [3111] Wasabi+Perps+-+Zellic+Audit+Report+2.pdf — matched: Scope table on page 9 lists 18 contracts. Audit date from cover page: October 2, 2024.
- [3112] Wasabi_Perps_EVM_Audit_Sherlock.pdf — no match: Extracted from audit report text. Scope section mentions repository and commit hash. Contracts identified from findings and code snippets.
- [3113] Wasabi_Perps_Solana_Audit_Sherlock.pdf — no match: Extracted contract names from the audit report's scope description and findings. The report covers the Wasabi Solana program, including instructions and state accounts. The audit date is the end date of the audit period (November 18th - November 28th).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Narya.ai_Wasabi_Smart_Contract_Audit.pdf | WasabiOption | unmatched — not counted | — | listed in scope and findings | no |
| Narya.ai_Wasabi_Smart_Contract_Audit.pdf | AbstractWasabiPool | unmatched — not counted | — | listed in findings | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | AbstractWasabiPool | unmatched — not counted | — | Listed in scope section: Programs • AbstractWasabiPool.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | WasabiOption | unmatched — not counted | — | Listed in scope section: Programs • WasabiOption.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | WasabiPoolFactory | unmatched — not counted | — | Listed in scope section: Programs • WasabiPoolFactory.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | ERC20WasabiPool | unmatched — not counted | — | Listed in scope section: Programs • ERC20WasabiPool.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | ETHWasabiPool | unmatched — not counted | — | Listed in scope section: Programs • ETHWasabiPool.sol | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | AbstractWasabiPool | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiPoolFactory | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiConduit | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiOptionArbitrage | unmatched — not counted | — | listed in findings 1, 3, 8 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | ERC20WasabiPool | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | ETHWasabiPool | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | Signing | unmatched — not counted | — | listed in finding 2 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiOption | unmatched — not counted | — | listed in findings 4, 6 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | PricingConfigValidator | unmatched — not counted | — | listed in finding 5 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | ConduitSignatureVerifier | unmatched — not counted | — | listed in finding 5 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | PoolAskVerifier | unmatched — not counted | — | listed in findings 5, 7 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | PoolBidVerifier | unmatched — not counted | — | listed in findings 5, 7 | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | BaseWasabiPool | unmatched — not counted | — | — | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | DebtController | unmatched — not counted | — | — | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | WasabiLongPool | unmatched — not counted | — | — | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | WasabiShortPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x3ee6c6cdaa0073de6da00091329de4390b0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0x0fdc7b5ce282763d5372a44b01db65e14830d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-12-18 was 17d from audit; next candidate 467d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WasabiPerps+Security+Assessment-1+(2).pdf | pool | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | AddressProvider | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | BaseWasabiPool | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | DebtController | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | Hash | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | PerpUtils | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | WasabiLongPool | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | WasabiShortPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x3ee6c6cdaa0073de6da00091329de4390b0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0x0fdc7b5ce282763d5372a44b01db65e14830d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-12-18 was 14d from audit; next candidate 436d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | WasabiVault | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BaseWasabiPool | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | Hash | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | PerpUtils | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WasabiLongPool | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WasabiShortPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x3ee6c6cdaa0073de6da00091329de4390b0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0fdc7b5ce282763d5372a44b01db65e14830d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | AddressProvider | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | PerpManager | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | Roles | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | AbstractBlastContract | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastConstants | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastLongPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x046299143a880c4d01a318bc6c9f2c0a5c1ed355` — deployed 2024-02-29 07:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastPerpManager | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastShortPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0301079dabdc9a2c70b856b2c51aca02bac10c3a` — deployed 2024-02-29 19:34:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | DebtController | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | MultiReader | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastVault | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WasabiVault | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WETH | unmatched — not counted | — | listed in scope table | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiLongPool | unmatched — not counted | — | mentioned in findings M-1, M-4, M-7, L-1, L-2 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiShortPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x3ee6c6cdaa0073de6da00091329de4390b0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0fdc7b5ce282763d5372a44b01db65e14830d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiVault | unmatched — not counted | — | mentioned in finding M-1 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | BaseWasabiPool | unmatched — not counted | — | mentioned in findings L-3, L-4, L-5 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiRouter | unmatched — not counted | — | mentioned in findings M-5, M-6 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | BlastVault | unmatched — not counted | — | mentioned in finding M-2 and L-6 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | DebtController | unmatched — not counted | — | mentioned in finding L-7 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | BlastRouter | unmatched — not counted | — | mentioned in finding L-6 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | AbstractBlastContract | unmatched — not counted | — | mentioned in finding L-6 | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Permission | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Position | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | TakeProfitOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | StopLossOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | DebtController | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | GlobalSettings | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | LpVault | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Pool | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | CloseAmounts | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePositionRequest | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | SwapCache | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | DepositOrWithdraw | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitLpVault | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitLongPool | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitShortPool | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitOrUpdatePermission | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | CloseStopLossOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | CloseTakeProfitOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenShortPositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenShortPositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenLongPositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenLongPositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | StopLossCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | TakeProfitCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClaimPosition | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | LiquidatePositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | LiquidatePositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Mint | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Deposit | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Withdraw | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Donate | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitGlobalSettings | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitDebtController | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | SetMaxApy | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | SetMaxLeverage | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | RemovePermission | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePermission | unmatched — not counted | — | mentioned in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0x0da575d3edd4e3ee1d904936f94ec043c06bb12b` | BeraLongPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x3ee6c6cdaa0073de6da00091329de4390b0df1ee` | WasabiShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 101 |
| upstream | 7 |
| standard_library | 6 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 92 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: temporal_name=2, unique_name=2

Zero-match audit list:

- [3106] Narya.ai_Wasabi_Smart_Contract_Audit.pdf
- [3107] Zellic_Wasabi_Smart_Contract_Audit.pdf
- [3108] 0xfoobar_Wasabi_Smart_Contract_Audit.pdf
- [3112] Wasabi_Perps_EVM_Audit_Sherlock.pdf
- [3113] Wasabi_Perps_Solana_Audit_Sherlock.pdf

Fork inheritance lineage and inherited audits are included when available.
