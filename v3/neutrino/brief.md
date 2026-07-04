# Agentic Audit Brief: neutrino

## Project Overview

- Project: neutrino (`neutrino`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.431Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 5 project-authored contract(s) across 2 chain(s); 5 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

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
| EURN | unknown | ethereum | n/a | [`0x9fcf41...971671`](./contracts/ethereum-1/0x9fcf418b971134625cdf38448b949c8640971671/) | ⚠️ Unaudited |
| NSBT | unknown | ethereum | n/a | [`0x9d79d5...0acb93`](./contracts/ethereum-1/0x9d79d5b61de59d882ce90125b18f74af650acb93/) | ⚠️ Unaudited |
| USDN | unknown | ethereum | n/a | [`0x06f59a...58430c`](./contracts/ethereum-1/0x06f59a767f33eabe3f1a3d3c14997bae8058430c/) | ⚠️ Unaudited |
| USDNV2 | unknown | bsc | n/a | [`0x03ab98...2d41f9`](./contracts/bsc-56/0x03ab98f5dc94996f8c33e15cd4468794d12d41f9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x4cec57...c0e98f`](./contracts/ethereum-1/0x4cec571394ee433cd21390286284abecacc0e98f/) | ⚠️ Unaudited |
| WAVES | unknown | ethereum | n/a | [`0x1cf459...fcf29a`](./contracts/ethereum-1/0x1cf4592ebffd730c7dc92c1bdffdfc3b9efcf29a/) | ⚠️ Unaudited |

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
