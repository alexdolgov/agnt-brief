# Agentic Audit Brief: Lendle

## Project Overview

- Project: Lendle (`lendle`)
- Website: [https://www.lendle.xyz/](https://www.lendle.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.437Z
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

- Coverage of deployed-live implementations: 15/22 (68.2%)
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
| AToken | unknown | mantle | n/a | 9 deployments: mantle [`0x19342d...251655`](./contracts/mantle-5000/0x19342de516e24b3ea48b9d621e4a71c595251655/); mantle `0x3bb743...57d5c1`; mantle `0x3e597f...214eff`; mantle `0x63e42e...e94898`; mantle `0x6a4a5e...1e6de0`; mantle `0xb8ed11...596de3`; mantle `0xbff488...2f60bb`; mantle `0xec3414...320694`; mantle `0xf375e5...966e05` | ✅ Audited |
| ChefIncentivesController | unknown | mantle | n/a | [`0x201673...413b32`](./contracts/mantle-5000/0x201673fe5b93d92b9a036cb4e2e444d352413b32/) | ✅ Audited |
| LendingPool | unknown | mantle | n/a | [`0x13e976...9d9ec7`](./contracts/mantle-5000/0x13e9761c037f382472ce765556c3da2af29d9ec7/) | ✅ Audited |
| LendingPoolAddressesProvider | unknown | mantle | n/a | [`0xab94be...19c3d4`](./contracts/mantle-5000/0xab94bedd21ae3411eb2698945dfcab1d5c19c3d4/) | ✅ Audited |
| LendingPoolAddressesProviderRegistry | unknown | mantle | n/a | 2 deployments: mantle [`0xb92bff...11b868`](./contracts/mantle-5000/0xb92bffee2de49b6e87ef3260337b676a2811b868/); mantle `0xd27275...0978bc` | ✅ Audited |
| LendingPoolCollateralManager | unknown | mantle | n/a | [`0x7d3503...9394cc`](./contracts/mantle-5000/0x7d350354dd9d1e48ab1810f1f1b139309e9394cc/) | ✅ Audited |
| LendingPoolConfigurator | unknown | mantle | n/a | 2 deployments: mantle [`0x845a24...2883fe`](./contracts/mantle-5000/0x845a2487742a4fbcf133a9010fe3ed06a92883fe/); mantle `0xfe91d9...7dd0c1` | ✅ Audited |
| LendleToken | token | mantle | n/a | [`0x25356a...e49396`](./contracts/mantle-5000/0x25356aeca4210ef7553140edb9b8026089e49396/) | ✅ Audited |
| MasterChef | unknown | mantle | n/a | [`0x2186a9...8cd56b`](./contracts/mantle-5000/0x2186a94df0f06a378999c22cfb6a160b798cd56b/) | ✅ Audited |
| MerkleDistributor | unknown | mantle | n/a | [`0xb57f32...589296`](./contracts/mantle-5000/0xb57f32d28e098cd2d72eafc7a4ecfc54f3589296/) | ✅ Audited |
| MultiFeeDistribution | unknown | mantle | n/a | [`0xfa12aa...de522b`](./contracts/mantle-5000/0xfa12aaa98bb6f301b5a95383e4f43d5873de522b/) | ✅ Audited |
| StableDebtToken | unknown | mantle | n/a | 8 deployments: mantle [`0x17dd84...4d58a2`](./contracts/mantle-5000/0x17dd84c6a3c02af488312122f7749e5d104d58a2/); mantle `0x18f6e6...dd381d`; mantle `0x2f1c30...8e7736`; mantle `0x4b0968...ac04e3`; mantle `0x743e9e...3b7c74`; mantle `0x783e5a...f008f5`; mantle `0xd8a36c...745407`; mantle `0xf74481...b40291` | ✅ Audited |
| TokenVesting | operational_periphery | mantle | n/a | [`0xa7f784...1f7e6f`](./contracts/mantle-5000/0xa7f784dc0ec287342b0b84e63961effa541f7e6f/) | ✅ Audited |
| VariableDebtToken | unknown | mantle | n/a | 7 deployments: mantle [`0x25a1b6...d072c4`](./contracts/mantle-5000/0x25a1b600bf4f1812b93244eb1965dd189dd072c4/); mantle `0x5b82b7...ef1277`; mantle `0x63d5a8...0ae8ce`; mantle `0x6e24fb...54a820`; mantle `0x929138...108ee1`; mantle `0xb3f838...7d6af5`; mantle `0xf7f3ba...ad55f2` | ✅ Audited |
| WETHGateway | token | mantle | n/a | [`0xec831f...ac55c2`](./contracts/mantle-5000/0xec831f8710c6286a91a348928600157f07ac55c2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenV2 | token | mantle | n/a | 11 deployments: mantle [`0x1bd5e3...04698d`](./contracts/mantle-5000/0x1bd5e38ffa87f81e7adc9b61439a52a37b04698d/); mantle `0x248ba0...ce4436`; mantle `0x37d051...173bec`; mantle `0x38113c...504b43`; mantle `0x4d7b93...0f22cf`; mantle `0x612271...0c8c8c`; mantle `0x665f9a...6e8d47`; mantle `0x892e01...6162d6`; mantle `0x990a4e...ad6e1e`; mantle `0xc430c4...fc2f7a`; mantle `0xf8d3af...1184e2` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | mantle | n/a | [`0xb92ead...eb0f13`](./contracts/mantle-5000/0xb92ead4d4ea7290187690ce980e1e6ab43eb0f13/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | mantle | n/a | [`0xc90c10...ddee12`](./contracts/mantle-5000/0xc90c10c7e3b2f14870cc870a046bd099ccddee12/) | ⚠️ Unaudited |
| MerkleERC20Distributor | operational_periphery | mantle | n/a | 3 deployments: mantle [`0x48222d...5827b8`](./contracts/mantle-5000/0x48222df288e1c3a61c02a54b604a1288575827b8/); mantle `0x938034...67078f`; mantle `0xce848c...191383` | ⚠️ Unaudited |
| ProtocolRevenueDistribution | unknown | mantle | n/a | 2 deployments: mantle [`0xb1946b...d97704`](./contracts/mantle-5000/0xb1946b21bfb1a6c92a57b8fdeb332a17d1d97704/); mantle `0xb442f5...fa7fa1` | ⚠️ Unaudited |
| StakingConfigurator | unknown | mantle | n/a | [`0xf4e565...528b2f`](./contracts/mantle-5000/0xf4e565954356ff2b32c792bd685b989a03528b2f/) | ⚠️ Unaudited |
| VaultV7 | core_logic | mantle | n/a | 9 deployments: mantle [`0x3ad7d1...34cb52`](./contracts/mantle-5000/0x3ad7d10085c7243a19c6589056a58eb94334cb52/); mantle `0x43703b...20b7bf`; mantle `0x4606e0...0c53f4`; mantle `0x4fd28e...d98076`; mantle `0xb2be0a...c72100`; mantle `0xb76167...4a18b4`; mantle `0xd1d9c7...4b15d8`; mantle `0xd1fc69...e87cae`; mantle `0xeb244c...3b7373` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | mantle | n/a | `0x0a4e3e...962019` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1fb19c...52d70c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x415e2d...7825bc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4c57be...79aa6b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x520e7f...dbead6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6eea6c...f3f106` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8668fa...b0a01d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xae5f62...597287` | ❓ Unverified |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 30 |

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
