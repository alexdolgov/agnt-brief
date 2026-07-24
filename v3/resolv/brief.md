# Agentic Audit Brief: Resolv

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Resolv (`resolv`)
- Website: [https://app.resolv.xyz](https://app.resolv.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, plasma, soneium
- Contract surface: 122 unique implementations (234 raw deployments)
- Coverage basis: 2/19 confirmed own live verified implementations (10.5%); conservative 10.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,707,596.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Resolv. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 24 contract row(s) across arbitrum, base, berachain, bsc, ethereum, hyperliquid, plasma, soneium. Structural roles: 14 core, 6 supporting, 4 infra. 20 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 24
- Structural roles: core (14), supporting (6), infra (4)
- Contract kinds: contract (24)
- Detected standards: pausable (11), ownable (9), accesscontrol (7), erc165 (7), erc1967proxy (6), erc20 (6), erc20permit (4)
- Frameworks: openzeppelin (24), openzeppelin-upgradeable (16), layerzero (2)
- Upgradeable-pattern rows: 20

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc31389794ffac23331e0d9f611b7953f90aa5fdc`, chain 9745)
- BlueprintByResolv (`0x2e1e87d0a10dd59c332b1c0e8a894b738df7059e`, chain 42161)
- ExternalRequestsManager (`0x10f4d4ead6bcd4de7849898403d88528e3dfc872`, chain 1)
- ResolvToken (`0x5ac0551f79d10f9f2a7ce74eeffad23336060b9a`, chain 1)
- RLP Soneium (`0x35533f54740f1f1aa4179e57ba37039dfa16868b`, chain 1868)
- SimpleOFT (`0x0da21d330f3f75d730a1b5f1535ca75061cabf61`, chain 56)
- SimpleOFT (`0x5943026e21e3936538620ba27e01525bba311255`, chain 56)
- SimpleToken (`0xef4c4bcbe105170810b6ef58a286d9ce97a1fabe`, chain 1)
- StUSR (`0xba1600735a039e2b3bf1d1d2f1a7f80f45973da7`, chain 1)
- TheCounter (`0xa27a69ae180e202fde5d38189a3f24fe24e55861`, chain 1)
- TheCounter (`0xc7ab90c2ea9271efb31f5fa2843eeb4b331eafa0`, chain 1)
- TransparentUpgradeableProxy (`0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055`, chain 1)
- TransparentUpgradeableProxy (`0x0a3d8466f5de586fa5f6de117301e2f90bcc5c48`, chain 999)
- TransparentUpgradeableProxy (`0x0ad339d66bf4aed5ce31c64bc37b3244b6394a77`, chain 999)
- TransparentUpgradeableProxy (`0x46c1c168ca597b9e5423aa7081a0dce782caeaab`, chain 999)
- TransparentUpgradeableProxy (`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`, chain 8453)
- TransparentUpgradeableProxy (`0xb67675158b412d53fe6b68946483ba920b135ba1`, chain 8453)
- TransparentUpgradeableProxy (`0xc31389794ffac23331e0d9f611b7953f90aa5fdc`, chain 8453)
- TransparentUpgradeableProxy (`0x2492d0006411af6c8bbb1c8afc1b0197350a79e9`, chain 42161)
- TransparentUpgradeableProxy (`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`, chain 42161)
- TransparentUpgradeableProxy (`0x66cfbd79257dc5217903a36293120282548e2254`, chain 42161)
- TransparentUpgradeableProxy (`0x2492d0006411af6c8bbb1c8afc1b0197350a79e9`, chain 80094)
- TransparentUpgradeableProxy (`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`, chain 80094)
- USR Soneium (`0xb1b385542b6e80f77b94393ba8342c3af699f15c`, chain 1868)
- UsrExternalRequestsManager (`0xac85ef29192487e0a109b7f9e40c267a9ea95f2e`, chain 1)
- wstUSR Soneium (`0x2a52b289ba68bbd02676640aa9f605700c9e5699`, chain 1868)

## Contract Surface Quality

- Logic-topography rows: 24; live-surface rows included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/19 (10.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 22 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 100 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 46
- Confirmed-live implementations: 22 of 122 unique; 100 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/88
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 122
- Raw deployments: 234
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 10.5% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 2 | 2.3% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StUSR | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391462 | 2 deployments: ethereum `0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4`; ethereum `0xba1600735a039e2b3bf1d1d2f1a7f80f45973da7` | ✅ Audited |
| WstUSR | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391460 | `0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055` | ✅ Audited |

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3TreasuryConnector | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x91eda28735ce089a8b5133476263c3fb8303c8ca` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x00f0efb3d9dbe7fe91fee44ae09dae5dfa65c382`; ethereum `0x05581918dad3f026169593863f7a52bbbe08ef5e`; ethereum `0x4014f1f654a454785a6a97b9125fecfa88868192`; ethereum `0x5effb9e0d6b472e48c542842b0306a1c12c9627c`; ethereum `0x601009229b0215e4fc90c10c8145e066ae03d5f9`; ethereum `0x62a897c3e81d809c7444bb63d7d51e1f2ebb6c3d`; ethereum `0x646772c691b2a84ca889f55253c560d38e3766e1`; ethereum `0x75c4b587ec408a4b5877f69f532221a0991d8e09`; ethereum `0x78281937b869baadeddda3d62fc4b6fc0a196b61`; ethereum `0x80c1b1ee029f05889e3a693fd8c5f76f9b9fe194`; ethereum `0x8f2db4c80ea10eda3de2096892ad11944a2b346e`; ethereum `0x9c7cf045f964b45ffc6aa0ffbffd7bb6d1b470a3`; ethereum `0x9e3aaba3b04264dd009437f48ebfd70713dd0667`; ethereum `0xa674a0fd742f37bd5077afc90d1e82485c91989c` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc`; ethereum `0x04580be599d6ec1ff77125b724014e1e959bf0d3`; ethereum `0x50cf7ff706aa1eae8e4dad135d6ab1d9aacec4f0`; ethereum `0x51864c574fe9d69eaba03b2cc3fa4d501978e74a`; ethereum `0x6a4a218d3cf2ecda6de219efd03eb6091b17432f`; ethereum `0x6f96e328a106f2575c84a0a3bebfd8ff77780b0c`; ethereum `0x897cfe55bceb601d5bcbdd34dbdcaee033d5dabf`; ethereum `0x8deccbee3ae42901080632ef7e837aca555dc511`; ethereum `0x909b2fb63536e22499ec81ef7ca1c66dbc62bfcc`; ethereum `0xaa01a179a61f34f3f880c593c775192edd457df7`; ethereum `0xab324a3b3602414c5fb43cbf68648e2a7507c5ca`; ethereum `0xab63ad97b09241412f52fa6bb68f6f9876587620`; ethereum `0xc707b7fd0dbd04f3fc92fd850435f5206551b6e7`; ethereum `0xdb4fedd5b8fd533f18034610c207712ce5dcfbfd`; ethereum `0xdd34acfafec81eec1477a1889d3c23e887f38a67`; ethereum `0xf35a655213a9eb84dc88f07c642f20aff198f829`; ethereum `0xf71608d5bbfae29308068189cbe9a69f01dc39fc`; ethereum `0xfac0a7282a36327f88bd0a64ff57d64012750bc3` | ⚠️ Unaudited |
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2d00499079d7145163a213ab1443056cce6b0f77`; ethereum `0x5943026e21e3936538620ba27e01525bba311255`; ethereum `0xfff16789c95d987c214bcba466e26dfc5dc01ad6` | ⚠️ Unaudited |
| Chronicle_Aggor_BTC_USD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4219aa1a99f3fe90c2acb97fcbc1204f6485b537` | ⚠️ Unaudited |
| Chronicle_Aggor_ETH_USD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2750e4cb635af1fccfb10c0ea54b5b5bfc2759b6`; ethereum `0x914b68485452c9cfed2a80e7727cc2875be71c8b` | ⚠️ Unaudited |
| Chronicle_CBBTC_USDC_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3131e6a68bfb42976ef574af042f67d322098747` | ⚠️ Unaudited |
| Chronicle_CBBTC_WBTC_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa18297eb53a5d90990e4514ca6244e7f25405674`; ethereum `0xb82345cd7be6db5069c7bc73ce7de44745ce9f21` | ⚠️ Unaudited |
| Chronicle_CBBTC_WETH_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5769e5353da4bafcbd19f20b1daab8860c2ee5f0` | ⚠️ Unaudited |
| Chronicle_EBTC_ETH_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5130cc30be369afeac34b61d60ddfdef84b7b63` | ⚠️ Unaudited |
| Chronicle_EBTCbadger_ETH_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb656424e16a8092592a74e6cd93cfd212204495` | ⚠️ Unaudited |
| Chronicle_SPK_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x552116e747a5b386b2e7eed4371002359cf2a574` | ⚠️ Unaudited |
| Chronicle_SRUSD_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x277f78f39b9dc73df3723bacd40f8658f8a1a633` | ⚠️ Unaudited |
| Chronicle_STETH_BTC_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x02238bb0085395ae52cd4755456891fc2fd5934d`; ethereum `0x7c16774cc8989a2ac08345b233df1b76265a041c` | ⚠️ Unaudited |
| Chronicle_STONE_ETH_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057f30e63a69175c69a4af5656b8c9ee647de3d0` | ⚠️ Unaudited |
| Chronicle_STONE_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13118422f890cb3a8ee4f0aac8ad4c4be913cb51` | ⚠️ Unaudited |
| Chronicle_SUSDS_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496470f4835186bf118545bd76889f123d608e84` | ⚠️ Unaudited |
| Chronicle_TEST_TEST_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576211f0585aedbd21b7b5d4babe57e112f9b4b3` | ⚠️ Unaudited |
| Chronicle_Tester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea387a7228b97796256cc6b109b361635195c5f` | ⚠️ Unaudited |
| Chronicle_USDS_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74661a9ea74fd04975c6ebc6b155abf8f885636c` | ⚠️ Unaudited |
| Chronicle_USR_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02d70dd1e495f1d9245d97bfd93259fe8c81ff4` | ⚠️ Unaudited |
| Chronicle_WSRUSD_USD_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b4cb11fac24707f3f0f89e441a4cdf6ef01d215`; ethereum `0x4ac943b192ce76ead66d1dc86557228338e6a6c0` | ⚠️ Unaudited |
| ChronicleGovernance_Accessor_TOSRegistry_1 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cafee661745319738f3e7b9a9340d7fe8a06549` | ⚠️ Unaudited |
| ChronicleSonic_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe262021d583b9c97244eb3e5cd3c31cb19f94447` | ⚠️ Unaudited |
| ConfigRegistry_VAO_1 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x064358f9b6428c51f80511d73afeb3a9e5cf0213` | ⚠️ Unaudited |
| DineroTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75ec066efb238cf211baa73b28db539541493c70`; ethereum `0x9971f773f96f1223c2befa4aa4562ea5ce0af812` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x04f84020fdf10d9ee64d1dcc2986edf2f556da11`; ethereum `0x2d27d9e1b74936d8e83c4ba118f09a4c4a897f62`; ethereum `0x31697852a68433dbcc2ff612c516d69e3d9bd08f`; ethereum `0x34ad75691e25a8e9b681aaa85dbeb7ef6561b42c`; ethereum `0x3c7db4d25deab7c89660512c5494dc9a3fc40f78`; ethereum `0x461790bdaf5aed3df6a88cb97dec42dd0efa73c0`; ethereum `0x75a0d3264a949c2c920d7f25df174af1faf73399`; ethereum `0x9b4a96210bc8d9d55b1908b465d8b0de68b7ff83`; ethereum `0xacfcf155a0de611414c510d43446c27a4ee6a758`; ethereum `0xb177857a1799aa5f7feb5799fdf12cbe8fdf78b1`; ethereum `0xc8cd82067ea907ea4af81b625d2bb653e21b5156`; ethereum `0xcbe87dc0cf9d807848a3e703b01a90b28ecfb2a7`; ethereum `0xe2ff7b6817cf71022b487703fd0ff35f374ddead`; ethereum `0xe471bc940aa9831a0aea21e6f40c1a1236eb4bb3`; ethereum `0xf0d9bb015cd7bfab877b7156146dc09bf461370d` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36c9b5e8f039381d1da79b94a206af8bc076c043`; ethereum `0xf47af3904dab5bb2ec2980a6100ec58a2f82ba80` | ⚠️ Unaudited |
| ExternalRequestsManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-391451 | `0x10f4d4ead6bcd4de7849898403d88528e3dfc872` | ⚠️ Unaudited |
| ExternalRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de327c23ed8f52f797d55b31abce98cb46c8ea9` | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x052b1cacbdea7b4d711c6f428a20618ef60fda1b`; ethereum `0x3ed5dc199d8bce1e1a9ed8520a215ae9af9bd45d`; ethereum `0x8ade71febab1337ce08062fe5208a611ee6e86e9`; ethereum `0xda6cef7f667d992a60eb823ab215493aa0c6b360` | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x03b1b16e7c016f881783674aa6b24fc21d70d29f`; ethereum `0xb26fdff7bdfcbcace0b6e0a8ceedcd0a72fc2ac5` | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3503b2a4692f62dd2c5d4c0a6546fb50ba579acf`; ethereum `0x6b12a8f73522dfc634f95ebc4cf819942e0942b4`; ethereum `0xca89dd653ea2b2130d7918e08bff229e44c9123d` | ⚠️ Unaudited |
| HeartbeatRequester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4822d77a2d328115c4edebe1c82f313b28f8c315` | ⚠️ Unaudited |
| HeyMintERC721AReference | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391467 | `0x2e1e87d0a10dd59c332b1c0e8a894b738df7059e` | ⚠️ Unaudited |
| Kisser_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x371a53bb4203ad5d7e60e220bac1876ff3ddda5b` | ⚠️ Unaudited |
| LidoTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7` | ⚠️ Unaudited |
| MEVRecover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6541524a3c54eee2c5e4c9150d5e4ae50a390033`; ethereum `0x96a96218331fee6b3c844433135b75c64cceeede` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba610d8c8c93580c19fb8800fc406227de8df947` | ⚠️ Unaudited |
| ResolvStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2d1e12db390d5f6046102eee25dbf2cfd827e6` | ⚠️ Unaudited |
| ResolvStakingCheckpoints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253c6e08db15e2912cf3afe5a89f2a7a4d8f2784` | ⚠️ Unaudited |
| ResolvStakingHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948aded191e90b94fcb94e0e2aa6775786f17970` | ⚠️ Unaudited |
| ResolvStakingSilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502f9f85770437d102b767d6e311a4560ec88d4f` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df`; ethereum `0xeef36320ee5d9f258e22ffc93df8619ec04acdd3` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391463 | 2 deployments: ethereum `0xd1062547981471b821755c13cafa0f13d099705a`; ethereum `0xfe4bce4b3949c35fb17691d8b03c3cadbe2e5e23` | ⚠️ Unaudited |
| ResolvToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391461 | 2 deployments: ethereum `0x259338656198ec7a76c729514d3cb45dfbf768a1`; ethereum `0x5ac0551f79d10f9f2a7ce74eeffad23336060b9a` | ⚠️ Unaudited |
| ResolvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f7a0419cef5db31b847cd149ea45fb13d654b00`; ethereum `0xea279d778ccac027ec71b58916653902053057e5` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a`; ethereum `0x9ace2068dcd9491d3e5a23551b6877658e1b4cf9`; ethereum `0x9f805fc8679e5f81a0683c3203ad48417efdad12`; ethereum `0xbe23bb6d817c08e7ec4cd0adb0e23156189c1ba9` | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb`; ethereum `0xadb2c15fde49d1a4294740acb650de94184e66b2` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c`; ethereum `0x31319866778a5223633bd745780bb6d59406371e`; ethereum `0xaa33e5ecae01779b26cd9dbd3c62e34c29b2d565` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1`; ethereum `0xae2364579d6cb4bbd6695846c1d595ca9af3574d` | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x093285c34515c01a55e15a25812bcf87e7ab0dc6`; ethereum `0x2d748a6dd7a0dc546f092f12b0d0285cbc82a2c0`; ethereum `0x40b988e4ee43351c679291b868fa35dc4caa0580` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 1 | bsc | unit-391468 | 2 deployments: bsc `0x0da21d330f3f75d730a1b5f1535ca75061cabf61`; bsc `0xda6cef7f667d992a60eb823ab215493aa0c6b360` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 3 | bsc | unit-391469 (3 proxies) | 4 deployments: bsc `0x2492d0006411af6c8bbb1c8afc1b0197350a79e9`; bsc `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`; bsc `0x4254813524695def4163a169e901f3d7a1a55429`; bsc `0x5943026e21e3936538620ba27e01525bba311255` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 3 | hyperliquid | unit-391474 (3 proxies) | 3 deployments: hyperliquid `0x0a3d8466f5de586fa5f6de117301e2f90bcc5c48`; hyperliquid `0x0ad339d66bf4aed5ce31c64bc37b3244b6394a77`; hyperliquid `0x46c1c168ca597b9e5423aa7081a0dce782caeaab` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 2 | base | unit-391471 (2 proxies) | 2 deployments: base `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`; base `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 1 | base | unit-391472 | `0xb67675158b412d53fe6b68946483ba920b135ba1` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-391465 (2 proxies) | 2 deployments: arbitrum `0x2492d0006411af6c8bbb1c8afc1b0197350a79e9`; arbitrum `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391466 | `0x66cfbd79257dc5217903a36293120282548e2254` | ⚠️ Unaudited |
| SimpleOFT | unknown | project_anchor | own_supporting | 2 | berachain | unit-391470 (2 proxies) | 2 deployments: berachain `0x2492d0006411af6c8bbb1c8afc1b0197350a79e9`; berachain `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x14219845c6b7984aa5ec0a39754dcc327169de32`; ethereum `0xab17c1fe647c37ceb9b96d1c27dd189bf8451978` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf`; ethereum `0x5daa068b9592781ad49235838fdd38e2d162084b` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x234c908e749961d0329a0ed5916d55a99d1ad06c`; ethereum `0x2718729fb710cf17fcc9293214c575c58526b654` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28`; ethereum `0xd2ee2776f34ef4e7325745b06e6d464b08d4be0e` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x35533f54740f1f1aa4179e57ba37039dfa16868b`; ethereum `0x46c1c168ca597b9e5423aa7081a0dce782caeaab`; ethereum `0xb1b385542b6e80f77b94393ba8342c3af699f15c` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`; ethereum `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ⚠️ Unaudited |
| SimpleToken | unknown | project_anchor | own_supporting | 2 | ethereum | unit-391464 (2 proxies) | 3 deployments: ethereum `0x4956b52ae2ff65d74ca2d61207523288e4528f96`; ethereum `0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110`; ethereum `0xef4c4bcbe105170810b6ef58a286d9ce97a1fabe` | ⚠️ Unaudited |
| StakedTokenDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x212e81359f24fb871638c366f6df1c42fa789037`; ethereum `0x53c5b703465234f97c5a7b17b602c6224a08031e`; ethereum `0x6ac1f64931e0fd9582a095090fab2e838904dbaf`; ethereum `0xbac23ec6ccab8631f500ecb6c01ea0ee0b72ac69`; ethereum `0xbb2213e9a4515174d433cd75cc2695043c85e32c`; ethereum `0xce9d50db432e0702bcad5a4a9122f1f8a77ad8f9`; ethereum `0xfc7d46929bc3dc2ca9533a6fc5e9896d401604a4` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0da21d330f3f75d730a1b5f1535ca75061cabf61`; ethereum `0x56abf7334e2b4c2ec925a59cb2994a1a7632ecc2` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcf3e9da6190997ca7b1f46a2568caa29575678bd`; ethereum `0xf8391a4c2e964c7b175d4027cb384ae73784c46b` | ⚠️ Unaudited |
| TheCounter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391454 | `0xa27a69ae180e202fde5d38189a3f24fe24e55861` | ⚠️ Unaudited |
| TheCounter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391456 | `0xc7ab90c2ea9271efb31f5fa2843eeb4b331eafa0` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x290d9544669c9c7a64f6899a0a3b28d563f6ebee`; ethereum `0x4f0b08294c0700bd751c316a5a70db1e6e78aa18`; bsc `0xc31389794ffac23331e0d9f611b7953f90aa5fdc`; plasma `0x5943026e21e3936538620ba27e01525bba311255` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ade71febab1337ce08062fe5208a611ee6e86e9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 3 | plasma | unit-391473 (3 proxies) | 4 deployments: plasma `0x2a52b289ba68bbd02676640aa9f605700c9e5699`; plasma `0x35533f54740f1f1aa4179e57ba37039dfa16868b`; plasma `0xb1b385542b6e80f77b94393ba8342c3af699f15c`; plasma `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xacb7027f271b03b502d65feba617a0d817d62b8e`; ethereum `0xc657b23d01907e3af6f8678d47467b3865428691` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6`; ethereum `0xdce79568cc5a8f7598fd68c97475c4b0e56c76a8` | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-391455 | `0xac85ef29192487e0a109b7f9e40c267a9ea95f2e` | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8a93414f88f597922a9829df5f7c94b81bc46f64`; ethereum `0xf9c7c25fe58aaa494ee7ff1f6cf0b70d7c7ce88c` | ⚠️ Unaudited |
| UsrPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f45180d6ffd0435d8dd695fd01320e6999c261c`; ethereum `0xc16b2a7a773c23e3e9d3325c7b173ef24fc2785d` | ⚠️ Unaudited |
| UsrRedemptionExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x60a7b7915980ed34fde6e239618fadcf67897c37`; ethereum `0x7078c8b3687e4b2120e0a74e302a06dc51d52489`; ethereum `0xb69b2ea98f0fcef104b5cde7d9236601d8c96be6` | ⚠️ Unaudited |
| VerifierECDSA_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71186cf45873aecb93717a559880129a0cf02717` | ⚠️ Unaudited |
| VerifierECDSAWatOnboarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb930edc5f56bae6dd5ea68f721dc0ebb0d2d21f2` | ⚠️ Unaudited |
| VRFV2PlusWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02aae1a04f9828517b3007f83f6181900cad910c` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ed5485d079d7f0cfa8e395499b3c01a6c359cc0` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x878943125019b86aeb0e97f36fb4f1dc5c43dd34`; ethereum `0x8b480bfc04492229c631686f94dc50b7bcc44ee6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RLP Soneium | unknown | project_anchor | own_supporting | 0 | soneium | unit-391458 | `0x35533f54740f1f1aa4179e57ba37039dfa16868b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ecc1df9c2050ed610d6dca4d81032d4506d7cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30abc3a3df340b16a1a9f42423c993c3f9b90fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32dadd2760a1c5b3604cd9f68b4a6797b37cdf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4386282a9a9a3d5dfedcf1a89ac94632b0a56d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65dbc3758b79c11c2b352f4895a60cb4936dd1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x920b729ce9ced60f1e19c744d80e68c3b8ffe881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93accff0590797f2c67edcbadfb2c98920bd0704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96920bba8c90af75595c875b890a3ab768866113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2c3e0bce361067fd8d55098eaed63d31bc9429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc8a6c17787a201be8f54caa5db56f780eef8bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7347c50c7ca409604ca41373ba6ba4c1f350479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd777040377cedebe69eca1a3d74ce607c303a923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84f43f886e66810c2c84d794494f86dbfa3a488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd44988e31e8cd2c669fa87c11ae72478fb04856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2492d0006411af6c8bbb1c8afc1b0197350a79e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5943026e21e3936538620ba27e01525bba311255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6ca43d7570201a7d7107edb33f824935959a374a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2492d0006411af6c8bbb1c8afc1b0197350a79e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66cfbd79257dc5217903a36293120282548e2254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf3e9da6190997ca7b1f46a2568caa29575678bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ce3a3fcf03a98549833a7a4274ca14877320331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5943026e21e3936538620ba27e01525bba311255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5dd087fab26ca11980b9249f734bf89dafad5577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81056482e80fa1456c6e7a50e1e806f659f661a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda3beb74de2adda364a53291db9751f67e7fc90e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf79fcfcb25f76d1e08093e13ca3492657ef323dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5943026e21e3936538620ba27e01525bba311255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x616be5e0ef9e5cedf8e944e85e3f33431ef4e272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcc601605dc5011616934b6fdac8a14d51b791a94` | ❓ Unverified |
| USR Soneium | unknown | project_anchor | own_supporting | 0 | soneium | unit-391459 | `0xb1b385542b6e80f77b94393ba8342c3af699f15c` | ❓ Unverified |
| wstUSR Soneium | unknown | project_anchor | own_supporting | 0 | soneium | unit-391457 | `0x2a52b289ba68bbd02676640aa9f605700c9e5699` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 158
- Live contracts: 19
- Unknown liveness contracts: 139
- Source-verified contracts: 135
- Currently scope-matched contracts retained as-is: 1
- Classification counts: currently scope matched=1, candidate review=34, contamination review=7, source verified unclassified=93, unverified unclassified=23

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | TransparentUpgradeableProxy<br>`0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | ResolvStaking<br>`0x1d2d1e12db390d5f6046102eee25dbf2cfd827e6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9612fa0b15379630245ab3d10452e2f0c50d8976` |
| candidate review | ResolvStakingCheckpoints<br>`0x253c6e08db15e2912cf3afe5a89f2a7a4d8f2784` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9612fa0b15379630245ab3d10452e2f0c50d8976` |
| candidate review | ResolvStakingV2<br>`0xd1062547981471b821755c13cafa0f13d099705a` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x093285c34515c01a55e15a25812bcf87e7ab0dc6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x0da21d330f3f75d730a1b5f1535ca75061cabf61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x234c908e749961d0329a0ed5916d55a99d1ad06c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x259338656198ec7a76c729514d3cb45dfbf768a1` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x9612fa0b15379630245ab3d10452e2f0c50d8976` |
| candidate review | TransparentUpgradeableProxy<br>`0x2d748a6dd7a0dc546f092f12b0d0285cbc82a2c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x46c1c168ca597b9e5423aa7081a0dce782caeaab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x4956b52ae2ff65d74ca2d61207523288e4528f96` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x75ec066efb238cf211baa73b28db539541493c70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x7f45180d6ffd0435d8dd695fd01320e6999c261c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x7f7a0419cef5db31b847cd149ea45fb13d654b00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9612fa0b15379630245ab3d10452e2f0c50d8976` |
| candidate review | TransparentUpgradeableProxy<br>`0x8b480bfc04492229c631686f94dc50b7bcc44ee6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xab17c1fe647c37ceb9b96d1c27dd189bf8451978` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xacb7027f271b03b502d65feba617a0d817d62b8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xadb2c15fde49d1a4294740acb650de94184e66b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xae2364579d6cb4bbd6695846c1d595ca9af3574d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xb1b385542b6e80f77b94393ba8342c3af699f15c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xd2ee2776f34ef4e7325745b06e6d464b08d4be0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xf8391a4c2e964c7b175d4027cb384ae73784c46b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xf9c7c25fe58aaa494ee7ff1f6cf0b70d7c7ce88c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xfe4bce4b3949c35fb17691d8b03c3cadbe2e5e23` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x9612fa0b15379630245ab3d10452e2f0c50d8976` |
| candidate review | TransparentUpgradeableProxy<br>`0x2492d0006411af6c8bbb1c8afc1b0197350a79e9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x4254813524695def4163a169e901f3d7a1a55429` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xda6cef7f667d992a60eb823ab215493aa0c6b360` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x2a52b289ba68bbd02676640aa9f605700c9e5699` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0x35533f54740f1f1aa4179e57ba37039dfa16868b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| candidate review | TransparentUpgradeableProxy<br>`0xb1b385542b6e80f77b94393ba8342c3af699f15c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| contamination review | ChronicleSonic_1<br>`0xe262021d583b9c97244eb3e5cd3c31cb19f94447` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| contamination review | EACAggregatorProxy<br>`0x04f84020fdf10d9ee64d1dcc2986edf2f556da11` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| contamination review | HeartbeatRequester<br>`0x4822d77a2d328115c4edebe1c82f313b28f8c315` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| contamination review | MEVRecover<br>`0x6541524a3c54eee2c5e4c9150d5e4ae50a390033` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| contamination review | ResolvStakingHelpers<br>`0x948aded191e90b94fcb94e0e2aa6775786f17970` | non_address_book | unknown | unknown | verified | n/a | `0x9612fa0b15379630245ab3d10452e2f0c50d8976` |
| contamination review | VerifierECDSA_1<br>`0x71186cf45873aecb93717a559880129a0cf02717` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| contamination review | VerifierECDSAWatOnboarder<br>`0xb930edc5f56bae6dd5ea68f721dc0ebb0d2d21f2` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x00f0efb3d9dbe7fe91fee44ae09dae5dfa65c382` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x05581918dad3f026169593863f7a52bbbe08ef5e` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x4014f1f654a454785a6a97b9125fecfa88868192` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x5effb9e0d6b472e48c542842b0306a1c12c9627c` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x601009229b0215e4fc90c10c8145e066ae03d5f9` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x62a897c3e81d809c7444bb63d7d51e1f2ebb6c3d` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x646772c691b2a84ca889f55253c560d38e3766e1` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x75c4b587ec408a4b5877f69f532221a0991d8e09` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x8f2db4c80ea10eda3de2096892ad11944a2b346e` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x9c7cf045f964b45ffc6aa0ffbffd7bb6d1b470a3` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0x9e3aaba3b04264dd009437f48ebfd70713dd0667` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOCR2Aggregator<br>`0xa674a0fd742f37bd5077afc90d1e82485c91989c` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0xaa01a179a61f34f3f880c593c775192edd457df7` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0xab324a3b3602414c5fb43cbf68648e2a7507c5ca` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0xdb4fedd5b8fd533f18034610c207712ce5dcfbfd` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0xf71608d5bbfae29308068189cbe9a69f01dc39fc` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | AddressesWhitelist<br>`0x2d00499079d7145163a213ab1443056cce6b0f77` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | AddressesWhitelist<br>`0x5943026e21e3936538620ba27e01525bba311255` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | AddressesWhitelist<br>`0xfff16789c95d987c214bcba466e26dfc5dc01ad6` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | Chronicle_Aggor_BTC_USD<br>`0x4219aa1a99f3fe90c2acb97fcbc1204f6485b537` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | Chronicle_Aggor_ETH_USD<br>`0x2750e4cb635af1fccfb10c0ea54b5b5bfc2759b6` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | Chronicle_Aggor_ETH_USD<br>`0x914b68485452c9cfed2a80e7727cc2875be71c8b` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | Chronicle_CBBTC_WBTC_1<br>`0xa18297eb53a5d90990e4514ca6244e7f25405674` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | Chronicle_CBBTC_WBTC_1<br>`0xb82345cd7be6db5069c7bc73ce7de44745ce9f21` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | Chronicle_CBBTC_WETH_1<br>`0x5769e5353da4bafcbd19f20b1daab8860c2ee5f0` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | Chronicle_EBTC_ETH_1<br>`0xb5130cc30be369afeac34b61d60ddfdef84b7b63` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | Chronicle_STETH_BTC_1<br>`0x7c16774cc8989a2ac08345b233df1b76265a041c` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | Chronicle_STONE_USD_1<br>`0x13118422f890cb3a8ee4f0aac8ad4c4be913cb51` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | Chronicle_TEST_TEST_2<br>`0x576211f0585aedbd21b7b5d4babe57e112f9b4b3` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | Chronicle_WSRUSD_USD_1<br>`0x4ac943b192ce76ead66d1dc86557228338e6a6c0` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | DineroTreasuryConnector<br>`0x9971f773f96f1223c2befa4aa4562ea5ce0af812` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | EACAggregatorProxy<br>`0x2d27d9e1b74936d8e83c4ba118f09a4c4a897f62` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0x31697852a68433dbcc2ff612c516d69e3d9bd08f` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0x34ad75691e25a8e9b681aaa85dbeb7ef6561b42c` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0x3c7db4d25deab7c89660512c5494dc9a3fc40f78` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0x461790bdaf5aed3df6a88cb97dec42dd0efa73c0` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0x75a0d3264a949c2c920d7f25df174af1faf73399` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0x9b4a96210bc8d9d55b1908b465d8b0de68b7ff83` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0xacfcf155a0de611414c510d43446c27a4ee6a758` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0xb177857a1799aa5f7feb5799fdf12cbe8fdf78b1` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0xc8cd82067ea907ea4af81b625d2bb653e21b5156` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0xcbe87dc0cf9d807848a3e703b01a90b28ecfb2a7` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0xe2ff7b6817cf71022b487703fd0ff35f374ddead` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0xe471bc940aa9831a0aea21e6f40c1a1236eb4bb3` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | EACAggregatorProxy<br>`0xf0d9bb015cd7bfab877b7156146dc09bf461370d` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | ExternalRequestsManager<br>`0x1de327c23ed8f52f797d55b31abce98cb46c8ea9` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | ExternalRequestsManagerBetaV1<br>`0x052b1cacbdea7b4d711c6f428a20618ef60fda1b` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | ExternalRequestsManagerBetaV1<br>`0x3ed5dc199d8bce1e1a9ed8520a215ae9af9bd45d` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | ExternalRequestsManagerBetaV1<br>`0x8ade71febab1337ce08062fe5208a611ee6e86e9` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | ExternalRequestsManagerBetaV1<br>`0xda6cef7f667d992a60eb823ab215493aa0c6b360` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | FunctionsClientUpgradeHelper<br>`0x03b1b16e7c016f881783674aa6b24fc21d70d29f` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | FunctionsClientUpgradeHelper<br>`0xb26fdff7bdfcbcace0b6e0a8ceedcd0a72fc2ac5` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | FunctionsCoordinator<br>`0x3503b2a4692f62dd2c5d4c0a6546fb50ba579acf` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | FunctionsCoordinator<br>`0x6b12a8f73522dfc634f95ebc4cf819942e0942b4` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | FunctionsCoordinator<br>`0xca89dd653ea2b2130d7918e08bff229e44c9123d` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | MEVRecover<br>`0x96a96218331fee6b3c844433135b75c64cceeede` | non_address_book | unknown | unknown | verified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| source verified unclassified | ResolvStakingSilo<br>`0x502f9f85770437d102b767d6e311a4560ec88d4f` | non_address_book | unknown | unknown | verified | n/a | `0x9612fa0b15379630245ab3d10452e2f0c50d8976` |
| source verified unclassified | ResolvToken<br>`0x5ac0551f79d10f9f2a7ce74eeffad23336060b9a` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x9612fa0b15379630245ab3d10452e2f0c50d8976` |
| source verified unclassified | ResolvToken<br>`0xea279d778ccac027ec71b58916653902053057e5` | non_address_book | unknown | unknown | verified | n/a | `0x9612fa0b15379630245ab3d10452e2f0c50d8976` |
| source verified unclassified | RewardDistributor<br>`0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | RewardDistributor<br>`0x9ace2068dcd9491d3e5a23551b6877658e1b4cf9` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | RewardDistributor<br>`0xbe23bb6d817c08e7ec4cd0adb0e23156189c1ba9` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | RlpPriceAggregatorV3Interface<br>`0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | RlpPriceStorage<br>`0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | RlpPriceStorage<br>`0x31319866778a5223633bd745780bb6d59406371e` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | RlpPriceStorage<br>`0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | RlpPriceStorage<br>`0xaa33e5ecae01779b26cd9dbd3c62e34c29b2d565` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | RlpUpOnlyPriceStorage<br>`0x40b988e4ee43351c679291b868fa35dc4caa0580` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | SimpleOFTAdapter<br>`0x14219845c6b7984aa5ec0a39754dcc327169de32` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | SimpleOFTAdapter<br>`0x2718729fb710cf17fcc9293214c575c58526b654` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | SimpleOFTAdapter<br>`0x5daa068b9592781ad49235838fdd38e2d162084b` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | SimpleOFTAdapter<br>`0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | SimpleToken<br>`0x35533f54740f1f1aa4179e57ba37039dfa16868b` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | SimpleToken<br>`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | SimpleToken<br>`0xef4c4bcbe105170810b6ef58a286d9ce97a1fabe` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | StUSR<br>`0x56abf7334e2b4c2ec925a59cb2994a1a7632ecc2` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | StUSR<br>`0xba1600735a039e2b3bf1d1d2f1a7f80f45973da7` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | StUSR<br>`0xcf3e9da6190997ca7b1f46a2568caa29575678bd` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | Timelock<br>`0x290d9544669c9c7a64f6899a0a3b28d563f6ebee` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | Timelock<br>`0x4f0b08294c0700bd751c316a5a70db1e6e78aa18` | non_address_book | unknown | unknown | verified | n/a | `0x9612fa0b15379630245ab3d10452e2f0c50d8976` |
| source verified unclassified | Treasury<br>`0xc657b23d01907e3af6f8678d47467b3865428691` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | TreasuryIntermediateEscrow<br>`0xdce79568cc5a8f7598fd68c97475c4b0e56c76a8` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | USRPriceAggregatorV3Interface<br>`0x8a93414f88f597922a9829df5f7c94b81bc46f64` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | UsrPriceStorage<br>`0xc16b2a7a773c23e3e9d3325c7b173ef24fc2785d` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | UsrRedemptionExtension<br>`0x60a7b7915980ed34fde6e239618fadcf67897c37` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | UsrRedemptionExtension<br>`0x7078c8b3687e4b2120e0a74e302a06dc51d52489` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | UsrRedemptionExtension<br>`0xb69b2ea98f0fcef104b5cde7d9236601d8c96be6` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | VRFV2PlusWrapper<br>`0x02aae1a04f9828517b3007f83f6181900cad910c` | non_address_book | unknown | unknown | verified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| source verified unclassified | WstUSR<br>`0x6ed5485d079d7f0cfa8e395499b3c01a6c359cc0` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | WstUSR<br>`0x878943125019b86aeb0e97f36fb4f1dc5c43dd34` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | SimpleOFT<br>`0x0da21d330f3f75d730a1b5f1535ca75061cabf61` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | SimpleOFT<br>`0x5943026e21e3936538620ba27e01525bba311255` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| source verified unclassified | Timelock<br>`0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x30abc3a3df340b16a1a9f42423c993c3f9b90fa0` | non_address_book | unknown | unknown | unverified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| unverified unclassified | UnnamedContract<br>`0x93accff0590797f2c67edcbadfb2c98920bd0704` | non_address_book | unknown | unknown | unverified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| unverified unclassified | UnnamedContract<br>`0x96920bba8c90af75595c875b890a3ab768866113` | non_address_book | unknown | unknown | unverified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| unverified unclassified | UnnamedContract<br>`0x9e2c3e0bce361067fd8d55098eaed63d31bc9429` | non_address_book | unknown | unknown | unverified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| unverified unclassified | UnnamedContract<br>`0xbc8a6c17787a201be8f54caa5db56f780eef8bcc` | non_address_book | unknown | unknown | unverified | n/a | `0x74258a92611e029b748f79c50024dd851339db15` |
| unverified unclassified | UnnamedContract<br>`0x2492d0006411af6c8bbb1c8afc1b0197350a79e9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x5943026e21e3936538620ba27e01525bba311255` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x6ca43d7570201a7d7107edb33f824935959a374a` | non_address_book | unknown | unknown | unverified | n/a | `0xe84b20a7590c51bb4aa913f29407254a4d817c77` |
| unverified unclassified | UnnamedContract<br>`0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x2492d0006411af6c8bbb1c8afc1b0197350a79e9` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x66cfbd79257dc5217903a36293120282548e2254` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xcf3e9da6190997ca7b1f46a2568caa29575678bd` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x0ce3a3fcf03a98549833a7a4274ca14877320331` | non_address_book | unknown | unknown | unverified | n/a | `0xd4fac2c75e7efc7abb325837b5b1952840dd647f` |
| unverified unclassified | UnnamedContract<br>`0x5943026e21e3936538620ba27e01525bba311255` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x5dd087fab26ca11980b9249f734bf89dafad5577` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x81056482e80fa1456c6e7a50e1e806f659f661a7` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xda3beb74de2adda364a53291db9751f67e7fc90e` | non_address_book | unknown | unknown | unverified | n/a | `0xd4fac2c75e7efc7abb325837b5b1952840dd647f` |
| unverified unclassified | UnnamedContract<br>`0xf79fcfcb25f76d1e08093e13ca3492657ef323dc` | non_address_book | unknown | unknown | unverified | n/a | `0xd4fac2c75e7efc7abb325837b5b1952840dd647f` |
| unverified unclassified | UnnamedContract<br>`0x5943026e21e3936538620ba27e01525bba311255` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0x616be5e0ef9e5cedf8e944e85e3f33431ef4e272` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| unverified unclassified | UnnamedContract<br>`0xcc601605dc5011616934b6fdac8a14d51b791a94` | non_address_book | unknown | unknown | unverified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024.12.02 - Final - Resolv Core Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.02%20-%20Final%20-%20Resolv%20Core%20Audit%20Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | n/a | matched | 2 | 2 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3993] 2024.12.02 - Final - Resolv Core Audit Report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024.12.02 - Final - Resolv Core Audit Report.pdf | StUSR | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4` — deployed 2024-06-02 21:57:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.12.02 - Final - Resolv Core Audit Report.pdf | WstUSR | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055` — deployed 2024-08-21 16:55:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x10f4d4ead6bcd4de7849898403d88528e3dfc872` | ExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd1062547981471b821755c13cafa0f13d099705a` | ResolvStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x259338656198ec7a76c729514d3cb45dfbf768a1` | ResolvToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0da21d330f3f75d730a1b5f1535ca75061cabf61` | SimpleOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2492d0006411af6c8bbb1c8afc1b0197350a79e9` | SimpleOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4956b52ae2ff65d74ca2d61207523288e4528f96` | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa27a69ae180e202fde5d38189a3f24fe24e55861` | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc7ab90c2ea9271efb31f5fa2843eeb4b331eafa0` | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xac85ef29192487e0a109b7f9e40c267a9ea95f2e` | UsrExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 22 |
| standard_library | 3 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
