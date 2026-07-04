# Agentic Audit Brief: minebean

## Project Overview

- Project: minebean (`minebean`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:27.538Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base
- Contract surface: 6 unique implementations (6 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 6 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 6 contract(s).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AutoMiner | unknown | base | n/a | [`0x313584...72de89`](./contracts/base-8453/0x31358496900d600b2f523d6edc4933e78f72de89/) | ⚠️ Unaudited |
| Bean | unknown | base | n/a | [`0x5c7299...4a5a5d`](./contracts/base-8453/0x5c72992b83e74c4d5200a8e8920fb946214a5a5d/) | ⚠️ Unaudited |
| GridMining | unknown | base | n/a | [`0x963249...1da4f0`](./contracts/base-8453/0x9632495bdb93fd6b0740ab69cc6c71c9c01da4f0/) | ⚠️ Unaudited |
| Staking | unknown | base | n/a | [`0xfe1771...8ff9c2`](./contracts/base-8453/0xfe177128df8d336caf99f787b72183d1e68ff9c2/) | ⚠️ Unaudited |
| StrategyVault | unknown | base | n/a | [`0x2c7a77...0fcf0a`](./contracts/base-8453/0x2c7a77a84276d63eb200970a9cc1c4a6f80fcf0a/) | ⚠️ Unaudited |
| Treasury | unknown | base | n/a | [`0x38f6e7...e3aeb3`](./contracts/base-8453/0x38f6e74148d6904286131e190d879a699fe3aeb3/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
