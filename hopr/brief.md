# Agentic Audit Brief: HOPR

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: HOPR (`hopr`)
- Website: [https://hoprnet.org](https://hoprnet.org)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-25T04:18:55.762Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: gnosis
- Contract surface: 81 unique implementations (253 raw deployments)
- DeFi Llama TVL: $1,173,060.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

HOPR is a privacy-focused protocol that provides network-level metadata protection for data exchange. It enables users to run nodes and relay messages through a mixnet, ensuring that communication remains private and untraceable.

### Architecture

The HOPR family consists of two core contracts that work together: HoprNodeStakeFactory manages node registration and staking, while HoprChannels handles the payment channels used for relaying messages. Both contracts are deployed from the same deployer cluster, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 1/23 (4.3%)
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 81
- Raw deployments: 253
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: 4.3% (ChainSecurity)
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 4.3% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| HoprChannels | unknown | gnosis | 21 deployments: gnosis [`0x09b77f...d9e51a`](./contracts/gnosis-100/0x09b77f370c2f379f3db42b799fa7edbb37d9e51a/); gnosis `0x0b0e0e...4f2ff7`; gnosis `0x0c1cc3...99e9d4`; gnosis `0x2ccd29...eff357`; gnosis `0x414f3c...2a4ba2`; gnosis `0x4663ef...115a52`; gnosis `0x552712...188732`; gnosis `0x5bd809...ee56b6`; gnosis `0x693bac...d8f8ae`; gnosis `0x69e63a...4d5cdf`; gnosis `0x77c941...3092a7`; gnosis `0x7a33eb...921b16`; gnosis `0x7e8c87...25d8c3`; gnosis `0x81a79f...a09c57`; gnosis `0x9680f2...f057b7`; gnosis `0xb20ee6...905b7b`; gnosis `0xc06058...f6f74d`; gnosis `0xd54ee5...453433`; gnosis `0xe4ae7d...e8d1dc`; gnosis `0xe6203f...286f01`; gnosis `0xfabee4...bf573e` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BoostUtilsLib | unknown | gnosis | [`0x819752...75567a`](./contracts/gnosis-100/0x8197525557233031b110038ae52dfc3c4a75567a/) | ⚠️ Unaudited |
| ERC677Mock | unknown | gnosis | 6 deployments: gnosis [`0x223c4f...5bf884`](./contracts/gnosis-100/0x223c4fe6d9c19cbdc6c66aa9a6b7ce5a445bf884/); gnosis `0x4decc7...369998`; gnosis `0x668c6d...a3f373`; gnosis `0x6f0b0a...eb0b7b`; gnosis `0xbce5af...2c558f`; gnosis `0xcb17f1...334254` | ⚠️ Unaudited |
| HoprAnnouncements | unknown | gnosis | 17 deployments: gnosis [`0x0347a1...8e6d82`](./contracts/gnosis-100/0x0347a131861881604ea841b678210ba60b8e6d82/); gnosis `0x225b4b...a19a4d`; gnosis `0x2ecec2...94f29a`; gnosis `0x45bba0...64acb9`; gnosis `0x5afe60...a80dad`; gnosis `0x5ce40e...17f9fb`; gnosis `0x619eab...6069b8`; gnosis `0x7257fb...d1bba5`; gnosis `0x9c2e99...f11f46`; gnosis `0xca77a2...98d048`; gnosis `0xd78bca...4eb85b`; gnosis `0xdff6cd...b4991d`; gnosis `0xe08e8e...ab6136`; gnosis `0xe45a8d...331cfc`; gnosis `0xe79cfb...0b2814`; gnosis `0xedb388...ddc9bd`; gnosis `0xf1c143...44b982` | ⚠️ Unaudited |
| HoprAnnouncementsProxy | unknown | gnosis | 3 deployments: gnosis [`0x060dbc...f4d049`](./contracts/gnosis-100/0x060dbc55867f0ffc20e69f9273113aeb90f4d049/); gnosis `0x191ee0...aff6e1`; gnosis `0x45b000...a15d3c` | ⚠️ Unaudited |
| HoprBoost | unknown | gnosis | 6 deployments: gnosis [`0x2fc872...4f1e06`](./contracts/gnosis-100/0x2fc87247085f4658adb698cdbf4d732c704f1e06/); gnosis `0x38eede...f3808b`; gnosis `0x435756...e490b7`; gnosis `0x81eba2...3b3d22`; gnosis `0x94ff58...ca3f8c`; gnosis `0xff1f46...f72cac` | ⚠️ Unaudited |
| HoprDummyProxyForNetworkRegistry | registry | gnosis | 8 deployments: gnosis [`0x306c54...9d6db9`](./contracts/gnosis-100/0x306c54123f0197bec232fe754f0b7cb9059d6db9/); gnosis `0x4d1a65...b0af20`; gnosis `0x717cb2...c20e13`; gnosis `0x720a25...c42295`; gnosis `0x879fa1...7423c0`; gnosis `0x8b33f0...e822a5`; gnosis `0x9bcba0...a81ce3`; gnosis `0xb167f8...3b2ca2` | ⚠️ Unaudited |
| HoprNetworkRegistry | registry | gnosis | 16 deployments: gnosis [`0x0dd5c8...f8c8b0`](./contracts/gnosis-100/0x0dd5c8a4686a899db113865df03554b3d8f8c8b0/); gnosis `0x15a315...0ce38d`; gnosis `0x16078a...ed48ad`; gnosis `0x278a44...cba69f`; gnosis `0x3eb3e9...b7df0d`; gnosis `0x582b4b...f8d50d`; gnosis `0x5def7a...ebdb0a`; gnosis `0x6078af...4cdf0c`; gnosis `0x664812...298740`; gnosis `0x79be26...159e34`; gnosis `0x7c6eea...a3b736`; gnosis `0x819e6a...76959d`; gnosis `0xd89e74...cdb0f6`; gnosis `0xdd7b84...19cfb1`; gnosis `0xed4977...679f6c`; gnosis `0xf08e27...d1d25f` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | gnosis | 13 deployments: gnosis [`0x1167fb...d164b0`](./contracts/gnosis-100/0x1167fb204298799b0b9e98896d58958caed164b0/); gnosis `0x1e1587...96bc6b`; gnosis `0x32863c...d2efcb`; gnosis `0x3b008c...b31ea3`; gnosis `0x3f59b4...d600a3`; gnosis `0x4db69d...ffbdae`; gnosis `0x5d6ad4...b87ae7`; gnosis `0x5f3659...d9a595`; gnosis `0x79c3bf...e2b3f2`; gnosis `0x7bf108...5b2b9c`; gnosis `0xb7397c...2e67ea`; gnosis `0xe74ebb...7f3f68`; gnosis `0xe8d914...d2f3de` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | gnosis | 7 deployments: gnosis [`0x06e01a...054910`](./contracts/gnosis-100/0x06e01a5cebad283c0f00f857c06fbd804b054910/); gnosis `0x593ea8...f7b449`; gnosis `0x6e3ef2...4b317a`; gnosis `0x74dfcd...d37e8a`; gnosis `0xb9a6f1...7eb159`; gnosis `0xe95b48...19646b`; gnosis `0xe9670b...5021a9` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | gnosis | 8 deployments: gnosis [`0x0bf6bd...38f05a`](./contracts/gnosis-100/0x0bf6bd25ac47fe9d41a99b135cb439b89138f05a/); gnosis `0x0e4e1a...ccbc76`; gnosis `0x4f7c7d...4e45c0`; gnosis `0x549dce...123671`; gnosis `0x7b8e16...6b1b5c`; gnosis `0x8cdf9a...d334f4`; gnosis `0xafa257...d8cb20`; gnosis `0xe15c24...93077b` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | gnosis | 15 deployments: gnosis [`0x048d04...dcefec`](./contracts/gnosis-100/0x048d04c9f5f74d65e76626b943779dec6edcefec/); gnosis `0x098b27...ca311c`; gnosis `0x1b2263...c62dfb`; gnosis `0x3667f0...82c23a`; gnosis `0x439f54...30cfb3`; gnosis `0x5f5b45...3149b8`; gnosis `0x63e44a...345761`; gnosis `0x6827ec...b07687`; gnosis `0x791d19...a7a5f2`; gnosis `0x878ea9...8ab58b`; gnosis `0x87e1eb...ea78c0`; gnosis `0x8e9e7b...66d954`; gnosis `0xcb0841...07d977`; gnosis `0xe9a9cf...e973db`; gnosis `0xfb22ec...912684` | ⚠️ Unaudited |
| HoprSafeProxyForNetworkRegistry | registry | gnosis | 3 deployments: gnosis [`0x0d1a8f...40de0c`](./contracts/gnosis-100/0x0d1a8f1b13fd1d64696c5e03dd45cd139e40de0c/); gnosis `0x20559c...02eb3f`; gnosis `0x2bc6b7...2c5884` | ⚠️ Unaudited |
| HoprStakeSeason5 | unknown | gnosis | [`0xd80fbb...238e2d`](./contracts/gnosis-100/0xd80fbbfe9d057254d80eebb49f17aca66a238e2d/) | ⚠️ Unaudited |
| HoprStakeSeason6 | unknown | gnosis | 10 deployments: gnosis [`0x20b773...14d901`](./contracts/gnosis-100/0x20b77371fa897332491c4463bdede3cad614d901/); gnosis `0x27f102...a6e780`; gnosis `0x46eeee...2b274d`; gnosis `0x617cfc...33399d`; gnosis `0x84f238...6d4c62`; gnosis `0x884439...75c969`; gnosis `0xa02af1...b47f0d`; gnosis `0xb8dcc6...0e055b`; gnosis `0xe2e8fc...df4903`; gnosis `0xfe749f...d04fec` | ⚠️ Unaudited |
| HoprStakeSeason7 | unknown | gnosis | 6 deployments: gnosis [`0x26d1ce...b32065`](./contracts/gnosis-100/0x26d1cec4ba2f98ff35ec549fcd1b82a90bb32065/); gnosis `0x4a813d...7559a3`; gnosis `0x504166...f457fc`; gnosis `0x65c39e...d2b8dc`; gnosis `0xca7801...230d80`; gnosis `0xfe9340...918531` | ⚠️ Unaudited |
| HoprStakingProxyForNetworkRegistry | registry | gnosis | 11 deployments: gnosis [`0x0248b3...41ded5`](./contracts/gnosis-100/0x0248b31dae66bf28360f9f5da9ef7f046441ded5/); gnosis `0x0c8781...15db24`; gnosis `0x1c0c4e...768013`; gnosis `0x32c4f1...895cd0`; gnosis `0x628ed9...de9e95`; gnosis `0x84f6f8...ddd691`; gnosis `0x9937fa...f18c34`; gnosis `0xab9e6d...bf448e`; gnosis `0xb1a1ca...907a18`; gnosis `0xc1351a...9932ad`; gnosis `0xca9b1b...6a719f` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | gnosis | 15 deployments: gnosis [`0x147899...1f04c2`](./contracts/gnosis-100/0x147899ca57111d9081df125c2bcbd839981f04c2/); gnosis `0x27de67...c43d46`; gnosis `0x281a91...fd7741`; gnosis `0x344f8d...9c3c90`; gnosis `0x442df1...6da0a6`; gnosis `0x46aa0d...9afa2f`; gnosis `0x4dd10e...7c7b44`; gnosis `0x624af1...6a48fb`; gnosis `0x95566e...da1e42`; gnosis `0xca2c60...a0628c`; gnosis `0xca5656...ca1273`; gnosis `0xca9559...6f6b39`; gnosis `0xcffe25...05ae17`; gnosis `0xf69a91...91fd6e`; gnosis `0xfa251d...cf43a0` | ⚠️ Unaudited |
| HoprToken | token | gnosis | 16 deployments: gnosis [`0x306691...4bda9c`](./contracts/gnosis-100/0x306691425babb4b6cd515dba3a714160354bda9c/); gnosis `0x31efbe...d9d35b`; gnosis `0x428246...9624df`; gnosis `0x42aa2a...8d82a4`; gnosis `0x4daccc...e428bd`; gnosis `0x66225d...416698`; gnosis `0x69f2cd...5c68ec`; gnosis `0x748aec...7def49`; gnosis `0x75b0c2...150bde`; gnosis `0x9c312f...0ead2b`; gnosis `0xd47336...318b18`; gnosis `0xdb2215...377a65`; gnosis `0xe32a15...9a3898`; gnosis `0xeda031...0f236c`; gnosis `0xf1adf0...e55c08`; gnosis `0xf9a45b...89adf7` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | gnosis | 5 deployments: gnosis [`0x3c5cbd...b26c7f`](./contracts/gnosis-100/0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f/); gnosis `0x5136ba...4eafca`; gnosis `0x74329f...23c5e3`; gnosis `0xa64182...6c21bd`; gnosis `0xf2d64b...2d9a27` | ⚠️ Unaudited |
| HoprWinningProbablityOracle | operational_periphery | gnosis | 3 deployments: gnosis [`0x02e100...e3f6f3`](./contracts/gnosis-100/0x02e1009fd222917ee7bdfdbf8ae1e56c4ae3f6f3/); gnosis `0x7eb8d7...3a1359`; gnosis `0xc15675...3b0471` | ⚠️ Unaudited |
| MyERC20Swapper | adapter | gnosis | 3 deployments: gnosis [`0x935412...dd7f52`](./contracts/gnosis-100/0x9354126822bef74d1efc6f0f0b50703388dd7f52/); gnosis `0xadb77f...a068b8`; gnosis `0xb331b2...78ee97` | ⚠️ Unaudited |
| UniswapV2Swapper | adapter | gnosis | [`0x44ae0c...d43e06`](./contracts/gnosis-100/0x44ae0c2911e1cd04b4b7b66b6583c6948fd43e06/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (58)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | gnosis | `0x03a13c...2b0752` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x15b362...5e3c78` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2f3243...b16902` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3065d2...19ef14` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3c0045...b9775a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3e7c47...b848d9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3faf31...962305` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3fca37...5dd2a3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x43bfd1...093203` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x44f938...1eb38d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x490be8...961a34` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4c3bb6...0a793e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4d3d5f...062694` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4e7031...b3e958` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x51b0bd...bfb4c4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x53225b...569029` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x545e7f...694262` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x58d293...92b953` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5bc5e9...5f031f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x600aa4...fdb226` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6279e6...af4886` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6508ca...388de9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x683d38...6431d2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6af01f...c199b1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6ccbfe...ee935c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6e0780...7cff9b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x712284...0bddf8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x715978...b1096d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x71b66f...85e09e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x74f38c...0a1e05` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x753525...f8e884` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x75b1e7...ea4d50` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x810c39...8afe5e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8506b4...1f3f59` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8d9978...2d8d32` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x920cc2...c17be0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9d6656...d76114` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa11cc4...b66a5a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa2e2f7...9fc1d5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa8ad80...302125` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xae254e...fc41a3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb12bc2...615ba7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb3b09f...857a82` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc51a56...dc2141` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc76e4c...3438cc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc797f9...6cf2e1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc87850...5f8f5a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xcb8f0b...4ac853` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xcc0ffa...de7013` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd2c191...3ffa63` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd47a3f...f81955` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe89c68...4abb43` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe9ac05...36b9e1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xea4673...53d44a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xed3b6d...6e40fb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf20190...820b25` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf4c6e1...871aa3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xffb525...e1deec` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.chainsecurity.com/security-audit/hopr-payment-channels) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 21 | low |
| [download report](https://reports.chainsecurity.com/HOPRNet/ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | contract_name | 21 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0x819752...75567a`](./contracts/gnosis-100/0x8197525557233031b110038ae52dfc3c4a75567a/) | BoostUtilsLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x060dbc...f4d049`](./contracts/gnosis-100/0x060dbc55867f0ffc20e69f9273113aeb90f4d049/) | HoprAnnouncementsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x2fc872...4f1e06`](./contracts/gnosis-100/0x2fc87247085f4658adb698cdbf4d732c704f1e06/) | HoprBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x306c54...9d6db9`](./contracts/gnosis-100/0x306c54123f0197bec232fe754f0b7cb9059d6db9/) | HoprDummyProxyForNetworkRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0bf6bd...38f05a`](./contracts/gnosis-100/0x0bf6bd25ac47fe9d41a99b135cb439b89138f05a/) | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x20b773...14d901`](./contracts/gnosis-100/0x20b77371fa897332491c4463bdede3cad614d901/) | HoprStakeSeason6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x26d1ce...b32065`](./contracts/gnosis-100/0x26d1cec4ba2f98ff35ec549fcd1b82a90bb32065/) | HoprStakeSeason7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x147899...1f04c2`](./contracts/gnosis-100/0x147899ca57111d9081df125c2bcbd839981f04c2/) | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x306691...4bda9c`](./contracts/gnosis-100/0x306691425babb4b6cd515dba3a714160354bda9c/) | HoprToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3c5cbd...b26c7f`](./contracts/gnosis-100/0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f/) | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x935412...dd7f52`](./contracts/gnosis-100/0x9354126822bef74d1efc6f0f0b50703388dd7f52/) | MyERC20Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, low=1
- Match method counts: extraction_exact=42

Fork inheritance lineage and inherited audits are included when available.
