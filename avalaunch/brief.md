# Agentic Audit Brief: Avalaunch

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Avalaunch (`avalaunch`)
- Website: [https://avalaunch.app](https://avalaunch.app)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-04T14:53:04.381Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: avalanche
- Contract surface: 35 unique implementations (100 raw deployments)
- DeFi Llama TVL: $6,161,087.01
- On-chain TVL (included contracts): $28,695,461.29
- TVL by chain: Avalanche $28,695,461.29

## Project Description

Dexs. Structurally: 20 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 4 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, upgradeableproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 149; live-surface contracts included: 99 (73 live, 26 unknown).
- Excluded by liveness: 50 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/9 (77.8%)
- Deployed-live implementations: 10 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/10
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 35
- Raw deployments: 100
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 13 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 6 | 60.0% | 2023-01 |
| CoinFabrik | Tier 2 | 4 | 40.0% | 2022-03 |
| unknown | Tier 2 | 3 | 30.0% | 2022-01 |
| CertiK | Tier 2 | 2 | 20.0% | 2021-05 |
| HashEx | Tier 2 | 1 | 10.0% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| XavaToken | token | avalanche | n/a | [`0xd1c3f9...166fc4`](./contracts/avalanche-43114/0xd1c3f94de7e5b45fa4edbba472491a9f4b166fc4/) | ✅ Audited |
| Airdrop | operational_periphery | avalanche | n/a | 57 deployments: avalanche [`0x017f0f...f24718`](./contracts/avalanche-43114/0x017f0f2747953bdc30decd1603d26d491ef24718/); avalanche `0x08fc7c...fc3f20`; avalanche `0x0b8efd...1c23de`; avalanche `0x16108a...1d43e5`; avalanche `0x20f795...82ea08`; avalanche `0x25f1c5...37f1f0`; avalanche `0x306a77...767e89`; avalanche `0x339cf6...130328`; avalanche `0x364e23...96233f`; avalanche `0x3e1a1f...c3f3d7`; avalanche `0x3f58d9...0ac8a7`; avalanche `0x410c62...9572d4`; avalanche `0x46654f...494525`; avalanche `0x49760d...acc482`; avalanche `0x49ca18...f45b58`; avalanche `0x5318d1...06dfea`; avalanche `0x5c3d31...8ed70c`; avalanche `0x5de5bd...f0b177`; avalanche `0x5e1c8c...0c7d00`; avalanche `0x5e2f14...5077a5`; avalanche `0x67a776...f5bbe1`; avalanche `0x6818ed...0e9dd3`; avalanche `0x6d1c24...cca450`; avalanche `0x6f1c0d...497c6e`; avalanche `0x76b9e1...3d626e`; avalanche `0x79c174...dea870`; avalanche `0x7b72fc...74fb59`; avalanche `0x7d53d4...176655`; avalanche `0x7f9ec1...b9c294`; avalanche `0x7fb3d0...b0b9bc`; avalanche `0x8016ec...35b394`; avalanche `0x82fc02...c88286`; avalanche `0x840865...a9a017`; avalanche `0x90e996...e3e8a2`; avalanche `0x9218e2...bc3890`; avalanche `0x988736...788c9d`; avalanche `0x9f7640...1d9054`; avalanche `0xa4ff8f...1a1b9e`; avalanche `0xa57e3d...2387a2`; avalanche `0xa664a4...cb59e2`; avalanche `0xacba2f...f9204d`; avalanche `0xaed406...ddb9a9`; avalanche `0xaf4dff...a630e5`; avalanche `0xb4c920...ffa5ff`; avalanche `0xbfb6a1...bef842`; avalanche `0xc86c61...e04412`; avalanche `0xc8ea6f...1af00e`; avalanche `0xc90d20...f25060`; avalanche `0xd98b7e...51d70a`; avalanche `0xde9b91...078892`; avalanche `0xecee8b...b18b39`; avalanche `0xf001d3...28a68f`; avalanche `0xf08434...b25990`; avalanche `0xf3aa6b...a700a4`; avalanche `0xfa5d23...5303bf`; avalanche `0xfb42e8...b9d17e`; avalanche `0xfff19c...ced3f6` | ✅ Audited |
| AvalaunchCollateral | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7e5f6a...77bbda`](./contracts/avalanche-43114/0x7e5f6ab97eef4f28900dc0f713eb99d3c077bbda/); avalanche `0x8b1966...9c42b4` | ✅ Audited |
| AvalaunchCollateral | unknown | avalanche | n/a | [`0xa95da4...815ca4`](./contracts/avalanche-43114/0xa95da4598d509f621f45d8b97283928bd0815ca4/) | ✅ Audited |
| AvalaunchSale | unknown | avalanche | n/a | 4 deployments: avalanche [`0x0a1a9e...1272e3`](./contracts/avalanche-43114/0x0a1a9eb0d984f1c194c85bace2070724101272e3/); avalanche `0x16bc59...38665a`; avalanche `0x6168bb...1871ff`; avalanche `0xea3283...77f75a` | ✅ Audited |
| FarmingXava | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6e125b...3cc1ea`](./contracts/avalanche-43114/0x6e125b68f0f1963b09add1b755049e66f53cc1ea/); avalanche `0xe82aae...034a68` | ✅ Audited |
| SalesFactory | registry | avalanche | n/a | [`0x2d37e5...5b0e2f`](./contracts/avalanche-43114/0x2d37e5d424cd24d374253e58e54ba8ee395b0e2f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllocationStaking | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa6a01f...ecd329`](./contracts/avalanche-43114/0xa6a01f4b494243d84cf8030d982d7eeb2aecd329/); avalanche `0xcce013...a28c77` | ⚠️ Unaudited |
| AvalaunchSaleV2 | unknown | avalanche | n/a | 3 deployments: avalanche [`0x60d57f...35ec42`](./contracts/avalanche-43114/0x60d57fe620dbcf7d8d96b8bcfbf504fd3135ec42/); avalanche `0xc354d8...cf35aa`; avalanche `0xeef28e...e8548b` | ⚠️ Unaudited |
| PangolinPair | unknown | avalanche | n/a | [`0x42152b...5e8b25`](./contracts/avalanche-43114/0x42152bdd72de8d6767fe3b4e17a221d6985e8b25/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x4c7ccd59df34f6f86311c4ad5ce922f9c83c6c3c) | proxy | avalanche | n/a | 2 deployments: avalanche `0x3c629a...09dc11`; avalanche `0x4c7ccd...3c6c3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x089a3f...b1f539` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e5505...ac2fc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x17fdfd...22173e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19f039...96fc05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23a391...d19179` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x281e91...f5430a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x36a5d7...4f95ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f579b...d54332` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61214c...cbe9d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x635db0...8715a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8498a1...06a967` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86f094...e1ee69` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87b1be...1c3b36` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa30a84...d6ae8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3e052...8ffcae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb53e0f...e10d6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb65034...9f1430` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb9db9e...2c3af6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbd27ec...9ca65b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf838f...ae5026` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc75077...892b4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7bdfa...9086e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf73be8...8284ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfede8c...6ea54b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2021-11 Avalaunch AllocationStaking.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/2021-11%20Avalaunch%20AllocationStaking.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [2022-01 Avalaunch XAVA Protocol Audit Final.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/2022-01%20Avalaunch%20XAVA%20Protocol%20Audit%20Final.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 2 | n/a |
| [20220225_Paladin_Avalaunch_Final_Report.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/20220225_Paladin_Avalaunch_Final_Report.pdf) | Paladin | Audit | 2022-02 | stale | Direct | contract_name | 3 | n/a |
| [20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf) | Paladin | Audit | 2022-03 | stale | Direct | contract_name | 7 | high |
| [Avalaunch Audit 2021-08-v2.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/Avalaunch%20Audit%202021-08-v2.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [Avalaunch Launchpad Final.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/Avalaunch%20Launchpad%20Final.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |
| [20230123_Paladin_AvalaunchSalev2_Final_Report.pdf](https://avalaunch.app/assets/audits/20230123_Paladin_AvalaunchSalev2_Final_Report.pdf) | Paladin | Audit | 2023-01 | stale | Direct | contract_name | 1 | n/a |
| [2022_03_Avalaunch_XAVA_Protocol_Audit.pdf](https://avalaunch.app/assets/audits/2022_03_Avalaunch_XAVA_Protocol_Audit.pdf) | CoinFabrik | Audit | 2022-03 | stale | Direct | contract_name | 4 | n/a |
| [2022_01_Avalaunch_XAVA_Protocol_Audit.pdf](https://avalaunch.app/assets/audits/2022_01_Avalaunch_XAVA_Protocol_Audit.pdf) | CoinFabrik | Audit | 2022-01 | stale | Direct | contract_name | 2 | n/a |
| [2021_11_Avalaunch_AllocationStaking.pdf](https://avalaunch.app/assets/audits/2021_11_Avalaunch_AllocationStaking.pdf) | CoinFabrik | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [Avalaunch_Launchpad_Final.pdf](https://avalaunch.app/assets/audits/Avalaunch_Launchpad_Final.pdf) | HashEx | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |
| [Avalaunch_Audit_2021_08_v2.pdf](https://avalaunch.app/assets/audits/Avalaunch_Audit_2021_08_v2.pdf) | CoinFabrik | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf](https://avalaunch.app/assets/audits/PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x60d57f...35ec42`](./contracts/avalanche-43114/0x60d57fe620dbcf7d8d96b8bcfbf504fd3135ec42/) | AvalaunchSaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=20, extraction_exact=7

Fork inheritance lineage and inherited audits are included when available.
