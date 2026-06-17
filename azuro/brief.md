# Agentic Audit Brief: Azuro

## Project Overview

- Project: Azuro (`azuro`)
- Website: [https://azuro.org](https://azuro.org)
- Lifecycle: active (Tier 0, 89.5% below peak)
- Generated: 2026-06-17T07:00:41.450Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, bsc, gnosis, linea, polygon
- Contract surface: 25 unique implementations (52 raw deployments)
- DeFi Llama TVL: $1,638,884.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Azuro is infrastructure for on-chain betting and prediction markets, providing liquidity, market, oracle/resolution, and payout tooling for applications built on the protocol. It should not be characterized primarily as project-owned cross-chain asset movement infrastructure unless supported by Azuro-specific documentation or audited code.

### Architecture

The Core Betting Engine relies on Liquidity and Vaults for funds and Oracles for outcomes, while Token Infrastructure enables cross-chain asset movement. Rewards and Incentives are distributed based on user activity within the betting ecosystem, all managed through shared Factory and Access control contracts.

## Contract Surface Quality

- Indexed contracts: 1870; live-surface contracts included: 52 (49 live, 3 unknown).
- Excluded by liveness: 986 inactive, 832 singleton, 0 uninitialized.
- Deployment units: 3/283 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/17 (11.8%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 1
- Unverified implementations: 8
- Unique implementations: 25
- Raw deployments: 52
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pessimistic | Tier 2 | 2 | 11.8% | 2022-04 |
| Unknown | Tier 2 | 2 | 11.8% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AzuroBet | unknown | bsc | n/a | [`0x92baea...ee9e17`](./contracts/bsc-56/0x92baea8bcd5b10d1a76e154d23cf63f918ee9e17/) | ✅ Audited |
| LP | unknown | base | n/a | 4 deployments: bsc `0x934097...2a8d17`; bsc `0xd10258...b918c3`; polygon `0x2f2f55...b40d72`; base [`0x14375f...0c8224`](./contracts/base-8453/0x14375f13a9f8d91d46f14b30345387f5f90c8224/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Access | unknown | bsc | n/a | 2 deployments: bsc [`0x9e6be4...edcd5a`](./contracts/bsc-56/0x9e6be44cc1236eef7e1f197418592d363bedcd5a/); polygon `0xebbb12...771ef8` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | unit-19411 | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| Azuro | unknown | polygon | n/a | [`0x9f9659...ce9dc0`](./contracts/polygon-137/0x9f96597b08788791870b6a8e461cf2b619ce9dc0/) | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | unit-19426 | [`0xa21943...e12b93`](./contracts/linea-59144/0xa219439258ca9da29e9cc4ce5596924745e12b93/) | ⚠️ Unaudited |
| Pool | core_logic | base | n/a | 2 deployments: base [`0x01e538...5d09e7`](./contracts/base-8453/0x01e5389ad8e0ddd857969982090309eaa95d09e7/); base `0x172fb4...74abbd` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | base | n/a | 3 deployments: base [`0x3471a4...081c02`](./contracts/base-8453/0x3471a4067c1925ce879fe2e0c1d2a84eef081c02/); base `0x8d6e55...c4c008`; base `0xf412a6...7362b6` | ⚠️ Unaudited |
| Relayer | unknown | bsc | n/a | 2 deployments: bsc [`0x8da05c...abba9d`](./contracts/bsc-56/0x8da05c0021e6b35865fdc959c54dcef3a4abba9d/); bsc `0xe48500...013126` | ⚠️ Unaudited |
| TestERC20 | token | base | n/a | [`0xb8836a...659627`](./contracts/base-8453/0xb8836aa6ce3e08ba33ee6437daaea9e907659627/) | ⚠️ Unaudited |
| Trading | unknown | base | n/a | 13 deployments: base [`0x276f29...d00294`](./contracts/base-8453/0x276f297ded7767c93768b08448fa82b986d00294/); base `0x397253...430ecb`; base `0x4dab4a...454111`; base `0x5d510e...a98e39`; base `0x5e99e0...0b814f`; base `0x72fcb1...9b515b`; base `0x8f91df...eb3c74`; base `0xac40b1...7f4283`; base `0xae0830...f385fe`; base `0xceb4f2...e9936c`; base `0xdb8210...1d291a`; base `0xf26be6...ba47c9`; base `0xfdb493...ff880b` | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | unit-19348 | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | bsc | n/a | 7 deployments: bsc [`0x21b532...cb42ea`](./contracts/bsc-56/0x21b53257505b12159eb5eb3ffb4a587928cb42ea/); bsc `0x583cc3...95e50d`; bsc `0x5da21b...55f369`; bsc `0x7f18d7...674914`; bsc `0xdd180c...8cc35f`; gnosis `0x5da21b...55f369`; gnosis `0x5e16e9...7b209d` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | [`0x5e16e9...7b209d`](./contracts/bsc-56/0x5e16e947772f7c0d5e52c700a2493f47ba7b209d/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WXDAI | unknown | gnosis | n/a | [`0xe91d15...63a97d`](./contracts/gnosis-100/0xe91d153e0b41518a2ce8dd3d7944fa863463a97d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiveCore | unknown | base | n/a | 2 deployments: bsc `0xed5760...a877e1`; base [`0x66900e...5b1e87`](./contracts/base-8453/0x66900efd3ccb329f83b4820877efeb70135b1e87/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x2d6a5a...1ed0c9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x12d5e6...f5a1ef` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9407b5...b11413` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf4cfe9...d1f629` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x118ea8...ba125f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ba911...81c2da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x868e63...0a29d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa97259...8997df` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Azuro Security Analysis by Pessimistic (3).pdf](https://github.com/Azuro-protocol/Bug-Bounty/blob/main/audit-reports/Azuro%20Security%20Analysis%20by%20Pessimistic%20(3).pdf) | Pessimistic | Audit | 2022-04 | stale | Direct | contract_name | 5 | medium |
| [azuro-v1-audit-report-prelim.pdf](https://github.com/Azuro-protocol/Bug-Bounty/blob/main/audit-reports/azuro-v1-audit-report-prelim.pdf) | Unknown | Audit | n/a | unknown | Direct | contract_name | 5 | high |
| [Audits](https://gem.azuro.org/hub/blockchains/audits) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x9e6be4...edcd5a`](./contracts/bsc-56/0x9e6be44cc1236eef7e1f197418592d363bedcd5a/) | Access | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x66900e...5b1e87`](./contracts/base-8453/0x66900efd3ccb329f83b4820877efeb70135b1e87/) | LiveCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8da05c...abba9d`](./contracts/bsc-56/0x8da05c0021e6b35865fdc959c54dcef3a4abba9d/) | Relayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e16e9...7b209d`](./contracts/bsc-56/0x5e16e947772f7c0d5e52c700a2493f47ba7b209d/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=413

Zero-match audit list:

- [3481] Audits

Fork inheritance lineage and inherited audits are included when available.
