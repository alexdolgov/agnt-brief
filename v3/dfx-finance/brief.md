# Agentic Audit Brief: DFX Finance

## Project Overview

- Project: DFX Finance (`dfx-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.906Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 46 unique implementations (157 raw deployments)
- DeFi Llama TVL: $106,814.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 29 project-authored contract(s) across 3 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (storage, nodelegatecall, owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 212; live-surface contracts included: 157 (125 live, 32 unknown).
- Excluded by liveness: 55 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/14 (14.3%)
- Deployed-live implementations: 14 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/14
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 46
- Raw deployments: 157
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 14.3% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Curve | unknown | base | n/a | 3 deployments: base [`0x3fb5e3...2f1637`](./contracts/base-8453/0x3fb5e30d3ce5f3f194c90a2689b1fd20c82f1637/); base `0x86fffd...fb9fba`; base `0xc015f6...26acb0` | ✅ Audited |
| Router | adapter | ethereum | n/a | 14 deployments: ethereum [`0x0bf905...08bb09`](./contracts/ethereum-1/0x0bf90521ebd840947845f4466018456aab08bb09/); ethereum `0x9bba68...25428e`; ethereum `0x9d0950...18b4fa`; ethereum `0xa55737...066a7f`; ethereum `0xc7da9f...e87945`; ethereum `0xf04d98...52b51b`; polygon `0x142e17...2dc1e6`; polygon `0x5131da...d6370a`; polygon `0x575f1e...246f51`; polygon `0x5cf6d4...baa168`; polygon `0x911073...02193f`; polygon `0xb4802e...1e5549`; polygon `0xe325dc...df7345`; arbitrum `0xbc3011...624406` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssimilatorFactory | unknown | polygon | n/a | 19 deployments: ethereum `0x14684c...ef753d`; ethereum `0x275757...fa2300`; ethereum `0x583ef7...1cb772`; ethereum `0x650713...93757a`; ethereum `0x74caaf...380687`; ethereum `0xde9c71...9c8fde`; polygon [`0x03df87...babd97`](./contracts/polygon-137/0x03df87a207a73e9f4e96c7f3546d25e187babd97/); polygon `0x1134da...d9354b`; polygon `0x3a3f59...d903ff`; polygon `0x3eba4a...5444c6`; polygon `0x5c6905...6da105`; polygon `0x60d9da...81d03a`; polygon `0x6df563...1b7e38`; polygon `0x6fa11a...52cded`; polygon `0x749e13...9f6628`; polygon `0x7e5739...a5f35c`; polygon `0xfb20d3...7e4e50`; polygon `0xff6ab3...64818e`; arbitrum `0x1134da...d9354b` | ⚠️ Unaudited |
| AssimilatorV2 | unknown | ethereum | n/a | [`0x2cd184...883024`](./contracts/ethereum-1/0x2cd18405163f6c928a1508b442b76a5135883024/) | ⚠️ Unaudited |
| Curves | unknown | ethereum | n/a | [`0xb39794...50961e`](./contracts/ethereum-1/0xb397946634f30c51da0d38e7dcbb10363e50961e/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | ⚠️ Unaudited |
| OFTAdapterV1Decimal2 | adapter | base | n/a | [`0xf75f1e...d232d0`](./contracts/base-8453/0xf75f1e19912352e1ad8c8ce9577381c277d232d0/) | ⚠️ Unaudited |
| Orchestrator | unknown | polygon | n/a | 14 deployments: ethereum `0x1190da...372254`; ethereum `0x5c6905...6da105`; ethereum `0xa0f599...777fdd`; ethereum `0xbc875f...d8222e`; polygon [`0x1020e0...24c8a7`](./contracts/polygon-137/0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7/); polygon `0x11654b...56921f`; polygon `0x3bd0e9...34fe3c`; polygon `0x425fa6...ce94a9`; polygon `0x6b5deb...3f2bf4`; polygon `0x74caaf...380687`; polygon `0x876bb3...cc3409`; polygon `0xd0562c...517277`; polygon `0xd3773e...bfe1e1`; arbitrum [`0x1020e0...24c8a7`](./contracts/arbitrum-42161/0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7/) | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | ethereum | n/a | 15 deployments: ethereum [`0x03416e...18b5cb`](./contracts/ethereum-1/0x03416eed4ecd6ecdf95ac106ca0572469d18b5cb/); ethereum `0x0a7e79...7f6fb0`; ethereum `0x809423...6182f3`; ethereum `0xc70688...47c13b`; ethereum `0xc7f49e...2eb7ca`; polygon `0x1fa99c...116323`; polygon `0x3a2f9e...082379`; polygon `0x3f9414...6d0d21`; polygon `0x85e969...165157`; polygon `0x85fa8b...151dbd`; polygon `0x8baf5f...c45cea`; polygon `0xc7da9f...e87945`; polygon `0xcd743a...a5c58c`; polygon `0xf524f9...f26f4f`; arbitrum `0x85e969...165157` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0xd52d48...0b1c32`](./contracts/ethereum-1/0xd52d48db08e8224ef6e2be8f54f3c84e790b1c32/) | ⚠️ Unaudited |
| Swaps | unknown | ethereum | n/a | 14 deployments: ethereum [`0x0dc8c8...d07ed4`](./contracts/ethereum-1/0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4/); ethereum `0x2b2bfe...f67b6d`; ethereum `0x74982d...04d3a6`; ethereum `0xe35d0d...681c26`; polygon `0x1190da...372254`; polygon `0x29364a...6fce4e`; polygon `0x2cd184...883024`; polygon `0x47fa06...42dd2b`; polygon `0x50e5f6...723636`; polygon `0x5a0b0b...e2db61`; polygon `0x6d0ac9...8543ec`; polygon `0x9bba68...25428e`; polygon `0xa49bf7...8e5ecd`; arbitrum `0x1190da...372254` | ⚠️ Unaudited |
| TimeLock | governance | base | n/a | [`0x30d940...a5b92d`](./contracts/base-8453/0x30d940c7b4a21e10f3fcaf4faabe8fe826a5b92d/) | ⚠️ Unaudited |
| ViewLiquidity | unknown | polygon | n/a | 14 deployments: ethereum `0x1134da...d9354b`; ethereum `0x263365...50284b`; ethereum `0xe553c6...ef2fbb`; ethereum `0xf82596...4190b2`; polygon [`0x0a7e79...7f6fb0`](./contracts/polygon-137/0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0/); polygon `0x1123e6...284d2e`; polygon `0x2e28f7...8c6b14`; polygon `0x7c799d...e1d7bb`; polygon `0x9166d8...4ab9c6`; polygon `0xd3f216...845cbc`; polygon `0xd6af8d...b3e6f0`; polygon `0xe0e435...a48f95`; polygon `0xf3cc07...9b545d`; arbitrum [`0x0a7e79...7f6fb0`](./contracts/arbitrum-42161/0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0/) | ⚠️ Unaudited |
| Zap | unknown | ethereum | n/a | 26 deployments: ethereum [`0x0c84e1...14d0af`](./contracts/ethereum-1/0x0c84e1265aec391ce7f867573d9cc2ae1314d0af/); ethereum `0x0e1532...5346ff`; ethereum `0x3c380d...d1d080`; ethereum `0x607690...ea5fdf`; ethereum `0x64d65e...78cd15`; ethereum `0x6fa11a...52cded`; ethereum `0x7c1f74...50d308`; ethereum `0x895530...1adf56`; ethereum `0xbb3aef...a4e399`; ethereum `0xc470d3...2e5ec7`; ethereum `0xefe8f6...4a6e74`; ethereum `0xf0572e...fece0e`; ethereum `0xf3cc07...9b545d`; polygon `0x1687f0...523a18`; polygon `0x18c751...41c304`; polygon `0x2420d5...7cf493`; polygon `0x659b4c...73a9a4`; polygon `0x77527e...304f21`; polygon `0x81c1f4...9fe958`; polygon `0xa070fb...e2214c`; polygon `0xb6c42f...bf482b`; polygon `0xfcb58a...2a648f`; polygon `0xfd2c0e...435f29`; arbitrum `0x17ff40...a25320`; arbitrum `0x3e1941...1bf083`; arbitrum `0x60b818...757771` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0f0acc...f9d64e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2635ea...7cff4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a22a5...6e6a5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4600c1...215885` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50d076...50d887` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e5739...a5f35c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dc156...3f8ce8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f3631...ed8222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x954499...b7c856` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x984b4c...1ff49d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccf12d...878129` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6c74a...647ad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf599de...e6a63f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6a177...d4532d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1451a2...62788f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x14684c...ef753d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x23368c...a45560` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a22a5...6e6a5e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a5bb8...acc480` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x538f00...ee8273` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x583ef7...1cb772` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d3d69...993c17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x80e9f6...c49c7a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8dc156...3f8ce8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99063f...391943` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e9f4c...cfb74d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa51c0b...fe9c31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa5a3ae...67ff2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe6c74a...647ad3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec7df6...e4107f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6a177...d4532d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeecc4c...48acf2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2021-05-03-Trail_of_Bits.pdf](https://github.com/dfx-finance/protocol/blob/main/audits/2021-05-03-Trail_of_Bits.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
