# Agentic Audit Brief: Raft

## Project Overview

- Project: Raft (`raft`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.517Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 51 unique implementations (88 raw deployments)
- DeFi Llama TVL: $12,895.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 97 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 19 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 22 common project-authored base contract(s) (positionmanagerdependent, ownable2step, whitelist). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 144; live-surface contracts included: 88 (49 live, 39 unknown).
- Excluded by liveness: 56 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/12 (58.3%)
- Deployed-live implementations: 12 of 51 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/12
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 51
- Raw deployments: 88
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 58.3% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 7 | 58.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20Indexable | unknown | ethereum | n/a | 12 deployments: ethereum [`0x14c623eac578fa595795724aaa8a63d00155295d`](./contracts/ethereum-1/0x14c623eac578fa595795724aaa8a63d00155295d/); ethereum `0x21c412c98a446b6f3a044db7c6f4a83317df5423`; ethereum `0x21cf10ff341c488bd29a129a969753df98a65850`; ethereum `0x282a582cdcb46218eaf023ad90e9ef619c3e8a2f`; ethereum `0x2c97108e22b93d636eea3697c53bae8dcd91ecfa`; ethereum `0x33ecd9020376753233b24d7482e247c32a738660`; ethereum `0x4d52a8ed75723d189a6592807f391bac279b9d61`; ethereum `0x7a0062b654ca2b492c86a0548e6e7e2c7b63126a`; ethereum `0x9e0b7f05de5e359a84692d4c90ee75c2e0ea1c60`; ethereum `0xaa5d3d3d266e3eefe848c70ea824156031b5a9f8`; ethereum `0xb145a0832bd5fad3da8a4589af2e21c0179c6e66`; ethereum `0xd0db31473caad65428ba301d2174390d11d0c788` | ✅ Audited |
| OneStepLeverage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00ab290cc289f818a9e80ebaf18685e353df16f0`](./contracts/ethereum-1/0x00ab290cc289f818a9e80ebaf18685e353df16f0/); ethereum `0x2f1ba373c72d91556027fff01f8f212b2e28da12` | ✅ Audited |
| PositionManager | unknown | ethereum | n/a | [`0x5f59b322eb3e16a0c78846195af1f588b77403fc`](./contracts/ethereum-1/0x5f59b322eb3e16a0c78846195af1f588b77403fc/) | ✅ Audited |
| PositionManagerStETH | unknown | ethereum | n/a | [`0x839d6833cee34ffab6fa9057b39f02bd3091a1d6`](./contracts/ethereum-1/0x839d6833cee34ffab6fa9057b39f02bd3091a1d6/) | ✅ Audited |
| PriceFeed | unknown | ethereum | n/a | 12 deployments: ethereum [`0x0e6373a67e72666c8b044155c78e4178fe2c893c`](./contracts/ethereum-1/0x0e6373a67e72666c8b044155c78e4178fe2c893c/); ethereum `0x2bae40a96d4ad0150f48e2174cfcdf2bd4f0b39c`; ethereum `0x3cd40d6e8426c9f02fe7b23867661377e462df3d`; ethereum `0x4db82a9a901ec049e3d63323bf50be072469cf0c`; ethereum `0x5965f70a5806ea99561f5a5a6f77731656fdad47`; ethereum `0x62ac8d1ebf61636e17d92ec3b24e8e03fb853cda`; ethereum `0x62d10d6beb31363910586529675c0ec3e40e731d`; ethereum `0x66599e7ce2c7d55990b0a4d50a1eed463b69f710`; ethereum `0x84c5eac4c89cfa801ec8b0e34b8c858d7aa7b8c8`; ethereum `0xdb5de0a34b29ffdeec61e2d8ab4db63f6641c730`; ethereum `0xe66bc214beef3d61ce66da9f80e67e14413bfc5a`; ethereum `0xf65916e410a87953ae075ad7ab7bde695ae14d27` | ✅ Audited |
| SplitLiquidationCollateral | unknown | ethereum | n/a | 7 deployments: ethereum [`0x2c38a23e3da0d9014904834376d2537b962c5c81`](./contracts/ethereum-1/0x2c38a23e3da0d9014904834376d2537b962c5c81/); ethereum `0x4cf94bc861e4a36326c76c71c368e3cfe1dc4cd3`; ethereum `0x776953dd19bd1aaf0a2ca0768b2a7cbe0be56aa8`; ethereum `0x8506d8516e9204b1a9221bcff7e024a0947460b3`; ethereum `0xa63fb635a97ecb7c73dbca1529a821c175c6de57`; ethereum `0xa8a2578972907eae281d34afeb391a4c0cfe1686`; ethereum `0xd7945b24c6c9ecd63656aafea769f71e5a045f3c` | ✅ Audited |
| TellorPriceOracle | unknown | ethereum | n/a | 9 deployments: ethereum [`0x79e75665e72b76cfe013e9fe0319d60da25015b0`](./contracts/ethereum-1/0x79e75665e72b76cfe013e9fe0319d60da25015b0/); ethereum `0x88df8b57b671f3b8fc99884f800ba85861f4247a`; ethereum `0xa37775ec7ed5f9dcb27b40eb50d30b2670df147b`; ethereum `0xb8ab75393dfa359ac6e6c7bef18066dcbe8a404f`; ethereum `0xca27db0081d5da6c034b580b2e08d10f77bcb7e5`; ethereum `0xd0d35e9172f20636e221954c32123a12ca4ff303`; ethereum `0xdcf120b37036cfe2510bfee8fde2406c1657840f`; ethereum `0xf9784b938c5b82510708f90941f1ad03169d75bd`; ethereum `0xfcc8d637497eb045393c7706c8db27ae11239db3` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Chai | unknown | ethereum | n/a | [`0x06af07097c9eeb7fd685c692751d5c66db49c215`](./contracts/ethereum-1/0x06af07097c9eeb7fd685c692751d5c66db49c215/) | ⚠️ Unaudited |
| RaftToken | token | ethereum | n/a | [`0x4c5cb5d87709387f8821709f7a6664f00dcf0c93`](./contracts/ethereum-1/0x4c5cb5d87709387f8821709f7a6664f00dcf0c93/) | ⚠️ Unaudited |
| swETH | token | ethereum | n/a | [`0xf951e335afb289353dc249e82926178eac7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | [`0x45d117011da1d49ba86af6ced94126488084186f`](./contracts/ethereum-1/0x45d117011da1d49ba86af6ced94126488084186f/) | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | n/a | [`0xe91888a1d08e37598867d213a4acb5692071bb3a`](./contracts/ethereum-1/0xe91888a1d08e37598867d213a4acb5692071bb3a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x010f538a5ae7df8661978373a317ff898260ab01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02424c05a1d9d81543ab6fe5d75899edda3280c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x073c58a2398f8d0db1490d24f651ee3aa599e2b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0892ea4adbf901d35848832d3005a31ee9c84e38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10fbb5a361aa1a35bf2d0a262e24125fd39d33d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x148e67e589d0de2360bd8a71ce103e31063dd68c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2617a78be426115137d9c4f512c4cc702d8752a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b108592532f3a2826b9a902319e7a9199b2cfa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eff5f6f137d0ed52d9089c303f91ba8c1f46422` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f21dbe10446c231024d71fcfaed69c381836709` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f523d9f641cb86ff7de767d5a0b24ce5ce9f859` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70e0ce466ea16b5554c26a147b88cd594f85e169` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73c5f43464b98207ccc6ae25390e2ff112822d8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x796a38d642012a4d901fc938e704d2a6c6b228f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x834d4c82223a8445626a439709819925d83ffb7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87d4ad7fe7383410b69b0d7133c1d027951f13f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88d8dadc04dd2c29e3de4a583483ac9b43ae8ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a703487f293755ae8fd61650f0fabbb34c31cbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9be62ce50959b459b4971c4d9c6c7c86af604d0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa45bb9fc92a8b40851ead7236d6df4e2877fc844` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9a8b5a44a2f6cfe434b1f5c9eb87a03f8ff56da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa78c6aa9b91e024cf222472bc9ac6489c70a55d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaea1bb52212f6ebab4a41c042bb2967af978fa7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb30cd5d8a71233fd5110ff088ac619357aba8096` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3f4767ec77d2126397c06887aa9d166b5360758` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb493f6b45a467fb83666b85af6dfedd85df0fea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7b115490a9abf8db7b25c4d062da40350cbdcd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4805664e3a7332353a788232a79ddc0e5ccd320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf83c41ddc09f8fc32ef96030c8199ac4a02db08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3d4dcdeee15f18d0501ac852f5c934c47c90d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda2f58e721a96ea46dbf670e54b8d944bfc2c3d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbec19d2429cc5f1022c09617c9dee7b25911f3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf1ea6aa015c5951e5edc956fb9026e224345e64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4342f955f75608b5899ce721ad8d9234dec90e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe76aade122902e4bd30daffed504b718b9a9fae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeddea1dc040d7d26bdf5916310f2c208cb7ce990` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefb4233ce34daa95b68889fb48e7895546e5d781` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf21bba788e1a6fe94a7c2f3be3ce350cd7843da3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf952f4c81101e577bbbf792a5b654e788ec03059` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-04-tempus-raft-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-04-tempus-raft-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | 44 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x06af07097c9eeb7fd685c692751d5c66db49c215`](./contracts/ethereum-1/0x06af07097c9eeb7fd685c692751d5c66db49c215/) | Chai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c5cb5d87709387f8821709f7a6664f00dcf0c93`](./contracts/ethereum-1/0x4c5cb5d87709387f8821709f7a6664f00dcf0c93/) | RaftToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf951e335afb289353dc249e82926178eac7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | swETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45d117011da1d49ba86af6ced94126488084186f`](./contracts/ethereum-1/0x45d117011da1d49ba86af6ced94126488084186f/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe91888a1d08e37598867d213a4acb5692071bb3a`](./contracts/ethereum-1/0xe91888a1d08e37598867d213a4acb5692071bb3a/) | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=44

Fork inheritance lineage and inherited audits are included when available.
