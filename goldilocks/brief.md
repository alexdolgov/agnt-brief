# Agentic Audit Brief: Goldilocks

## Project Overview

- Project: Goldilocks (`goldilocks`)
- Website: [https://www.goldilocksdao.io/](https://www.goldilocksdao.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.869Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: berachain
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $548,160.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 9 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 9 contract(s).

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/8 (12.5%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 12.5% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 1 | 11.1% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Goldiswap | unknown | berachain | n/a | [`0xb7e448e5677d212b8c8da7d6312e8afc49800466`](./contracts/berachain-80094/0xb7e448e5677d212b8c8da7d6312e8afc49800466/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DamOft | unknown | berachain | n/a | [`0x71356761fd23e77e5d78c37c70fe78229ca75a72`](./contracts/berachain-80094/0x71356761fd23e77e5d78c37c70fe78229ca75a72/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | berachain | n/a | [`0x17c3b688badd6dd11244096a9fbc4ae0add551ab`](./contracts/berachain-80094/0x17c3b688badd6dd11244096a9fbc4ae0add551ab/) | ⚠️ Unaudited |
| RusdOft | unknown | berachain | n/a | [`0x09d4214c03d01f49544c0448dbe3a27f768f2b34`](./contracts/berachain-80094/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/) | ⚠️ Unaudited |
| Sigma | unknown | berachain | n/a | [`0x563a27728d298f21738ab694e95f344a42731fe5`](./contracts/berachain-80094/0x563a27728d298f21738ab694e95f344a42731fe5/) | ⚠️ Unaudited |
| SrusdOft | unknown | berachain | n/a | [`0x5475611dffb8ef4d697ae39df9395513b6e947d7`](./contracts/berachain-80094/0x5475611dffb8ef4d697ae39df9395513b6e947d7/) | ⚠️ Unaudited |
| uniBTC | unknown | berachain | n/a | [`0x50fa1411201e2ac0361fb893e903b80f141b8190`](./contracts/berachain-80094/0x50fa1411201e2ac0361fb893e903b80f141b8190/) | ⚠️ Unaudited |
| VaultWithoutNative | unknown | berachain | n/a | [`0xa93322a98335b791df87f20bb939fbe4d84ffadd`](./contracts/berachain-80094/0xa93322a98335b791df87f20bb939fbe4d84ffadd/) | ⚠️ Unaudited |
| WsrusdOft | unknown | berachain | n/a | [`0x316cd39632cac4f4cdfc21757c4500fe12f64514`](./contracts/berachain-80094/0x316cd39632cac4f4cdfc21757c4500fe12f64514/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audits](https://goldilocks.gitbook.io/goldidocs/info/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Cyfrin](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2024-04-14-cyfrin-goldilocks-v1.1.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [[Hyacinth]()](https://www.hyacinthaudits.xyz/bounty/66c0cc6376ba4b02991fe30d) | Hyacinth | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Halborn](https://www.halborn.com/audits/goldilocks/goldilocks-core) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Halborn Update](https://www.halborn.com/audits/goldilocks/goldilocks-update) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x71356761fd23e77e5d78c37c70fe78229ca75a72`](./contracts/berachain-80094/0x71356761fd23e77e5d78c37c70fe78229ca75a72/) | DamOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x09d4214c03d01f49544c0448dbe3a27f768f2b34`](./contracts/berachain-80094/0x09d4214c03d01f49544c0448dbe3a27f768f2b34/) | RusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x563a27728d298f21738ab694e95f344a42731fe5`](./contracts/berachain-80094/0x563a27728d298f21738ab694e95f344a42731fe5/) | Sigma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x5475611dffb8ef4d697ae39df9395513b6e947d7`](./contracts/berachain-80094/0x5475611dffb8ef4d697ae39df9395513b6e947d7/) | SrusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x50fa1411201e2ac0361fb893e903b80f141b8190`](./contracts/berachain-80094/0x50fa1411201e2ac0361fb893e903b80f141b8190/) | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa93322a98335b791df87f20bb939fbe4d84ffadd`](./contracts/berachain-80094/0xa93322a98335b791df87f20bb939fbe4d84ffadd/) | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x316cd39632cac4f4cdfc21757c4500fe12f64514`](./contracts/berachain-80094/0x316cd39632cac4f4cdfc21757c4500fe12f64514/) | WsrusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [20443] Audits
- [20446] [Hyacinth]()
- [20447] Halborn
- [20448] Halborn Update

Fork inheritance lineage and inherited audits are included when available.
