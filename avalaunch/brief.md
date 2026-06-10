# Agentic Audit Brief: Avalaunch

## Project Overview

- Project: Avalaunch (`avalaunch`)
- Website: [https://avalaunch.app](https://avalaunch.app)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:58:57.905Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: avalanche
- Contract surface: 38 unique implementations (142 raw deployments)
- DeFi Llama TVL: $6,835,452.48
- On-chain TVL (included contracts): $31,336,841.96
- TVL by chain: Avalanche $31,336,841.96

## Project Description

Avalaunch is an Avalanche-based launchpad and fundraising platform for token pools and sales. Its infrastructure includes XAVA allocation staking, airdrops, and related sale participation and reward mechanisms. XAVA is evidenced as being used for staking/allocation access and farming or reward-related usage; token-swap DEX functionality, liquidity provision, and governance usage should not be claimed unless separately supported by verified project-owned contracts or documentation.

### Architecture

The XavaToken is the central asset, used across AllocationStaking for launchpad access and FarmingXava for liquidity mining rewards. Proxies like TransparentUpgradeableProxy enable upgradeability for staking contracts, while PangolinPair facilitates XAVA liquidity on the Pangolin DEX.

## Audit Coverage Summary

- Verified implementations audited: 11/13 (84.6%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 38
- Raw deployments: 142
- Audits discovered: 13
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Staleness: 0 fresh, 0 aging, 13 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 10 | 76.9% | 2023-01 |
| CoinFabrik | Tier 2 | 8 | 61.5% | 2022-03 |
| unknown | Tier 2 | 6 | 46.2% | 2022-01 |
| HashEx | Tier 2 | 3 | 23.1% | 2021-09 |
| CertiK | Tier 2 | 2 | 15.4% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| XavaToken | token | avalanche | 6 deployments: avalanche [`0x1a7931...23fde8`](./contracts/avalanche-43114/0x1a7931de2b1ca136d54bd46f51892e0f0e23fde8/); avalanche `0x897ee1...7ace17`; avalanche `0x90ee87...22e2cc`; avalanche `0xc8d815...8c4433`; avalanche `0xd1c3f9...166fc4`; avalanche `0xfbd59a...b7be2b` | ✅ Audited |
| Admin | unknown | avalanche | 2 deployments: avalanche [`0x0ce58b...004a32`](./contracts/avalanche-43114/0x0ce58b15874cb9aa3e64c0ae95615c6112004a32/); avalanche `0x68c58e...86af56` | ✅ Audited |
| Airdrop | operational_periphery | avalanche | 74 deployments: avalanche [`0x00d43f...a3daff`](./contracts/avalanche-43114/0x00d43f69fab8860c2362a96478447256c2a3daff/); avalanche `0x017f0f...f24718`; avalanche `0x08fc7c...fc3f20`; avalanche `0x0a3db4...5129d3`; avalanche `0x0b8efd...1c23de`; avalanche `0x0c40fd...4b6616`; avalanche `0x16108a...1d43e5`; avalanche `0x20f795...82ea08`; avalanche `0x25f1c5...37f1f0`; avalanche `0x300070...6f2e87`; avalanche `0x306a77...767e89`; avalanche `0x339cf6...130328`; avalanche `0x364e23...96233f`; avalanche `0x393824...c573e2`; avalanche `0x3e1a1f...c3f3d7`; avalanche `0x3f58d9...0ac8a7`; avalanche `0x3ff9ae...7c9b00`; avalanche `0x410c62...9572d4`; avalanche `0x46654f...494525`; avalanche `0x47b89d...7c88be`; avalanche `0x49760d...acc482`; avalanche `0x49ca18...f45b58`; avalanche `0x5318d1...06dfea`; avalanche `0x5c3d31...8ed70c`; avalanche `0x5de5bd...f0b177`; avalanche `0x5e1c8c...0c7d00`; avalanche `0x5e2f14...5077a5`; avalanche `0x65cedf...9d9b86`; avalanche `0x67a776...f5bbe1`; avalanche `0x6818ed...0e9dd3`; avalanche `0x6d1c24...cca450`; avalanche `0x6f1c0d...497c6e`; avalanche `0x76b9e1...3d626e`; avalanche `0x79c174...dea870`; avalanche `0x7b72fc...74fb59`; avalanche `0x7d53d4...176655`; avalanche `0x7f9ec1...b9c294`; avalanche `0x7fb3d0...b0b9bc`; avalanche `0x8016ec...35b394`; avalanche `0x80bbea...225187`; avalanche `0x82fc02...c88286`; avalanche `0x840865...a9a017`; avalanche `0x846d02...b137a7`; avalanche `0x90e996...e3e8a2`; avalanche `0x9218e2...bc3890`; avalanche `0x988736...788c9d`; avalanche `0x9b4cc4...2c0b57`; avalanche `0x9f7640...1d9054`; avalanche `0xa4ff8f...1a1b9e`; avalanche `0xa57e3d...2387a2`; avalanche `0xa664a4...cb59e2`; avalanche `0xacba2f...f9204d`; avalanche `0xaed406...ddb9a9`; avalanche `0xaf4dff...a630e5`; avalanche `0xb4c920...ffa5ff`; avalanche `0xbfb6a1...bef842`; avalanche `0xc21534...027521`; avalanche `0xc56cab...c4ab52`; avalanche `0xc86c61...e04412`; avalanche `0xc8ea6f...1af00e`; avalanche `0xc90d20...f25060`; avalanche `0xcb846b...14440f`; avalanche `0xd520e4...8156f7`; avalanche `0xd98b7e...51d70a`; avalanche `0xde9b91...078892`; avalanche `0xecee8b...b18b39`; avalanche `0xf001d3...28a68f`; avalanche `0xf08434...b25990`; avalanche `0xf3aa6b...a700a4`; avalanche `0xf42111...a6f5fb`; avalanche `0xfa5d23...5303bf`; avalanche `0xfaa5ec...9394d6`; avalanche `0xfb42e8...b9d17e`; avalanche `0xfff19c...ced3f6` | ✅ Audited |
| AirdropAVAX | operational_periphery | avalanche | 4 deployments: avalanche [`0x4f7dd6...935b94`](./contracts/avalanche-43114/0x4f7dd657037e6ea7cdad6eafdd20a8a336935b94/); avalanche `0xa3dddc...b1e7a1`; avalanche `0xb1b6b9...ce65eb`; avalanche `0xb7af8d...9b6c9b` | ✅ Audited |
| AllocationStaking | unknown | avalanche | 11 deployments: avalanche [`0x027d6e...df0dd6`](./contracts/avalanche-43114/0x027d6ea70bc4904c2bfc00b014571c6c4edf0dd6/); avalanche `0x897e82...d6a8ff`; avalanche `0xa6a01f...ecd329`; avalanche `0xa6eb49...065410`; avalanche `0xb0ef1a...4d00de`; avalanche `0xb364d7...c0ae40`; avalanche `0xb38056...d3a403`; avalanche `0xcae948...4b9a81`; avalanche `0xcce013...a28c77`; avalanche `0xe4e684...c0b116`; avalanche `0xfbcea5...b1a6ea` | ✅ Audited |
| AvalaunchCollateral | unknown | avalanche | 3 deployments: avalanche [`0x7e5f6a...77bbda`](./contracts/avalanche-43114/0x7e5f6ab97eef4f28900dc0f713eb99d3c077bbda/); avalanche `0x8b1966...9c42b4`; avalanche `0xa95da4...815ca4` | ✅ Audited |
| AvalaunchMarketplace | unknown | avalanche | 2 deployments: avalanche [`0x863c5a...154f08`](./contracts/avalanche-43114/0x863c5aad62c8086746d03e10a7b327504e154f08/); avalanche `0xb6d16b...6f223a` | ✅ Audited |
| AvalaunchSale | unknown | avalanche | 2 deployments: avalanche [`0x0a1a9e...1272e3`](./contracts/avalanche-43114/0x0a1a9eb0d984f1c194c85bace2070724101272e3/); avalanche `0xea3283...77f75a` | ✅ Audited |
| AvalaunchSaleV2 | unknown | avalanche | 2 deployments: avalanche [`0x4e0503...1e7156`](./contracts/avalanche-43114/0x4e05033e96ecb624507835ffccb451ecea1e7156/); avalanche `0x74bafb...2de47d` | ✅ Audited |
| FarmingXava | unknown | avalanche | 2 deployments: avalanche [`0x6e125b...3cc1ea`](./contracts/avalanche-43114/0x6e125b68f0f1963b09add1b755049e66f53cc1ea/); avalanche `0xe82aae...034a68` | ✅ Audited |
| SalesFactory | registry | avalanche | 5 deployments: avalanche [`0x29f351...b7fc7b`](./contracts/avalanche-43114/0x29f351cdd647195553263924cc3abb017cb7fc7b/); avalanche `0x2d37e5...5b0e2f`; avalanche `0x4c858d...df4542`; avalanche `0x9eb3fe...2fb2c6`; avalanche `0xd124d2...16d172` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AvalaunchNFT | token | avalanche | [`0xe29561...0b346a`](./contracts/avalanche-43114/0xe29561fdc8a759742403d537dd1fadcaba0b346a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | 3 deployments: avalanche [`0x796ec8...9914c0`](./contracts/avalanche-43114/0x796ec8bee2871dd820f176730669848d909914c0/); avalanche `0x951aa2...9d29e3`; avalanche `0xc21a52...1916bb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x4c7ccd59df34f6f86311c4ad5ce922f9c83c6c3c) | proxy | avalanche | `0x3c629a...09dc11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x089a3f...b1f539` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0e5505...ac2fc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x17fdfd...22173e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x19f039...96fc05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x23a391...d19179` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x281e91...f5430a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x36a5d7...4f95ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4c7ccd...3c6c3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4f579b...d54332` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x61214c...cbe9d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x635db0...8715a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x86f094...e1ee69` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x87b1be...1c3b36` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa30a84...d6ae8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb3e052...8ffcae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb53e0f...e10d6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb65034...9f1430` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb9db9e...2c3af6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbd27ec...9ca65b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbf838f...ae5026` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc75077...892b4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe7bdfa...9086e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf73be8...8284ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfede8c...6ea54b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2021-11 Avalaunch AllocationStaking.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/2021-11%20Avalaunch%20AllocationStaking.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 18 | high |
| [2022-01 Avalaunch XAVA Protocol Audit Final.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/2022-01%20Avalaunch%20XAVA%20Protocol%20Audit%20Final.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 94 | high |
| [20220225_Paladin_Avalaunch_Final_Report.pdf (also discovered via alternate URL)](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/20220225_Paladin_Avalaunch_Final_Report.pdf) | Paladin | Audit | 2022-02 | stale | Direct | contract_name | 104 | high |
| [20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf (also discovered via alternate URL)](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf) | Paladin | Audit | 2022-03 | stale | Direct | contract_name | 5 | high |
| [/URI ()>>>>](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/Avalaunch%20Audit%202021-08-v2.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 18 | high |
| [Avalaunch Launchpad Final.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/Avalaunch%20Launchpad%20Final.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 19 | high |
| [See Audit](https://avalaunch.app/assets/audits/20230123_Paladin_AvalaunchSalev2_Final_Report.pdf) | Paladin | Audit | 2023-01 | stale | Direct | contract_name | 9 | high |
| [See Audit](https://avalaunch.app/assets/audits/2022_03_Avalaunch_XAVA_Protocol_Audit.pdf) | CoinFabrik | Audit | 2022-03 | stale | Direct | contract_name | 106 | high |
| [See Audit](https://avalaunch.app/assets/audits/2022_01_Avalaunch_XAVA_Protocol_Audit.pdf) | CoinFabrik | Audit | 2022-01 | stale | Direct | contract_name | 94 | high |
| [See Audit](https://avalaunch.app/assets/audits/2021_11_Avalaunch_AllocationStaking.pdf) | CoinFabrik | Audit | 2021-11 | stale | Direct | contract_name | 18 | high |
| [See Audit](https://avalaunch.app/assets/audits/Avalaunch_Launchpad_Final.pdf) | HashEx | Audit | 2021-09 | stale | Direct | contract_name | 19 | high |
| [See Audit](https://avalaunch.app/assets/audits/Avalaunch_Audit_2021_08_v2.pdf) | CoinFabrik | Audit | 2021-08 | stale | Direct | contract_name | 18 | high |
| [See Audit](https://avalaunch.app/assets/audits/PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xe29561...0b346a`](./contracts/avalanche-43114/0xe29561fdc8a759742403d537dd1fadcaba0b346a/) | AvalaunchNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13
- Match method counts: extraction_exact=639

Fork inheritance lineage and inherited audits are included when available.
