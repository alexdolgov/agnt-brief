# Agentic Audit Brief: Metastable

## Project Overview

- Project: Metastable (`metastable`)
- Website: [https://mstable.io](https://mstable.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.668Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $1,416,616.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Metastable is a Sui-based decentralized stablecoin and unified stablecoin liquidity protocol associated with a single stablecoin vault. DefiLlama categorizes Metastable as a CDP, but the available sourced descriptions emphasize stablecoin liquidity and vault functionality rather than specific collateral-locking or minting mechanics.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (0 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 9
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x07375c...445ae0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36304b...c19331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x506e1c...8eb46c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x517130...991488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a6df3...fff893` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74ecde...83e878` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x834394...c2db63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e9aa6...2d3907` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd1251...7a8bd7` | ❓ Unverified |

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
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
