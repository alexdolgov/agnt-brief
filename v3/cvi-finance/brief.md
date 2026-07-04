# Agentic Audit Brief: CVI Finance

## Project Overview

- Project: CVI Finance (`cvi-finance`)
- Website: [https://cvi.finance/](https://cvi.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.343Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, ethereum, polygon
- Contract surface: 84 unique implementations (107 raw deployments)
- DeFi Llama TVL: $129,169.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 46 project-authored contract(s) across 3 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 148; live-surface contracts included: 107 (37 live, 70 unknown).
- Excluded by liveness: 41 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/23 (17.4%)
- Deployed-live implementations: 23 of 84 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/23
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 84
- Raw deployments: 107
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 4 | 17.4% | 2021-03 |
| SourceHat | Tier 2 | 3 | 13.0% | 2022-06 |
| Zokyo | Tier 2 | 1 | 4.3% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ETHPlatform | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5005e8...cf0e79`](./contracts/ethereum-1/0x5005e8dc0033e78af80cfc8d10f5163f2fcf0e79/); ethereum `0xbe857e...52be72` | ✅ Audited |
| GOVI | unknown | ethereum | n/a | [`0xeeaa40...6c6107`](./contracts/ethereum-1/0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107/) | ✅ Audited |
| Platform | unknown | polygon | n/a | 2 deployments: ethereum `0xe0437b...0bd1da`; polygon [`0x0bbaf8...0b11a4`](./contracts/polygon-137/0x0bbaf8ea9c644149dce1656b811ef2d7ac0b11a4/) | ✅ Audited |
| Staking | unknown | ethereum | n/a | [`0xdb3130...9beacb`](./contracts/ethereum-1/0xdb3130952ed9b5fa7108dedaaa921ae8f59beacb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CVIUSDCThetaVault | core_logic | arbitrum | n/a | [`0xfdeb59...fcc506`](./contracts/arbitrum-42161/0xfdeb59a2b4891ea17610ee38665249acc9fcc506/) | ⚠️ Unaudited |
| CVIUSDCVolatilityTokenV3 | token | arbitrum | n/a | [`0x8096ad...27c722`](./contracts/arbitrum-42161/0x8096ad3107715747361acefe685943bfb427c722/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x223013...a02ada`](./contracts/arbitrum-42161/0x223013bd8b4569628d50ee106ccba93189a02ada/); arbitrum `0x7f4b13...d96cc8` | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | ethereum | n/a | [`0xcf05a6...8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | polygon | n/a | 2 deployments: ethereum `0x936dd3...975fb7`; polygon [`0x27792c...1a16dc`](./contracts/polygon-137/0x27792cda195d07ffb36e94e253d67361661a16dc/) | ⚠️ Unaudited |
| PlatformV3 | unknown | polygon | n/a | [`0x88d01e...45ff9d`](./contracts/polygon-137/0x88d01ef3a4d586d5e4ce30357ec57b073d45ff9d/) | ⚠️ Unaudited |
| PositionRewards | unknown | ethereum | n/a | [`0xe9d634...492ab4`](./contracts/ethereum-1/0xe9d634d2767079a2bff2ced1584f8f5623492ab4/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | 4 deployments: ethereum `0x2eab10...e7eeab`; ethereum `0x858d7c...249e11`; polygon [`0x21032c...7cb077`](./contracts/polygon-137/0x21032cce4b54a2e856a0a006552e593d627cb077/); polygon `0x7d9d86...7de262` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x07e49d...875283`](./contracts/arbitrum-42161/0x07e49d5de43dda6162fa28d24d5935c151875283/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0e0da4...e0bc60`](./contracts/ethereum-1/0x0e0da40101d8f6eb1b1d6b0215327e8452e0bc60/); ethereum `0x2167ee...1f4fbc`; ethereum `0x959fde...a51ec4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x244472...6599a0`](./contracts/ethereum-1/0x2444722a73564060808e0124f4b80bda436599a0/); ethereum `0x3d37c2...3ede5f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27f57f...49151f`](./contracts/ethereum-1/0x27f57fd24f8a179f5b57586d809afa7cb649151f/); ethereum `0x36bab6...ee5399` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2878f5...37f7a1`](./contracts/ethereum-1/0x2878f5baf3ebf1de939916901da0a825ad37f7a1/); ethereum `0xfa0458...9b2c79` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x31b1d6...cd5d1e`](./contracts/ethereum-1/0x31b1d6b8a54df568ab9a3659ef269534b9cd5d1e/); ethereum `0x337f91...b93728`; ethereum `0x9ad0e2...b0219d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x164ec5...32027f`](./contracts/polygon-137/0x164ec55e783f8ff6f77b9578f726efd88e32027f/); polygon `0xe7e97c...5bab5b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x3863d0...6ab72f`](./contracts/polygon-137/0x3863d0c9b7552cd0d0de99fe9f08a32fed6ab72f/); polygon `0xe26783...dc542c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x9cd552...c821e1`](./contracts/polygon-137/0x9cd552551ec130b50c1421649c8d11e76ac821e1/); polygon `0xc72b70...85c821` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0xd013ff...d7b31f`](./contracts/polygon-137/0xd013ffc6ed3b2c773051a3b83e763df782d7b31f/); polygon `0xda6798...41d0c3` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 6 deployments: ethereum [`0x197e99...635a5d`](./contracts/ethereum-1/0x197e99bd87f98dfde461afe3f706de36c9635a5d/); ethereum `0x1ee312...9ebebf`; ethereum `0x7e6782...49d919`; ethereum `0xa2b04f...8a84f2`; polygon `0x1dab41...b88de6`; polygon `0x1dd009...9d9348` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0a281e...869435` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a6bb1...3f6a7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b38d9...725619` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c0502...196155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f3ce8...860195` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x130d6a...57aa99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x197c25...72e8e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c7464...a32c8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d752c...18ce4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fff08...42c584` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d05ba...e16c6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e5069...231732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x404cd4...44d8a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x406830...6fb0ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43b576...a4a912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44f671...caeba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b1fc3...42bf69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fde21...05491f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x544d18...923cd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x558de8...b7b249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55ab07...f5053a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x581ed3...b222ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x593499...d0ab62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cdd3d...c404d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70a18d...79cc00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b1e5d...748363` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95ef0e...0d9a25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bc99e...62a19e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9f875...a506c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb18db0...eba751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3fd83...0d8da7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4e50d...22a468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5b935...736b19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba67c8...a0c0ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdfe39...7f9a03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9529c...805e21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf672f...d4a53a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5a222...43f1b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5586f...11a5c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf359e1...b64922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4e153...f972fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf86237...098dca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9057e...b31f8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe1185...74177e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x02deb6...291555` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x049c70...04593e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b49ad...99907e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3c719e...dbaf1f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x58dddd...2e4833` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78fc21...c95fef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7907b1...e468d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8fa16a...ee250b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x961ac0...010a98` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x981475...70d11d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1f275...64b289` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc070d8...f4234c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd53f9d...d7d09e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb3e7d...38dcc3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3480e...3aa6f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea7b8d...71c423` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeafad6...160e37` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [usdt-audit.pdf](https://v2.cvi.finance/files/usdt-audit.pdf) | CertiK | Audit | 2021-01 | stale | Direct | contract_name | 4 | n/a |
| [eth-audit.pdf](https://v2.cvi.finance/files/eth-audit.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | 4 | n/a |
| [sourcehat.com/audits/CVI](https://sourcehat.com/audits/CVI) | SourceHat | Audit | 2022-06 | stale | Direct | contract_name | 3 | n/a |
| [CVI_Zokyo_audit_report_30thNov_2023.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/CVI/CVI_Zokyo_audit_report_30thNov_2023.pdf) | Zokyo | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 84 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=12

Fork inheritance lineage and inherited audits are included when available.
