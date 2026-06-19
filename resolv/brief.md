# Agentic Audit Brief: Resolv

⚠️ Lifecycle status: RUGGED - TVL dropped 85.4% over 90 days

## Project Overview

- Project: Resolv (`resolv`)
- Website: [https://app.resolv.xyz](https://app.resolv.xyz)
- Lifecycle: rugged (Tier 1, rugged)
- Generated: 2026-06-19T06:14:37.283Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: bsc, ethereum, plasma
- Contract surface: 38 unique implementations (61 raw deployments)
- DeFi Llama TVL: $22,375,539.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Resolv is a DeFi protocol focused on basis trading, issuing delta-neutral stablecoins (USR) and liquid staking derivatives (stUSR, wstUSR) backed by hedged positions. It also provides cross-chain token bridging via LayerZero OFT and staking mechanisms for its governance token.

### Architecture

The Resolv family relies on the USR family's Chronicle oracles for USR pricing, while cross-chain token transfers are enabled by SimpleOFT and SimpleOFTAdapter contracts shared across deployments. Treasury connectors integrate with external protocols (Aave, Lido, Dinero) to manage backing assets.

## Contract Surface Quality

- Indexed contracts: 227; live-surface contracts included: 61 (61 live, 0 unknown).
- Excluded by liveness: 90 inactive, 76 singleton, 0 uninitialized.
- Deployment units: 2/34 live.
- Detected codebases: none
- Unverified dependencies: 22/42.

## Audit Coverage Summary

- Verified implementations audited: 1/29 (3.4%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 38
- Raw deployments: 61
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: 3.4% (Sherlock)
- Note: This protocol is classified as [rugged]. ASD of n/a represents exposure in a protocol with rugged activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 1 | 3.4% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WstUSR | unknown | ethereum | unit-39223 | [`0x1202f5...c75055`](./contracts/ethereum-1/0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3TreasuryConnector | operational_periphery | ethereum | unit-39234 | [`0x91eda2...03c8ca`](./contracts/ethereum-1/0x91eda28735ce089a8b5133476263c3fb8303c8ca/) | ⚠️ Unaudited |
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
| ExternalRequestsCoordinator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36c9b5...76c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/); ethereum `0xf47af3...82ba80` | ⚠️ Unaudited |
| ExternalRequestsManager | governance | ethereum | n/a | [`0x10f4d4...dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ⚠️ Unaudited |
| Kisser_1 | unknown | ethereum | n/a | [`0x371a53...ddda5b`](./contracts/ethereum-1/0x371a53bb4203ad5d7e60e220bac1876ff3ddda5b/) | ⚠️ Unaudited |
| Multicall | periphery | ethereum | n/a | [`0xba610d...8df947`](./contracts/ethereum-1/0xba610d8c8c93580c19fb8800fc406227de8df947/) | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbf1762...1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/); ethereum `0xeef363...4acdd3` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | ethereum | n/a | [`0x9f805f...fdad12`](./contracts/ethereum-1/0x9f805fc8679e5f81a0683c3203ad48417efdad12/) | ⚠️ Unaudited |
| StakedTokenDistributor | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x212e81...789037`](./contracts/ethereum-1/0x212e81359f24fb871638c366f6df1c42fa789037/); ethereum `0x53c5b7...08031e`; ethereum `0x6ac1f6...04dbaf`; ethereum `0xbac23e...72ac69`; ethereum `0xbb2213...85e32c`; ethereum `0xce9d50...7ad8f9`; ethereum `0xfc7d46...1604a4` | ⚠️ Unaudited |
| TheCounter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa27a69...e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/); ethereum `0xc7ab90...1eafa0` | ⚠️ Unaudited |
| Timelock | governance | plasma | n/a | [`0x594302...311255`](./contracts/plasma-9745/0x5943026e21e3936538620ba27e01525bba311255/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x8ade71...6e86e9`](./contracts/bsc-56/0x8ade71febab1337ce08062fe5208a611ee6e86e9/) | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | operational_periphery | ethereum | n/a | [`0x84b883...acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | ethereum | n/a | [`0xac85ef...a95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x2ecc1d...6d7cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32dadd...7cdf5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x438628...a56d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65dbc3...6dd1a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x920b72...ffe881` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7347c...350479` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd77704...03a923` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf84f43...a3a488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd4498...b04856` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024.12.02 - Final - Resolv Core Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.02%20-%20Final%20-%20Resolv%20Core%20Audit%20Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd02d70...c81ff4`](./contracts/ethereum-1/0xd02d70dd1e495f1d9245d97bfd93259fe8c81ff4/) | Chronicle_USR_USD_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36c9b5...76c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/) | ExternalRequestsCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f4d4...dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf1762...1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/) | ResolvStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f805f...fdad12`](./contracts/ethereum-1/0x9f805fc8679e5f81a0683c3203ad48417efdad12/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212e81...789037`](./contracts/ethereum-1/0x212e81359f24fb871638c366f6df1c42fa789037/) | StakedTokenDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa27a69...e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/) | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x594302...311255`](./contracts/plasma-9745/0x5943026e21e3936538620ba27e01525bba311255/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84b883...acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | TreasuryIntermediateEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac85ef...a95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | UsrExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 15 |
| standard_library | 4 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=10

Fork inheritance lineage and inherited audits are included when available.
