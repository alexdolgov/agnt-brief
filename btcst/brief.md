# Agentic Audit Brief: BTCST

## Project Overview

- Project: BTCST (`btcst`)
- Lifecycle: active (Tier 0, 93.4% below peak)
- Generated: 2026-06-10T20:59:01.173Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc
- Contract surface: 64 unique implementations (93 raw deployments)
- DeFi Llama TVL: $1,064,612.21
- On-chain TVL (included contracts): $263,693,624.04
- TVL by chain: Bsc $263,693,624.04

## Project Description

BTCST is the Bitcoin Standard Hashrate Token on BNB Chain/BSC, anchored at bsc:0x78650b139471520656b9e7aa7a5e9276814a38e9. It represents tokenized Bitcoin mining hashrate and is associated with staking for Bitcoin-denominated rewards. Other token contracts or balances, including 0xba2ae424d960c26247dd6c32edc70b295c744c43, should not be treated as BTCST protocol TVL or core BTCST product-line assets unless project ownership is independently verified.

### Architecture

All contracts are deployed by a single deployer cluster and share the AdminUpgradeabilityProxy pattern for upgradeability. The BTCST token is the central asset, with tBTC and tDOGE acting as synthetic representations used in staking and farming contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 64
- Raw deployments: 93
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $263,693,624.04
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BEP20TokenImplementation | token | bsc | [`0xba2ae4...744c43`](./contracts/bsc-56/0xba2ae424d960c26247dd6c32edc70b295c744c43/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | 15 deployments: bsc [`0x18a144...0279bd`](./contracts/bsc-56/0x18a144b11fee170230177a481ba5c2532c0279bd/); bsc `0x216944...a02223`; bsc `0x50618c...ef07db`; bsc `0x54cd49...cff85f`; bsc `0x5e4348...a96e3c`; bsc `0x68c59c...6cba77`; bsc `0x819410...791be0`; bsc `0x88282c...ba5a31`; bsc `0x8bd446...76b5c1`; bsc `0xa0ab70...1a4381`; bsc `0xb94b8e...800d21`; bsc `0xc62fb8...0f82f9`; bsc `0xdc06e5...2e8a28`; bsc `0xea17a9...0d7ceb`; bsc `0xf58cd7...00d466` | ⚠️ Unaudited |
| BscMayaBridge | operational_periphery | bsc | 2 deployments: bsc [`0x830b53...108925`](./contracts/bsc-56/0x830b530b1f276dad15155d86eea213be2a108925/); bsc `0xb4ae7d...259bd8` | ⚠️ Unaudited |
| BTCST | token | bsc | 3 deployments: bsc [`0x78650b...4a38e9`](./contracts/bsc-56/0x78650b139471520656b9e7aa7a5e9276814a38e9/); bsc `0x85d4f8...89c091`; bsc `0xe28c4b...3b0def` | ⚠️ Unaudited |
| ElasticSwap | unknown | bsc | [`0x86060f...121c58`](./contracts/bsc-56/0x86060f6d5f4b7f44a1f622d31421bb209e121c58/) | ⚠️ Unaudited |
| FarmOperatorv2 | unknown | bsc | 4 deployments: bsc [`0x237ca4...d1ff20`](./contracts/bsc-56/0x237ca45c5b0fe71dcc826f48db9d2e4784d1ff20/); bsc `0x49fd20...3b87f2`; bsc `0x9fe8e5...dde570`; bsc `0xa50167...289a70` | ⚠️ Unaudited |
| Migrations | operational_periphery | bsc | 2 deployments: bsc [`0x3257e7...d19a79`](./contracts/bsc-56/0x3257e7dd35a7c117edccd45084ee8dd9a8d19a79/); bsc `0x826a96...689fd0` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | [`0xaa4c10...14c9d8`](./contracts/bsc-56/0xaa4c10aa3de2e4da6b0c0c9d177f1fa77314c9d8/) | ⚠️ Unaudited |
| tBTC | unknown | bsc | 6 deployments: bsc [`0x0a583d...c41287`](./contracts/bsc-56/0x0a583dde9cfc461487f6f7794d8ae950a7c41287/); bsc `0x2cd107...5ba11c`; bsc `0x30ca83...37eb13`; bsc `0x66949e...4dabf6`; bsc `0x6b97f2...8f2491`; bsc `0xcb04eb...e19b8f` | ⚠️ Unaudited |
| tBTCESTPolicy | unknown | bsc | [`0xa9e668...05a179`](./contracts/bsc-56/0xa9e668f43be8572d4207e8548c05f8b0e505a179/) | ⚠️ Unaudited |
| tDOGE | unknown | bsc | 4 deployments: bsc [`0x58c13a...ffb693`](./contracts/bsc-56/0x58c13a9091f7a533b24de7e8827a2cbebdffb693/); bsc `0x8ba919...a38317`; bsc `0xe550a5...8b404a`; bsc `0xe77920...b127d2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x069393...6aac53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0b8a67...33da77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0f088b...8ca30f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1927f4...d4cd08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1b6d5c...9b3521` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1f268c...d12140` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x20abb9...e84aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x21fb0a...d1e3d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2a2d24...887688` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c145a...01663d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4078c9...739bec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4fa79e...bbd7f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5767a0...156f88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x599b2a...a86da5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5dfc0c...12cfed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6427f5...437d35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x662f1e...be7f72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6be7ae...dd9989` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6d4f01...a2ab40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6e0831...5a651f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x75861a...4902d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7d06d8...615fab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x84186b...0cbcae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8b61b1...ca1ea2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8b6e39...786b44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8c1301...97a76f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x981bdf...e38271` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x984afd...28f2a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e6aae...4d44f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e98f2...3f78c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9eef36...a107c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa0497a...865747` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa7ed94...0f62e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa8e3db...ed5b1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xac79ed...0900f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xacfd82...32e07e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb64f3f...1b7749` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbbb991...384d99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbe2805...efb5de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc13ee4...eeb385` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc18d5c...7d0e30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc2b8b4...095e0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc39b3b...7dabe3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc55183...0b7100` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc55977...f71ded` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc5f7c8...a54435` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcba8e8...20d86a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd697a6...a4a584` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd72692...87e9c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe07657...9f6cae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xef2fe8...2d280b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf47ece...55eee8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf954bf...ed80da` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3257e7...d19a79`](./contracts/bsc-56/0x3257e7dd35a7c117edccd45084ee8dd9a8d19a79/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a583d...c41287`](./contracts/bsc-56/0x0a583dde9cfc461487f6f7794d8ae950a7c41287/) | tBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa9e668...05a179`](./contracts/bsc-56/0xa9e668f43be8572d4207e8548c05f8b0e505a179/) | tBTCESTPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x58c13a...ffb693`](./contracts/bsc-56/0x58c13a9091f7a533b24de7e8827a2cbebdffb693/) | tDOGE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
