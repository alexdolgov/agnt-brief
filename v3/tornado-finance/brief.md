# Agentic Audit Brief: tornado-finance

## Project Overview

- Project: tornado-finance (`tornado-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:01.529Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 7 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

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

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeApprover | unknown | ethereum | n/a | [`0x318b47...9f3be2`](./contracts/ethereum-1/0x318b47c570b136bfdaec6cedb83caf73389f3be2/) | ⚠️ Unaudited |
| StrategyControllerV1 | unknown | ethereum | n/a | [`0x575ad0...77be37`](./contracts/ethereum-1/0x575ad0e9d6debb4199168ca042e40810a477be37/) | ⚠️ Unaudited |
| TCORE | unknown | ethereum | n/a | [`0x7a3d5d...7a2253`](./contracts/ethereum-1/0x7a3d5d49d64e57dbd6fbb21df7202bd3ee7a2253/) | ⚠️ Unaudited |
| TCOREv1Router | unknown | ethereum | n/a | [`0xaf89fa...6cae40`](./contracts/ethereum-1/0xaf89fa1ab9e30af4068bcc18c131132b836cae40/) | ⚠️ Unaudited |
| TcoreVaultV1 | unknown | ethereum | n/a | [`0x275ad4...ac7139`](./contracts/ethereum-1/0x275ad41c2b7eeb350bc5f9f2f2f24aac8fac7139/) | ⚠️ Unaudited |
| tPoolDAI | unknown | ethereum | n/a | [`0xb12a30...35c8bc`](./contracts/ethereum-1/0xb12a30b72ab4a7f00d1e5e66a6d74d621b35c8bc/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x39c0ed...d78093`](./contracts/ethereum-1/0x39c0edef530d284b8f7820061114157c5bd78093/) | ⚠️ Unaudited |

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
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
