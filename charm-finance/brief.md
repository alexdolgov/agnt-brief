# Agentic Audit Brief: Charm Finance

## Project Overview

- Project: Charm Finance (`charm-finance`)
- Website: [https://www.charm.fi/](https://www.charm.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.237Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum, base, berachain, boba, ethereum, polygon
- Contract surface: 12 unique implementations (25 raw deployments)
- DeFi Llama TVL: $2,272,199.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 18 project-authored contract(s) across 3 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 5 common project-authored base contract(s) (optionsymbol, erc20upgradesafe, contextupgradesafe). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 25 (18 live, 7 unknown).
- Excluded by liveness: 27 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/5 (60.0%)
- Deployed-live implementations: 5 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/5
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 12
- Raw deployments: 25
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/charm/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 60.0% (Code4rena, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 40.0% | 2023-06 |
| Spearbit | Tier 1 | 2 | 40.0% | 2025-06 |
| Code4rena | Tier 1 | 1 | 20.0% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlphaProVault | core_logic | berachain | n/a | 6 deployments: ethereum `0xfaf1af4dc761dba157227a3c06cec9a7486d8a07`; polygon `0xfaf1af4dc761dba157227a3c06cec9a7486d8a07`; base `0xfaf1af4dc761dba157227a3c06cec9a7486d8a07`; arbitrum `0xfaf1af4dc761dba157227a3c06cec9a7486d8a07`; berachain [`0x0a4b7ac0723d0d08de255aa9d574958c66e9baea`](./contracts/berachain-80094/0x0a4b7ac0723d0d08de255aa9d574958c66e9baea/); berachain `0xf0f42c62923c6e741c64e0163c5c50965c05df61` | ✅ Audited |
| AlphaProVaultFactory | registry | berachain | n/a | 6 deployments: ethereum `0x5b7b8b487d05f77977b7abeec5f922925b9b2afa`; polygon `0x5b7b8b487d05f77977b7abeec5f922925b9b2afa`; base `0x5b7b8b487d05f77977b7abeec5f922925b9b2afa`; arbitrum `0x5b7b8b487d05f77977b7abeec5f922925b9b2afa`; berachain [`0x189bd734c2f1beeaca81e0edbb1ce3b8a16ed137`](./contracts/berachain-80094/0x189bd734c2f1beeaca81e0edbb1ce3b8a16ed137/); berachain `0x78f25a5f78092bd13109a2f889cf324907b4ad15` | ✅ Audited |
| AlphaVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x9bf7b46c7ad5ab62034e9349ab912c0345164322`](./contracts/ethereum-1/0x9bf7b46c7ad5ab62034e9349ab912c0345164322/); ethereum `0xbd7c6d2ede836b6b27c461799c4e9ecb8f4e8a66`; ethereum `0xe72f3e105e475d7db3a003ffa377afae9c2c6c11` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlphaProPeriphery | periphery | berachain | n/a | 2 deployments: berachain [`0xe2ac68fe15a8e64639aedcda30867cac04331a66`](./contracts/berachain-80094/0xe2ac68fe15a8e64639aedcda30867cac04331a66/); berachain `0xf1b21f82b69b989fdd750623a83b13996539a7ee` | ⚠️ Unaudited |
| CubePool | core_logic | ethereum | n/a | [`0x23f6a2d8d691294c3a1144eed14f5632e8bc1b67`](./contracts/ethereum-1/0x23f6a2d8d691294c3a1144eed14f5632e8bc1b67/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xbed8a8152dd2dbf52275f0f44d42250436fe1319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4b4568615cb365bca926910ebc30ea2161067cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbed8a8152dd2dbf52275f0f44d42250436fe1319` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0xfaf1af4dc761dba157227a3c06cec9a7486d8a07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbed8a8152dd2dbf52275f0f44d42250436fe1319` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbed8a8152dd2dbf52275f0f44d42250436fe1319` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xfcc5d3b0ba012905e149acab826d452e29780d3b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [immunefi.com/bug-bounty/charm/information](https://immunefi.com/bug-bounty/charm/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [spaces/ncWpbfiN022KvH5AGrQq/uploads/IM3bniGpiEo24osqeSJ5/report-cantinacode-charm-0604.pdf](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FIM3bniGpiEo24osqeSJ5%2Freport-cantinacode-charm-0604.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 2 | n/a |
| [spaces/ncWpbfiN022KvH5AGrQq/uploads/cDHlWmzrwu3w7pAxW6dG/PeckShield-Audit-Report-Charm-v1.0.pdf](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FcDHlWmzrwu3w7pAxW6dG%2FPeckShield-Audit-Report-Charm-v1.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [spaces/ncWpbfiN022KvH5AGrQq/uploads/Lx7bFYx6tcfSpsdqT3jV/PeckShield-Audit-Report-Charm-AlphaPro-v1.0.pdf](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FLx7bFYx6tcfSpsdqT3jV%2FPeckShield-Audit-Report-Charm-AlphaPro-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 2 | n/a |
| [spaces/ncWpbfiN022KvH5AGrQq/uploads/cblzw4RcfNUsNN1dnlPG/REP-Charm Finance Alpha Vaults-2021-06-30.pdf](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2Fcblzw4RcfNUsNN1dnlPG%2FREP-Charm%20Finance%20Alpha%20Vaults-2021-06-30.pdf) | Code4rena | Contest | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [Audit Report - Charm Finance [27.10.2020].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Charm%20Finance%20%5B27.10.2020%5D.pdf) | unknown | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0xe2ac68fe15a8e64639aedcda30867cac04331a66`](./contracts/berachain-80094/0xe2ac68fe15a8e64639aedcda30867cac04331a66/) | AlphaProPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23f6a2d8d691294c3a1144eed14f5632e8bc1b67`](./contracts/ethereum-1/0x23f6a2d8d691294c3a1144eed14f5632e8bc1b67/) | CubePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Zero-match audit list:

- [2881] Audit Report - Charm Finance [27.10.2020].pdf

Fork inheritance lineage and inherited audits are included when available.
