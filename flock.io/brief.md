# Agentic Audit Brief: FLock.io

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: FLock.io (`flock.io`)
- Website: [https://www.flock.io/](https://www.flock.io/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:35.870Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $5,702,231.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

FLock.io is a private AI training platform for custom models that emphasizes user data control. Current accessible evidence does not substantiate claims about collaborative inference, federated-learning tasks, staking, or token-incentive mechanisms.

### Architecture

The Token and Staking family provides the FLock token and staking infrastructure used by the Task and Pool Management family to incentivize participation. The gmFlock Exchange family operates alongside, potentially offering liquidity for staked or reward tokens, while FlockConfig serves as a shared configuration contract across families.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 5 inactive, 26 singleton, 0 uninitialized.
- Deployment units: 2/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FlockTaskManagerV2Upgradeable | governance | base | unit-21653 | [`0x29d4ec...e69fed`](./contracts/base-8453/0x29d4ecea4b1fcac239bf4b4dc3b42829c2e69fed/) | ⚠️ Unaudited |
| FlockTaskManagerV2Upgradeable | governance | base | n/a | [`0x360406...466a3d`](./contracts/base-8453/0x36040670d539d13420f9d1caf605fa2901466a3d/) | ⚠️ Unaudited |
| ModelTokenLaunchUpgradeable | unknown | base | unit-21659 | [`0x6f39fe...97f0b1`](./contracts/base-8453/0x6f39fe20f19103a215bcc444a64f78ae7797f0b1/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0xb6523d...7e9f06`](./contracts/base-8453/0xb6523d5d33d29a7e6573330310e3f0e6157e9f06/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x360406...466a3d`](./contracts/base-8453/0x36040670d539d13420f9d1caf605fa2901466a3d/) | FlockTaskManagerV2Upgradeable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
