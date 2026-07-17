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
| XavaToken | token | avalanche | n/a | [`0xd1c3f94de7e5b45fa4edbba472491a9f4b166fc4`](./contracts/avalanche-43114/0xd1c3f94de7e5b45fa4edbba472491a9f4b166fc4/) | ✅ Audited |
| Airdrop | operational_periphery | avalanche | n/a | 57 deployments: avalanche [`0x017f0f2747953bdc30decd1603d26d491ef24718`](./contracts/avalanche-43114/0x017f0f2747953bdc30decd1603d26d491ef24718/); avalanche `0x08fc7ca108ff179fc381cdbb551385a1dafc3f20`; avalanche `0x0b8efd8174398222d3f922eb6ebe9375d71c23de`; avalanche `0x16108a6ee1c45a0e7d12af0f934d110ea11d43e5`; avalanche `0x20f795bc4f916891e9c6c02edb59055aa782ea08`; avalanche `0x25f1c595cd8aa9a9e1eb16ac970b94e13637f1f0`; avalanche `0x306a7750f0a861214a4f1413822b6f3a12767e89`; avalanche `0x339cf62cb6a2e4f87eb1b6b3661f3f6c3a130328`; avalanche `0x364e232d9880e4a3e8505debbc2f93c6a896233f`; avalanche `0x3e1a1f5a9dc367a82ed2b868e2122c9d48c3f3d7`; avalanche `0x3f58d93477e6b555f2fe2808b787bf69380ac8a7`; avalanche `0x410c62978a8784709906a084834a71e07e9572d4`; avalanche `0x46654f2553039c4380c48e74cc697e59db494525`; avalanche `0x49760d434fe42cb0379edc5d04fbbe3909acc482`; avalanche `0x49ca181191897e10e15930097d6ac44592f45b58`; avalanche `0x5318d1490ffe7ef83a1b63e2bb1533378906dfea`; avalanche `0x5c3d31104036f890195ea380662aca9a1f8ed70c`; avalanche `0x5de5bdaf5f673bd01d91379b0fc9386e41f0b177`; avalanche `0x5e1c8c3e8a256f414b4731cc11b796cbc10c7d00`; avalanche `0x5e2f141bb237e71f045a497c431144a72b5077a5`; avalanche `0x67a776ce18c5e71abb01273a2971e32469f5bbe1`; avalanche `0x6818edffa6367e7ee365047bb711af2e180e9dd3`; avalanche `0x6d1c24cfc33e2df39223e6bd4d7fa000e3cca450`; avalanche `0x6f1c0d40aba87fcb7e38fc2ed46080e562497c6e`; avalanche `0x76b9e19eba8e4cd90dd46e642d642813723d626e`; avalanche `0x79c17438d833ba43aea2ef4e8c9afd22f8dea870`; avalanche `0x7b72fcc48ff3e534659b74d95b57141e1174fb59`; avalanche `0x7d53d45b6d929662b5586db2dbd52068c5176655`; avalanche `0x7f9ec1de861f16fb9218e6fe86b83359b8b9c294`; avalanche `0x7fb3d0b92adf411b3bc1aadae0670ea641b0b9bc`; avalanche `0x8016ecd1303ea7ca5ec9d1827bbbc30b2935b394`; avalanche `0x82fc023b1dece6217d7ed1870a8eb45fe2c88286`; avalanche `0x8408656b59758f1bb8dec232c5f62ee7bfa9a017`; avalanche `0x90e996de9843ac8d6b69ce9a7c97bfc301e3e8a2`; avalanche `0x9218e2b14a09cf707a2980f303b967eee0bc3890`; avalanche `0x98873638a695dc8b5443bdfc704191387d788c9d`; avalanche `0x9f764059a65d08d8269920e26b5fd3d8a81d9054`; avalanche `0xa4ff8f36e5bd5b1df9f1fe261bd68f45db1a1b9e`; avalanche `0xa57e3dde79298ade6d2ca66032bd7d636e2387a2`; avalanche `0xa664a4abe3e9c0b90789f8dbb185c0d0cbcb59e2`; avalanche `0xacba2f42b7fa9124f119d7a9e7ac02b58bf9204d`; avalanche `0xaed406313f216dcd1892bdd68540364bb2ddb9a9`; avalanche `0xaf4dff2ba4234f02bfe187ec55eb58b6bfa630e5`; avalanche `0xb4c92006cefe40e0bfd57cee81a3a95b06ffa5ff`; avalanche `0xbfb6a1425fda2b09cfc761a40efe536fe0bef842`; avalanche `0xc86c61654f3176fde88963fc62ebe73324e04412`; avalanche `0xc8ea6fb14d82f88a8a5075774571d1d4cd1af00e`; avalanche `0xc90d206768131767e3e56ecd8fb352d4c3f25060`; avalanche `0xd98b7ec2cf985edff3959de5de5a4bc1f151d70a`; avalanche `0xde9b91f04c7db47fe74ba5cdfd01fb3c45078892`; avalanche `0xecee8b16c6e24f3c8eafb460c99f62208cb18b39`; avalanche `0xf001d3fe81f45cc47e6cd94c8ea130ddd128a68f`; avalanche `0xf0843402ffbd94be626ac26328d5decfbfb25990`; avalanche `0xf3aa6b4a79e6cab92b80b6866147d0e775a700a4`; avalanche `0xfa5d23292f1d6bcc3c4c0a698417a6479b5303bf`; avalanche `0xfb42e80921013200413deccdba07c30a39b9d17e`; avalanche `0xfff19c280566be8fd6528f23938af8d34bced3f6` | ✅ Audited |
| AvalaunchCollateral | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7e5f6ab97eef4f28900dc0f713eb99d3c077bbda`](./contracts/avalanche-43114/0x7e5f6ab97eef4f28900dc0f713eb99d3c077bbda/); avalanche `0x8b1966e6383958395c52d3e8d49fadfe6d9c42b4` | ✅ Audited |
| AvalaunchCollateral | unknown | avalanche | n/a | [`0xa95da4598d509f621f45d8b97283928bd0815ca4`](./contracts/avalanche-43114/0xa95da4598d509f621f45d8b97283928bd0815ca4/) | ✅ Audited |
| AvalaunchSale | unknown | avalanche | n/a | 4 deployments: avalanche [`0x0a1a9eb0d984f1c194c85bace2070724101272e3`](./contracts/avalanche-43114/0x0a1a9eb0d984f1c194c85bace2070724101272e3/); avalanche `0x16bc59978851012ada4843e49df2a314ea38665a`; avalanche `0x6168bbf5ef2001981c8b300723d7f300f01871ff`; avalanche `0xea3283f19a56abb2640b704b2905606c9577f75a` | ✅ Audited |
| FarmingXava | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6e125b68f0f1963b09add1b755049e66f53cc1ea`](./contracts/avalanche-43114/0x6e125b68f0f1963b09add1b755049e66f53cc1ea/); avalanche `0xe82aae7fc62547bdfc36689d0a83de36ff034a68` | ✅ Audited |
| SalesFactory | registry | avalanche | n/a | [`0x2d37e5d424cd24d374253e58e54ba8ee395b0e2f`](./contracts/avalanche-43114/0x2d37e5d424cd24d374253e58e54ba8ee395b0e2f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllocationStaking | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa6a01f4b494243d84cf8030d982d7eeb2aecd329`](./contracts/avalanche-43114/0xa6a01f4b494243d84cf8030d982d7eeb2aecd329/); avalanche `0xcce0130263fda75e1c87b844a49db7066fa28c77` | ⚠️ Unaudited |
| AvalaunchSaleV2 | unknown | avalanche | n/a | 3 deployments: avalanche [`0x60d57fe620dbcf7d8d96b8bcfbf504fd3135ec42`](./contracts/avalanche-43114/0x60d57fe620dbcf7d8d96b8bcfbf504fd3135ec42/); avalanche `0xc354d85c24a724fda55084075fdf25c9e9cf35aa`; avalanche `0xeef28e34ed3d0f64a01ecbfa3f7757014be8548b` | ⚠️ Unaudited |
| PangolinPair | unknown | avalanche | n/a | [`0x42152bdd72de8d6767fe3b4e17a221d6985e8b25`](./contracts/avalanche-43114/0x42152bdd72de8d6767fe3b4e17a221d6985e8b25/) | ⚠️ Unaudited |

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
| Proxy (impl: 0x4c7ccd59df34f6f86311c4ad5ce922f9c83c6c3c) | proxy | avalanche | n/a | 2 deployments: avalanche `0x3c629ac8709edfcd98f1ea36e763bb25e909dc11`; avalanche `0x4c7ccd59df34f6f86311c4ad5ce922f9c83c6c3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x089a3f7e7afc96d73e57edd1aa456e1c99b1f539` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e5505404c0bfc6fc9f70bb1e7d015b7daac2fc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x17fdfd58ecc53ff79e46cb617346004ebf22173e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19f039f18f7f1996dcab3b0b74f4597d1d96fc05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23a391bfc5599f8c02ae121125536e3d72d19179` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x281e9179ce50b951b77d3b0d92456bd3e4f5430a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x36a5d76f58d297cf40723771e82009c76b4f95ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f579b76b9413d3c4a7981a7ea0bbbb7a0d54332` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61214cf4c134709dcfcb7f47e9fff22217cbe9d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x635db067bbd00ede40f47614e65bdb65bb8715a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8498a16b04e754f873198434063c8684d506a967` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86f0942d25859f0791cc3d568ba0a099bbe1ee69` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87b1beaab6f7a40b28a2def896c50e57061c3b36` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa30a84b75aeefa54b8d19afd77c8e39953d6ae8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3e0526b3a942ddd3ef1fd0da6808d41418ffcae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb53e0fa6898c97a477f9c05733bdc10b78e10d6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb650346d08a0a01ba08f7023c6b6d761b69f1430` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb9db9e6a5943e3a21ce87d61a1f5d0b59a2c3af6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbd27ece0637518c519aa4323d93281ad179ca65b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf838ffffd86805933d8c1f971acfd59bbae5026` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc750773926ab42081395aa1b2e3b6b1414892b4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7bdfaa29653082e53c564fc849a1e5fa49086e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf73be8d83320399e5899ebed193f91a2098284ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfede8cdd7d8c2cc0824f1f7d1b6ca6c0996ea54b` | ❓ Unverified |

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
| avalanche | [`0x60d57fe620dbcf7d8d96b8bcfbf504fd3135ec42`](./contracts/avalanche-43114/0x60d57fe620dbcf7d8d96b8bcfbf504fd3135ec42/) | AvalaunchSaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
