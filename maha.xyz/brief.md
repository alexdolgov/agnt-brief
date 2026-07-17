# Agentic Audit Brief: MAHA.xyz

## Project Overview

- Project: MAHA.xyz (`maha.xyz`)
- Website: [https://maha.xyz/](https://maha.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.307Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, bsc, ethereum, linea
- Contract surface: 53 unique implementations (78 raw deployments)
- DeFi Llama TVL: $2.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 72 project-authored contract(s) across 5 chain(s); 2 ERC4626 vaults, 13 ERC20 tokens, 4 ERC721 NFTs, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 12 common project-authored base contract(s) (multistakingrewardserc4626, oapp, oappsender). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 315; live-surface contracts included: 66 (35 live, 31 unknown).
- Excluded by liveness: 249 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/20 (5.0%)
- Deployed-live implementations: 22 of 53 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/22
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 53
- Raw deployments: 78
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 4.5% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZaiStablecoin | token | ethereum | n/a | [`0x69000dfd5025e82f48eb28325a2b88a241182ced`](./contracts/ethereum-1/0x69000dfd5025e82f48eb28325a2b88a241182ced/) | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLPool | core_logic | base | n/a | [`0xebf0d2fac88448874947550fa9b2a75f22ff571f`](./contracts/base-8453/0xebf0d2fac88448874947550fa9b2a75f22ff571f/) | ⚠️ Unaudited |
| LayerZeroCustomOFT | unknown | base | n/a | 3 deployments: bsc `0x6a661312938d22a2a0e27f585073e4406903990a`; base [`0x554bba833518793056cf105e66abea330672c0de`](./contracts/base-8453/0x554bba833518793056cf105e66abea330672c0de/); linea `0x6a661312938d22a2a0e27f585073e4406903990a` | ⚠️ Unaudited |
| LayerZeroCustomOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x3a7b708e71ff72506afa674ea14881e39ce9fde2`](./contracts/ethereum-1/0x3a7b708e71ff72506afa674ea14881e39ce9fde2/); ethereum `0x557177aa5f5303ded2fa56b413631bab22a73872` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 2 deployments: base [`0x0b01d65b9a845dd1ae8c4f1dc2eb58681beeabc9`](./contracts/base-8453/0x0b01d65b9a845dd1ae8c4f1dc2eb58681beeabc9/); base `0x2125bd2719c9a5387a8c785a8f4a1dbd136b92f9` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 2 deployments: base [`0x1362a702d537708fe31423ad7dc55c448e5243c7`](./contracts/base-8453/0x1362a702d537708fe31423ad7dc55c448e5243c7/); base `0xdc3bf4463ac4e00010c7207f4d5417e33e906d9f` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 2 deployments: base [`0x475f191bd12a378cabc20bb1efd4d1eb945244e0`](./contracts/base-8453/0x475f191bd12a378cabc20bb1efd4d1eb945244e0/); base `0xce5fa5c8bf4b16183fba5544950399e80cc911d5` | ⚠️ Unaudited |
| LockerToken | token | base | n/a | 2 deployments: base [`0x5f4250ed435124199adc5cc102d2aa59defae7e6`](./contracts/base-8453/0x5f4250ed435124199adc5cc102d2aa59defae7e6/); base `0xdb1a47924a31d86470be7fe2b38fef3f5a54f6e4` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 3 deployments: base [`0x6847b2333fd0d58e4e06122b5dc21ea104013677`](./contracts/base-8453/0x6847b2333fd0d58e4e06122b5dc21ea104013677/); base `0x7eddcb9377075fbda2a4373d709f5005baf073d2`; base `0x88afd3e2ecfa3c756d554d6fcf7cacb2db624b01` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 2 deployments: base [`0x72a8eaea8625b9169801fde791d6e1cdf6fd6802`](./contracts/base-8453/0x72a8eaea8625b9169801fde791d6e1cdf6fd6802/); base `0xdae7cd5aa310c66c555543886dfcd454896ae2c0` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 2 deployments: base [`0xc6d4578a1ee8ba21557e33e7dbbb97e9fb7343af`](./contracts/base-8453/0xc6d4578a1ee8ba21557e33e7dbbb97e9fb7343af/); base `0xc999767ab22c04089d7cd69812b6725ca0f7d675` | ⚠️ Unaudited |
| MahaToken | token | ethereum | n/a | [`0x745407c86df8db893011912d3ab28e68b62e49b0`](./contracts/ethereum-1/0x745407c86df8db893011912d3ab28e68b62e49b0/) | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 2 deployments: base [`0x0779af6221f12d133a2ac24dc988bcca891c1880`](./contracts/base-8453/0x0779af6221f12d133a2ac24dc988bcca891c1880/); base `0xd99b02e294f03c8166b782ff8aab56cc5c532b6f` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 2 deployments: base [`0x193b33171cec375b447583a28423e5053d27ea47`](./contracts/base-8453/0x193b33171cec375b447583a28423e5053d27ea47/); base `0xcc275f9997b2975e2048ffaec72e69cde7df7d96` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 2 deployments: base [`0x3ff7d762346edf41b7b2bdab214f800fccebaf7c`](./contracts/base-8453/0x3ff7d762346edf41b7b2bdab214f800fccebaf7c/); base `0xf68e1bcfefb04d677a4ab8f17680faff54b38235` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 3 deployments: base [`0x5441ff99e337b2bc788107d379bdf1161cb565bd`](./contracts/base-8453/0x5441ff99e337b2bc788107d379bdf1161cb565bd/); base `0x59e41536e678709e9fb6d3131be83e4fdf846361`; base `0x8e1c597fcfb66a67f8a21892c3de4a2c2cf2a51f` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 2 deployments: base [`0x6cdb1d7c0225ce0431fbe45913c6178724981b6b`](./contracts/base-8453/0x6cdb1d7c0225ce0431fbe45913c6178724981b6b/); base `0xfd487ac8de6520263d57bb41253682874dc0276e` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 2 deployments: base [`0xade133dd5af342476930665cba00b0011750205d`](./contracts/base-8453/0xade133dd5af342476930665cba00b0011750205d/); base `0xfc57bf720277eafeb9f23a69ec0c3969f0f268c8` | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0x93edc603d7a2ea03518ac55219cad320010a58e4`](./contracts/base-8453/0x93edc603d7a2ea03518ac55219cad320010a58e4/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x69000c978701fc4427d4baf749f10a5cec582863`](./contracts/arbitrum-42161/0x69000c978701fc4427d4baf749f10a5cec582863/) | ⚠️ Unaudited |
| Swapper | adapter | linea | n/a | 2 deployments: bsc `0xc2c07e200cfa6ea037579a81cc68c891fdabe371`; linea [`0x44263a0b9ff2a90f72ded1cf4865da3457ea3b01`](./contracts/linea-59144/0x44263a0b9ff2a90f72ded1cf4865da3457ea3b01/) | ⚠️ Unaudited |
| ZaiOFTWithRestaking | unknown | base | n/a | 7 deployments: bsc `0x132ed59080de3b5063b4859108ba36734b302bac`; bsc `0x3b2a34c8a085a6ca425ea64192d9f3a0b5dfb397`; base [`0x0a27e060c0406f8ab7b64e3bee036a37e5a62853`](./contracts/base-8453/0x0a27e060c0406f8ab7b64e3bee036a37e5a62853/); base `0x154f52b347d8e48b8dbd8d8325fe5bb45aadccda`; base `0x69000dfd5025e82f48eb28325a2b88a241182ced`; linea `0xb7f8f05825f3e37dfa68e1f3df8b6d4b5829bc78`; linea `0xdb9c83cc3e2c61217ac1763232ba508da1064ba1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x04133eabc6eb634997c6c82cd8ac98660cfa1569` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1aeeedf60bc5b58e43337c43dff8ed57851f38a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x382b23f4b646be0c54dded6bed1fbb0e51c5689c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6622bfad80559acf6843c67aaacc4e41dd2e52d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b89c9573be417fec4d5f1b4dae1c619a35ca9e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d0129704b1fc1ff0d7827ed5104de95b6ac4936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f52853bc769fa31d24cf25807cb022fadc8777e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7744c791c2ff649a8f7373f1640c3e7b563e861c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb912fb0502394374590fc0bdf25acfd8e57c1c82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1d85e3144a34c0c5bbace68bdd89986a31589fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ba5f6ccab972ed5aabf4d7faf0cda1f9364eb22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27e2672b4b39367ea40c790da574eb78aeed5b8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46a957dff662a6219d748dbcb19b5690db9374f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeaa79aac2decf71f07c3208df05b198d09c9f971` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ab881ae3121570bbdbf23b0f70eeb7e396eb94b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0e9ed7b5d69453b3260844354b32a0269d9f9f86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2699a9d4289bff3bee48127b4c1bf5dcb642f726` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4008a1c4758728eb8dedc2bb83fe2d197563dbe5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x40384063525fb08c7f8f553df7f48a85050e2197` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4b09db753f490c5019fb3e936ac3310c37306af8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d1f70bf5be86e14185f742a202332dd3c8f4589` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b94b56ec833a6cb099043df13fd0064ed59f23f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98c0e839e045a3f88a9d85adbc400b9e892577e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a1d5787f5b3596a590976bfc98563effb3d7ee8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c4cedbf4eef77bdddedef757cadffe6d1cbfe36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa0498367440f6156e453bc96bf42b089edc5926e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcaa085721ebcef4d727c526ab5212e89a39a664a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0bd21ac76646cb8a5cd66254e4724be8dcb5e43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd764c1dff3607f3fad4e394ad56ab944800221f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdca4efbe5ad00900a1db3d3b0c0668437b5a3c96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee3690d8577d4fae51efd77a3db35329624f04e9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-08-halborn-core.pdf](https://github.com/mahaxyz/contracts/blob/master/audits/2024-08-halborn-core.pdf) | Halborn | Audit | 2024-08 | aging | Direct | contract_name | 1 | n/a |
| [www.halborn.com/audits/maha/mahas-core](https://www.halborn.com/audits/maha/mahas-core) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xebf0d2fac88448874947550fa9b2a75f22ff571f`](./contracts/base-8453/0xebf0d2fac88448874947550fa9b2a75f22ff571f/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a7b708e71ff72506afa674ea14881e39ce9fde2`](./contracts/ethereum-1/0x3a7b708e71ff72506afa674ea14881e39ce9fde2/) | LayerZeroCustomOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b01d65b9a845dd1ae8c4f1dc2eb58681beeabc9`](./contracts/base-8453/0x0b01d65b9a845dd1ae8c4f1dc2eb58681beeabc9/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1362a702d537708fe31423ad7dc55c448e5243c7`](./contracts/base-8453/0x1362a702d537708fe31423ad7dc55c448e5243c7/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x475f191bd12a378cabc20bb1efd4d1eb945244e0`](./contracts/base-8453/0x475f191bd12a378cabc20bb1efd4d1eb945244e0/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f4250ed435124199adc5cc102d2aa59defae7e6`](./contracts/base-8453/0x5f4250ed435124199adc5cc102d2aa59defae7e6/) | LockerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6847b2333fd0d58e4e06122b5dc21ea104013677`](./contracts/base-8453/0x6847b2333fd0d58e4e06122b5dc21ea104013677/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x72a8eaea8625b9169801fde791d6e1cdf6fd6802`](./contracts/base-8453/0x72a8eaea8625b9169801fde791d6e1cdf6fd6802/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc6d4578a1ee8ba21557e33e7dbbb97e9fb7343af`](./contracts/base-8453/0xc6d4578a1ee8ba21557e33e7dbbb97e9fb7343af/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x745407c86df8db893011912d3ab28e68b62e49b0`](./contracts/ethereum-1/0x745407c86df8db893011912d3ab28e68b62e49b0/) | MahaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0779af6221f12d133a2ac24dc988bcca891c1880`](./contracts/base-8453/0x0779af6221f12d133a2ac24dc988bcca891c1880/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x193b33171cec375b447583a28423e5053d27ea47`](./contracts/base-8453/0x193b33171cec375b447583a28423e5053d27ea47/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ff7d762346edf41b7b2bdab214f800fccebaf7c`](./contracts/base-8453/0x3ff7d762346edf41b7b2bdab214f800fccebaf7c/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5441ff99e337b2bc788107d379bdf1161cb565bd`](./contracts/base-8453/0x5441ff99e337b2bc788107d379bdf1161cb565bd/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6cdb1d7c0225ce0431fbe45913c6178724981b6b`](./contracts/base-8453/0x6cdb1d7c0225ce0431fbe45913c6178724981b6b/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xade133dd5af342476930665cba00b0011750205d`](./contracts/base-8453/0xade133dd5af342476930665cba00b0011750205d/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x93edc603d7a2ea03518ac55219cad320010a58e4`](./contracts/base-8453/0x93edc603d7a2ea03518ac55219cad320010a58e4/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x44263a0b9ff2a90f72ded1cf4865da3457ea3b01`](./contracts/linea-59144/0x44263a0b9ff2a90f72ded1cf4865da3457ea3b01/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a27e060c0406f8ab7b64e3bee036a37e5a62853`](./contracts/base-8453/0x0a27e060c0406f8ab7b64e3bee036a37e5a62853/) | ZaiOFTWithRestaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [13445] www.halborn.com/audits/maha/mahas-core

Fork inheritance lineage and inherited audits are included when available.
