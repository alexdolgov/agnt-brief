# Agentic Audit Brief: Alphadex

## Project Overview

- Project: Alphadex (`alphadex`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:27.008Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: moonriver
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $141,389.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 7 contract(s).

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlphaDEX | unknown | moonriver | n/a | [`0x8e7cd8...b02a60`](./contracts/moonriver-1285/0x8e7cd893d8f371051a39aa65976bca22d7b02a60/) | ⚠️ Unaudited |
| LaunchpadFactory | unknown | moonriver | n/a | [`0xd9341f...157dd0`](./contracts/moonriver-1285/0xd9341fd84affa37af97747c08b9404ef30157dd0/) | ⚠️ Unaudited |
| LPStaking | unknown | moonriver | n/a | [`0x29a31b...2ed820`](./contracts/moonriver-1285/0x29a31b6e45cf5133c0483496471226a6d22ed820/) | ⚠️ Unaudited |
| MasterChef | unknown | moonriver | n/a | [`0x55a616...384f5c`](./contracts/moonriver-1285/0x55a616ac51d8bbe8a50c951acd5e941285384f5c/) | ⚠️ Unaudited |
| RewardNft | unknown | moonriver | n/a | [`0xaa6535...266b5b`](./contracts/moonriver-1285/0xaa6535409e076f203e0f431c518b998d85266b5b/) | ⚠️ Unaudited |
| Roar | unknown | moonriver | n/a | [`0x4829b5...7ab833`](./contracts/moonriver-1285/0x4829b57f0160427f768a5c0aa23cd3d33c7ab833/) | ⚠️ Unaudited |
| RoarStaking | unknown | moonriver | n/a | [`0x70f0bf...873236`](./contracts/moonriver-1285/0x70f0bf009d24f2628762cb1e079a9d720e873236/) | ⚠️ Unaudited |

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
| [AlphaDex-Smart-Contract-Security-Report-16.6.22.pdf (also discovered via alternate URL)](https://web.archive.org/web/20220704153703/https://www.rdauditors.com/wp-content/uploads/2022/06/AlphaDex-Smart-Contract-Security-Report-16.6.22.pdf) | RD Auditors | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21370] AlphaDex-Smart-Contract-Security-Report-16.6.22.pdf

Fork inheritance lineage and inherited audits are included when available.
