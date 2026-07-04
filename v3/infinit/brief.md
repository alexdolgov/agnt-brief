# Agentic Audit Brief: infinit

## Project Overview

- Project: infinit (`infinit`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:01.216Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 6 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

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
| IN_Staking | unknown | bsc | n/a | [`0xc8e6c1...0cdadc`](./contracts/bsc-56/0xc8e6c14ccebed218a64df570025c5a1eeb0cdadc/) | ⚠️ Unaudited |
| IN_Token | unknown | ethereum | n/a | [`0x3fe162...e83dbe`](./contracts/ethereum-1/0x3fe162dd973df944c43c8b7642e4e433dfe83dbe/) | ⚠️ Unaudited |
| IN_Unstaking | unknown | bsc | n/a | [`0x1f2c1e...1e7953`](./contracts/bsc-56/0x1f2c1ecc4d4aa2d7b4877a85ed1776f9ca1e7953/) | ⚠️ Unaudited |
| Lens | unknown | bsc | n/a | [`0x601b57...c0fca3`](./contracts/bsc-56/0x601b5729f6312039dcbc17c9cb2935cd92c0fca3/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x6fa56f...756717`](./contracts/ethereum-1/0x6fa56f0c01ed6898b9447ff0351e0b70c8756717/) | ⚠️ Unaudited |
| StakingRewarder | unknown | bsc | n/a | [`0x3ed8e1...f9a87c`](./contracts/bsc-56/0x3ed8e11d84e94f1dfd2f034ceb25d14cd5f9a87c/) | ⚠️ Unaudited |

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
