# Agentic Audit Brief: Resolv

## Project Overview

- Project: Resolv (`resolv`)
- Website: [https://app.resolv.xyz](https://app.resolv.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.722Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc, ethereum, plasma
- Contract surface: 70 unique implementations (124 raw deployments)
- DeFi Llama TVL: $10,707,596.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 67 project-authored contract(s) across 3 chain(s); 3 ERC20 tokens, 24 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 19 common project-authored base contract(s) (owned, typeandversioninterface, simplereadaccesscontroller). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 198; live-surface contracts included: 102 (86 live, 16 unknown).
- Excluded by liveness: 96 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/40 (2.5%)
- Deployed-live implementations: 55 of 70 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/56
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 70
- Raw deployments: 124
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 2.5% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 1 | 1.8% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WstUSR | unknown | ethereum | n/a | [`0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055`](./contracts/ethereum-1/0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055/) | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3TreasuryConnector | operational_periphery | ethereum | n/a | [`0x91eda28735ce089a8b5133476263c3fb8303c8ca`](./contracts/ethereum-1/0x91eda28735ce089a8b5133476263c3fb8303c8ca/) | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | governance | ethereum | n/a | 2 deployments: ethereum [`0x78281937b869baadeddda3d62fc4b6fc0a196b61`](./contracts/ethereum-1/0x78281937b869baadeddda3d62fc4b6fc0a196b61/); ethereum `0x80c1b1ee029f05889e3a693fd8c5f76f9b9fe194` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | ethereum | n/a | 14 deployments: ethereum [`0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc`](./contracts/ethereum-1/0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc/); ethereum `0x04580be599d6ec1ff77125b724014e1e959bf0d3`; ethereum `0x50cf7ff706aa1eae8e4dad135d6ab1d9aacec4f0`; ethereum `0x51864c574fe9d69eaba03b2cc3fa4d501978e74a`; ethereum `0x6a4a218d3cf2ecda6de219efd03eb6091b17432f`; ethereum `0x6f96e328a106f2575c84a0a3bebfd8ff77780b0c`; ethereum `0x897cfe55bceb601d5bcbdd34dbdcaee033d5dabf`; ethereum `0x8deccbee3ae42901080632ef7e837aca555dc511`; ethereum `0x909b2fb63536e22499ec81ef7ca1c66dbc62bfcc`; ethereum `0xab63ad97b09241412f52fa6bb68f6f9876587620`; ethereum `0xc707b7fd0dbd04f3fc92fd850435f5206551b6e7`; ethereum `0xdd34acfafec81eec1477a1889d3c23e887f38a67`; ethereum `0xf35a655213a9eb84dc88f07c642f20aff198f829`; ethereum `0xfac0a7282a36327f88bd0a64ff57d64012750bc3` | ⚠️ Unaudited |
| Chronicle_CBBTC_USDC_1 | unknown | ethereum | n/a | [`0x3131e6a68bfb42976ef574af042f67d322098747`](./contracts/ethereum-1/0x3131e6a68bfb42976ef574af042f67d322098747/) | ⚠️ Unaudited |
| Chronicle_EBTCbadger_ETH_1 | unknown | ethereum | n/a | [`0xeb656424e16a8092592a74e6cd93cfd212204495`](./contracts/ethereum-1/0xeb656424e16a8092592a74e6cd93cfd212204495/) | ⚠️ Unaudited |
| Chronicle_SPK_USD_1 | unknown | ethereum | n/a | [`0x552116e747a5b386b2e7eed4371002359cf2a574`](./contracts/ethereum-1/0x552116e747a5b386b2e7eed4371002359cf2a574/) | ⚠️ Unaudited |
| Chronicle_SRUSD_USD_1 | unknown | ethereum | n/a | [`0x277f78f39b9dc73df3723bacd40f8658f8a1a633`](./contracts/ethereum-1/0x277f78f39b9dc73df3723bacd40f8658f8a1a633/) | ⚠️ Unaudited |
| Chronicle_STETH_BTC_1 | unknown | ethereum | n/a | [`0x02238bb0085395ae52cd4755456891fc2fd5934d`](./contracts/ethereum-1/0x02238bb0085395ae52cd4755456891fc2fd5934d/) | ⚠️ Unaudited |
| Chronicle_STONE_ETH_1 | unknown | ethereum | n/a | [`0x057f30e63a69175c69a4af5656b8c9ee647de3d0`](./contracts/ethereum-1/0x057f30e63a69175c69a4af5656b8c9ee647de3d0/) | ⚠️ Unaudited |
| Chronicle_SUSDS_USD_1 | unknown | ethereum | n/a | [`0x496470f4835186bf118545bd76889f123d608e84`](./contracts/ethereum-1/0x496470f4835186bf118545bd76889f123d608e84/) | ⚠️ Unaudited |
| Chronicle_Tester | unknown | ethereum | n/a | [`0x1ea387a7228b97796256cc6b109b361635195c5f`](./contracts/ethereum-1/0x1ea387a7228b97796256cc6b109b361635195c5f/) | ⚠️ Unaudited |
| Chronicle_USDS_USD_1 | unknown | ethereum | n/a | [`0x74661a9ea74fd04975c6ebc6b155abf8f885636c`](./contracts/ethereum-1/0x74661a9ea74fd04975c6ebc6b155abf8f885636c/) | ⚠️ Unaudited |
| Chronicle_USR_USD_1 | unknown | ethereum | n/a | [`0xd02d70dd1e495f1d9245d97bfd93259fe8c81ff4`](./contracts/ethereum-1/0xd02d70dd1e495f1d9245d97bfd93259fe8c81ff4/) | ⚠️ Unaudited |
| Chronicle_WSRUSD_USD_1 | unknown | ethereum | n/a | [`0x0b4cb11fac24707f3f0f89e441a4cdf6ef01d215`](./contracts/ethereum-1/0x0b4cb11fac24707f3f0f89e441a4cdf6ef01d215/) | ⚠️ Unaudited |
| ChronicleGovernance_Accessor_TOSRegistry_1 | registry | ethereum | n/a | [`0x2cafee661745319738f3e7b9a9340d7fe8a06549`](./contracts/ethereum-1/0x2cafee661745319738f3e7b9a9340d7fe8a06549/) | ⚠️ Unaudited |
| ConfigRegistry_VAO_1 | registry | ethereum | n/a | [`0x064358f9b6428c51f80511d73afeb3a9e5cf0213`](./contracts/ethereum-1/0x064358f9b6428c51f80511d73afeb3a9e5cf0213/) | ⚠️ Unaudited |
| DineroTreasuryConnector | unknown | ethereum | n/a | 2 deployments: ethereum [`0x75ec066efb238cf211baa73b28db539541493c70`](./contracts/ethereum-1/0x75ec066efb238cf211baa73b28db539541493c70/); ethereum `0x9971f773f96f1223c2befa4aa4562ea5ce0af812` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36c9b5e8f039381d1da79b94a206af8bc076c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/); ethereum `0xf47af3904dab5bb2ec2980a6100ec58a2f82ba80` | ⚠️ Unaudited |
| ExternalRequestsManager | governance | ethereum | n/a | [`0x10f4d4ead6bcd4de7849898403d88528e3dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ⚠️ Unaudited |
| Kisser_1 | unknown | ethereum | n/a | [`0x371a53bb4203ad5d7e60e220bac1876ff3ddda5b`](./contracts/ethereum-1/0x371a53bb4203ad5d7e60e220bac1876ff3ddda5b/) | ⚠️ Unaudited |
| LidoTreasuryConnector | unknown | ethereum | n/a | [`0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7`](./contracts/ethereum-1/0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7/) | ⚠️ Unaudited |
| Multicall | periphery | ethereum | n/a | [`0xba610d8c8c93580c19fb8800fc406227de8df947`](./contracts/ethereum-1/0xba610d8c8c93580c19fb8800fc406227de8df947/) | ⚠️ Unaudited |
| ResolvStaking | unknown | ethereum | n/a | [`0x1d2d1e12db390d5f6046102eee25dbf2cfd827e6`](./contracts/ethereum-1/0x1d2d1e12db390d5f6046102eee25dbf2cfd827e6/) | ⚠️ Unaudited |
| ResolvStakingCheckpoints | unknown | ethereum | n/a | [`0x253c6e08db15e2912cf3afe5a89f2a7a4d8f2784`](./contracts/ethereum-1/0x253c6e08db15e2912cf3afe5a89f2a7a4d8f2784/) | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/); ethereum `0xeef36320ee5d9f258e22ffc93df8619ec04acdd3` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd1062547981471b821755c13cafa0f13d099705a`](./contracts/ethereum-1/0xd1062547981471b821755c13cafa0f13d099705a/); ethereum `0xfe4bce4b3949c35fb17691d8b03c3cadbe2e5e23` | ⚠️ Unaudited |
| ResolvToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x259338656198ec7a76c729514d3cb45dfbf768a1`](./contracts/ethereum-1/0x259338656198ec7a76c729514d3cb45dfbf768a1/); ethereum `0x5ac0551f79d10f9f2a7ce74eeffad23336060b9a` | ⚠️ Unaudited |
| ResolvToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7f7a0419cef5db31b847cd149ea45fb13d654b00`](./contracts/ethereum-1/0x7f7a0419cef5db31b847cd149ea45fb13d654b00/); ethereum `0xea279d778ccac027ec71b58916653902053057e5` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | ethereum | n/a | [`0x9f805fc8679e5f81a0683c3203ad48417efdad12`](./contracts/ethereum-1/0x9f805fc8679e5f81a0683c3203ad48417efdad12/) | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb`](./contracts/ethereum-1/0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb/); ethereum `0xadb2c15fde49d1a4294740acb650de94184e66b2` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1`](./contracts/ethereum-1/0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1/); ethereum `0xae2364579d6cb4bbd6695846c1d595ca9af3574d` | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | unknown | ethereum | n/a | 3 deployments: ethereum [`0x093285c34515c01a55e15a25812bcf87e7ab0dc6`](./contracts/ethereum-1/0x093285c34515c01a55e15a25812bcf87e7ab0dc6/); ethereum `0x2d748a6dd7a0dc546f092f12b0d0285cbc82a2c0`; ethereum `0x40b988e4ee43351c679291b868fa35dc4caa0580` | ⚠️ Unaudited |
| SimpleOFT | unknown | bsc | n/a | 2 deployments: bsc [`0x0da21d330f3f75d730a1b5f1535ca75061cabf61`](./contracts/bsc-56/0x0da21d330f3f75d730a1b5f1535ca75061cabf61/); bsc `0xda6cef7f667d992a60eb823ab215493aa0c6b360` | ⚠️ Unaudited |
| SimpleOFT | unknown | bsc | n/a | 4 deployments: bsc [`0x2492d0006411af6c8bbb1c8afc1b0197350a79e9`](./contracts/bsc-56/0x2492d0006411af6c8bbb1c8afc1b0197350a79e9/); bsc `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`; bsc `0x4254813524695def4163a169e901f3d7a1a55429`; bsc `0x5943026e21e3936538620ba27e01525bba311255` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x14219845c6b7984aa5ec0a39754dcc327169de32`](./contracts/ethereum-1/0x14219845c6b7984aa5ec0a39754dcc327169de32/); ethereum `0xab17c1fe647c37ceb9b96d1c27dd189bf8451978` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf`](./contracts/ethereum-1/0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf/); ethereum `0x5daa068b9592781ad49235838fdd38e2d162084b` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x234c908e749961d0329a0ed5916d55a99d1ad06c`](./contracts/ethereum-1/0x234c908e749961d0329a0ed5916d55a99d1ad06c/); ethereum `0x2718729fb710cf17fcc9293214c575c58526b654` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28`](./contracts/ethereum-1/0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28/); ethereum `0xd2ee2776f34ef4e7325745b06e6d464b08d4be0e` | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x35533f54740f1f1aa4179e57ba37039dfa16868b`](./contracts/ethereum-1/0x35533f54740f1f1aa4179e57ba37039dfa16868b/); ethereum `0x46c1c168ca597b9e5423aa7081a0dce782caeaab`; ethereum `0xb1b385542b6e80f77b94393ba8342c3af699f15c` | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`](./contracts/ethereum-1/0x35e5db674d8e93a03d814fa0ada70731efe8a4b9/); ethereum `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4956b52ae2ff65d74ca2d61207523288e4528f96`](./contracts/ethereum-1/0x4956b52ae2ff65d74ca2d61207523288e4528f96/); ethereum `0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110`; ethereum `0xef4c4bcbe105170810b6ef58a286d9ce97a1fabe` | ⚠️ Unaudited |
| StakedTokenDistributor | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x212e81359f24fb871638c366f6df1c42fa789037`](./contracts/ethereum-1/0x212e81359f24fb871638c366f6df1c42fa789037/); ethereum `0x53c5b703465234f97c5a7b17b602c6224a08031e`; ethereum `0x6ac1f64931e0fd9582a095090fab2e838904dbaf`; ethereum `0xbac23ec6ccab8631f500ecb6c01ea0ee0b72ac69`; ethereum `0xbb2213e9a4515174d433cd75cc2695043c85e32c`; ethereum `0xce9d50db432e0702bcad5a4a9122f1f8a77ad8f9`; ethereum `0xfc7d46929bc3dc2ca9533a6fc5e9896d401604a4` | ⚠️ Unaudited |
| StUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0da21d330f3f75d730a1b5f1535ca75061cabf61`](./contracts/ethereum-1/0x0da21d330f3f75d730a1b5f1535ca75061cabf61/); ethereum `0x56abf7334e2b4c2ec925a59cb2994a1a7632ecc2` | ⚠️ Unaudited |
| StUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4`](./contracts/ethereum-1/0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4/); ethereum `0xba1600735a039e2b3bf1d1d2f1a7f80f45973da7` | ⚠️ Unaudited |
| StUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcf3e9da6190997ca7b1f46a2568caa29575678bd`](./contracts/ethereum-1/0xcf3e9da6190997ca7b1f46a2568caa29575678bd/); ethereum `0xf8391a4c2e964c7b175d4027cb384ae73784c46b` | ⚠️ Unaudited |
| TheCounter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa27a69ae180e202fde5d38189a3f24fe24e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/); ethereum `0xc7ab90c2ea9271efb31f5fa2843eeb4b331eafa0` | ⚠️ Unaudited |
| Timelock | governance | plasma | n/a | [`0x5943026e21e3936538620ba27e01525bba311255`](./contracts/plasma-9745/0x5943026e21e3936538620ba27e01525bba311255/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x8ade71febab1337ce08062fe5208a611ee6e86e9`](./contracts/bsc-56/0x8ade71febab1337ce08062fe5208a611ee6e86e9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 4 deployments: plasma [`0x2a52b289ba68bbd02676640aa9f605700c9e5699`](./contracts/plasma-9745/0x2a52b289ba68bbd02676640aa9f605700c9e5699/); plasma `0x35533f54740f1f1aa4179e57ba37039dfa16868b`; plasma `0xb1b385542b6e80f77b94393ba8342c3af699f15c`; plasma `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | 2 deployments: ethereum [`0xacb7027f271b03b502d65feba617a0d817d62b8e`](./contracts/ethereum-1/0xacb7027f271b03b502d65feba617a0d817d62b8e/); ethereum `0xc657b23d01907e3af6f8678d47467b3865428691` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | operational_periphery | ethereum | n/a | [`0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | ethereum | n/a | [`0xac85ef29192487e0a109b7f9e40c267a9ea95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a93414f88f597922a9829df5f7c94b81bc46f64`](./contracts/ethereum-1/0x8a93414f88f597922a9829df5f7c94b81bc46f64/); ethereum `0xf9c7c25fe58aaa494ee7ff1f6cf0b70d7c7ce88c` | ⚠️ Unaudited |
| UsrPriceStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7f45180d6ffd0435d8dd695fd01320e6999c261c`](./contracts/ethereum-1/0x7f45180d6ffd0435d8dd695fd01320e6999c261c/); ethereum `0xc16b2a7a773c23e3e9d3325c7b173ef24fc2785d` | ⚠️ Unaudited |
| WstUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x878943125019b86aeb0e97f36fb4f1dc5c43dd34`](./contracts/ethereum-1/0x878943125019b86aeb0e97f36fb4f1dc5c43dd34/); ethereum `0x8b480bfc04492229c631686f94dc50b7bcc44ee6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x2ecc1df9c2050ed610d6dca4d81032d4506d7cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30abc3a3df340b16a1a9f42423c993c3f9b90fa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32dadd2760a1c5b3604cd9f68b4a6797b37cdf5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4386282a9a9a3d5dfedcf1a89ac94632b0a56d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65dbc3758b79c11c2b352f4895a60cb4936dd1a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x920b729ce9ced60f1e19c744d80e68c3b8ffe881` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93accff0590797f2c67edcbadfb2c98920bd0704` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96920bba8c90af75595c875b890a3ab768866113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e2c3e0bce361067fd8d55098eaed63d31bc9429` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc8a6c17787a201be8f54caa5db56f780eef8bcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7347c50c7ca409604ca41373ba6ba4c1f350479` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd777040377cedebe69eca1a3d74ce607c303a923` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf84f43f886e66810c2c84d794494f86dbfa3a488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd44988e31e8cd2c669fa87c11ae72478fb04856` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024.12.02 - Final - Resolv Core Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.02%20-%20Final%20-%20Resolv%20Core%20Audit%20Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x78281937b869baadeddda3d62fc4b6fc0a196b61`](./contracts/ethereum-1/0x78281937b869baadeddda3d62fc4b6fc0a196b61/) | AccessControlledOCR2Aggregator | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc`](./contracts/ethereum-1/0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc/) | AccessControlledOffchainAggregator | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x064358f9b6428c51f80511d73afeb3a9e5cf0213`](./contracts/ethereum-1/0x064358f9b6428c51f80511d73afeb3a9e5cf0213/) | ConfigRegistry_VAO_1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75ec066efb238cf211baa73b28db539541493c70`](./contracts/ethereum-1/0x75ec066efb238cf211baa73b28db539541493c70/) | DineroTreasuryConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36c9b5e8f039381d1da79b94a206af8bc076c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/) | ExternalRequestsCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f4d4ead6bcd4de7849898403d88528e3dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x371a53bb4203ad5d7e60e220bac1876ff3ddda5b`](./contracts/ethereum-1/0x371a53bb4203ad5d7e60e220bac1876ff3ddda5b/) | Kisser_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d2d1e12db390d5f6046102eee25dbf2cfd827e6`](./contracts/ethereum-1/0x1d2d1e12db390d5f6046102eee25dbf2cfd827e6/) | ResolvStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x253c6e08db15e2912cf3afe5a89f2a7a4d8f2784`](./contracts/ethereum-1/0x253c6e08db15e2912cf3afe5a89f2a7a4d8f2784/) | ResolvStakingCheckpoints | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/) | ResolvStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1062547981471b821755c13cafa0f13d099705a`](./contracts/ethereum-1/0xd1062547981471b821755c13cafa0f13d099705a/) | ResolvStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x259338656198ec7a76c729514d3cb45dfbf768a1`](./contracts/ethereum-1/0x259338656198ec7a76c729514d3cb45dfbf768a1/) | ResolvToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f7a0419cef5db31b847cd149ea45fb13d654b00`](./contracts/ethereum-1/0x7f7a0419cef5db31b847cd149ea45fb13d654b00/) | ResolvToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f805fc8679e5f81a0683c3203ad48417efdad12`](./contracts/ethereum-1/0x9f805fc8679e5f81a0683c3203ad48417efdad12/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb`](./contracts/ethereum-1/0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb/) | RlpPriceAggregatorV3Interface | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1`](./contracts/ethereum-1/0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1/) | RlpPriceStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x093285c34515c01a55e15a25812bcf87e7ab0dc6`](./contracts/ethereum-1/0x093285c34515c01a55e15a25812bcf87e7ab0dc6/) | RlpUpOnlyPriceStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0da21d330f3f75d730a1b5f1535ca75061cabf61`](./contracts/bsc-56/0x0da21d330f3f75d730a1b5f1535ca75061cabf61/) | SimpleOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2492d0006411af6c8bbb1c8afc1b0197350a79e9`](./contracts/bsc-56/0x2492d0006411af6c8bbb1c8afc1b0197350a79e9/) | SimpleOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14219845c6b7984aa5ec0a39754dcc327169de32`](./contracts/ethereum-1/0x14219845c6b7984aa5ec0a39754dcc327169de32/) | SimpleOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf`](./contracts/ethereum-1/0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf/) | SimpleOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x234c908e749961d0329a0ed5916d55a99d1ad06c`](./contracts/ethereum-1/0x234c908e749961d0329a0ed5916d55a99d1ad06c/) | SimpleOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28`](./contracts/ethereum-1/0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28/) | SimpleOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35533f54740f1f1aa4179e57ba37039dfa16868b`](./contracts/ethereum-1/0x35533f54740f1f1aa4179e57ba37039dfa16868b/) | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`](./contracts/ethereum-1/0x35e5db674d8e93a03d814fa0ada70731efe8a4b9/) | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4956b52ae2ff65d74ca2d61207523288e4528f96`](./contracts/ethereum-1/0x4956b52ae2ff65d74ca2d61207523288e4528f96/) | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212e81359f24fb871638c366f6df1c42fa789037`](./contracts/ethereum-1/0x212e81359f24fb871638c366f6df1c42fa789037/) | StakedTokenDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0da21d330f3f75d730a1b5f1535ca75061cabf61`](./contracts/ethereum-1/0x0da21d330f3f75d730a1b5f1535ca75061cabf61/) | StUSR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4`](./contracts/ethereum-1/0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4/) | StUSR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf3e9da6190997ca7b1f46a2568caa29575678bd`](./contracts/ethereum-1/0xcf3e9da6190997ca7b1f46a2568caa29575678bd/) | StUSR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa27a69ae180e202fde5d38189a3f24fe24e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/) | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x5943026e21e3936538620ba27e01525bba311255`](./contracts/plasma-9745/0x5943026e21e3936538620ba27e01525bba311255/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xacb7027f271b03b502d65feba617a0d817d62b8e`](./contracts/ethereum-1/0xacb7027f271b03b502d65feba617a0d817d62b8e/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | TreasuryIntermediateEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac85ef29192487e0a109b7f9e40c267a9ea95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | UsrExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a93414f88f597922a9829df5f7c94b81bc46f64`](./contracts/ethereum-1/0x8a93414f88f597922a9829df5f7c94b81bc46f64/) | USRPriceAggregatorV3Interface | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f45180d6ffd0435d8dd695fd01320e6999c261c`](./contracts/ethereum-1/0x7f45180d6ffd0435d8dd695fd01320e6999c261c/) | UsrPriceStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x878943125019b86aeb0e97f36fb4f1dc5c43dd34`](./contracts/ethereum-1/0x878943125019b86aeb0e97f36fb4f1dc5c43dd34/) | WstUSR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 14 |
| standard_library | 3 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
