# Agentic Audit Brief: HOPR

## Project Overview

- Project: HOPR (`hopr`)
- Website: [https://hoprnet.org](https://hoprnet.org)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-18T03:32:34.392Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: gnosis
- Contract surface: 14 unique implementations (86 raw deployments)
- DeFi Llama TVL: $1,397,729.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

HOPR is a privacy-focused protocol that provides network-level metadata protection for data exchange. It enables users to run nodes and relay messages through a mixnet, helping keep communication private and harder to trace. Its on-chain surface should not be described as only HoprNodeStakeFactory and HoprChannels; it includes contracts supporting staking, node and network registries, node management, payment channels, token/oracle/periphery components, and historical staking seasons.

### Architecture

The HOPR family consists of two core contracts that work together: HoprNodeStakeFactory manages node registration and staking, while HoprChannels handles the payment channels used for relaying messages. Both contracts are deployed from the same deployer cluster, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 253; live-surface contracts included: 86 (86 live, 0 unknown).
- Excluded by liveness: 161 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: none
- Unverified dependencies: 2/30.

## Audit Coverage Summary

- Verified implementations audited: 1/13 (7.7%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 14
- Raw deployments: 86
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: 7.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 7.7% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HoprChannels | unknown | gnosis | n/a | 9 deployments: gnosis [`0x09b77f...d9e51a`](./contracts/gnosis-100/0x09b77f370c2f379f3db42b799fa7edbb37d9e51a/); gnosis `0x2ccd29...eff357`; gnosis `0x4663ef...115a52`; gnosis `0x552712...188732`; gnosis `0x5bd809...ee56b6`; gnosis `0x69e63a...4d5cdf`; gnosis `0x7a33eb...921b16`; gnosis `0x81a79f...a09c57`; gnosis `0x9680f2...f057b7` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HoprAnnouncements | unknown | gnosis | n/a | 7 deployments: gnosis [`0x0347a1...8e6d82`](./contracts/gnosis-100/0x0347a131861881604ea841b678210ba60b8e6d82/); gnosis `0x2ecec2...94f29a`; gnosis `0x5ce40e...17f9fb`; gnosis `0x9c2e99...f11f46`; gnosis `0xca77a2...98d048`; gnosis `0xe45a8d...331cfc`; gnosis `0xe79cfb...0b2814` | ⚠️ Unaudited |
| HoprAnnouncementsProxy | unknown | gnosis | n/a | 3 deployments: gnosis [`0x060dbc...f4d049`](./contracts/gnosis-100/0x060dbc55867f0ffc20e69f9273113aeb90f4d049/); gnosis `0x191ee0...aff6e1`; gnosis `0x45b000...a15d3c` | ⚠️ Unaudited |
| HoprDummyProxyForNetworkRegistry | registry | gnosis | n/a | 8 deployments: gnosis [`0x306c54...9d6db9`](./contracts/gnosis-100/0x306c54123f0197bec232fe754f0b7cb9059d6db9/); gnosis `0x4d1a65...b0af20`; gnosis `0x717cb2...c20e13`; gnosis `0x720a25...c42295`; gnosis `0x879fa1...7423c0`; gnosis `0x8b33f0...e822a5`; gnosis `0x9bcba0...a81ce3`; gnosis `0xb167f8...3b2ca2` | ⚠️ Unaudited |
| HoprNetworkRegistry | registry | gnosis | n/a | 2 deployments: gnosis [`0x15a315...0ce38d`](./contracts/gnosis-100/0x15a315e1320cff0de84671c0139042ee320ce38d/); gnosis `0x582b4b...f8d50d` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | gnosis | n/a | 10 deployments: gnosis [`0x1167fb...d164b0`](./contracts/gnosis-100/0x1167fb204298799b0b9e98896d58958caed164b0/); gnosis `0x1e1587...96bc6b`; gnosis `0x3b008c...b31ea3`; gnosis `0x3f59b4...d600a3`; gnosis `0x4db69d...ffbdae`; gnosis `0x5d6ad4...b87ae7`; gnosis `0x5f3659...d9a595`; gnosis `0x79c3bf...e2b3f2`; gnosis `0x7bf108...5b2b9c`; gnosis `0xe74ebb...7f3f68` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | gnosis | n/a | 7 deployments: gnosis [`0x06e01a...054910`](./contracts/gnosis-100/0x06e01a5cebad283c0f00f857c06fbd804b054910/); gnosis `0x593ea8...f7b449`; gnosis `0x6e3ef2...4b317a`; gnosis `0x74dfcd...d37e8a`; gnosis `0xb9a6f1...7eb159`; gnosis `0xe95b48...19646b`; gnosis `0xe9670b...5021a9` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | gnosis | n/a | 7 deployments: gnosis [`0x0e4e1a...ccbc76`](./contracts/gnosis-100/0x0e4e1a2d851663462523bf38ca56259aceccbc76/); gnosis `0x4f7c7d...4e45c0`; gnosis `0x549dce...123671`; gnosis `0x7b8e16...6b1b5c`; gnosis `0x8cdf9a...d334f4`; gnosis `0xafa257...d8cb20`; gnosis `0xe15c24...93077b` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | gnosis | n/a | 11 deployments: gnosis [`0x048d04...dcefec`](./contracts/gnosis-100/0x048d04c9f5f74d65e76626b943779dec6edcefec/); gnosis `0x098b27...ca311c`; gnosis `0x439f54...30cfb3`; gnosis `0x63e44a...345761`; gnosis `0x6827ec...b07687`; gnosis `0x878ea9...8ab58b`; gnosis `0x87e1eb...ea78c0`; gnosis `0x8e9e7b...66d954`; gnosis `0xcb0841...07d977`; gnosis `0xe9a9cf...e973db`; gnosis `0xfb22ec...912684` | ⚠️ Unaudited |
| HoprStakeSeason7 | unknown | gnosis | n/a | [`0x65c39e...d2b8dc`](./contracts/gnosis-100/0x65c39e6bd97f80b5ae5d2120a47644578fd2b8dc/) | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | gnosis | n/a | 12 deployments: gnosis [`0x147899...1f04c2`](./contracts/gnosis-100/0x147899ca57111d9081df125c2bcbd839981f04c2/); gnosis `0x27de67...c43d46`; gnosis `0x344f8d...9c3c90`; gnosis `0x46aa0d...9afa2f`; gnosis `0x4dd10e...7c7b44`; gnosis `0x624af1...6a48fb`; gnosis `0x95566e...da1e42`; gnosis `0xca2c60...a0628c`; gnosis `0xca9559...6f6b39`; gnosis `0xcffe25...05ae17`; gnosis `0xf69a91...91fd6e`; gnosis `0xfa251d...cf43a0` | ⚠️ Unaudited |
| HoprToken | token | gnosis | n/a | 3 deployments: gnosis [`0x428246...9624df`](./contracts/gnosis-100/0x428246bd8632f727fec70662b10dc37b519624df/); gnosis `0x66225d...416698`; gnosis `0x9c312f...0ead2b` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | gnosis | n/a | 5 deployments: gnosis [`0x3c5cbd...b26c7f`](./contracts/gnosis-100/0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f/); gnosis `0x5136ba...4eafca`; gnosis `0x74329f...23c5e3`; gnosis `0xa64182...6c21bd`; gnosis `0xf2d64b...2d9a27` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | gnosis | n/a | `0xc51a56...dc2141` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [download report](https://reports.chainsecurity.com/HOPRNet/ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | contract_name | 9 | high |
| [DL audit link](https://www.chainsecurity.com/security-audit/hopr-payment-channels) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 9 | low |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0x0347a1...8e6d82`](./contracts/gnosis-100/0x0347a131861881604ea841b678210ba60b8e6d82/) | HoprAnnouncements | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x306c54...9d6db9`](./contracts/gnosis-100/0x306c54123f0197bec232fe754f0b7cb9059d6db9/) | HoprDummyProxyForNetworkRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x15a315...0ce38d`](./contracts/gnosis-100/0x15a315e1320cff0de84671c0139042ee320ce38d/) | HoprNetworkRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0e4e1a...ccbc76`](./contracts/gnosis-100/0x0e4e1a2d851663462523bf38ca56259aceccbc76/) | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x65c39e...d2b8dc`](./contracts/gnosis-100/0x65c39e6bd97f80b5ae5d2120a47644578fd2b8dc/) | HoprStakeSeason7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x147899...1f04c2`](./contracts/gnosis-100/0x147899ca57111d9081df125c2bcbd839981f04c2/) | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x428246...9624df`](./contracts/gnosis-100/0x428246bd8632f727fec70662b10dc37b519624df/) | HoprToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3c5cbd...b26c7f`](./contracts/gnosis-100/0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f/) | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, low=1
- Match method counts: extraction_exact=42

Fork inheritance lineage and inherited audits are included when available.
