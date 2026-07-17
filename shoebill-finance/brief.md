# Agentic Audit Brief: Shoebill Finance

## Project Overview

- Project: Shoebill Finance (`shoebill-finance`)
- Website: [https://shoebill.finance](https://shoebill.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.127Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: klaytn, manta, metis, mode, zksync-era
- Contract surface: 65 unique implementations (143 raw deployments)
- DeFi Llama TVL: $464,915.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 19 project-authored contract(s) across 3 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 11 common project-authored base contract(s) (cether, ctoken, ctokeninterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 143; live-surface contracts included: 143 (0 live, 143 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/20
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 65
- Raw deployments: 143
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 7 | 35.0% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Upgradable | token | manta | n/a | 8 deployments: manta [`0x0399bc5cb14d59bbd19c50416178747be3531b2b`](./contracts/manta-169/0x0399bc5cb14d59bbd19c50416178747be3531b2b/); manta `0x5e283a0097451c7fcdc0be9f9bdf7a8bf0dc9f6f`; manta `0x7b41c01ac6df3988dea7d6d7d199bbff36826ed8`; manta `0xa87a58f8f18264a893fc519dac2fc03d8e692322`; manta `0xd2eecb8d6e3fa7530e67e39e0d7693af3d987a49`; manta `0xf0ea5c53b1c21611a8eee699b9687e83a3ef97a8`; metis `0x8bc324ff027e7ee76fc7d2269ad10ed60fcf1169`; metis `0x9c45db7ef823e208963777d2d3dfb83468c08f41` | ✅ Audited |
| CEtherUpgradeable | unknown | manta | n/a | 2 deployments: manta [`0x037d45ca2b024a25a6091212761e0757227b60c8`](./contracts/manta-169/0x037d45ca2b024a25a6091212761e0757227b60c8/); metis `0xd13be8b716b18265e294831fcb1330d170840bb3` | ✅ Audited |
| Comptroller | unknown | manta | n/a | 6 deployments: manta [`0x81a679080b3a03c93e802af7594c1eec8f197761`](./contracts/manta-169/0x81a679080b3a03c93e802af7594c1eec8f197761/); manta `0xc27f8366948014a5b8186341b50a6660a5e0ac63`; manta `0xd13be8b716b18265e294831fcb1330d170840bb3`; metis `0xb7ed6c062caaacb1a13f317e0a751289280fc306`; mode `0x9f53cd350c3ac49ce6ce673abff647e5fe79a3cc`; mode `0xb7ed6c062caaacb1a13f317e0a751289280fc306` | ✅ Audited |
| JumpRateModelV4 | operational_periphery | metis | n/a | 6 deployments: manta `0xb29b295f89d6ab964635e903aa0c52baa9405a85`; manta `0xb79dd63835ca697ee1e56a9c0d4d41576724cd23`; metis [`0x24e4d6d97ee1fdbec6bcc7a89d6a90fbd68725f9`](./contracts/metis-1088/0x24e4d6d97ee1fdbec6bcc7a89d6a90fbd68725f9/); metis `0xb79dd63835ca697ee1e56a9c0d4d41576724cd23`; mode [`0x24e4d6d97ee1fdbec6bcc7a89d6a90fbd68725f9`](./contracts/mode-34443/0x24e4d6d97ee1fdbec6bcc7a89d6a90fbd68725f9/); mode `0xb79dd63835ca697ee1e56a9c0d4d41576724cd23` | ✅ Audited |
| ProtocolLens | periphery | metis | n/a | 2 deployments: metis [`0x675d672b07effe1a2049080afa9ad23e97d7f32e`](./contracts/metis-1088/0x675d672b07effe1a2049080afa9ad23e97d7f32e/); metis `0xb4bfa069b902c40dad4d289ecdd4a8e9e63b3d52` | ✅ Audited |
| RewardDistributor | operational_periphery | manta | n/a | 9 deployments: manta [`0x0c184bf7251634b49ec7531a1d8eabbb3a632928`](./contracts/manta-169/0x0c184bf7251634b49ec7531a1d8eabbb3a632928/); manta `0x0e40e148f27d37670de1270995ded5b349e52e3a`; manta `0x1e514767f5cfe1dde599dd39a79666e3beeaaf7d`; manta `0x24e4d6d97ee1fdbec6bcc7a89d6a90fbd68725f9`; manta `0x53496f10ef7eaad6cc8d8ff441a8f142c15ef06c`; manta `0xa98ec6c5a048e7149a54368b841ea43410009343`; manta `0xad0856f1a517df866faf69563105c7c073c44446`; metis `0x8ba76ded880583581e2d9d253f16b87ac29fa897`; mode `0x8ba76ded880583581e2d9d253f16b87ac29fa897` | ✅ Audited |
| Unitroller | unknown | manta | n/a | 4 deployments: manta [`0x3413dc597ae3be40c6f10fc3d706b884eacf470a`](./contracts/manta-169/0x3413dc597ae3be40c6f10fc3d706b884eacf470a/); manta `0x4e4b415f5aa78a44ce1fc259d2cec47bf50a9216`; manta `0x9f53cd350c3ac49ce6ce673abff647e5fe79a3cc`; metis `0x9f53cd350c3ac49ce6ce673abff647e5fe79a3cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchTransfer | periphery | manta | n/a | [`0x70075f1b10f5c2c7311aa1a3acb7286808ebecf4`](./contracts/manta-169/0x70075f1b10f5c2c7311aa1a3acb7286808ebecf4/) | ⚠️ Unaudited |
| CErc20UpgradableMode | unknown | mode | n/a | 3 deployments: mode [`0x81a679080b3a03c93e802af7594c1eec8f197761`](./contracts/mode-34443/0x81a679080b3a03c93e802af7594c1eec8f197761/); mode `0x85300b83b4848defb3cd404e3d7d16d5476ca751`; mode `0x91995e005fa932a6e033281cfa7495d940b31716` | ⚠️ Unaudited |
| CEtherUpgradeableMode | unknown | mode | n/a | [`0xb762b8da36b59f7df9aee066a364c08aac746dbf`](./contracts/mode-34443/0xb762b8da36b59f7df9aee066a364c08aac746dbf/) | ⚠️ Unaudited |
| MantaOracle | operational_periphery | manta | n/a | 5 deployments: manta [`0x30de1aedc7a7769f17de8e5c517ae8e7e51cc982`](./contracts/manta-169/0x30de1aedc7a7769f17de8e5c517ae8e7e51cc982/); manta `0x60bc83372aecb65e88f82600f95d3dc266739a14`; manta `0x704e90ec736908fc2b89dad12afcded6d648a12b`; manta `0xad9dcc3c1aea41241cfc25b2978c6aa8b7007d2c`; manta `0xdfc5c71a80d210dccab7365b4687dc351645e2cf` | ⚠️ Unaudited |
| MetisOracle | operational_periphery | metis | n/a | 4 deployments: metis [`0x5716093e354bb3c1018a6f7143b875efed58f234`](./contracts/metis-1088/0x5716093e354bb3c1018a6f7143b875efed58f234/); metis `0xa4430fda764b0532122ac8248c0da319d777c4c1`; metis `0xd5e29651ed9a95ac2551528f3ce43602b3bebed8`; metis `0xe89cb93d50d0b2b1256ad1304a683e6dfa671d5a` | ⚠️ Unaudited |
| MiningReferral | unknown | manta | n/a | [`0x91995e005fa932a6e033281cfa7495d940b31716`](./contracts/manta-169/0x91995e005fa932a6e033281cfa7495d940b31716/) | ⚠️ Unaudited |
| ModeOracle | unknown | mode | n/a | 4 deployments: mode [`0x2a9fc6513693c2902d365e0bf4be0bb07e70cec2`](./contracts/mode-34443/0x2a9fc6513693c2902d365e0bf4be0bb07e70cec2/); mode `0x675d672b07effe1a2049080afa9ad23e97d7f32e`; mode `0x9aa41c6407db60dfda72b1e60bac81914a5a851e`; mode `0xba2222a8a3ff763f99d9486d176418ae4618a2d6` | ⚠️ Unaudited |
| ModeOraclePyth | unknown | mode | n/a | 2 deployments: mode [`0x0c5cd500c938cc33e23e7b1fb101ef85da1d7cb7`](./contracts/mode-34443/0x0c5cd500c938cc33e23e7b1fb101ef85da1d7cb7/); mode `0x2b6647f63f6fab5c73e96fbf974f4ed2ab8a4308` | ⚠️ Unaudited |
| MultiSigWallet | governance | manta | n/a | 5 deployments: manta [`0x8ef62dbc1114ae1995589c3dc71941544902314c`](./contracts/manta-169/0x8ef62dbc1114ae1995589c3dc71941544902314c/); manta `0xa658b4eb79726a03d665c0b282d2ddd9d447b301`; manta `0xe6305572c2eb09d669567ce29e21fe7f0082a313`; metis `0xd618e338074dec1530890e70b0a62b4669f65eea`; mode `0xeb4090ed525cb45cde8f0e5846f845192789202a` | ⚠️ Unaudited |
| ProxyAdmin | governance | manta | n/a | 3 deployments: manta [`0x266ca0f3e2b23d4bfdda303818a970fdc00cacf7`](./contracts/manta-169/0x266ca0f3e2b23d4bfdda303818a970fdc00cacf7/); metis [`0x266ca0f3e2b23d4bfdda303818a970fdc00cacf7`](./contracts/metis-1088/0x266ca0f3e2b23d4bfdda303818a970fdc00cacf7/); mode [`0x266ca0f3e2b23d4bfdda303818a970fdc00cacf7`](./contracts/mode-34443/0x266ca0f3e2b23d4bfdda303818a970fdc00cacf7/) | ⚠️ Unaudited |
| PythPriceOracleProxy | unknown | mode | n/a | [`0x386adca3c7d5c90523287933b05919afcc2883de`](./contracts/mode-34443/0x386adca3c7d5c90523287933b05919afcc2883de/) | ⚠️ Unaudited |
| SBLPMode | unknown | mode | n/a | [`0x4403b3de1927264eaedebe48f4e9318045b1782d`](./contracts/mode-34443/0x4403b3de1927264eaedebe48f4e9318045b1782d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | manta | n/a | 26 deployments: manta [`0x033f5e084a627cc420980ed9b1476c84a92fc5d4`](./contracts/manta-169/0x033f5e084a627cc420980ed9b1476c84a92fc5d4/); manta `0x2b6647f63f6fab5c73e96fbf974f4ed2ab8a4308`; manta `0x613e08132ff2d25293362bb11e76c0d1e8f2cfee`; manta `0x6555298f93995b8d8abf54d91cbfc7545e09db0a`; manta `0x7d02ab1a80b12ab391188bb7fa3ee5deb41b3a74`; manta `0x873cb9b6a02eced5ab7dfac8caf2515e9b6074be`; manta `0x9dd10b2269709f7369dfbf7bbae2ad3aa53b16c7`; manta `0xc0ef6dea74e54689867fdd5f0ab2202f7d8a0d7b`; manta `0xcd43a9c159904f59619913728510ba64f94a480d`; manta `0xe103f874b2d144c5b327fa3d57069bb19c0779e2`; manta `0xee0161d82b600e8ee81c0810ccbc57ec71100b88`; manta `0xff2033181cbf7ee2656d9a527d378930b31c3a42`; metis `0x0c5cd500c938cc33e23e7b1fb101ef85da1d7cb7`; metis `0x2b6647f63f6fab5c73e96fbf974f4ed2ab8a4308`; metis `0x386adca3c7d5c90523287933b05919afcc2883de`; metis `0x9dd10b2269709f7369dfbf7bbae2ad3aa53b16c7`; metis `0xb0eee8dac4e8fa3d73d84101b30ae0fb359b7a2f`; mode `0x4d78c6cbdc2316bce415b8801762b59db7f2ffb4`; mode `0x616cffc10f2e7662bfb048afa893d2aca42e0435`; mode `0x6afb46310631064f3de298e4a3bb29c9179d8a38`; mode `0x80e81348d9386eb4d10c2a32a7458638cd3308df`; mode `0x8eea9ed0d547457fef88fbf459bf8a18fb04d277`; mode `0x9dd10b2269709f7369dfbf7bbae2ad3aa53b16c7`; mode `0xd13be8b716b18265e294831fcb1330d170840bb3`; mode `0xd2604dc37a0fc8a15ab3c95b36cff18c94f66dab`; mode `0xe89cb93d50d0b2b1256ad1304a683e6dfa671d5a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | manta | n/a | `0x0322cd0d53f20edb88a9a9e70bb98815193427e2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1383f1b1bab5edd9f65a219eb690bc23c05085b4` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2060a2f15507e9722b5561516532399c5cab475c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2069b317e9d4777b03c85305bb0454a36b42b025` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2f471205ac647dd11d3de04db3c9a7fedbaa66d6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5d9363769850bbd828af08ca129230cd977d588e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6e990684abe48d50241bde2e6f2e7da250585a7e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x722731ad3b36bdd944f2cc00dd67832bb2fd7eae` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8ba76ded880583581e2d9d253f16b87ac29fa897` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8bc324ff027e7ee76fc7d2269ad10ed60fcf1169` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9cbc56fe79546217c9540f21546948a7f7c465e1` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb4bfa069b902c40dad4d289ecdd4a8e9e63b3d52` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb762b8da36b59f7df9aee066a364c08aac746dbf` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc2da04f015fcae85f32c32e58937caf63e79f714` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcb43dffad609738933de12b655630a5f4f521164` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3b00f3f046f895415894d1a43e99628813e2816c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x433102dc1694b37641c4ed0be9b05a0a31495013` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4da697a89ea1d166881362b56e6863294820ec97` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x59d9ceaf0108a5af76336cad0ec7c7c5c266eb39` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x89e348e0ab4d83aedbf1354004552822a805a12e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf52bb5c5f728a29c508f050dbc26e79ecfd82981` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6a869a379290ff36a59a1aa0ada3708c709f5ebb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x80e81348d9386eb4d10c2a32a7458638cd3308df` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8dbf84c93727c85db09478c83a8621e765d20ec2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb4255533ad74a25a83d17154cb48a287e8f6a811` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdf00f0a40cd7a7d1f8796117a6fa786e1a7671ea` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | 5 deployments: klaytn `0x6ee84c41e794f896a67a5e2756fcf8e77bf2b355`; klaytn `0xac6a4566d390a0da085c3d952fb031ab46715bcf`; klaytn `0xba5e3f89f57342d94333c682e159e68ee1fc64de`; klaytn `0xd42ad8346d14853eb3d30568b7415cf90c579d83`; klaytn `0xee3db1711ef46c04c448cb9f5a03e64e7aa22814` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x033f5e084a627cc420980ed9b1476c84a92fc5d4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x15a4f755caab62e60175342199b6d139d519b7c3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4e4b415f5aa78a44ce1fc259d2cec47bf50a9216` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x57500f01cd240a745b35cafdbc3651061d5f7314` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6555298f93995b8d8abf54d91cbfc7545e09db0a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6ec5a529b0dca63562ac3c1a3f0f77a55c6098b5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7d02ab1a80b12ab391188bb7fa3ee5deb41b3a74` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9c45db7ef823e208963777d2d3dfb83468c08f41` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa3c72e8bc49baacb2e73c011d7d2902a7f844c76` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa9b72d671513b0160436e3e26980eae22a7fe19d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb4bfa069b902c40dad4d289ecdd4a8e9e63b3d52` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xba5e3f89f57342d94333c682e159e68ee1fc64de` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc0ef6dea74e54689867fdd5f0ab2202f7d8a0d7b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc39b3181584f7228d0187db526abff4be5c722a0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xcd43a9c159904f59619913728510ba64f94a480d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd42ad8346d14853eb3d30568b7415cf90c579d83` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe103f874b2d144c5b327fa3d57069bb19c0779e2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xff2033181cbf7ee2656d9a527d378930b31c3a42` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Shoebill-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Shoebill-v1.0.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [Certik-Shoebill-final-20231121T015445Z.pdf](https://github.com/ShoebillFinance/audit-report/blob/main/Certik-Shoebill-final-20231121T015445Z.pdf) | CertiK | Audit | 2023-11 | stale | Direct | contract_name | 7 | n/a |
| [skynet.certik.com/ko/projects/shoebill-finance](https://skynet.certik.com/ko/projects/shoebill-finance) | CertiK | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |
| [skynet.certik.com/projects/shoebill-finance](https://skynet.certik.com/projects/shoebill-finance) | CertiK | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta | [`0x70075f1b10f5c2c7311aa1a3acb7286808ebecf4`](./contracts/manta-169/0x70075f1b10f5c2c7311aa1a3acb7286808ebecf4/) | BatchTransfer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x81a679080b3a03c93e802af7594c1eec8f197761`](./contracts/mode-34443/0x81a679080b3a03c93e802af7594c1eec8f197761/) | CErc20UpgradableMode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xb762b8da36b59f7df9aee066a364c08aac746dbf`](./contracts/mode-34443/0xb762b8da36b59f7df9aee066a364c08aac746dbf/) | CEtherUpgradeableMode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x30de1aedc7a7769f17de8e5c517ae8e7e51cc982`](./contracts/manta-169/0x30de1aedc7a7769f17de8e5c517ae8e7e51cc982/) | MantaOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x5716093e354bb3c1018a6f7143b875efed58f234`](./contracts/metis-1088/0x5716093e354bb3c1018a6f7143b875efed58f234/) | MetisOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x91995e005fa932a6e033281cfa7495d940b31716`](./contracts/manta-169/0x91995e005fa932a6e033281cfa7495d940b31716/) | MiningReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x2a9fc6513693c2902d365e0bf4be0bb07e70cec2`](./contracts/mode-34443/0x2a9fc6513693c2902d365e0bf4be0bb07e70cec2/) | ModeOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0c5cd500c938cc33e23e7b1fb101ef85da1d7cb7`](./contracts/mode-34443/0x0c5cd500c938cc33e23e7b1fb101ef85da1d7cb7/) | ModeOraclePyth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x8ef62dbc1114ae1995589c3dc71941544902314c`](./contracts/manta-169/0x8ef62dbc1114ae1995589c3dc71941544902314c/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x386adca3c7d5c90523287933b05919afcc2883de`](./contracts/mode-34443/0x386adca3c7d5c90523287933b05919afcc2883de/) | PythPriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x4403b3de1927264eaedebe48f4e9318045b1782d`](./contracts/mode-34443/0x4403b3de1927264eaedebe48f4e9318045b1782d/) | SBLPMode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=9

Zero-match audit list:

- [13835] PeckShield-Audit-Report-Shoebill-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
