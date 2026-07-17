# Agentic Audit Brief: Topaz

## Project Overview

- Project: Topaz (`topaz`)
- Website: [https://www.topazdex.com](https://www.topazdex.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.559Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: bsc
- Contract surface: 95 unique implementations (115 raw deployments)
- DeFi Llama TVL: $920,262.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 49 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 3 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 7 common project-authored base contract(s) (connectorbase, peripheryimmutablestate, peripheryvalidation). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 177; live-surface contracts included: 115 (65 live, 50 unknown).
- Excluded by liveness: 62 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/45 (4.4%)
- Deployed-live implementations: 45 of 95 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/45
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 95
- Raw deployments: 115
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
| unknown | Tier 2 | 2 | 4.4% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DynamicSwapFeeModule | unknown | bsc | n/a | [`0x656cf5d2f1a70177e011e2c27deafbee4c7b0541`](./contracts/bsc-56/0x656cf5d2f1a70177e011e2c27deafbee4c7b0541/) | ✅ Audited |
| Minter | operational_periphery | bsc | n/a | [`0x606794d37991a426a189fd9fa8664d339a77f8ae`](./contracts/bsc-56/0x606794d37991a426a189fd9fa8664d339a77f8ae/) | ✅ Audited |

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropDistributor | operational_periphery | bsc | n/a | [`0x7b1d8745079c85af80ff7a7ea7c2c4769eab5348`](./contracts/bsc-56/0x7b1d8745079c85af80ff7a7ea7c2c4769eab5348/) | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | bsc | n/a | [`0xef6724ad68fd2f8526765e08afa6627850c8a589`](./contracts/bsc-56/0xef6724ad68fd2f8526765e08afa6627850c8a589/) | ⚠️ Unaudited |
| BonusLock | unknown | bsc | n/a | 3 deployments: bsc [`0x2a1bf8dc45399c761bbd0a862f75cf725518974b`](./contracts/bsc-56/0x2a1bf8dc45399c761bbd0a862f75cf725518974b/); bsc `0x441b05ba4f466a572949032c6284be7dba65a545`; bsc `0xb1fbf57406ef303d29ee47b053ba71c21ef56c45` | ⚠️ Unaudited |
| CLFactory | registry | bsc | n/a | [`0x73dc984d9490286e735548f61dfccec67af82ed9`](./contracts/bsc-56/0x73dc984d9490286e735548f61dfccec67af82ed9/) | ⚠️ Unaudited |
| CLGauge | operational_periphery | bsc | n/a | [`0xc2f777a2e9f54f195212a5a2d394399252958b97`](./contracts/bsc-56/0xc2f777a2e9f54f195212a5a2d394399252958b97/) | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | bsc | n/a | [`0xed2ed418f104e18b1d11ea5c26236a1caa675839`](./contracts/bsc-56/0xed2ed418f104e18b1d11ea5c26236a1caa675839/) | ⚠️ Unaudited |
| CLPool | core_logic | bsc | n/a | [`0x18e68051d1b1fb44cb539ca4436f112d28577af7`](./contracts/bsc-56/0x18e68051d1b1fb44cb539ca4436f112d28577af7/) | ⚠️ Unaudited |
| ConnectorCl | unknown | bsc | n/a | [`0x28a42e419e2a2e36c200e63e71a9492f0068b43a`](./contracts/bsc-56/0x28a42e419e2a2e36c200e63e71a9492f0068b43a/) | ⚠️ Unaudited |
| ConnectorMulticall | periphery | bsc | n/a | 4 deployments: bsc [`0x1e54928661d4c919742e38ec4766c47ee1daeee0`](./contracts/bsc-56/0x1e54928661d4c919742e38ec4766c47ee1daeee0/); bsc `0x9a39f9bbffcaeb29882fcdc68d6efa2d381f813a`; bsc `0xcc33acdb256242c542ce83af1cefaa4895b56ec4`; bsc `0xfc4fab97adcd535741a4504ffff7b3160782746d` | ⚠️ Unaudited |
| ConnectorRegistry | registry | bsc | n/a | 2 deployments: bsc [`0x340c424ed1b8277d8e606490966a0fa04dd06c0e`](./contracts/bsc-56/0x340c424ed1b8277d8e606490966a0fa04dd06c0e/); bsc `0x9e9b9257e4df263a8aee9ed1ea5cc1b5930564d1` | ⚠️ Unaudited |
| ConnectorSwap | unknown | bsc | n/a | [`0x4b906700fe65338d548c67e300b1a608d62e242e`](./contracts/bsc-56/0x4b906700fe65338d548c67e300b1a608d62e242e/) | ⚠️ Unaudited |
| ConnectorToken | token | bsc | n/a | [`0xea8abb5bc208950cf33633cd81d36654a0ab355c`](./contracts/bsc-56/0xea8abb5bc208950cf33633cd81d36654a0ab355c/) | ⚠️ Unaudited |
| ConnectorV2 | unknown | bsc | n/a | [`0xffc140b19b1e14b94da2086641d1a602e04f9e74`](./contracts/bsc-56/0xffc140b19b1e14b94da2086641d1a602e04f9e74/) | ⚠️ Unaudited |
| ConnectorZapSlipstream | adapter | bsc | n/a | [`0x16f9d057c0f6c0ce9c4367e34c89248e27f53b37`](./contracts/bsc-56/0x16f9d057c0f6c0ce9c4367e34c89248e27f53b37/) | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | bsc | n/a | [`0xa0462a52af4f8cbf7766efbba75355b30b6bcce2`](./contracts/bsc-56/0xa0462a52af4f8cbf7766efbba75355b30b6bcce2/) | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | bsc | n/a | [`0x3bad7f96cd1b51ce86e12c42541ac7d559a78582`](./contracts/bsc-56/0x3bad7f96cd1b51ce86e12c42541ac7d559a78582/) | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | bsc | n/a | [`0xcb24e31896d7476efb7b76a366566cfbcf375033`](./contracts/bsc-56/0xcb24e31896d7476efb7b76a366566cfbcf375033/) | ⚠️ Unaudited |
| EpochGovernor | governance | bsc | n/a | [`0xbae5585afb875a45292470078aa4d4a261749084`](./contracts/bsc-56/0xbae5585afb875a45292470078aa4d4a261749084/) | ⚠️ Unaudited |
| FactoryRegistry | registry | bsc | n/a | [`0x268d1c8a538ecf6628838c11d581e1eabd13d6a4`](./contracts/bsc-56/0x268d1c8a538ecf6628838c11d581e1eabd13d6a4/) | ⚠️ Unaudited |
| Forwarder | unknown | bsc | n/a | [`0xe79eb7c4d06ff38e6483921de8e85a37ec7c731b`](./contracts/bsc-56/0xe79eb7c4d06ff38e6483921de8e85a37ec7c731b/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | bsc | n/a | [`0xfc080d1ecd7c332022cebf942aeb62d5e1d4cb08`](./contracts/bsc-56/0xfc080d1ecd7c332022cebf942aeb62d5e1d4cb08/) | ⚠️ Unaudited |
| ManagedRewardsFactory | registry | bsc | n/a | [`0xe4b23f13b24232c1e68ad0575191216152aa9480`](./contracts/bsc-56/0xe4b23f13b24232c1e68ad0575191216152aa9480/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | bsc | n/a | [`0x47c3570b90e7234fe695ad5f1be69e21fe1a9ee2`](./contracts/bsc-56/0x47c3570b90e7234fe695ad5f1be69e21fe1a9ee2/) | ⚠️ Unaudited |
| NFTDescriptor | token | bsc | n/a | 2 deployments: bsc [`0x50f9756f631266686b9a7ebdf55998db3da5ca0a`](./contracts/bsc-56/0x50f9756f631266686b9a7ebdf55998db3da5ca0a/); bsc `0xde9a5d34a9fe0177544e8a70c691c3f1f9c9c63a` | ⚠️ Unaudited |
| NFTSVG | token | bsc | n/a | 4 deployments: bsc [`0x08b7e6043b92c1613b900862e3d15ac4d598dec3`](./contracts/bsc-56/0x08b7e6043b92c1613b900862e3d15ac4d598dec3/); bsc `0x21c9257dfcdf04154d34df5a2204b9402ef31d9a`; bsc `0x2427c741f45e7e232e06fd2b60279a771d634fb0`; bsc `0x4b15103239fdd18ad0fe449897ee5c2b9b28fde2` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0xf8c30c3c362941c23025f2ea30b066a73c982f63`](./contracts/bsc-56/0xf8c30c3c362941c23025f2ea30b066a73c982f63/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | bsc | n/a | 6 deployments: bsc [`0x0dc0d5acf4256f5f5118e2a82c6d06868f2ab0dc`](./contracts/bsc-56/0x0dc0d5acf4256f5f5118e2a82c6d06868f2ab0dc/); bsc `0x239bd25e86e4a3b931b1c6cf7849c27ca9f0498a`; bsc `0x47baf65e578e6a706c1bf31862c2ba59dc91cc18`; bsc `0x81acc35240d19948a56b8b68bcc8706f90babab5`; bsc `0xba4c4f5ca809c21286ff1a872b3c0cfb57afe904`; bsc `0xd3dd0f34afe65ab3f64ccfd13e76d5a8dc8f787a` | ⚠️ Unaudited |
| PerlinNoise | unknown | bsc | n/a | [`0x1ee6021067b1763a98c8130689323279e160990a`](./contracts/bsc-56/0x1ee6021067b1763a98c8130689323279e160990a/) | ⚠️ Unaudited |
| PositionBurnHelper | periphery | bsc | n/a | 2 deployments: bsc [`0x2764db7bca0ccf98a1611f36879ebffd06ffc02b`](./contracts/bsc-56/0x2764db7bca0ccf98a1611f36879ebffd06ffc02b/); bsc `0x8ea90c6711bca4203c689bf0dd6f08e43377e3c5` | ⚠️ Unaudited |
| ProtocolGovernor | governance | bsc | n/a | [`0xbbcdcd30066cf25708f4a0ab9d9149d32ea4c401`](./contracts/bsc-56/0xbbcdcd30066cf25708f4a0ab9d9149d32ea4c401/) | ⚠️ Unaudited |
| QuoterV2 | periphery | bsc | n/a | [`0x7ccb89bb9bdef68688f39a2c22d249fd1d9759f1`](./contracts/bsc-56/0x7ccb89bb9bdef68688f39a2c22d249fd1d9759f1/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | bsc | n/a | [`0x85e15e7ad4f20d5ca3a1104b1c2cce72f5f683db`](./contracts/bsc-56/0x85e15e7ad4f20d5ca3a1104b1c2cce72f5f683db/) | ⚠️ Unaudited |
| Router | adapter | bsc | n/a | [`0x1e98c8226e7d452e1888e3d3d2f929346321c6c3`](./contracts/bsc-56/0x1e98c8226e7d452e1888e3d3d2f929346321c6c3/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | [`0x9b63ca87919617d042a89663492db3c8686e0cae`](./contracts/bsc-56/0x9b63ca87919617d042a89663492db3c8686e0cae/) | ⚠️ Unaudited |
| Topaz | unknown | bsc | n/a | [`0xdf002282c1474c9592780618adda7eaa99998abd`](./contracts/bsc-56/0xdf002282c1474c9592780618adda7eaa99998abd/) | ⚠️ Unaudited |
| TopazAccount | core_logic | bsc | n/a | 3 deployments: bsc [`0x1f0d7e561c04b9925a7bf35d4575759be19e46c1`](./contracts/bsc-56/0x1f0d7e561c04b9925a7bf35d4575759be19e46c1/); bsc `0x72d5c6ba3cc1660892fe897f1737282860b958a2`; bsc `0xe31a13db4bac989d3b015d9f12f8e191cc977898` | ⚠️ Unaudited |
| TopazAccountFactory | registry | bsc | n/a | 3 deployments: bsc [`0x5a4cbfc331744b05dd814d2b9c9a56e5a4e9b812`](./contracts/bsc-56/0x5a4cbfc331744b05dd814d2b9c9a56e5a4e9b812/); bsc `0x6b7e08c574839ba26a7ef04cb89eae51d3f45351`; bsc `0xda1d895cd26ca4018c55f5bfd886de759717e5d1` | ⚠️ Unaudited |
| TopazSlipstreamStateMulticall | periphery | bsc | n/a | [`0xa1941194be7c2607ffbc27de23b1aca357c45e3d`](./contracts/bsc-56/0xa1941194be7c2607ffbc27de23b1aca357c45e3d/) | ⚠️ Unaudited |
| Trig | unknown | bsc | n/a | [`0x8cabfd11dd628a12ce8dfdc7dfd3e77badda849a`](./contracts/bsc-56/0x8cabfd11dd628a12ce8dfdc7dfd3e77badda849a/) | ⚠️ Unaudited |
| VeArtProxy | unknown | bsc | n/a | [`0x9612305fe63dfb84da8f6d6261169f6b85026601`](./contracts/bsc-56/0x9612305fe63dfb84da8f6d6261169f6b85026601/) | ⚠️ Unaudited |
| Voter | unknown | bsc | n/a | [`0x2f80f810a114223ac69e34e84e735cad515dad67`](./contracts/bsc-56/0x2f80f810a114223ac69e34e84e735cad515dad67/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | bsc | n/a | [`0xe951ac65efe86682311ab0d8995e7a58750c5eb3`](./contracts/bsc-56/0xe951ac65efe86682311ab0d8995e7a58750c5eb3/) | ⚠️ Unaudited |
| VotingRewardsFactory | registry | bsc | n/a | [`0x4c303f7af7b8b05226440e4e12ff9a82f513716c`](./contracts/bsc-56/0x4c303f7af7b8b05226440e4e12ff9a82f513716c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x023df44e8a35d5af187fcce1239ad9cf23ff8529` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09bf071bf0df5cb2b45c8e36bb6887e6fe487fcf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bfb20e6ead5ed63235be12f93379cafa7d29ef1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cca93970a7bddfb3dc4f16d1ace286c8a0b1ba8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0db0edc3a4060f988a729c77b9fa80e3dd74b5e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15ee6600c7e719de22098922acee814e5c9bd404` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16f0a08bfc9a4aed64dd93f7698d142e20261809` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x253611aff17a2d1823a4c51e94b96ed41314f552` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b782bb8eeaa61ac0d87d3314723955d0ac3357e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d3c89f63188254518189d6b1c654ffbc90594e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f00a3500dda401e534eea3fd5c04c53ccccaec8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f2f33efd052a729ef3ea2ad491a698e10b9e1ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x432d7952e597bd6856a75d824fa95a9352f5dcc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43b132fb0e176bda3c9e027a0dcbb6718a9493eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45c303181f6c3328c2cc5a72fe256a3d9dda3c67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e0fc8a729edf16434f00c4f84beb990ec4d0e5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x543ecf2a09a765ab50a4dc7b80cbaa7c46209acd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5722d4796dc46369af74245c1d63695182591023` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x583bb40c96c601e92f1577ca4af964d77982e59e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60646fee7e41502d9f61b87d66836b9859d58e04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61731a8424ec7a8a3f66c48fe42e15d797eb41ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x672ee3f6cd3b6471ab53d92fbb72039394702a91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x694064766ceaa529873787634aa8abe1d2c5ba4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b8fa600801d1397ef2907f7542afd3fc2b51315` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e08ffb3897da2207a2fc43bdb7c5b73f2fa2546` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74ce82d6023af64adc879ee26a41c1482c7a9047` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78e5603782d40e2a967b842991463bd48343fb30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d07da3c5915c084659872b20d0f2890db427eff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e26ab5cb570c3cf744a5f5d153b14327be9d17c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e9d3efd7224ee1f93e5c30f3866eacb86885279` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94ad7699647f3a15dc8fd4f698a71487337de0ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a74e69cfe8e7ab56d81505f42a600622dafa8e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0e3b8e6a3a6de302400dc4f206ff4bb6c65d062` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa37c7f348bbc2b7202ce0c1d68647d46c3f9f0e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa87370a22a30004cf7bf13af5b327cfe612daadc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb09de1c0b3a6d76b0c028db0f0d6c64ca9296679` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb291ad8560063b6da3c6557868135aabcdfbc208` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2f75d3ab9488de0a2ebbadf57e5b242701e353e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb795f31e3480d5d748d4db00aa471f563982a094` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbeec11bc477dfffc4fc5a7c65db0f3f60a5f72f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5d870137d784559e0b81d285a423830f2e719d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9e68743bbc1635c0daa876246e4ab4da1327a5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8c0caf77e5827d1396a05a11ac1983e45502a80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd011de6f34cce6e2d9348c2c21a9f49e8cb3836` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe061909e3378920477f7123cac0242a16f50840d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4b157ef84999c373fb5ddedfcfb184bc21aa88c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8b1b7283e92235b040f560875252341aad447c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb98ee2ae23d7078db836a58ef0c203621458e59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfcde6611b6865aaa07102d9c6ec77ef781cbd8d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd097d96cf0b7dbf83d233506db6fe79af1ae897` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Topaz-Dex-Security-Review.pdf](https://github.com/shieldify-security/audits-portfolio/blob/main/reports/Topaz-Dex-Security-Review.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x7b1d8745079c85af80ff7a7ea7c2c4769eab5348`](./contracts/bsc-56/0x7b1d8745079c85af80ff7a7ea7c2c4769eab5348/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xef6724ad68fd2f8526765e08afa6627850c8a589`](./contracts/bsc-56/0xef6724ad68fd2f8526765e08afa6627850c8a589/) | BalanceLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a1bf8dc45399c761bbd0a862f75cf725518974b`](./contracts/bsc-56/0x2a1bf8dc45399c761bbd0a862f75cf725518974b/) | BonusLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73dc984d9490286e735548f61dfccec67af82ed9`](./contracts/bsc-56/0x73dc984d9490286e735548f61dfccec67af82ed9/) | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc2f777a2e9f54f195212a5a2d394399252958b97`](./contracts/bsc-56/0xc2f777a2e9f54f195212a5a2d394399252958b97/) | CLGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xed2ed418f104e18b1d11ea5c26236a1caa675839`](./contracts/bsc-56/0xed2ed418f104e18b1d11ea5c26236a1caa675839/) | CLGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18e68051d1b1fb44cb539ca4436f112d28577af7`](./contracts/bsc-56/0x18e68051d1b1fb44cb539ca4436f112d28577af7/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x28a42e419e2a2e36c200e63e71a9492f0068b43a`](./contracts/bsc-56/0x28a42e419e2a2e36c200e63e71a9492f0068b43a/) | ConnectorCl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e54928661d4c919742e38ec4766c47ee1daeee0`](./contracts/bsc-56/0x1e54928661d4c919742e38ec4766c47ee1daeee0/) | ConnectorMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x340c424ed1b8277d8e606490966a0fa04dd06c0e`](./contracts/bsc-56/0x340c424ed1b8277d8e606490966a0fa04dd06c0e/) | ConnectorRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4b906700fe65338d548c67e300b1a608d62e242e`](./contracts/bsc-56/0x4b906700fe65338d548c67e300b1a608d62e242e/) | ConnectorSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xea8abb5bc208950cf33633cd81d36654a0ab355c`](./contracts/bsc-56/0xea8abb5bc208950cf33633cd81d36654a0ab355c/) | ConnectorToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xffc140b19b1e14b94da2086641d1a602e04f9e74`](./contracts/bsc-56/0xffc140b19b1e14b94da2086641d1a602e04f9e74/) | ConnectorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x16f9d057c0f6c0ce9c4367e34c89248e27f53b37`](./contracts/bsc-56/0x16f9d057c0f6c0ce9c4367e34c89248e27f53b37/) | ConnectorZapSlipstream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa0462a52af4f8cbf7766efbba75355b30b6bcce2`](./contracts/bsc-56/0xa0462a52af4f8cbf7766efbba75355b30b6bcce2/) | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3bad7f96cd1b51ce86e12c42541ac7d559a78582`](./contracts/bsc-56/0x3bad7f96cd1b51ce86e12c42541ac7d559a78582/) | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb24e31896d7476efb7b76a366566cfbcf375033`](./contracts/bsc-56/0xcb24e31896d7476efb7b76a366566cfbcf375033/) | DelegationLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbae5585afb875a45292470078aa4d4a261749084`](./contracts/bsc-56/0xbae5585afb875a45292470078aa4d4a261749084/) | EpochGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x268d1c8a538ecf6628838c11d581e1eabd13d6a4`](./contracts/bsc-56/0x268d1c8a538ecf6628838c11d581e1eabd13d6a4/) | FactoryRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe79eb7c4d06ff38e6483921de8e85a37ec7c731b`](./contracts/bsc-56/0xe79eb7c4d06ff38e6483921de8e85a37ec7c731b/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfc080d1ecd7c332022cebf942aeb62d5e1d4cb08`](./contracts/bsc-56/0xfc080d1ecd7c332022cebf942aeb62d5e1d4cb08/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe4b23f13b24232c1e68ad0575191216152aa9480`](./contracts/bsc-56/0xe4b23f13b24232c1e68ad0575191216152aa9480/) | ManagedRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x47c3570b90e7234fe695ad5f1be69e21fe1a9ee2`](./contracts/bsc-56/0x47c3570b90e7234fe695ad5f1be69e21fe1a9ee2/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x50f9756f631266686b9a7ebdf55998db3da5ca0a`](./contracts/bsc-56/0x50f9756f631266686b9a7ebdf55998db3da5ca0a/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08b7e6043b92c1613b900862e3d15ac4d598dec3`](./contracts/bsc-56/0x08b7e6043b92c1613b900862e3d15ac4d598dec3/) | NFTSVG | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf8c30c3c362941c23025f2ea30b066a73c982f63`](./contracts/bsc-56/0xf8c30c3c362941c23025f2ea30b066a73c982f63/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0dc0d5acf4256f5f5118e2a82c6d06868f2ab0dc`](./contracts/bsc-56/0x0dc0d5acf4256f5f5118e2a82c6d06868f2ab0dc/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ee6021067b1763a98c8130689323279e160990a`](./contracts/bsc-56/0x1ee6021067b1763a98c8130689323279e160990a/) | PerlinNoise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2764db7bca0ccf98a1611f36879ebffd06ffc02b`](./contracts/bsc-56/0x2764db7bca0ccf98a1611f36879ebffd06ffc02b/) | PositionBurnHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbbcdcd30066cf25708f4a0ab9d9149d32ea4c401`](./contracts/bsc-56/0xbbcdcd30066cf25708f4a0ab9d9149d32ea4c401/) | ProtocolGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7ccb89bb9bdef68688f39a2c22d249fd1d9759f1`](./contracts/bsc-56/0x7ccb89bb9bdef68688f39a2c22d249fd1d9759f1/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x85e15e7ad4f20d5ca3a1104b1c2cce72f5f683db`](./contracts/bsc-56/0x85e15e7ad4f20d5ca3a1104b1c2cce72f5f683db/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e98c8226e7d452e1888e3d3d2f929346321c6c3`](./contracts/bsc-56/0x1e98c8226e7d452e1888e3d3d2f929346321c6c3/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9b63ca87919617d042a89663492db3c8686e0cae`](./contracts/bsc-56/0x9b63ca87919617d042a89663492db3c8686e0cae/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdf002282c1474c9592780618adda7eaa99998abd`](./contracts/bsc-56/0xdf002282c1474c9592780618adda7eaa99998abd/) | Topaz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f0d7e561c04b9925a7bf35d4575759be19e46c1`](./contracts/bsc-56/0x1f0d7e561c04b9925a7bf35d4575759be19e46c1/) | TopazAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5a4cbfc331744b05dd814d2b9c9a56e5a4e9b812`](./contracts/bsc-56/0x5a4cbfc331744b05dd814d2b9c9a56e5a4e9b812/) | TopazAccountFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa1941194be7c2607ffbc27de23b1aca357c45e3d`](./contracts/bsc-56/0xa1941194be7c2607ffbc27de23b1aca357c45e3d/) | TopazSlipstreamStateMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8cabfd11dd628a12ce8dfdc7dfd3e77badda849a`](./contracts/bsc-56/0x8cabfd11dd628a12ce8dfdc7dfd3e77badda849a/) | Trig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9612305fe63dfb84da8f6d6261169f6b85026601`](./contracts/bsc-56/0x9612305fe63dfb84da8f6d6261169f6b85026601/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f80f810a114223ac69e34e84e735cad515dad67`](./contracts/bsc-56/0x2f80f810a114223ac69e34e84e735cad515dad67/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe951ac65efe86682311ab0d8995e7a58750c5eb3`](./contracts/bsc-56/0xe951ac65efe86682311ab0d8995e7a58750c5eb3/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4c303f7af7b8b05226440e4e12ff9a82f513716c`](./contracts/bsc-56/0x4c303f7af7b8b05226440e4e12ff9a82f513716c/) | VotingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
