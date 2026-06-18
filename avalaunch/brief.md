# Agentic Audit Brief: Avalaunch

## Project Overview

- Project: Avalaunch (`avalaunch`)
- Website: [https://avalaunch.app](https://avalaunch.app)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-18T20:35:55.929Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: avalanche
- Contract surface: 11 unique implementations (71 raw deployments)
- DeFi Llama TVL: $5,761,977.47
- On-chain TVL (included contracts): $31,336,841.96
- TVL by chain: Avalanche $31,336,841.96

## Project Description

Avalaunch is an Avalanche-based launchpad and fundraising platform for token pools and sales. Its infrastructure includes XAVA allocation staking, airdrops, and related sale participation and reward mechanisms. XAVA is evidenced as being used for staking/allocation access and farming or reward-related usage; token-swap DEX functionality, liquidity provision, and governance usage should not be claimed unless separately supported by verified project-owned contracts or documentation.

### Architecture

The XavaToken is the central asset, used across AllocationStaking for launchpad access and FarmingXava for liquidity mining rewards. Proxies like TransparentUpgradeableProxy enable upgradeability for staking contracts, while PangolinPair facilitates XAVA liquidity on the Pangolin DEX.

## Contract Surface Quality

- Indexed contracts: 151; live-surface contracts included: 71 (71 live, 0 unknown).
- Excluded by liveness: 68 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 0/6 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 14; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/7 (57.1%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 11
- Raw deployments: 71
- Audits discovered: 13
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Staleness: 0 fresh, 0 aging, 13 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CoinFabrik | Tier 2 | 4 | 57.1% | 2022-03 |
| Paladin | Tier 2 | 3 | 42.9% | 2023-01 |
| unknown | Tier 2 | 3 | 42.9% | 2022-01 |
| CertiK | Tier 2 | 2 | 28.6% | 2021-05 |
| HashEx | Tier 2 | 1 | 14.3% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| XavaToken | token | avalanche | n/a | [`0xd1c3f9...166fc4`](./contracts/avalanche-43114/0xd1c3f94de7e5b45fa4edbba472491a9f4b166fc4/) | ✅ Audited |
| Airdrop | operational_periphery | avalanche | n/a | 57 deployments: avalanche [`0x017f0f...f24718`](./contracts/avalanche-43114/0x017f0f2747953bdc30decd1603d26d491ef24718/); avalanche `0x08fc7c...fc3f20`; avalanche `0x0b8efd...1c23de`; avalanche `0x16108a...1d43e5`; avalanche `0x20f795...82ea08`; avalanche `0x25f1c5...37f1f0`; avalanche `0x306a77...767e89`; avalanche `0x339cf6...130328`; avalanche `0x364e23...96233f`; avalanche `0x3e1a1f...c3f3d7`; avalanche `0x3f58d9...0ac8a7`; avalanche `0x410c62...9572d4`; avalanche `0x46654f...494525`; avalanche `0x49760d...acc482`; avalanche `0x49ca18...f45b58`; avalanche `0x5318d1...06dfea`; avalanche `0x5c3d31...8ed70c`; avalanche `0x5de5bd...f0b177`; avalanche `0x5e1c8c...0c7d00`; avalanche `0x5e2f14...5077a5`; avalanche `0x67a776...f5bbe1`; avalanche `0x6818ed...0e9dd3`; avalanche `0x6d1c24...cca450`; avalanche `0x6f1c0d...497c6e`; avalanche `0x76b9e1...3d626e`; avalanche `0x79c174...dea870`; avalanche `0x7b72fc...74fb59`; avalanche `0x7d53d4...176655`; avalanche `0x7f9ec1...b9c294`; avalanche `0x7fb3d0...b0b9bc`; avalanche `0x8016ec...35b394`; avalanche `0x82fc02...c88286`; avalanche `0x840865...a9a017`; avalanche `0x90e996...e3e8a2`; avalanche `0x9218e2...bc3890`; avalanche `0x988736...788c9d`; avalanche `0x9f7640...1d9054`; avalanche `0xa4ff8f...1a1b9e`; avalanche `0xa57e3d...2387a2`; avalanche `0xa664a4...cb59e2`; avalanche `0xacba2f...f9204d`; avalanche `0xaed406...ddb9a9`; avalanche `0xaf4dff...a630e5`; avalanche `0xb4c920...ffa5ff`; avalanche `0xbfb6a1...bef842`; avalanche `0xc86c61...e04412`; avalanche `0xc8ea6f...1af00e`; avalanche `0xc90d20...f25060`; avalanche `0xd98b7e...51d70a`; avalanche `0xde9b91...078892`; avalanche `0xecee8b...b18b39`; avalanche `0xf001d3...28a68f`; avalanche `0xf08434...b25990`; avalanche `0xf3aa6b...a700a4`; avalanche `0xfa5d23...5303bf`; avalanche `0xfb42e8...b9d17e`; avalanche `0xfff19c...ced3f6` | ✅ Audited |
| FarmingXava | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6e125b...3cc1ea`](./contracts/avalanche-43114/0x6e125b68f0f1963b09add1b755049e66f53cc1ea/); avalanche `0xe82aae...034a68` | ✅ Audited |
| SalesFactory | registry | avalanche | n/a | [`0x2d37e5...5b0e2f`](./contracts/avalanche-43114/0x2d37e5d424cd24d374253e58e54ba8ee395b0e2f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AvalaunchSale | unknown | avalanche | n/a | 2 deployments: avalanche [`0x16bc59...38665a`](./contracts/avalanche-43114/0x16bc59978851012ada4843e49df2a314ea38665a/); avalanche `0x6168bb...1871ff` | ⚠️ Unaudited |
| AvalaunchSaleV2 | unknown | avalanche | n/a | 3 deployments: avalanche [`0x60d57f...35ec42`](./contracts/avalanche-43114/0x60d57fe620dbcf7d8d96b8bcfbf504fd3135ec42/); avalanche `0xc354d8...cf35aa`; avalanche `0xeef28e...e8548b` | ⚠️ Unaudited |
| PangolinPair | unknown | avalanche | n/a | [`0x42152b...5e8b25`](./contracts/avalanche-43114/0x42152bdd72de8d6767fe3b4e17a221d6985e8b25/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x4f579b...d54332` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8498a1...06a967` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb53e0f...e10d6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf73be8...8284ae` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2021-11 Avalaunch AllocationStaking.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/2021-11%20Avalaunch%20AllocationStaking.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [2022-01 Avalaunch XAVA Protocol Audit Final.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/2022-01%20Avalaunch%20XAVA%20Protocol%20Audit%20Final.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 58 | high |
| [20220225_Paladin_Avalaunch_Final_Report.pdf (also discovered via alternate URL)](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/20220225_Paladin_Avalaunch_Final_Report.pdf) | Paladin | Audit | 2022-02 | stale | Direct | contract_name | 59 | high |
| [20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf (also discovered via alternate URL)](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf) | Paladin | Audit | 2022-03 | stale | Direct | contract_name | 0 | n/a |
| [/URI ()>>>>](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/Avalaunch%20Audit%202021-08-v2.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | high |
| [Avalaunch Launchpad Final.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/Avalaunch%20Launchpad%20Final.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | high |
| [See Audit](https://avalaunch.app/assets/audits/20230123_Paladin_AvalaunchSalev2_Final_Report.pdf) | Paladin | Audit | 2023-01 | stale | Direct | contract_name | 1 | high |
| [See Audit](https://avalaunch.app/assets/audits/2022_03_Avalaunch_XAVA_Protocol_Audit.pdf) | CoinFabrik | Audit | 2022-03 | stale | Direct | contract_name | 61 | high |
| [See Audit](https://avalaunch.app/assets/audits/2022_01_Avalaunch_XAVA_Protocol_Audit.pdf) | CoinFabrik | Audit | 2022-01 | stale | Direct | contract_name | 58 | high |
| [See Audit](https://avalaunch.app/assets/audits/2021_11_Avalaunch_AllocationStaking.pdf) | CoinFabrik | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [See Audit](https://avalaunch.app/assets/audits/Avalaunch_Launchpad_Final.pdf) | HashEx | Audit | 2021-09 | stale | Direct | contract_name | 1 | high |
| [See Audit](https://avalaunch.app/assets/audits/Avalaunch_Audit_2021_08_v2.pdf) | CoinFabrik | Audit | 2021-08 | stale | Direct | contract_name | 1 | high |
| [See Audit](https://avalaunch.app/assets/audits/PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x16bc59...38665a`](./contracts/avalanche-43114/0x16bc59978851012ada4843e49df2a314ea38665a/) | AvalaunchSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x60d57f...35ec42`](./contracts/avalanche-43114/0x60d57fe620dbcf7d8d96b8bcfbf504fd3135ec42/) | AvalaunchSaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=12
- Match method counts: extraction_exact=639

Zero-match audit list:

- [2226] 20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
