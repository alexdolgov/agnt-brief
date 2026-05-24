# Agentic Audit Brief: Nomiswap

⚠️ Lifecycle status: DECLINING - TVL changed 1.9% over 90 days

## Project Overview

- Project: Nomiswap (`nomiswap`)
- Website: [https://nomiswap.io](https://nomiswap.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-24T23:24:20.091Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: bsc
- Contract surface: 47 unique implementations (85 raw deployments)
- DeFi Llama TVL: $1,423,262.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Nomiswap is a decentralized exchange (DEX) on BSC that enables users to swap tokens, provide liquidity, and stake assets. It includes both standard and stable swap factories for different pool types, along with a staking service for earning rewards.

### Architecture

The single product family encompasses all core contracts, with the factories creating liquidity pools and the staking service likely interacting with the NMX token for rewards. No separate families or shared infrastructure are evident from the contract surface.

## Audit Coverage Summary

- Verified implementations audited: 3/19 (15.8%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 47
- Raw deployments: 85
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 3 | 15.8% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| NomiswapRouter | adapter | bsc | [`0xd65495...79413d`](./contracts/bsc-56/0xd654953d746f0b114d1f85332dc43446ac79413d/) | ✅ Audited |
| StakingRouter | adapter | bsc | [`0xc2f8f3...e00cdc`](./contracts/bsc-56/0xc2f8f34907c73e3bf509e8f82eb44cb0a7e00cdc/) | ✅ Audited |
| StakingService2 | unknown | bsc | 9 deployments: bsc [`0x06781d...86dc2c`](./contracts/bsc-56/0x06781d2a2a52f848ca1ed890847adb326c86dc2c/); bsc `0x283567...37ce34`; bsc `0x2b530d...444a7b`; bsc `0x2d8b19...5edd74`; bsc `0x565756...e96beb`; bsc `0x6d543a...b56160`; bsc `0x85e3fa...39933b`; bsc `0xaef7aa...d7816a`; bsc `0xb475ef...765f96` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Airdrop | operational_periphery | bsc | 4 deployments: bsc [`0xb4058b...0eb627`](./contracts/bsc-56/0xb4058be8cf73cb4d07caaf2e87c9b38dbf0eb627/); bsc `0xc56d6b...1f106b`; bsc `0xd584fa...7dc511`; bsc `0xd75dd2...c3565b` | ⚠️ Unaudited |
| DoubleSupplyStakingRouter | adapter | bsc | 3 deployments: bsc [`0x99b674...fb10d5`](./contracts/bsc-56/0x99b674ba03e896d952983908dba8d7b560fb10d5/); bsc `0xd35181...91fe16`; bsc `0xdd7b0f...cd9994` | ⚠️ Unaudited |
| FactoryOwnerUpgradeable | registry | bsc | 2 deployments: bsc [`0x4aa998...a1502e`](./contracts/bsc-56/0x4aa998539a8b79e7f14d36fc6a081c182ea1502e/); bsc `0x80f173...39ba63` | ⚠️ Unaudited |
| FarmingHelper | periphery | bsc | 3 deployments: bsc [`0xdf1e4c...6cb658`](./contracts/bsc-56/0xdf1e4cb8ee485af5d842829d4926ed408a6cb658/); bsc `0xf787d0...7a891f`; bsc `0xf91503...894ec6` | ⚠️ Unaudited |
| FeeBurner | unknown | bsc | 2 deployments: bsc [`0x394a67...c76384`](./contracts/bsc-56/0x394a6785f07d86ac75cf3db020773b9f76c76384/); bsc `0xee5bb1...3ab785` | ⚠️ Unaudited |
| FixedRateMintSchedule | unknown | bsc | 2 deployments: bsc [`0x66fd55...89af96`](./contracts/bsc-56/0x66fd552aa5007cd87945a4547aa32430be89af96/); bsc `0xdcca39...cb5c5c` | ⚠️ Unaudited |
| Migrator | periphery | bsc | [`0x3e87c2...c376b7`](./contracts/bsc-56/0x3e87c24bafd6aedff0a860b717d8b28042c376b7/) | ⚠️ Unaudited |
| MintSchedule | unknown | bsc | [`0xc86e74...5cf4d0`](./contracts/bsc-56/0xc86e74935181acb6de7c9d8307dd4092e35cf4d0/) | ⚠️ Unaudited |
| Nmx | unknown | bsc | [`0xd32d01...7d9d65`](./contracts/bsc-56/0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65/) | ⚠️ Unaudited |
| NomiswapFactory | registry | bsc | [`0xd6715a...c29349`](./contracts/bsc-56/0xd6715a8be3944ec72738f0bfdc739d48c3c29349/) | ⚠️ Unaudited |
| NomiswapRouter03 | adapter | bsc | 3 deployments: bsc [`0x4ec343...2359e0`](./contracts/bsc-56/0x4ec3432d9443f05022e2ff4e54fc7514be2359e0/); bsc `0x9d15d0...fa6136`; bsc `0xa63a2e...fe1c68` | ⚠️ Unaudited |
| NomiswapRouter04 | adapter | bsc | 2 deployments: bsc [`0xbf4c0d...8c1d68`](./contracts/bsc-56/0xbf4c0d66db59ae8276e0cb7e1ed36fc4ac8c1d68/); bsc `0xd486d0...836dc8` | ⚠️ Unaudited |
| NomiswapStableFactory | registry | bsc | 4 deployments: bsc [`0x35ddc2...0bc4cf`](./contracts/bsc-56/0x35ddc24e4f5be30262e36b50e7795fae880bc4cf/); bsc `0x4c8214...3d92cc`; bsc `0xc443b6...d7b33b`; bsc `0xc6b7ee...1f6285` | ⚠️ Unaudited |
| NomiswapStableSwapOnlyRouter | adapter | bsc | [`0xf6f2d1...d39357`](./contracts/bsc-56/0xf6f2d19087af5ac4e329687b6de9a7cc79d39357/) | ⚠️ Unaudited |
| StableswapMigrator | periphery | bsc | 2 deployments: bsc [`0xf750ba...1146db`](./contracts/bsc-56/0xf750baee569852d2a8ac052aef96f242191146db/); bsc `0xfa8811...5f41ce` | ⚠️ Unaudited |
| StakingService | unknown | bsc | 14 deployments: bsc [`0x03868d...b62a68`](./contracts/bsc-56/0x03868d2e45a9b579cc68b7addd65cf78ddb62a68/); bsc `0x268042...17da6a`; bsc `0x281e60...144928`; bsc `0x5c3177...669bfe`; bsc `0x5cd67d...258338`; bsc `0x63a81d...b3bd94`; bsc `0x8326e2...62805c`; bsc `0x857083...2bc9ab`; bsc `0x9cd2d1...a2f9a6`; bsc `0xa0f2c1...908797`; bsc `0xa937ed...e9d54c`; bsc `0xab2f42...a106d8`; bsc `0xd8925c...fa001d`; bsc `0xdbf1b1...81c3b3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x09f2b3...1febfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0a54c7...63f673` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1332b3...edff40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x13484b...273a52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x13ba16...13c352` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x153caa...91d4df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x181164...bd9f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x213bac...431a9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x301193...ff335d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4bb856...c46823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x52fb4c...b023cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x61c169...55de94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6a8de2...88f78b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6cb769...72c217` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x733f83...72ec56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x794052...3104cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x804a3c...d7cc00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9ad5a9...e34143` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa0a3e3...e8ec79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa82085...5b69c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbb3738...8f5bbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc87c1a...82db6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc996cf...d7c80e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce5f73...7207ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd40f10...333aa6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdd413c...44b750` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xec64fe...671da9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfa2d6d...871a9c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/nomiswap) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 11 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xb4058b...0eb627`](./contracts/bsc-56/0xb4058be8cf73cb4d07caaf2e87c9b38dbf0eb627/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99b674...fb10d5`](./contracts/bsc-56/0x99b674ba03e896d952983908dba8d7b560fb10d5/) | DoubleSupplyStakingRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdf1e4c...6cb658`](./contracts/bsc-56/0xdf1e4cb8ee485af5d842829d4926ed408a6cb658/) | FarmingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x394a67...c76384`](./contracts/bsc-56/0x394a6785f07d86ac75cf3db020773b9f76c76384/) | FeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66fd55...89af96`](./contracts/bsc-56/0x66fd552aa5007cd87945a4547aa32430be89af96/) | FixedRateMintSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e87c2...c376b7`](./contracts/bsc-56/0x3e87c24bafd6aedff0a860b717d8b28042c376b7/) | Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc86e74...5cf4d0`](./contracts/bsc-56/0xc86e74935181acb6de7c9d8307dd4092e35cf4d0/) | MintSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd32d01...7d9d65`](./contracts/bsc-56/0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65/) | Nmx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd6715a...c29349`](./contracts/bsc-56/0xd6715a8be3944ec72738f0bfdc739d48c3c29349/) | NomiswapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ec343...2359e0`](./contracts/bsc-56/0x4ec3432d9443f05022e2ff4e54fc7514be2359e0/) | NomiswapRouter03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbf4c0d...8c1d68`](./contracts/bsc-56/0xbf4c0d66db59ae8276e0cb7e1ed36fc4ac8c1d68/) | NomiswapRouter04 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x35ddc2...0bc4cf`](./contracts/bsc-56/0x35ddc24e4f5be30262e36b50e7795fae880bc4cf/) | NomiswapStableFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf6f2d1...d39357`](./contracts/bsc-56/0xf6f2d19087af5ac4e329687b6de9a7cc79d39357/) | NomiswapStableSwapOnlyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf750ba...1146db`](./contracts/bsc-56/0xf750baee569852d2a8ac052aef96f242191146db/) | StableswapMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03868d...b62a68`](./contracts/bsc-56/0x03868d2e45a9b579cc68b7addd65cf78ddb62a68/) | StakingService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
