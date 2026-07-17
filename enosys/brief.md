# Agentic Audit Brief: Enosys

## Project Overview

- Project: Enosys (`enosys`)
- Website: [https://enosys.global](https://enosys.global)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.810Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $14,552,658.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 4
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 1 | 50.0% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrapDepositRedeem | unknown | ethereum | n/a | 3 deployments: ethereum [`0x37aca97a99d1b4260a5e9821d0ef14947fb68970`](./contracts/ethereum-1/0x37aca97a99d1b4260a5e9821d0ef14947fb68970/); ethereum `0x8936761f2903ed1af2b269e6fa3a79ebb0162c51`; ethereum `0xb3902647015c17fc3c2f5ca5f5cb68bbf2d9b1e2` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardToken | token | ethereum | n/a | [`0x4a220e6096b25eadb88358cb44068a3248254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | ⚠️ Unaudited |

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
| [dedaub.com/audits/flare-finance/enosys-october-20-2025](https://dedaub.com/audits/flare-finance/enosys-october-20-2025) | Dedaub | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [watchpug_audit.pdf (also discovered via alternate URL)](https://github.com/flrfinance/bridge-contracts/raw/main/watchpug_audit.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | contract_name | 3 | high |
| [Manual audit seed](https://dedaub.com/audits/flare-finance) | Dedaub | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4a220e6096b25eadb88358cb44068a3248254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | StandardToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=6

Zero-match audit list:

- [21284] dedaub.com/audits/flare-finance/enosys-october-20-2025
- [24091] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
