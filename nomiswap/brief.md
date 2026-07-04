# Agentic Audit Brief: Nomiswap

## Project Overview

- Project: Nomiswap (`nomiswap`)
- Website: [https://nomiswap.io](https://nomiswap.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.799Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc
- Contract surface: 83 unique implementations (112 raw deployments)
- DeFi Llama TVL: $1,380,306.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 70 project-authored contract(s) across 1 chain(s); 4 ERC4626 vaults, 26 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 16 common project-authored base contract(s) (authentication, erc20votesupgradeable, erc20upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 471; live-surface contracts included: 112 (40 live, 72 unknown).
- Excluded by liveness: 359 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/11 (18.2%)
- Deployed-live implementations: 11 of 83 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/11
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 83
- Raw deployments: 112
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 18.2% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NomiswapRouter | adapter | bsc | n/a | [`0xd65495...79413d`](./contracts/bsc-56/0xd654953d746f0b114d1f85332dc43446ac79413d/) | ✅ Audited |
| StakingService2 | unknown | bsc | n/a | 9 deployments: bsc [`0x06781d...86dc2c`](./contracts/bsc-56/0x06781d2a2a52f848ca1ed890847adb326c86dc2c/); bsc `0x283567...37ce34`; bsc `0x2b530d...444a7b`; bsc `0x2d8b19...5edd74`; bsc `0x565756...e96beb`; bsc `0x6d543a...b56160`; bsc `0x85e3fa...39933b`; bsc `0xaef7aa...d7816a`; bsc `0xb475ef...765f96` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DoubleSupplyStakingRouter | unknown | bsc | n/a | 3 deployments: bsc [`0x99b674...fb10d5`](./contracts/bsc-56/0x99b674ba03e896d952983908dba8d7b560fb10d5/); bsc `0xd35181...91fe16`; bsc `0xdd7b0f...cd9994` | ⚠️ Unaudited |
| FarmingHelper | unknown | bsc | n/a | 3 deployments: bsc [`0xdf1e4c...6cb658`](./contracts/bsc-56/0xdf1e4cb8ee485af5d842829d4926ed408a6cb658/); bsc `0xf787d0...7a891f`; bsc `0xf91503...894ec6` | ⚠️ Unaudited |
| MintSchedule | unknown | bsc | n/a | [`0xc86e74...5cf4d0`](./contracts/bsc-56/0xc86e74935181acb6de7c9d8307dd4092e35cf4d0/) | ⚠️ Unaudited |
| Nmx | unknown | bsc | n/a | [`0xd32d01...7d9d65`](./contracts/bsc-56/0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65/) | ⚠️ Unaudited |
| NomiswapPair | unknown | bsc | n/a | 5 deployments: bsc [`0x13de25...a863e6`](./contracts/bsc-56/0x13de257cb86a08753df938b6ad30d1a456a863e6/); bsc `0x33edc4...0573b6`; bsc `0xa5f2f2...5afa22`; bsc `0xe2bbf5...03bb27`; bsc `0xfc3a2a...2e18a7` | ⚠️ Unaudited |
| NomiswapRouter03 | adapter | bsc | n/a | [`0x4ec343...2359e0`](./contracts/bsc-56/0x4ec3432d9443f05022e2ff4e54fc7514be2359e0/) | ⚠️ Unaudited |
| NomiswapRouter04 | adapter | bsc | n/a | [`0x131478...d2e7b0`](./contracts/bsc-56/0x13147820401f455e3318db8686958d457ad2e7b0/) | ⚠️ Unaudited |
| StakingRouter | unknown | bsc | n/a | [`0xc2f8f3...e00cdc`](./contracts/bsc-56/0xc2f8f34907c73e3bf509e8f82eb44cb0a7e00cdc/) | ⚠️ Unaudited |
| StakingService | unknown | bsc | n/a | 14 deployments: bsc [`0x03868d...b62a68`](./contracts/bsc-56/0x03868d2e45a9b579cc68b7addd65cf78ddb62a68/); bsc `0x268042...17da6a`; bsc `0x281e60...144928`; bsc `0x5c3177...669bfe`; bsc `0x5cd67d...258338`; bsc `0x63a81d...b3bd94`; bsc `0x8326e2...62805c`; bsc `0x857083...2bc9ab`; bsc `0x9cd2d1...a2f9a6`; bsc `0xa0f2c1...908797`; bsc `0xa937ed...e9d54c`; bsc `0xab2f42...a106d8`; bsc `0xd8925c...fa001d`; bsc `0xdbf1b1...81c3b3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x01f765...4d7233` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x031200...8f521a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09f2b3...1febfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a15aa...12fe98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a54c7...63f673` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1332b3...edff40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13484b...273a52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13ba16...13c352` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x153caa...91d4df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x181164...bd9f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x213bac...431a9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x246c00...7d1a52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x290180...dac2d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x301193...ff335d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32b383...a4e3ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a37d2...7ecf34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x416903...7920df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43f9e5...7b1cff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4890b3...5d22f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bb856...c46823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e2239...d84a7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50d76e...05dd25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52fb4c...b023cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bf628...754fba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c92de...d74c0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61c169...55de94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64b8c2...4e1957` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68ae0f...74e9eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a8de2...88f78b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c03e8...febd63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cb769...72c217` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x733f83...72ec56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75097d...1caf22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x794052...3104cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x804a3c...d7cc00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81fee4...be5a7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83674e...52a081` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88c4f7...42e7f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c5fec...14ee82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92e302...7d6cf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93133c...20260e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93ea70...a66eb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a9a21...57b382` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ad5a9...e34143` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0a3e3...e8ec79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa82085...5b69c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae6936...4c2852` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2fb01...b6cdf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb98fc4...25c60a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba93ad...1d9cb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb3738...8f5bbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbcc28b...a513b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd01d3...d76c21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc15571...be5488` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc87c1a...82db6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc996cf...d7c80e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd9205...5502c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce5f73...7207ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd40f10...333aa6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd78bbd...a14fc7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd11aa...44c4fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd413c...44b750` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7e21f...9c6a0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe92102...f00a0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec64fe...671da9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3b96d...6a0ddf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf53347...c30dea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf690d6...8c035d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6f889...1ce86e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf79e53...3e68fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf97b33...a36711` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa2d6d...871a9c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/nomiswap](https://skynet.certik.com/projects/nomiswap) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x99b674...fb10d5`](./contracts/bsc-56/0x99b674ba03e896d952983908dba8d7b560fb10d5/) | DoubleSupplyStakingRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdf1e4c...6cb658`](./contracts/bsc-56/0xdf1e4cb8ee485af5d842829d4926ed408a6cb658/) | FarmingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc86e74...5cf4d0`](./contracts/bsc-56/0xc86e74935181acb6de7c9d8307dd4092e35cf4d0/) | MintSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd32d01...7d9d65`](./contracts/bsc-56/0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65/) | Nmx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13de25...a863e6`](./contracts/bsc-56/0x13de257cb86a08753df938b6ad30d1a456a863e6/) | NomiswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ec343...2359e0`](./contracts/bsc-56/0x4ec3432d9443f05022e2ff4e54fc7514be2359e0/) | NomiswapRouter03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x131478...d2e7b0`](./contracts/bsc-56/0x13147820401f455e3318db8686958d457ad2e7b0/) | NomiswapRouter04 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc2f8f3...e00cdc`](./contracts/bsc-56/0xc2f8f34907c73e3bf509e8f82eb44cb0a7e00cdc/) | StakingRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03868d...b62a68`](./contracts/bsc-56/0x03868d2e45a9b579cc68b7addd65cf78ddb62a68/) | StakingService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 72 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
