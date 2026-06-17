# Agentic Audit Brief: BonsaiDAO Ecosystem

## Project Overview

- Project: BonsaiDAO Ecosystem (`bonsaidao-ecosystem`)
- Website: [https://bonsaidao.xyz/](https://bonsaidao.xyz/)
- Lifecycle: active (Tier 0, 94.1% below peak)
- Generated: 2026-06-17T07:00:52.079Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, berachain
- Contract surface: 38 unique implementations (68 raw deployments)
- DeFi Llama TVL: $995,666.00
- On-chain TVL (included contracts): $326,312.36
- TVL by chain: Arbitrum $326,312.36

## Project Description

Bonsai DAO is a DeFi studio / parent ecosystem for interconnected products called Leaves. Current material product lines include exit.tech, Umami Finance, and Vendor V2, spanning chains such as Base, Arbitrum One, and Berachain. Vendor V1 may be treated as a legacy/negligible child protocol where relevant. Claims about common deployer infrastructure, a unified development team, or shared treasury/governance ties should be omitted or explicitly qualified unless independently verified.

### Architecture

The families share a common deployer infrastructure and proxy patterns, indicating a unified development team. Vendor V2's PoolFactory and FeesManager proxies are deployed across multiple chains, while exit.tech and Umami Finance operate as distinct product lines with their own token contracts, likely sharing treasury or governance ties within the BonsaiDAO ecosystem.

## Contract Surface Quality

- Indexed contracts: 464; live-surface contracts included: 68 (68 live, 0 unknown).
- Excluded by liveness: 374 inactive, 22 singleton, 0 uninitialized.
- Deployment units: 2/13 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/38 (5.3%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 38
- Raw deployments: 68
- Audits discovered: 8
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 7 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 5.3% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetVault | core_logic | arbitrum | n/a | 6 deployments: arbitrum [`0x4bca8d...e1dd69`](./contracts/arbitrum-42161/0x4bca8d73561aaeee2d3a584b9f4665310de1dd69/); arbitrum `0x5f851f...b50a97`; arbitrum `0x727ed4...605e42`; arbitrum `0x959f38...e52fef`; arbitrum `0xbb84d7...e06126`; arbitrum `0xcd8011...18af29` | ✅ Audited |
| AggregateVault | unknown | arbitrum | n/a | [`0x0ca629...48c4ed`](./contracts/arbitrum-42161/0x0ca62954b46afee430d645da493c6c783448c4ed/) | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchSender | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/); arbitrum `0x5179d7...3107a6` | ⚠️ Unaudited |
| EsGMX | unknown | arbitrum | n/a | [`0xf42ae1...a426ca`](./contracts/arbitrum-42161/0xf42ae1d54fd613c9bb14810b0588faaa09a426ca/) | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | arbitrum | n/a | [`0x11d628...f43bb7`](./contracts/arbitrum-42161/0x11d62807dae812a0f1571243460bf94325f43bb7/) | ⚠️ Unaudited |
| FeesManager | governance | berachain | unit-19870 | [`0x3756f9...3b11d3`](./contracts/berachain-80094/0x3756f938e633944ff6dee9f93cf13e731e3b11d3/) | ⚠️ Unaudited |
| GenericUtils | unknown | berachain | n/a | [`0xebf158...1ae473`](./contracts/berachain-80094/0xebf15850f3405484a904b9454f2597bba91ae473/) | ⚠️ Unaudited |
| GLP | unknown | arbitrum | n/a | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | ⚠️ Unaudited |
| GlpManager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/); arbitrum `0x3963ff...32ec18` | ⚠️ Unaudited |
| GMX | unknown | arbitrum | n/a | [`0xfc5a1a...35ad0a`](./contracts/arbitrum-42161/0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-19867 (3 proxies) | 3 deployments: arbitrum [`0x8e52ca...930178`](./contracts/arbitrum-42161/0x8e52ca5a7a9249431f03d60d79dda5eab4930178/); arbitrum `0xb0b4bd...c0c0ba`; arbitrum `0xb137d1...26145d` | ⚠️ Unaudited |
| LendingPool | core_logic | berachain | n/a | [`0xfaed40...1f9f44`](./contracts/berachain-80094/0xfaed401d3da75d363e4498e2c660ddb12b1f9f44/) | ⚠️ Unaudited |
| LendingPoolUtils | core_logic | berachain | n/a | [`0x1305c6...aeadd6`](./contracts/berachain-80094/0x1305c60705cbc5f0098764937914f6a704aeadd6/) | ⚠️ Unaudited |
| MintableBaseToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x352471...486921`](./contracts/arbitrum-42161/0x35247165119b69a40edd5304969560d0ef486921/); arbitrum `0x626010...95a954` | ⚠️ Unaudited |
| Oracle | operational_periphery | berachain | n/a | [`0x1ab5e3...e4d9d5`](./contracts/berachain-80094/0x1ab5e37aeed5bb938788a8fb6b003239aae4d9d5/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | ⚠️ Unaudited |
| PoolFactory | registry | arbitrum | n/a | [`0xc05f41...cc3f08`](./contracts/arbitrum-42161/0xc05f412bf08f4eef69324fdc4ae8e50862cc3f08/) | ⚠️ Unaudited |
| PositionManager | governance | arbitrum | n/a | [`0x75e42e...8a4a0c`](./contracts/arbitrum-42161/0x75e42e6f01baf1d6022bea862a28774a9f8a4a0c/) | ⚠️ Unaudited |
| PositionRouter | adapter | arbitrum | n/a | [`0xb87a43...b09868`](./contracts/arbitrum-42161/0xb87a436b93ffe9d75c5cfa7bacfff96430b09868/) | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | arbitrum | n/a | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0x22199a...cae489`](./contracts/arbitrum-42161/0x22199a49a999c351ef7927602cfb187ec3cae489/) | ⚠️ Unaudited |
| ReferralStorage | token | arbitrum | n/a | [`0xe6fab3...06e99d`](./contracts/arbitrum-42161/0xe6fab3f0c7199b0d34d7fbe83394fc0e0d06e99d/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x5c04a1...90150d`](./contracts/arbitrum-42161/0x5c04a12eb54a093c396f61355c6da0b15890150d/); arbitrum `0x986b4e...7f43aa` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | arbitrum | n/a | 4 deployments: arbitrum [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/); arbitrum `0x5e4766...5694a1`; arbitrum `0xa906f3...f8d8f1`; arbitrum `0xb95db5...d271f5` | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/); arbitrum `0x1addd8...4c8903`; arbitrum `0x4e971a...5400b6`; arbitrum `0x908c4d...c59dd4`; arbitrum `0xd2d116...2a728f` | ⚠️ Unaudited |
| Router | adapter | arbitrum | n/a | [`0xabbc5f...2f4064`](./contracts/arbitrum-42161/0xabbc5f99639c9b6bcb58544ddf04efa6802f4064/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | arbitrum | n/a | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ⚠️ Unaudited |
| StakedGlp | token | arbitrum | n/a | 2 deployments: arbitrum [`0x2f546a...3e89ae`](./contracts/arbitrum-42161/0x2f546ad4edd93b956c8999be404cdcafde3e89ae/); arbitrum `0x5402b5...0cffdf` | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | [`0xc9ecfe...dfbd81`](./contracts/arbitrum-42161/0xc9ecfef2fac1e38b951b8c5f59294a8366dfbd81/) | ⚠️ Unaudited |
| sUMAMI | unknown | arbitrum | n/a | [`0xe6d557...a906d7`](./contracts/arbitrum-42161/0xe6d557d416ff5640235119369c7e26aa18a906d7/) | ⚠️ Unaudited |
| sZ2O | unknown | arbitrum | n/a | [`0xc45c51...f9bd39`](./contracts/arbitrum-42161/0xc45c51d423f5e2ad2e946e45d9ec7dcf04f9bd39/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | n/a | 7 deployments: arbitrum [`0x09fec9...240126`](./contracts/arbitrum-42161/0x09fec993be76230296ce8c3b8edafd32b6240126/); arbitrum `0x460e1a...82bc6e`; arbitrum `0x5cf5e6...615f42`; arbitrum `0x9fd825...fdaa44`; arbitrum `0xaa50bd...b6a597`; arbitrum `0xe7e740...cf4858`; arbitrum `0xf3cf3d...7b2350` | ⚠️ Unaudited |
| TimelockBoost | governance | arbitrum | n/a | 4 deployments: arbitrum [`0x83c19e...9da7c0`](./contracts/arbitrum-42161/0x83c19ec75d649aec7c99e2c6663ca055569da7c0/); arbitrum `0xb0d9e1...efcb7c`; arbitrum `0xdca4e8...5557f9`; arbitrum `0xf2ad33...08c838` | ⚠️ Unaudited |
| TokenManager | governance | arbitrum | n/a | [`0xdddc54...5ea96a`](./contracts/arbitrum-42161/0xdddc546e07f1374a07b270b7d863371e575ea96a/) | ⚠️ Unaudited |
| UMAMI | unknown | arbitrum | n/a | [`0x1622bf...7f86e3`](./contracts/arbitrum-42161/0x1622bf67e6e5747b81866fe0b85178a93c7f86e3/) | ⚠️ Unaudited |
| Vault | core_logic | arbitrum | n/a | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | ⚠️ Unaudited |
| Vester | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/); arbitrum `0x7c100c...df49b2`; arbitrum `0xa75287...72042e` | ⚠️ Unaudited |
| Z2O | unknown | arbitrum | n/a | [`0xdb96f8...2fb9ac`](./contracts/arbitrum-42161/0xdb96f8efd6865644993505318cc08ff9c42fb9ac/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf](https://github.com/UmamiDAO/audits/blob/main/UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 7 | high |
| [DL audit link](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU7Q6UV6CGLwU33vLuGwo%2Fuploads%2FtzTGuvytvqAikGukksoj%2FeGMX%20Exit%20Tech%20Audit%20Report.pdf?alt=media) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 0 | n/a |
| [DL audit link](https://2316168122-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMxcGyx5kIW5oBPBlyRqM%2Fuploads%2FgraEwSrcK8twmgCxivTx%2FUmami%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://2316168122-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMxcGyx5kIW5oBPBlyRqM%2Fuploads%2Fwpi8lo0iYzlsGyFzSXsR%2FUmami%20DAO%20-%20mUMAMI%20(Zokyo).pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://2316168122-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMxcGyx5kIW5oBPBlyRqM%2Fuploads%2FrmEbxybwXnR3s1rkCk0k%2FUmami%20DAO%20-%20cmUMAMI%20(Zokyo).pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://2316168122-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMxcGyx5kIW5oBPBlyRqM%2Fuploads%2FBBYm4TbSjsNSCVFacoEm%2FUmami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://2316168122-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMxcGyx5kIW5oBPBlyRqM%2Fuploads%2FmmWuHBOPwbdZAMEZaULv%2FUmami_Final_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Introduction](https://omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/) | BatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf42ae1...a426ca`](./contracts/arbitrum-42161/0xf42ae1d54fd613c9bb14810b0588faaa09a426ca/) | EsGMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11d628...f43bb7`](./contracts/arbitrum-42161/0x11d62807dae812a0f1571243460bf94325f43bb7/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xebf158...1ae473`](./contracts/berachain-80094/0xebf15850f3405484a904b9454f2597bba91ae473/) | GenericUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | GLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/) | GlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfc5a1a...35ad0a`](./contracts/arbitrum-42161/0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a/) | GMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xfaed40...1f9f44`](./contracts/berachain-80094/0xfaed401d3da75d363e4498e2c660ddb12b1f9f44/) | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1305c6...aeadd6`](./contracts/berachain-80094/0x1305c60705cbc5f0098764937914f6a704aeadd6/) | LendingPoolUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x352471...486921`](./contracts/arbitrum-42161/0x35247165119b69a40edd5304969560d0ef486921/) | MintableBaseToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1ab5e3...e4d9d5`](./contracts/berachain-80094/0x1ab5e37aeed5bb938788a8fb6b003239aae4d9d5/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc05f41...cc3f08`](./contracts/arbitrum-42161/0xc05f412bf08f4eef69324fdc4ae8e50862cc3f08/) | PoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75e42e...8a4a0c`](./contracts/arbitrum-42161/0x75e42e6f01baf1d6022bea862a28774a9f8a4a0c/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb87a43...b09868`](./contracts/arbitrum-42161/0xb87a436b93ffe9d75c5cfa7bacfff96430b09868/) | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | PriceFeedTimelock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x22199a...cae489`](./contracts/arbitrum-42161/0x22199a49a999c351ef7927602cfb187ec3cae489/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe6fab3...06e99d`](./contracts/arbitrum-42161/0xe6fab3f0c7199b0d34d7fbe83394fc0e0d06e99d/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5c04a1...90150d`](./contracts/arbitrum-42161/0x5c04a12eb54a093c396f61355c6da0b15890150d/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/) | RewardRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xabbc5f...2f4064`](./contracts/arbitrum-42161/0xabbc5f99639c9b6bcb58544ddf04efa6802f4064/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ShortsTrackerTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe6d557...a906d7`](./contracts/arbitrum-42161/0xe6d557d416ff5640235119369c7e26aa18a906d7/) | sUMAMI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09fec9...240126`](./contracts/arbitrum-42161/0x09fec993be76230296ce8c3b8edafd32b6240126/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x83c19e...9da7c0`](./contracts/arbitrum-42161/0x83c19ec75d649aec7c99e2c6663ca055569da7c0/) | TimelockBoost | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdddc54...5ea96a`](./contracts/arbitrum-42161/0xdddc546e07f1374a07b270b7d863371e575ea96a/) | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1622bf...7f86e3`](./contracts/arbitrum-42161/0x1622bf67e6e5747b81866fe0b85178a93c7f86e3/) | UMAMI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdb96f8...2fb9ac`](./contracts/arbitrum-42161/0xdb96f8efd6865644993505318cc08ff9c42fb9ac/) | Z2O | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=16

Zero-match audit list:

- [14272] DL audit link
- [14273] DL audit link
- [14274] DL audit link
- [14275] DL audit link
- [14276] DL audit link
- [14277] DL audit link
- [14278] Introduction

Fork inheritance lineage and inherited audits are included when available.
