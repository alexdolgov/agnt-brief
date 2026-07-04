# Agentic Audit Brief: Resolv

## Project Overview

- Project: Resolv (`resolv`)
- Website: [https://app.resolv.xyz](https://app.resolv.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:44.369Z
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

- Coverage of deployed-live implementations: 1/55 (1.8%)
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
- Tier 1 coverage: 1.8% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 1 | 1.8% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WstUSR | unknown | ethereum | n/a | [`0x1202f5...c75055`](./contracts/ethereum-1/0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055/) | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3TreasuryConnector | operational_periphery | ethereum | n/a | [`0x91eda2...03c8ca`](./contracts/ethereum-1/0x91eda28735ce089a8b5133476263c3fb8303c8ca/) | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | governance | ethereum | n/a | 2 deployments: ethereum [`0x782819...196b61`](./contracts/ethereum-1/0x78281937b869baadeddda3d62fc4b6fc0a196b61/); ethereum `0x80c1b1...9fe194` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | ethereum | n/a | 14 deployments: ethereum [`0x000bcf...d7e1bc`](./contracts/ethereum-1/0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc/); ethereum `0x04580b...9bf0d3`; ethereum `0x50cf7f...cec4f0`; ethereum `0x51864c...78e74a`; ethereum `0x6a4a21...17432f`; ethereum `0x6f96e3...780b0c`; ethereum `0x897cfe...d5dabf`; ethereum `0x8deccb...5dc511`; ethereum `0x909b2f...62bfcc`; ethereum `0xab63ad...587620`; ethereum `0xc707b7...51b6e7`; ethereum `0xdd34ac...f38a67`; ethereum `0xf35a65...98f829`; ethereum `0xfac0a7...750bc3` | ⚠️ Unaudited |
| Chronicle_CBBTC_USDC_1 | unknown | ethereum | n/a | [`0x3131e6...098747`](./contracts/ethereum-1/0x3131e6a68bfb42976ef574af042f67d322098747/) | ⚠️ Unaudited |
| Chronicle_EBTCbadger_ETH_1 | unknown | ethereum | n/a | [`0xeb6564...204495`](./contracts/ethereum-1/0xeb656424e16a8092592a74e6cd93cfd212204495/) | ⚠️ Unaudited |
| Chronicle_SPK_USD_1 | unknown | ethereum | n/a | [`0x552116...f2a574`](./contracts/ethereum-1/0x552116e747a5b386b2e7eed4371002359cf2a574/) | ⚠️ Unaudited |
| Chronicle_SRUSD_USD_1 | unknown | ethereum | n/a | [`0x277f78...a1a633`](./contracts/ethereum-1/0x277f78f39b9dc73df3723bacd40f8658f8a1a633/) | ⚠️ Unaudited |
| Chronicle_STETH_BTC_1 | unknown | ethereum | n/a | [`0x02238b...d5934d`](./contracts/ethereum-1/0x02238bb0085395ae52cd4755456891fc2fd5934d/) | ⚠️ Unaudited |
| Chronicle_STONE_ETH_1 | unknown | ethereum | n/a | [`0x057f30...7de3d0`](./contracts/ethereum-1/0x057f30e63a69175c69a4af5656b8c9ee647de3d0/) | ⚠️ Unaudited |
| Chronicle_SUSDS_USD_1 | unknown | ethereum | n/a | [`0x496470...608e84`](./contracts/ethereum-1/0x496470f4835186bf118545bd76889f123d608e84/) | ⚠️ Unaudited |
| Chronicle_Tester | unknown | ethereum | n/a | [`0x1ea387...195c5f`](./contracts/ethereum-1/0x1ea387a7228b97796256cc6b109b361635195c5f/) | ⚠️ Unaudited |
| Chronicle_USDS_USD_1 | unknown | ethereum | n/a | [`0x74661a...85636c`](./contracts/ethereum-1/0x74661a9ea74fd04975c6ebc6b155abf8f885636c/) | ⚠️ Unaudited |
| Chronicle_USR_USD_1 | unknown | ethereum | n/a | [`0xd02d70...c81ff4`](./contracts/ethereum-1/0xd02d70dd1e495f1d9245d97bfd93259fe8c81ff4/) | ⚠️ Unaudited |
| Chronicle_WSRUSD_USD_1 | unknown | ethereum | n/a | [`0x0b4cb1...01d215`](./contracts/ethereum-1/0x0b4cb11fac24707f3f0f89e441a4cdf6ef01d215/) | ⚠️ Unaudited |
| ChronicleGovernance_Accessor_TOSRegistry_1 | registry | ethereum | n/a | [`0x2cafee...a06549`](./contracts/ethereum-1/0x2cafee661745319738f3e7b9a9340d7fe8a06549/) | ⚠️ Unaudited |
| ConfigRegistry_VAO_1 | registry | ethereum | n/a | [`0x064358...cf0213`](./contracts/ethereum-1/0x064358f9b6428c51f80511d73afeb3a9e5cf0213/) | ⚠️ Unaudited |
| DineroTreasuryConnector | unknown | ethereum | n/a | 2 deployments: ethereum [`0x75ec06...493c70`](./contracts/ethereum-1/0x75ec066efb238cf211baa73b28db539541493c70/); ethereum `0x9971f7...0af812` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36c9b5...76c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/); ethereum `0xf47af3...82ba80` | ⚠️ Unaudited |
| ExternalRequestsManager | governance | ethereum | n/a | [`0x10f4d4...dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ⚠️ Unaudited |
| Kisser_1 | unknown | ethereum | n/a | [`0x371a53...ddda5b`](./contracts/ethereum-1/0x371a53bb4203ad5d7e60e220bac1876ff3ddda5b/) | ⚠️ Unaudited |
| LidoTreasuryConnector | unknown | ethereum | n/a | [`0xb63a5e...b048a7`](./contracts/ethereum-1/0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7/) | ⚠️ Unaudited |
| Multicall | periphery | ethereum | n/a | [`0xba610d...8df947`](./contracts/ethereum-1/0xba610d8c8c93580c19fb8800fc406227de8df947/) | ⚠️ Unaudited |
| ResolvStaking | unknown | ethereum | n/a | [`0x1d2d1e...d827e6`](./contracts/ethereum-1/0x1d2d1e12db390d5f6046102eee25dbf2cfd827e6/) | ⚠️ Unaudited |
| ResolvStakingCheckpoints | unknown | ethereum | n/a | [`0x253c6e...8f2784`](./contracts/ethereum-1/0x253c6e08db15e2912cf3afe5a89f2a7a4d8f2784/) | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbf1762...1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/); ethereum `0xeef363...4acdd3` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd10625...99705a`](./contracts/ethereum-1/0xd1062547981471b821755c13cafa0f13d099705a/); ethereum `0xfe4bce...2e5e23` | ⚠️ Unaudited |
| ResolvToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x259338...f768a1`](./contracts/ethereum-1/0x259338656198ec7a76c729514d3cb45dfbf768a1/); ethereum `0x5ac055...060b9a` | ⚠️ Unaudited |
| ResolvToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7f7a04...654b00`](./contracts/ethereum-1/0x7f7a0419cef5db31b847cd149ea45fb13d654b00/); ethereum `0xea279d...3057e5` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | ethereum | n/a | [`0x9f805f...fdad12`](./contracts/ethereum-1/0x9f805fc8679e5f81a0683c3203ad48417efdad12/) | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e35e7...474ecb`](./contracts/ethereum-1/0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb/); ethereum `0xadb2c1...4e66b2` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e90b0...8e1aa1`](./contracts/ethereum-1/0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1/); ethereum `0xae2364...f3574d` | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | unknown | ethereum | n/a | 3 deployments: ethereum [`0x093285...ab0dc6`](./contracts/ethereum-1/0x093285c34515c01a55e15a25812bcf87e7ab0dc6/); ethereum `0x2d748a...82a2c0`; ethereum `0x40b988...aa0580` | ⚠️ Unaudited |
| SimpleOFT | unknown | bsc | n/a | 2 deployments: bsc [`0x0da21d...cabf61`](./contracts/bsc-56/0x0da21d330f3f75d730a1b5f1535ca75061cabf61/); bsc `0xda6cef...c6b360` | ⚠️ Unaudited |
| SimpleOFT | unknown | bsc | n/a | 4 deployments: bsc [`0x2492d0...0a79e9`](./contracts/bsc-56/0x2492d0006411af6c8bbb1c8afc1b0197350a79e9/); bsc `0x35e5db...e8a4b9`; bsc `0x425481...a55429`; bsc `0x594302...311255` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x142198...69de32`](./contracts/ethereum-1/0x14219845c6b7984aa5ec0a39754dcc327169de32/); ethereum `0xab17c1...451978` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fc1bc...ffdeaf`](./contracts/ethereum-1/0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf/); ethereum `0x5daa06...62084b` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x234c90...1ad06c`](./contracts/ethereum-1/0x234c908e749961d0329a0ed5916d55a99d1ad06c/); ethereum `0x271872...26b654` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc45430...30eb28`](./contracts/ethereum-1/0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28/); ethereum `0xd2ee27...d4be0e` | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x35533f...16868b`](./contracts/ethereum-1/0x35533f54740f1f1aa4179e57ba37039dfa16868b/); ethereum `0x46c1c1...caeaab`; ethereum `0xb1b385...99f15c` | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35e5db...e8a4b9`](./contracts/ethereum-1/0x35e5db674d8e93a03d814fa0ada70731efe8a4b9/); ethereum `0xc31389...aa5fdc` | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4956b5...528f96`](./contracts/ethereum-1/0x4956b52ae2ff65d74ca2d61207523288e4528f96/); ethereum `0x66a1e3...f3e110`; ethereum `0xef4c4b...a1fabe` | ⚠️ Unaudited |
| StakedTokenDistributor | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x212e81...789037`](./contracts/ethereum-1/0x212e81359f24fb871638c366f6df1c42fa789037/); ethereum `0x53c5b7...08031e`; ethereum `0x6ac1f6...04dbaf`; ethereum `0xbac23e...72ac69`; ethereum `0xbb2213...85e32c`; ethereum `0xce9d50...7ad8f9`; ethereum `0xfc7d46...1604a4` | ⚠️ Unaudited |
| StUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0da21d...cabf61`](./contracts/ethereum-1/0x0da21d330f3f75d730a1b5f1535ca75061cabf61/); ethereum `0x56abf7...32ecc2` | ⚠️ Unaudited |
| StUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6c8984...10aab4`](./contracts/ethereum-1/0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4/); ethereum `0xba1600...973da7` | ⚠️ Unaudited |
| StUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcf3e9d...5678bd`](./contracts/ethereum-1/0xcf3e9da6190997ca7b1f46a2568caa29575678bd/); ethereum `0xf8391a...84c46b` | ⚠️ Unaudited |
| TheCounter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa27a69...e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/); ethereum `0xc7ab90...1eafa0` | ⚠️ Unaudited |
| Timelock | governance | plasma | n/a | [`0x594302...311255`](./contracts/plasma-9745/0x5943026e21e3936538620ba27e01525bba311255/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x8ade71...6e86e9`](./contracts/bsc-56/0x8ade71febab1337ce08062fe5208a611ee6e86e9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 4 deployments: plasma [`0x2a52b2...9e5699`](./contracts/plasma-9745/0x2a52b289ba68bbd02676640aa9f605700c9e5699/); plasma `0x35533f...16868b`; plasma `0xb1b385...99f15c`; plasma `0xc31389...aa5fdc` | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | 2 deployments: ethereum [`0xacb702...d62b8e`](./contracts/ethereum-1/0xacb7027f271b03b502d65feba617a0d817d62b8e/); ethereum `0xc657b2...428691` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | operational_periphery | ethereum | n/a | [`0x84b883...acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | ethereum | n/a | [`0xac85ef...a95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a9341...c46f64`](./contracts/ethereum-1/0x8a93414f88f597922a9829df5f7c94b81bc46f64/); ethereum `0xf9c7c2...7ce88c` | ⚠️ Unaudited |
| UsrPriceStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7f4518...9c261c`](./contracts/ethereum-1/0x7f45180d6ffd0435d8dd695fd01320e6999c261c/); ethereum `0xc16b2a...c2785d` | ⚠️ Unaudited |
| WstUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x878943...43dd34`](./contracts/ethereum-1/0x878943125019b86aeb0e97f36fb4f1dc5c43dd34/); ethereum `0x8b480b...c44ee6` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x2ecc1d...6d7cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30abc3...b90fa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32dadd...7cdf5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x438628...a56d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65dbc3...6dd1a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x920b72...ffe881` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93accf...bd0704` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96920b...866113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e2c3e...bc9429` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc8a6c...ef8bcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7347c...350479` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd77704...03a923` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf84f43...a3a488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd4498...b04856` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024.12.02 - Final - Resolv Core Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.02%20-%20Final%20-%20Resolv%20Core%20Audit%20Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
