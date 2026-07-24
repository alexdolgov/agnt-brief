# Agentic Audit Brief: Topaz

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Topaz (`topaz`)
- Website: [https://www.topazdex.com](https://www.topazdex.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, optimism
- Contract surface: 158 unique implementations (231 raw deployments)
- Coverage basis: 2/27 confirmed own live verified implementations (7.4%); conservative 7.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $920,262.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Topaz. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across bsc, ethereum, optimism. Structural roles: 18 supporting, 9 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: supporting (18), core (9), unclassified (1)
- Contract kinds: contract (28)
- Detected standards: erc165 (5), erc721 (2), multicall (2), ownable (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (20), foundry (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

8 of 27 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

**CLFactory** (`0x73dc984d9490286e735548f61dfccec67af82ed9`, chain 56)
Origin: arrakis-finance (`0x5e7bb1...06809a`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CLGauge** (`0xc2f777a2e9f54f195212a5a2d394399252958b97`, chain 56)
Origin: overnight-finance (`0xd030df...8ea104`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CLPool** (`0x18e68051d1b1fb44cb539ca4436f112d28577af7`, chain 56)
Origin: peapods-finance (`0xd53398...98c37e`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DynamicSwapFeeModule** (`0x656cf5d2f1a70177e011e2c27deafbee4c7b0541`, chain 56)
Origin: arcadia-finance (`0x87d8f9...38e8cb`)
Containment: 89.5% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- configureDynamicFees(address[],uint24[],uint64[])

Removals (removed from original):
- disableInitialFee(address)
- setInitialFee(address,uint24)

**Minter** (`0x606794d37991a426a189fd9fa8664d339a77f8ae`, chain 56)
Origin: 40-acres (`0xeb0183...a33fe5`)
Containment: 96.6% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- topaz()

Removals (removed from original):
- aero()

**Router** (`0x1e98c8226e7d452e1888e3d3d2f929346321c6c3`, chain 56)
Origin: 40-acres (`0xcf77a3...874e43`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isTrustedForwarder(address)

**Voter** (`0x2f80f810a114223ac69e34e84e735cad515dad67`, chain 56)
Origin: arcadia-finance (`0x166135...c480a5`)
Containment: 100.0% - 33 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isTrustedForwarder(address)

**VotingEscrow** (`0xe951ac65efe86682311ab0d8995e7a58750c5eb3`, chain 56)
Origin: iaero-protocol (`0xebf418...67e6b4`)
Containment: 100.0% - 49 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isTrustedForwarder(address)

### Original Contracts (no fork detected - full audit scope)

- AirdropDistributor (`0x7b1d8745079c85af80ff7a7ea7c2c4769eab5348`, chain 56)
- CLGaugeFactory (`0xed2ed418f104e18b1d11ea5c26236a1caa675839`, chain 56)
- CustomSwapFeeModule (`0xa0462a52af4f8cbf7766efbba75355b30b6bcce2`, chain 56)
- CustomUnstakedFeeModule (`0x3bad7f96cd1b51ce86e12c42541ac7d559a78582`, chain 56)
- EpochGovernor (`0xbae5585afb875a45292470078aa4d4a261749084`, chain 56)
- FactoryRegistry (`0x268d1c8a538ecf6628838c11d581e1eabd13d6a4`, chain 56)
- Forwarder (`0xe79eb7c4d06ff38e6483921de8e85a37ec7c731b`, chain 56)
- GaugeFactory (`0xfc080d1ecd7c332022cebf942aeb62d5e1d4cb08`, chain 56)
- ManagedRewardsFactory (`0xe4b23f13b24232c1e68ad0575191216152aa9480`, chain 56)
- MixedRouteQuoterV1 (`0x47c3570b90e7234fe695ad5f1be69e21fe1a9ee2`, chain 56)
- NonfungiblePositionManager (`0xf8c30c3c362941c23025f2ea30b066a73c982f63`, chain 56)
- Pool (`0xdc942d8e37cc20bcf9ad1fe0111ee6c5908f3678`, chain 56)
- ProtocolGovernor (`0xbbcdcd30066cf25708f4a0ab9d9149d32ea4c401`, chain 56)
- QuoterV2 (`0x7ccb89bb9bdef68688f39a2c22d249fd1d9759f1`, chain 56)
- RewardsDistributor (`0x85e15e7ad4f20d5ca3a1104b1c2cce72f5f683db`, chain 56)
- SwapRouter (`0x9b63ca87919617d042a89663492db3c8686e0cae`, chain 56)
- Topaz (`0xdf002282c1474c9592780618adda7eaa99998abd`, chain 56)
- VeArtProxy (`0x9612305fe63dfb84da8f6d6261169f6b85026601`, chain 56)
- VotingRewardsFactory (`0x4c303f7af7b8b05226440e4e12ff9a82f513716c`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/27 (7.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 131 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 27 of 158 unique; 131 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/55
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 103
- Unique implementations: 158
- Raw deployments: 231
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 3.6% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DynamicSwapFeeModule | unknown | project_anchor | own_supporting | 0 | bsc | unit-394106 | `0x656cf5d2f1a70177e011e2c27deafbee4c7b0541` | ✅ Audited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394105 | `0x606794d37991a426a189fd9fa8664d339a77f8ae` | ✅ Audited |

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394108 | `0x7b1d8745079c85af80ff7a7ea7c2c4769eab5348` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef6724ad68fd2f8526765e08afa6627850c8a589` | ⚠️ Unaudited |
| BonusLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2a1bf8dc45399c761bbd0a862f75cf725518974b`; bsc `0x441b05ba4f466a572949032c6284be7dba65a545`; bsc `0xb1fbf57406ef303d29ee47b053ba71c21ef56c45` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-394107 | `0x73dc984d9490286e735548f61dfccec67af82ed9` | ⚠️ Unaudited |
| CLGauge | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394116 | `0xc2f777a2e9f54f195212a5a2d394399252958b97` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394121 | `0xed2ed418f104e18b1d11ea5c26236a1caa675839` | ⚠️ Unaudited |
| CLPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-394098 | `0x18e68051d1b1fb44cb539ca4436f112d28577af7` | ⚠️ Unaudited |
| ConnectorCl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28a42e419e2a2e36c200e63e71a9492f0068b43a` | ⚠️ Unaudited |
| ConnectorMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1e54928661d4c919742e38ec4766c47ee1daeee0`; bsc `0x9a39f9bbffcaeb29882fcdc68d6efa2d381f813a`; bsc `0xcc33acdb256242c542ce83af1cefaa4895b56ec4`; bsc `0xfc4fab97adcd535741a4504ffff7b3160782746d` | ⚠️ Unaudited |
| ConnectorRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x340c424ed1b8277d8e606490966a0fa04dd06c0e`; bsc `0x9e9b9257e4df263a8aee9ed1ea5cc1b5930564d1` | ⚠️ Unaudited |
| ConnectorSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b906700fe65338d548c67e300b1a608d62e242e` | ⚠️ Unaudited |
| ConnectorSwapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf997f5d2e7b5fe5d6aa15aab8b2034bb93f6f496` | ⚠️ Unaudited |
| ConnectorToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea8abb5bc208950cf33633cd81d36654a0ab355c` | ⚠️ Unaudited |
| ConnectorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffc140b19b1e14b94da2086641d1a602e04f9e74` | ⚠️ Unaudited |
| ConnectorZapSlipstream | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16f9d057c0f6c0ce9c4367e34c89248e27f53b37` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | project_anchor | own_supporting | 0 | bsc | unit-394113 | `0xa0462a52af4f8cbf7766efbba75355b30b6bcce2` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | project_anchor | own_supporting | 0 | bsc | unit-394102 | `0x3bad7f96cd1b51ce86e12c42541ac7d559a78582` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb24e31896d7476efb7b76a366566cfbcf375033` | ⚠️ Unaudited |
| EpochGovernor | governance | project_anchor | own_supporting | 0 | bsc | unit-394114 | `0xbae5585afb875a45292470078aa4d4a261749084` | ⚠️ Unaudited |
| FactoryRegistry | registry | project_anchor | own_supporting | 0 | bsc | unit-394100 | `0x268d1c8a538ecf6628838c11d581e1eabd13d6a4` | ⚠️ Unaudited |
| Forwarder | unknown | project_anchor | own_supporting | 0 | bsc | unit-394119 | `0xe79eb7c4d06ff38e6483921de8e85a37ec7c731b` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394123 | `0xfc080d1ecd7c332022cebf942aeb62d5e1d4cb08` | ⚠️ Unaudited |
| ManagedRewardsFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-394118 | `0xe4b23f13b24232c1e68ad0575191216152aa9480` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | project_anchor | own_supporting | 0 | bsc | unit-394103 | `0x47c3570b90e7234fe695ad5f1be69e21fe1a9ee2` | ⚠️ Unaudited |
| NFTDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x50f9756f631266686b9a7ebdf55998db3da5ca0a`; bsc `0xde9a5d34a9fe0177544e8a70c691c3f1f9c9c63a` | ⚠️ Unaudited |
| NFTSVG | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x08b7e6043b92c1613b900862e3d15ac4d598dec3`; bsc `0x21c9257dfcdf04154d34df5a2204b9402ef31d9a`; bsc `0x2427c741f45e7e232e06fd2b60279a771d634fb0`; bsc `0x4b15103239fdd18ad0fe449897ee5c2b9b28fde2` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | bsc | unit-394122 | `0xf8c30c3c362941c23025f2ea30b066a73c982f63` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x0dc0d5acf4256f5f5118e2a82c6d06868f2ab0dc`; bsc `0x239bd25e86e4a3b931b1c6cf7849c27ca9f0498a`; bsc `0x47baf65e578e6a706c1bf31862c2ba59dc91cc18`; bsc `0x81acc35240d19948a56b8b68bcc8706f90babab5`; bsc `0xba4c4f5ca809c21286ff1a872b3c0cfb57afe904`; bsc `0xd3dd0f34afe65ab3f64ccfd13e76d5a8dc8f787a` | ⚠️ Unaudited |
| Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62b3cea3c6028029e56a880e71b659af523f06b6` | ⚠️ Unaudited |
| PerlinNoise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ee6021067b1763a98c8130689323279e160990a` | ⚠️ Unaudited |
| Pool | unknown | project_anchor | own_supporting | 1 | bsc | unit-394124 | 2 deployments: bsc `0x65e6cd0ef5d3467030103cf3d433034e570b5784`; bsc `0xdc942d8e37cc20bcf9ad1fe0111ee6c5908f3678` | ⚠️ Unaudited |
| PositionBurnHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2764db7bca0ccf98a1611f36879ebffd06ffc02b`; bsc `0x8ea90c6711bca4203c689bf0dd6f08e43377e3c5` | ⚠️ Unaudited |
| ProtocolGovernor | governance | project_anchor | own_supporting | 0 | bsc | unit-394115 | `0xbbcdcd30066cf25708f4a0ab9d9149d32ea4c401` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | bsc | unit-394109 | `0x7ccb89bb9bdef68688f39a2c22d249fd1d9759f1` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x70008f088e60de590ca63f93814692503e96fcbd`; bsc `0x987097ef2fbd740436166f49700a40ac5ed49fe4`; bsc `0xdb93dcfd7a560fb0757857787b6b3c2dbf6e56aa`; bsc `0xf11e4d0b4bf72725e5c1179d25bfdefcc351c88d` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394110 | `0x85e15e7ad4f20d5ca3a1104b1c2cce72f5f683db` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | bsc | unit-394099 | `0x1e98c8226e7d452e1888e3d3d2f929346321c6c3` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-394112 | `0x9b63ca87919617d042a89663492db3c8686e0cae` | ⚠️ Unaudited |
| Topaz | unknown | project_anchor | own_supporting | 0 | bsc | unit-394117 | `0xdf002282c1474c9592780618adda7eaa99998abd` | ⚠️ Unaudited |
| TopazAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1f0d7e561c04b9925a7bf35d4575759be19e46c1`; bsc `0x72d5c6ba3cc1660892fe897f1737282860b958a2`; bsc `0xe31a13db4bac989d3b015d9f12f8e191cc977898` | ⚠️ Unaudited |
| TopazAccountFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5a4cbfc331744b05dd814d2b9c9a56e5a4e9b812`; bsc `0x6b7e08c574839ba26a7ef04cb89eae51d3f45351`; bsc `0xda1d895cd26ca4018c55f5bfd886de759717e5d1` | ⚠️ Unaudited |
| TopazCLStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 22 deployments: bsc `0x0c138578887c3eb2685789d656646969a35ccd23`; bsc `0x154b2105efc3918e03ad26a501bcb2aefe3dc20e`; bsc `0x1f6bca596ab954a10eb3d15dd3bb69dff6a8bf9b`; bsc `0x2fe0bb06088f931e1081106187064b3be2c2fe29`; bsc `0x329c81265ad5f9931f01298e1308a86c53023c72`; bsc `0x3aa52ca0913c8b97da969fb2589c28048055db73`; bsc `0x3ba3d49c5a1a9c0de431bc8e7c6c0b45939d7629`; bsc `0x3e30e1b13123b0267f6eccee15fc487017ec798a`; bsc `0x4664835eb1ec098c4c73835d71f25ad44b84b730`; bsc `0x483420d4465111fcc0714ced83f7a0842be92948`; bsc `0x4870f406adbd6456820ddad1710aabccb6fcd190`; bsc `0x488927b918b7db6dd4e9375338a6755ff4fea5f1`; bsc `0x52fd5045bf4cade2120402a1bde7f103902adc70`; bsc `0x70d8816114a141e48b8a829a6958bfdd64e52689`; bsc `0x882ec22d7df2121c4f4d9e7cc5e299516aebb3e2`; bsc `0x97ff39793c347850a964ca8f14b693c398773896`; bsc `0xaffb38e987d2511bc2007f302fa50d1238c20ed4`; bsc `0xb03bc3f40d572a603dca339b9baacf6fd828b9dc`; bsc `0xdc3b8cba6ed62fb75f05fb2337c99e997b950247`; bsc `0xe84f857d00e188a70f0ec6062274689b69b3de51`; bsc `0xeaa3939b84af77aa4700062ce832ecac89be00cb`; bsc `0xec9d7f1b1fe241e0b863a6289eaf798acc6e8598` | ⚠️ Unaudited |
| TopazCLStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90d87f6c12933889f9882ddafbe6a89845743d6b` | ⚠️ Unaudited |
| TopazCLVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 22 deployments: bsc `0x06015c64b8467ffa919fb585445a138a762de599`; bsc `0x159cde3ffdb1291d89dd62b088d67f01de583795`; bsc `0x21666d9320152baf100df0d73d288b4899b2ad9b`; bsc `0x3d2eca747f275b975fa27fdc403557ec384be7e8`; bsc `0x3f35a9696257202c32263574286ac23537879555`; bsc `0x40b68024f8cd1005e295e63f04192f7c50f3bac2`; bsc `0x4b6916ea53a8e0a426170085698a21452c69d77e`; bsc `0x4c8a9bda546b48f73d47e0c5c630aeec222d61ba`; bsc `0x56734c3cbd5c293600825c11d70f311f366724ef`; bsc `0x5e0a5e6de6b7f8b08187f285c61f050ce84c7505`; bsc `0x60053e86673ef59796322836740fde36f999f2da`; bsc `0x76eec8c0c49f6e5708b45900124019105756ebfd`; bsc `0x97ddaa9033cc025aa11b778a02f039db2161f969`; bsc `0xa2aa979e014d256229c0cbc82739678db6ab0659`; bsc `0xb9b4281cc118f96dc9fbf1e6b8ae4690a95537fc`; bsc `0xc05f9f2884a1e73efb852d7af3464ddcd65de6c1`; bsc `0xce01b7c86ada2e8582ae0447237c7f091d36cfb8`; bsc `0xdc12d018f6ea93acc2af95718e0f9a201e037e8d`; bsc `0xe367b158b0ff8e88f10227120bf4f681401f7ad9`; bsc `0xf44c2958c133914a4d12f01d38854d8ed3ce99db`; bsc `0xf87b9cf93d1c54d790bff21fe85faa5929329a33`; bsc `0xfea98b383d938f53cb91cf12f66f2e436fffc8f7` | ⚠️ Unaudited |
| TopazCLZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x376fbca3725cdcd6954ffa79cdfa70855a81f523`; bsc `0x396717cae3bca595437619dd3aae19ae4a76a982`; bsc `0x56e9699ba5201d8aa2f259e8b6f2fcadf91a054c`; bsc `0xfb043e1b7c04a7963adccb3d4618991732a13466` | ⚠️ Unaudited |
| TopazSlipstreamStateMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1941194be7c2607ffbc27de23b1aca357c45e3d` | ⚠️ Unaudited |
| TopazV2Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3f4dab8820106187cb3a67743a34584c57d4cc37`; bsc `0x9a518983bff5868cdd44ab7ecc2c07a89af74c3c`; bsc `0xa66bd718c45aab17922cf13c620ee21b7d156705`; bsc `0xf2126141e65527a2581113cf4b9ff1343ccbaffa` | ⚠️ Unaudited |
| TopazV2Zapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4247bf63da44d4ebb4d1ddc77326b735fc8ca0da`; bsc `0xc6141aeab5ea77a339adea098c1045f4beffcfa7` | ⚠️ Unaudited |
| Trig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cabfd11dd628a12ce8dfdc7dfd3e77badda849a` | ⚠️ Unaudited |
| VeArtProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-394111 | `0x9612305fe63dfb84da8f6d6261169f6b85026601` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | bsc | unit-394101 | `0x2f80f810a114223ac69e34e84e735cad515dad67` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394120 | `0xe951ac65efe86682311ab0d8995e7a58750c5eb3` | ⚠️ Unaudited |
| VotingRewardsFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-394104 | `0x4c303f7af7b8b05226440e4e12ff9a82f513716c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (103)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e98c8226e7d452e1888e3d3d2f929346321c6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f80f810a114223ac69e34e84e735cad515dad67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x606794d37991a426a189fd9fa8664d339a77f8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e6cd0ef5d3467030103cf3d433034e570b5784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85e15e7ad4f20d5ca3a1104b1c2cce72f5f683db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9612305fe63dfb84da8f6d6261169f6b85026601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae5585afb875a45292470078aa4d4a261749084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbcdcd30066cf25708f4a0ab9d9149d32ea4c401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc942d8e37cc20bcf9ad1fe0111ee6c5908f3678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf002282c1474c9592780618adda7eaa99998abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe951ac65efe86682311ab0d8995e7a58750c5eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18e68051d1b1fb44cb539ca4436f112d28577af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3bad7f96cd1b51ce86e12c42541ac7d559a78582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47c3570b90e7234fe695ad5f1be69e21fe1a9ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x656cf5d2f1a70177e011e2c27deafbee4c7b0541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73dc984d9490286e735548f61dfccec67af82ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ccb89bb9bdef68688f39a2c22d249fd1d9759f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b63ca87919617d042a89663492db3c8686e0cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0462a52af4f8cbf7766efbba75355b30b6bcce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2f777a2e9f54f195212a5a2d394399252958b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xed2ed418f104e18b1d11ea5c26236a1caa675839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8c30c3c362941c23025f2ea30b066a73c982f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01345438fd359b50646b0ccbf33110e048fd4d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x023df44e8a35d5af187fcce1239ad9cf23ff8529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02b07cb4b70d72eb92c09645db151c40e61b25d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09bf071bf0df5cb2b45c8e36bb6887e6fe487fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bfb20e6ead5ed63235be12f93379cafa7d29ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c792522562af15402efdd1742ce3b8333c58e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cca93970a7bddfb3dc4f16d1ace286c8a0b1ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d69cc73e08e4fbe5bd5fab13526a08e5ed2a0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0db0edc3a4060f988a729c77b9fa80e3dd74b5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x100ddd2ec168401e338feb73d80ee7192e626d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15ee6600c7e719de22098922acee814e5c9bd404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16f0a08bfc9a4aed64dd93f7698d142e20261809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16fc7bc368f3d654ddaba8042ba94a03b7fe18df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cf59ecc638cdd38e8a6a2970c830eecc4ddad67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f49dfe755823312de0035fc875dfdea5c7b893f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20bd0448f9e4420d495db3c957abcf4d18430334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x216f62a9445336c5f0ea830170eb057eaa5583ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22c02117ea7fd6179b81dc8bda96988288f7e99f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x253611aff17a2d1823a4c51e94b96ed41314f552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b782bb8eeaa61ac0d87d3314723955d0ac3357e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d3c89f63188254518189d6b1c654ffbc90594e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x308e10add76ed6ced9c0e1ac8d12958398a51d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x375cb608e9d9f5b72baf3b194f9083da7f0e5d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b1486b13ea565d808a574479eff3a24e69db2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f00a3500dda401e534eea3fd5c04c53ccccaec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f2f33efd052a729ef3ea2ad491a698e10b9e1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x428cb55fd01e243e4e8204ca98aadaf38a90f6c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x432d7952e597bd6856a75d824fa95a9352f5dcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43b132fb0e176bda3c9e027a0dcbb6718a9493eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45c303181f6c3328c2cc5a72fe256a3d9dda3c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e0fc8a729edf16434f00c4f84beb990ec4d0e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x543ecf2a09a765ab50a4dc7b80cbaa7c46209acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5722d4796dc46369af74245c1d63695182591023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x583bb40c96c601e92f1577ca4af964d77982e59e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a59edc5987ab37249357aa7157db809da138644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60646fee7e41502d9f61b87d66836b9859d58e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61731a8424ec7a8a3f66c48fe42e15d797eb41ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x672ee3f6cd3b6471ab53d92fbb72039394702a91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x694064766ceaa529873787634aa8abe1d2c5ba4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b8fa600801d1397ef2907f7542afd3fc2b51315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c8cd8db0e9748d481bae0468329acd4be0c833f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e08ffb3897da2207a2fc43bdb7c5b73f2fa2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e86e51ca407600937bfc3239164f2d858090990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74ce82d6023af64adc879ee26a41c1482c7a9047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78e5603782d40e2a967b842991463bd48343fb30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d07da3c5915c084659872b20d0f2890db427eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e26ab5cb570c3cf744a5f5d153b14327be9d17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88c3fe70ca7ce23ac2e7b1ca234a163a9aa08f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e9d3efd7224ee1f93e5c30f3866eacb86885279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94ad7699647f3a15dc8fd4f698a71487337de0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94d6be0c63ca646b21826fe59f5ac5d924c8dd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9657be2beaea3b26182b2eedf87e514396dfdbab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a74e69cfe8e7ab56d81505f42a600622dafa8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0e3b8e6a3a6de302400dc4f206ff4bb6c65d062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa37c7f348bbc2b7202ce0c1d68647d46c3f9f0e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa87370a22a30004cf7bf13af5b327cfe612daadc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9df50fe928391a409add1def0e2bd90162ceff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae096d2642b01822eb99183666b2b44194d1609b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb09de1c0b3a6d76b0c028db0f0d6c64ca9296679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb291ad8560063b6da3c6557868135aabcdfbc208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2ebdde9feccfaadc4c563f6aaebc9ed8b290035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2f75d3ab9488de0a2ebbadf57e5b242701e353e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb795f31e3480d5d748d4db00aa471f563982a094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8db217244a2aa3158800b220ce70e182711ccd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9124ab6e9655a5b1e1a4bbf4014033ec611786b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbeec11bc477dfffc4fc5a7c65db0f3f60a5f72f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2b01257040477ee7670bd849aa41eccaa7d92cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5d870137d784559e0b81d285a423830f2e719d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9e68743bbc1635c0daa876246e4ab4da1327a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca954eee26dffa3ab514692723f24739d7af4927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd76ca9868535ea210a79845c07a749bc940374cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8c0caf77e5827d1396a05a11ac1983e45502a80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd011de6f34cce6e2d9348c2c21a9f49e8cb3836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe061909e3378920477f7123cac0242a16f50840d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe23cf348de2bd20da7130ed92525d5dce780be0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4b157ef84999c373fb5ddedfcfb184bc21aa88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8b1b7283e92235b040f560875252341aad447c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb98ee2ae23d7078db836a58ef0c203621458e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcde6611b6865aaa07102d9c6ec77ef781cbd8d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd097d96cf0b7dbf83d233506db6fe79af1ae897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffc1b9383dcb4a358c86ad91a2b5256c21b5afeb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 95
- Live contracts: 2
- Unknown liveness contracts: 93
- Source-verified contracts: 63
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: contamination review=2, exact address book overlap=1, source verified unclassified=60, unverified unclassified=32

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | contamination review | ConnectorSwapV2<br>`0xf997f5d2e7b5fe5d6aa15aab8b2034bb93f6f496` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | contamination review | PoolFactory<br>`0x65e6cd0ef5d3467030103cf3d433034e570b5784` | project_anchor | unknown | live | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | exact address book overlap | Pool<br>`0xdc942d8e37cc20bcf9ad1fe0111ee6c5908f3678` | project_anchor | unknown | live | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | Optimizer<br>`0x62b3cea3c6028029e56a880e71b659af523f06b6` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | Registry<br>`0x70008f088e60de590ca63f93814692503e96fcbd` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | Registry<br>`0x987097ef2fbd740436166f49700a40ac5ed49fe4` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | Registry<br>`0xdb93dcfd7a560fb0757857787b6b3c2dbf6e56aa` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | Registry<br>`0xf11e4d0b4bf72725e5c1179d25bfdefcc351c88d` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x0c138578887c3eb2685789d656646969a35ccd23` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x154b2105efc3918e03ad26a501bcb2aefe3dc20e` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x1f6bca596ab954a10eb3d15dd3bb69dff6a8bf9b` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x2fe0bb06088f931e1081106187064b3be2c2fe29` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x329c81265ad5f9931f01298e1308a86c53023c72` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x3aa52ca0913c8b97da969fb2589c28048055db73` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x3ba3d49c5a1a9c0de431bc8e7c6c0b45939d7629` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x3e30e1b13123b0267f6eccee15fc487017ec798a` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x4664835eb1ec098c4c73835d71f25ad44b84b730` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x483420d4465111fcc0714ced83f7a0842be92948` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x4870f406adbd6456820ddad1710aabccb6fcd190` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x488927b918b7db6dd4e9375338a6755ff4fea5f1` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x52fd5045bf4cade2120402a1bde7f103902adc70` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x70d8816114a141e48b8a829a6958bfdd64e52689` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x882ec22d7df2121c4f4d9e7cc5e299516aebb3e2` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0x97ff39793c347850a964ca8f14b693c398773896` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0xaffb38e987d2511bc2007f302fa50d1238c20ed4` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0xb03bc3f40d572a603dca339b9baacf6fd828b9dc` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0xdc3b8cba6ed62fb75f05fb2337c99e997b950247` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0xe84f857d00e188a70f0ec6062274689b69b3de51` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0xeaa3939b84af77aa4700062ce832ecac89be00cb` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategy<br>`0xec9d7f1b1fe241e0b863a6289eaf798acc6e8598` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLStrategyFactory<br>`0x90d87f6c12933889f9882ddafbe6a89845743d6b` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x06015c64b8467ffa919fb585445a138a762de599` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x159cde3ffdb1291d89dd62b088d67f01de583795` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x21666d9320152baf100df0d73d288b4899b2ad9b` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x3d2eca747f275b975fa27fdc403557ec384be7e8` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x3f35a9696257202c32263574286ac23537879555` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x40b68024f8cd1005e295e63f04192f7c50f3bac2` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x4b6916ea53a8e0a426170085698a21452c69d77e` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x4c8a9bda546b48f73d47e0c5c630aeec222d61ba` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x56734c3cbd5c293600825c11d70f311f366724ef` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x5e0a5e6de6b7f8b08187f285c61f050ce84c7505` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x60053e86673ef59796322836740fde36f999f2da` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x76eec8c0c49f6e5708b45900124019105756ebfd` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0x97ddaa9033cc025aa11b778a02f039db2161f969` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0xa2aa979e014d256229c0cbc82739678db6ab0659` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0xb9b4281cc118f96dc9fbf1e6b8ae4690a95537fc` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0xc05f9f2884a1e73efb852d7af3464ddcd65de6c1` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0xce01b7c86ada2e8582ae0447237c7f091d36cfb8` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0xdc12d018f6ea93acc2af95718e0f9a201e037e8d` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0xe367b158b0ff8e88f10227120bf4f681401f7ad9` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0xf44c2958c133914a4d12f01d38854d8ed3ce99db` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0xf87b9cf93d1c54d790bff21fe85faa5929329a33` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLVault<br>`0xfea98b383d938f53cb91cf12f66f2e436fffc8f7` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLZapper<br>`0x376fbca3725cdcd6954ffa79cdfa70855a81f523` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLZapper<br>`0x396717cae3bca595437619dd3aae19ae4a76a982` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLZapper<br>`0x56e9699ba5201d8aa2f259e8b6f2fcadf91a054c` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazCLZapper<br>`0xfb043e1b7c04a7963adccb3d4618991732a13466` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazV2Vault<br>`0x3f4dab8820106187cb3a67743a34584c57d4cc37` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazV2Vault<br>`0x9a518983bff5868cdd44ab7ecc2c07a89af74c3c` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazV2Vault<br>`0xa66bd718c45aab17922cf13c620ee21b7d156705` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazV2Vault<br>`0xf2126141e65527a2581113cf4b9ff1343ccbaffa` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazV2Zapper<br>`0x4247bf63da44d4ebb4d1ddc77326b735fc8ca0da` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | source verified unclassified | TopazV2Zapper<br>`0xc6141aeab5ea77a339adea098c1045f4beffcfa7` | non_address_book | unknown | unknown | verified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x01345438fd359b50646b0ccbf33110e048fd4d5d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x02b07cb4b70d72eb92c09645db151c40e61b25d2` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0c792522562af15402efdd1742ce3b8333c58e1a` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0d69cc73e08e4fbe5bd5fab13526a08e5ed2a0be` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x100ddd2ec168401e338feb73d80ee7192e626d42` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x16fc7bc368f3d654ddaba8042ba94a03b7fe18df` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1cf59ecc638cdd38e8a6a2970c830eecc4ddad67` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1f49dfe755823312de0035fc875dfdea5c7b893f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x20bd0448f9e4420d495db3c957abcf4d18430334` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x216f62a9445336c5f0ea830170eb057eaa5583ff` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x22c02117ea7fd6179b81dc8bda96988288f7e99f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x308e10add76ed6ced9c0e1ac8d12958398a51d41` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x375cb608e9d9f5b72baf3b194f9083da7f0e5d9b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3b1486b13ea565d808a574479eff3a24e69db2d3` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x428cb55fd01e243e4e8204ca98aadaf38a90f6c5` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5a59edc5987ab37249357aa7157db809da138644` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6c8cd8db0e9748d481bae0468329acd4be0c833f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e86e51ca407600937bfc3239164f2d858090990` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x88c3fe70ca7ce23ac2e7b1ca234a163a9aa08f88` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x94d6be0c63ca646b21826fe59f5ac5d924c8dd96` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9657be2beaea3b26182b2eedf87e514396dfdbab` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa9df50fe928391a409add1def0e2bd90162ceff0` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xae096d2642b01822eb99183666b2b44194d1609b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb2ebdde9feccfaadc4c563f6aaebc9ed8b290035` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb2f75d3ab9488de0a2ebbadf57e5b242701e353e` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb8db217244a2aa3158800b220ce70e182711ccd8` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb9124ab6e9655a5b1e1a4bbf4014033ec611786b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc2b01257040477ee7670bd849aa41eccaa7d92cb` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca954eee26dffa3ab514692723f24739d7af4927` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd76ca9868535ea210a79845c07a749bc940374cd` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe23cf348de2bd20da7130ed92525d5dce780be0b` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |
| bsc | unverified unclassified | UnnamedContract<br>`0xffc1b9383dcb4a358c86ad91a2b5256c21b5afeb` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e8557b8c78e131a9fa893ae12e8c2818234aea` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Topaz-Dex-Security-Review.pdf](https://github.com/shieldify-security/audits-portfolio/blob/main/reports/Topaz-Dex-Security-Review.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14018] Topaz-Dex-Security-Review.pdf — matched: Scope table lists two files; additional contracts referenced in findings are included as they are part of the audited codebase.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Topaz-Dex-Security-Review.pdf | DynamicSwapFeeModule | own contract | DynamicSwapFeeModule (selected) `0x656cf5d2f1a70177e011e2c27deafbee4c7b0541` — deployed 2026-05-17 08:25:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Topaz-Dex-Security-Review.pdf | IDynamicFeeModule | unmatched — not counted | — | listed in scope table | no |
| Topaz-Dex-Security-Review.pdf | ICLPool | unmatched — not counted | — | referenced in findings as interface used in DynamicSwapFeeModule | no |
| Topaz-Dex-Security-Review.pdf | IMinter | unmatched — not counted | — | mentioned in finding I-01 | no |
| Topaz-Dex-Security-Review.pdf | Minter | own contract | Minter (selected) `0x606794d37991a426a189fd9fa8664d339a77f8ae` — deployed 2026-05-17 06:25:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Topaz-Dex-Security-Review.pdf | Pool | ambiguous — not counted | PoolFactory (proxy) (alternative) `0x65e6cd0ef5d3467030103cf3d433034e570b5784` — deployed 2026-05-17 06:24:59+03 — liveness: live (code_present_context)<br>Pool (alternative) `0xdc942d8e37cc20bcf9ad1fe0111ee6c5908f3678` — deployed 2026-05-17 06:24:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x7b1d8745079c85af80ff7a7ea7c2c4769eab5348` | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x73dc984d9490286e735548f61dfccec67af82ed9` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc2f777a2e9f54f195212a5a2d394399252958b97` | CLGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xed2ed418f104e18b1d11ea5c26236a1caa675839` | CLGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x18e68051d1b1fb44cb539ca4436f112d28577af7` | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa0462a52af4f8cbf7766efbba75355b30b6bcce2` | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3bad7f96cd1b51ce86e12c42541ac7d559a78582` | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbae5585afb875a45292470078aa4d4a261749084` | EpochGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x268d1c8a538ecf6628838c11d581e1eabd13d6a4` | FactoryRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe79eb7c4d06ff38e6483921de8e85a37ec7c731b` | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfc080d1ecd7c332022cebf942aeb62d5e1d4cb08` | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe4b23f13b24232c1e68ad0575191216152aa9480` | ManagedRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x47c3570b90e7234fe695ad5f1be69e21fe1a9ee2` | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf8c30c3c362941c23025f2ea30b066a73c982f63` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x65e6cd0ef5d3467030103cf3d433034e570b5784` | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbbcdcd30066cf25708f4a0ab9d9149d32ea4c401` | ProtocolGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7ccb89bb9bdef68688f39a2c22d249fd1d9759f1` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x85e15e7ad4f20d5ca3a1104b1c2cce72f5f683db` | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1e98c8226e7d452e1888e3d3d2f929346321c6c3` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9b63ca87919617d042a89663492db3c8686e0cae` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdf002282c1474c9592780618adda7eaa99998abd` | Topaz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9612305fe63dfb84da8f6d6261169f6b85026601` | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2f80f810a114223ac69e34e84e735cad515dad67` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe951ac65efe86682311ab0d8995e7a58750c5eb3` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4c303f7af7b8b05226440e4e12ff9a82f513716c` | VotingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 55 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 103 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 3 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
