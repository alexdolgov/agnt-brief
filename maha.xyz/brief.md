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
| ZaiStablecoin | token | ethereum | n/a | [`0x69000d...182ced`](./contracts/ethereum-1/0x69000dfd5025e82f48eb28325a2b88a241182ced/) | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLPool | core_logic | base | n/a | [`0xebf0d2...ff571f`](./contracts/base-8453/0xebf0d2fac88448874947550fa9b2a75f22ff571f/) | ⚠️ Unaudited |
| LayerZeroCustomOFT | unknown | base | n/a | 3 deployments: bsc `0x6a6613...03990a`; base [`0x554bba...72c0de`](./contracts/base-8453/0x554bba833518793056cf105e66abea330672c0de/); linea `0x6a6613...03990a` | ⚠️ Unaudited |
| LayerZeroCustomOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x3a7b70...e9fde2`](./contracts/ethereum-1/0x3a7b708e71ff72506afa674ea14881e39ce9fde2/); ethereum `0x557177...a73872` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 2 deployments: base [`0x0b01d6...eeabc9`](./contracts/base-8453/0x0b01d65b9a845dd1ae8c4f1dc2eb58681beeabc9/); base `0x2125bd...6b92f9` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 2 deployments: base [`0x1362a7...5243c7`](./contracts/base-8453/0x1362a702d537708fe31423ad7dc55c448e5243c7/); base `0xdc3bf4...906d9f` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 2 deployments: base [`0x475f19...5244e0`](./contracts/base-8453/0x475f191bd12a378cabc20bb1efd4d1eb945244e0/); base `0xce5fa5...c911d5` | ⚠️ Unaudited |
| LockerToken | token | base | n/a | 2 deployments: base [`0x5f4250...fae7e6`](./contracts/base-8453/0x5f4250ed435124199adc5cc102d2aa59defae7e6/); base `0xdb1a47...54f6e4` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 3 deployments: base [`0x6847b2...013677`](./contracts/base-8453/0x6847b2333fd0d58e4e06122b5dc21ea104013677/); base `0x7eddcb...f073d2`; base `0x88afd3...624b01` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 2 deployments: base [`0x72a8ea...fd6802`](./contracts/base-8453/0x72a8eaea8625b9169801fde791d6e1cdf6fd6802/); base `0xdae7cd...6ae2c0` | ⚠️ Unaudited |
| LockerToken | unknown | base | n/a | 2 deployments: base [`0xc6d457...7343af`](./contracts/base-8453/0xc6d4578a1ee8ba21557e33e7dbbb97e9fb7343af/); base `0xc99976...f7d675` | ⚠️ Unaudited |
| MahaToken | token | ethereum | n/a | [`0x745407...2e49b0`](./contracts/ethereum-1/0x745407c86df8db893011912d3ab28e68b62e49b0/) | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 2 deployments: base [`0x0779af...1c1880`](./contracts/base-8453/0x0779af6221f12d133a2ac24dc988bcca891c1880/); base `0xd99b02...532b6f` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 2 deployments: base [`0x193b33...27ea47`](./contracts/base-8453/0x193b33171cec375b447583a28423e5053d27ea47/); base `0xcc275f...df7d96` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 2 deployments: base [`0x3ff7d7...ebaf7c`](./contracts/base-8453/0x3ff7d762346edf41b7b2bdab214f800fccebaf7c/); base `0xf68e1b...b38235` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 3 deployments: base [`0x5441ff...b565bd`](./contracts/base-8453/0x5441ff99e337b2bc788107d379bdf1161cb565bd/); base `0x59e415...846361`; base `0x8e1c59...f2a51f` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 2 deployments: base [`0x6cdb1d...981b6b`](./contracts/base-8453/0x6cdb1d7c0225ce0431fbe45913c6178724981b6b/); base `0xfd487a...c0276e` | ⚠️ Unaudited |
| OmnichainStakingToken | unknown | base | n/a | 2 deployments: base [`0xade133...50205d`](./contracts/base-8453/0xade133dd5af342476930665cba00b0011750205d/); base `0xfc57bf...f268c8` | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | [`0x93edc6...0a58e4`](./contracts/base-8453/0x93edc603d7a2ea03518ac55219cad320010a58e4/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x69000c...582863`](./contracts/arbitrum-42161/0x69000c978701fc4427d4baf749f10a5cec582863/) | ⚠️ Unaudited |
| Swapper | adapter | linea | n/a | 2 deployments: bsc `0xc2c07e...abe371`; linea [`0x44263a...ea3b01`](./contracts/linea-59144/0x44263a0b9ff2a90f72ded1cf4865da3457ea3b01/) | ⚠️ Unaudited |
| ZaiOFTWithRestaking | unknown | base | n/a | 7 deployments: bsc `0x132ed5...302bac`; bsc `0x3b2a34...dfb397`; base [`0x0a27e0...a62853`](./contracts/base-8453/0x0a27e060c0406f8ab7b64e3bee036a37e5a62853/); base `0x154f52...adccda`; base `0x69000d...182ced`; linea `0xb7f8f0...29bc78`; linea `0xdb9c83...064ba1` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x04133e...fa1569` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1aeeed...1f38a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x382b23...c5689c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6622bf...2e52d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b89c9...5ca9e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d0129...ac4936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f5285...c8777e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7744c7...3e861c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb912fb...7c1c82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1d85e...1589fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ba5f6...64eb22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27e267...ed5b8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46a957...9374f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeaa79a...c9f971` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ab881...6eb94b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0e9ed7...9f9f86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2699a9...42f726` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4008a1...63dbe5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x403840...0e2197` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4b09db...306af8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d1f70...8f4589` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b94b5...59f23f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98c0e8...2577e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a1d57...3d7ee8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c4ced...cbfe36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa04983...c5926e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcaa085...9a664a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0bd21...cb5e43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd764c1...0221f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdca4ef...5a3c96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee3690...4f04e9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-08-halborn-core.pdf](https://github.com/mahaxyz/contracts/blob/master/audits/2024-08-halborn-core.pdf) | Halborn | Audit | 2024-08 | aging | Direct | contract_name | 1 | n/a |
| [www.halborn.com/audits/maha/mahas-core](https://www.halborn.com/audits/maha/mahas-core) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xebf0d2...ff571f`](./contracts/base-8453/0xebf0d2fac88448874947550fa9b2a75f22ff571f/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a7b70...e9fde2`](./contracts/ethereum-1/0x3a7b708e71ff72506afa674ea14881e39ce9fde2/) | LayerZeroCustomOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b01d6...eeabc9`](./contracts/base-8453/0x0b01d65b9a845dd1ae8c4f1dc2eb58681beeabc9/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1362a7...5243c7`](./contracts/base-8453/0x1362a702d537708fe31423ad7dc55c448e5243c7/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x475f19...5244e0`](./contracts/base-8453/0x475f191bd12a378cabc20bb1efd4d1eb945244e0/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f4250...fae7e6`](./contracts/base-8453/0x5f4250ed435124199adc5cc102d2aa59defae7e6/) | LockerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6847b2...013677`](./contracts/base-8453/0x6847b2333fd0d58e4e06122b5dc21ea104013677/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x72a8ea...fd6802`](./contracts/base-8453/0x72a8eaea8625b9169801fde791d6e1cdf6fd6802/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc6d457...7343af`](./contracts/base-8453/0xc6d4578a1ee8ba21557e33e7dbbb97e9fb7343af/) | LockerToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x745407...2e49b0`](./contracts/ethereum-1/0x745407c86df8db893011912d3ab28e68b62e49b0/) | MahaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0779af...1c1880`](./contracts/base-8453/0x0779af6221f12d133a2ac24dc988bcca891c1880/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x193b33...27ea47`](./contracts/base-8453/0x193b33171cec375b447583a28423e5053d27ea47/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ff7d7...ebaf7c`](./contracts/base-8453/0x3ff7d762346edf41b7b2bdab214f800fccebaf7c/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5441ff...b565bd`](./contracts/base-8453/0x5441ff99e337b2bc788107d379bdf1161cb565bd/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6cdb1d...981b6b`](./contracts/base-8453/0x6cdb1d7c0225ce0431fbe45913c6178724981b6b/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xade133...50205d`](./contracts/base-8453/0xade133dd5af342476930665cba00b0011750205d/) | OmnichainStakingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x93edc6...0a58e4`](./contracts/base-8453/0x93edc603d7a2ea03518ac55219cad320010a58e4/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x44263a...ea3b01`](./contracts/linea-59144/0x44263a0b9ff2a90f72ded1cf4865da3457ea3b01/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a27e0...a62853`](./contracts/base-8453/0x0a27e060c0406f8ab7b64e3bee036a37e5a62853/) | ZaiOFTWithRestaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
