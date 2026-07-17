# Agentic Audit Brief: Lendle

## Project Overview

- Project: Lendle (`lendle`)
- Website: [https://www.lendle.xyz/](https://www.lendle.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.934Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: mantle
- Contract surface: 30 unique implementations (74 raw deployments)
- DeFi Llama TVL: $506,277.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 34 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 5 common project-authored base contract(s) (versionedinitializable, lendingpoolstorage, debttokenbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 134; live-surface contracts included: 74 (66 live, 8 unknown).
- Excluded by liveness: 60 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/21 (71.4%)
- Deployed-live implementations: 22 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/22
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 30
- Raw deployments: 74
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 15 | 68.2% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | unknown | mantle | n/a | 9 deployments: mantle [`0x19342de516e24b3ea48b9d621e4a71c595251655`](./contracts/mantle-5000/0x19342de516e24b3ea48b9d621e4a71c595251655/); mantle `0x3bb743918fdcaa3a1db55c56132b343c6a57d5c1`; mantle `0x3e597f440a9afbf00d52105ae4031519fc214eff`; mantle `0x63e42e991d322b4a6917091666f7a65508e94898`; mantle `0x6a4a5eafe25a4060f6bf0bfe8a0c3359af1e6de0`; mantle `0xb8ed1130b5504be4bb7f4b0698504e589a596de3`; mantle `0xbff488a01fca22f627e0176c8b6a3aee252f60bb`; mantle `0xec3414058620e118d2258f8d9765f6c8b8320694`; mantle `0xf375e5a2a40b423606d47c2ce533a008b5966e05` | ✅ Audited |
| ChefIncentivesController | unknown | mantle | n/a | [`0x201673fe5b93d92b9a036cb4e2e444d352413b32`](./contracts/mantle-5000/0x201673fe5b93d92b9a036cb4e2e444d352413b32/) | ✅ Audited |
| LendingPool | unknown | mantle | n/a | [`0x13e9761c037f382472ce765556c3da2af29d9ec7`](./contracts/mantle-5000/0x13e9761c037f382472ce765556c3da2af29d9ec7/) | ✅ Audited |
| LendingPoolAddressesProvider | unknown | mantle | n/a | [`0xab94bedd21ae3411eb2698945dfcab1d5c19c3d4`](./contracts/mantle-5000/0xab94bedd21ae3411eb2698945dfcab1d5c19c3d4/) | ✅ Audited |
| LendingPoolAddressesProviderRegistry | unknown | mantle | n/a | 2 deployments: mantle [`0xb92bffee2de49b6e87ef3260337b676a2811b868`](./contracts/mantle-5000/0xb92bffee2de49b6e87ef3260337b676a2811b868/); mantle `0xd272756c3c07f253cc3199176270250b3d0978bc` | ✅ Audited |
| LendingPoolCollateralManager | unknown | mantle | n/a | [`0x7d350354dd9d1e48ab1810f1f1b139309e9394cc`](./contracts/mantle-5000/0x7d350354dd9d1e48ab1810f1f1b139309e9394cc/) | ✅ Audited |
| LendingPoolConfigurator | unknown | mantle | n/a | 2 deployments: mantle [`0x845a2487742a4fbcf133a9010fe3ed06a92883fe`](./contracts/mantle-5000/0x845a2487742a4fbcf133a9010fe3ed06a92883fe/); mantle `0xfe91d9901dfaaf939a3bb8b444f5e141bb7dd0c1` | ✅ Audited |
| LendleToken | token | mantle | n/a | [`0x25356aeca4210ef7553140edb9b8026089e49396`](./contracts/mantle-5000/0x25356aeca4210ef7553140edb9b8026089e49396/) | ✅ Audited |
| MasterChef | unknown | mantle | n/a | [`0x2186a94df0f06a378999c22cfb6a160b798cd56b`](./contracts/mantle-5000/0x2186a94df0f06a378999c22cfb6a160b798cd56b/) | ✅ Audited |
| MerkleDistributor | unknown | mantle | n/a | [`0xb57f32d28e098cd2d72eafc7a4ecfc54f3589296`](./contracts/mantle-5000/0xb57f32d28e098cd2d72eafc7a4ecfc54f3589296/) | ✅ Audited |
| MultiFeeDistribution | unknown | mantle | n/a | [`0xfa12aaa98bb6f301b5a95383e4f43d5873de522b`](./contracts/mantle-5000/0xfa12aaa98bb6f301b5a95383e4f43d5873de522b/) | ✅ Audited |
| StableDebtToken | unknown | mantle | n/a | 8 deployments: mantle [`0x17dd84c6a3c02af488312122f7749e5d104d58a2`](./contracts/mantle-5000/0x17dd84c6a3c02af488312122f7749e5d104d58a2/); mantle `0x18f6e6f3af6c49766613ebf749441d6407dd381d`; mantle `0x2f1c30f830c69f6309a9db0da8f23456528e7736`; mantle `0x4b09680c61bb942243e808657dc3fd41cfac04e3`; mantle `0x743e9e5d0db0073a263ab865929173ba303b7c74`; mantle `0x783e5ac41a39526dc742c6afa458f233fbf008f5`; mantle `0xd8a36c0e6148ffb374c6726d4c60bbd55b745407`; mantle `0xf74481eea2aa5d9b6b4ee3281f49c03787b40291` | ✅ Audited |
| TokenVesting | operational_periphery | mantle | n/a | [`0xa7f784dc0ec287342b0b84e63961effa541f7e6f`](./contracts/mantle-5000/0xa7f784dc0ec287342b0b84e63961effa541f7e6f/) | ✅ Audited |
| VariableDebtToken | unknown | mantle | n/a | 7 deployments: mantle [`0x25a1b600bf4f1812b93244eb1965dd189dd072c4`](./contracts/mantle-5000/0x25a1b600bf4f1812b93244eb1965dd189dd072c4/); mantle `0x5b82b7bd1d2c32936e96dba4e1192626f4ef1277`; mantle `0x63d5a8641e0ada216bbea37f7dadc09ee70ae8ce`; mantle `0x6e24fb30ffadf55cda6601a8f12ba9709054a820`; mantle `0x929138ad4da183fda984ae6145f863fcc7108ee1`; mantle `0xb3f838d219a0cfba73193453c2023090277d6af5`; mantle `0xf7f3ba8fe527eb81d54aa06689cdb74f95ad55f2` | ✅ Audited |
| WETHGateway | token | mantle | n/a | [`0xec831f8710c6286a91a348928600157f07ac55c2`](./contracts/mantle-5000/0xec831f8710c6286a91a348928600157f07ac55c2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenV2 | token | mantle | n/a | 11 deployments: mantle [`0x1bd5e38ffa87f81e7adc9b61439a52a37b04698d`](./contracts/mantle-5000/0x1bd5e38ffa87f81e7adc9b61439a52a37b04698d/); mantle `0x248ba02fd2ab556ed0e10a2ca65650a0c4ce4436`; mantle `0x37d05152086f82c660c3d11c7ccfbef21d173bec`; mantle `0x38113ce76f7233ed9eb6648abeb5042664504b43`; mantle `0x4d7b93b31286deb2c684468370774ccde90f22cf`; mantle `0x612271b3aec0e8871dd62a9d312633bd7b0c8c8c`; mantle `0x665f9abbb225a5dfc281a3d5a829c6c3d46e8d47`; mantle `0x892e01e22027ae3d7c2f50fa38522138036162d6`; mantle `0x990a4ef1b904cc0fe5e4fec06617fd9b08ad6e1e`; mantle `0xc430c4b737abef0bf8c16c7e22af2b36c4fc2f7a`; mantle `0xf8d3af841db61434ca7813ef6d3c36edd21184e2` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | mantle | n/a | [`0xb92ead4d4ea7290187690ce980e1e6ab43eb0f13`](./contracts/mantle-5000/0xb92ead4d4ea7290187690ce980e1e6ab43eb0f13/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | mantle | n/a | [`0xc90c10c7e3b2f14870cc870a046bd099ccddee12`](./contracts/mantle-5000/0xc90c10c7e3b2f14870cc870a046bd099ccddee12/) | ⚠️ Unaudited |
| MerkleERC20Distributor | operational_periphery | mantle | n/a | 3 deployments: mantle [`0x48222df288e1c3a61c02a54b604a1288575827b8`](./contracts/mantle-5000/0x48222df288e1c3a61c02a54b604a1288575827b8/); mantle `0x93803455aa62e5b95cdb174cd52b16382967078f`; mantle `0xce848c40762c9a65c2b71c90a4d5bc5580191383` | ⚠️ Unaudited |
| ProtocolRevenueDistribution | unknown | mantle | n/a | 2 deployments: mantle [`0xb1946b21bfb1a6c92a57b8fdeb332a17d1d97704`](./contracts/mantle-5000/0xb1946b21bfb1a6c92a57b8fdeb332a17d1d97704/); mantle `0xb442f52b687f1a94b96439e65eed1f7472fa7fa1` | ⚠️ Unaudited |
| StakingConfigurator | unknown | mantle | n/a | [`0xf4e565954356ff2b32c792bd685b989a03528b2f`](./contracts/mantle-5000/0xf4e565954356ff2b32c792bd685b989a03528b2f/) | ⚠️ Unaudited |
| VaultV7 | core_logic | mantle | n/a | 9 deployments: mantle [`0x3ad7d10085c7243a19c6589056a58eb94334cb52`](./contracts/mantle-5000/0x3ad7d10085c7243a19c6589056a58eb94334cb52/); mantle `0x43703b0fd253e1172a0f18e65d097bd7b120b7bf`; mantle `0x4606e0fed3daa8d175274103e37c070da70c53f4`; mantle `0x4fd28eabb44474af1da36c7c4ea5441616d98076`; mantle `0xb2be0a666d4c34ded06242178e8138f7cec72100`; mantle `0xb761673116d7b1840cb94bbf7adb673b4f4a18b4`; mantle `0xd1d9c7be232920bfd971b2f3b83b1c5efe4b15d8`; mantle `0xd1fc69f097141189a4d46ee84e11992e6be87cae`; mantle `0xeb244cc3fc3c3ca391d453def40cf78eaf3b7373` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mantle | n/a | `0x0a4e3ed52fe9985381989601e6843579b2962019` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1fb19c31f19f1431fd10f02bc0d345f7b852d70c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x415e2de6832eef50990478166ce288c15c7825bc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4c57be599d0e0414785943569e9b6a66da79aa6b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x520e7f108780cb87cfcdc2eca3fdf4b788dbead6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6eea6ccebe44250288e9cbde7eab90777ef3f106` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8668fa553ba4171280d49de2be20524218b0a01d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xae5f62e4fd9dd8645a81313ebf91ebc674597287` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [sourcehat.com/audits/Lendle](https://sourcehat.com/audits/Lendle) | SourceHat | Audit | 2023-09 | stale | Direct | contract_name | 3 | n/a |
| [www.halborn.com/audits/lendle/brink-a73cf0](https://www.halborn.com/audits/lendle/brink-a73cf0) | Halborn | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view](https://drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view](https://drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view](https://drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view](https://drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view](https://drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view](https://drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view](https://drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sourcehat.com/audits/GeistProtocol](https://sourcehat.com/audits/GeistProtocol) | SourceHat | Audit | 2021-10 | stale | Direct | contract_name | 36 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x1bd5e38ffa87f81e7adc9b61439a52a37b04698d`](./contracts/mantle-5000/0x1bd5e38ffa87f81e7adc9b61439a52a37b04698d/) | ATokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb92ead4d4ea7290187690ce980e1e6ab43eb0f13`](./contracts/mantle-5000/0xb92ead4d4ea7290187690ce980e1e6ab43eb0f13/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x48222df288e1c3a61c02a54b604a1288575827b8`](./contracts/mantle-5000/0x48222df288e1c3a61c02a54b604a1288575827b8/) | MerkleERC20Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb1946b21bfb1a6c92a57b8fdeb332a17d1d97704`](./contracts/mantle-5000/0xb1946b21bfb1a6c92a57b8fdeb332a17d1d97704/) | ProtocolRevenueDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xf4e565954356ff2b32c792bd685b989a03528b2f`](./contracts/mantle-5000/0xf4e565954356ff2b32c792bd685b989a03528b2f/) | StakingConfigurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x3ad7d10085c7243a19c6589056a58eb94334cb52`](./contracts/mantle-5000/0x3ad7d10085c7243a19c6589056a58eb94334cb52/) | VaultV7 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=3, extraction_exact=36

Zero-match audit list:

- [3143] www.halborn.com/audits/lendle/brink-a73cf0
- [3144] drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view
- [3145] drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view
- [3146] drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view
- [3147] drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view
- [3148] drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view
- [3149] drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view
- [3150] drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view

Fork inheritance lineage and inherited audits are included when available.
