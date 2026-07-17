# Agentic Audit Brief: puff-penthouse

## Project Overview

- Project: puff-penthouse (`puff-penthouse`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.223Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: mantle
- Contract surface: 4 unique implementations (4 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 4 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 4 contract(s).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| METHL2 | unknown | mantle | n/a | [`0xa1f06b96f082c470e9759d1090d281b2493c6a2c`](./contracts/mantle-5000/0xa1f06b96f082c470e9759d1090d281b2493c6a2c/) | ⚠️ Unaudited |
| PepeToken | unknown | mantle | n/a | [`0x8baf44b350ef672232a6673e1e128c7875640477`](./contracts/mantle-5000/0x8baf44b350ef672232a6673e1e128c7875640477/) | ⚠️ Unaudited |
| Puff | unknown | mantle | n/a | [`0x26a6b0dcdcfb981362afa56d581e4a7dba3be140`](./contracts/mantle-5000/0x26a6b0dcdcfb981362afa56d581e4a7dba3be140/) | ⚠️ Unaudited |
| TimelockController | unknown | mantle | n/a | [`0x91a19402818ec3da51ead9db15a4776827ec65e5`](./contracts/mantle-5000/0x91a19402818ec3da51ead9db15a4776827ec65e5/) | ⚠️ Unaudited |

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
| mantle | [`0xa1f06b96f082c470e9759d1090d281b2493c6a2c`](./contracts/mantle-5000/0xa1f06b96f082c470e9759d1090d281b2493c6a2c/) | METHL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x8baf44b350ef672232a6673e1e128c7875640477`](./contracts/mantle-5000/0x8baf44b350ef672232a6673e1e128c7875640477/) | PepeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x26a6b0dcdcfb981362afa56d581e4a7dba3be140`](./contracts/mantle-5000/0x26a6b0dcdcfb981362afa56d581e4a7dba3be140/) | Puff | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
