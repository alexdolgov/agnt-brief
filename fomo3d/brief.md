# Agentic Audit Brief: Fomo3D

## Project Overview

- Project: Fomo3D (`fomo3d`)
- Lifecycle: active (Tier 0, 59.6% below peak)
- Generated: 2026-06-17T07:00:58.255Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,981,337.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Fomo3D is a gamified lottery and investment protocol centered on the FoMo3Dlong and FoMo3DSoon game variants, where players buy keys to earn dividends from subsequent purchases and the last buyer can win a jackpot if no one buys before the timer expires. The broader contract surface also includes associated support or adjacent contracts such as Divies deployments and other Fomo3D-related contracts/libraries; shared infrastructure or implementation equivalence should only be asserted where verified by call relationships or exact bytecode/source matching.

### Architecture

The two contracts, FoMo3Dlong and FoMo3DSoon, are variants of the same game logic deployed by the same deployer, likely representing different round lengths or parameters, and share no explicit infrastructure beyond their common deployer.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Divies | unknown | ethereum | n/a | [`0xc0c001...929ad0`](./contracts/ethereum-1/0xc0c001140319c5f114f8467295b1f22f86929ad0/) | ⚠️ Unaudited |
| FoMo3Dlong | unknown | ethereum | n/a | [`0xa62142...389da1`](./contracts/ethereum-1/0xa62142888aba8370742be823c1782d17a0389da1/) | ⚠️ Unaudited |
| FoMo3DSoon | unknown | ethereum | n/a | [`0x4e8ecf...bf00b8`](./contracts/ethereum-1/0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8/) | ⚠️ Unaudited |
| Hourglass | unknown | ethereum | n/a | [`0xb3775f...91efbe`](./contracts/ethereum-1/0xb3775fb83f7d12a36e0475abdd1fca35c091efbe/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xf9ba09...e48d7d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc0c001...929ad0`](./contracts/ethereum-1/0xc0c001140319c5f114f8467295b1f22f86929ad0/) | Divies | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa62142...389da1`](./contracts/ethereum-1/0xa62142888aba8370742be823c1782d17a0389da1/) | FoMo3Dlong | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e8ecf...bf00b8`](./contracts/ethereum-1/0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8/) | FoMo3DSoon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3775f...91efbe`](./contracts/ethereum-1/0xb3775fb83f7d12a36e0475abdd1fca35c091efbe/) | Hourglass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
