# Agentic Audit Brief: CEX.IO

## Project Overview

- Project: CEX.IO (`cex.io`)
- Website: [http://cex.io/](http://cex.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.187Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: bsc, ethereum, polygon
- Contract surface: 4 unique implementations (6 raw deployments)
- DeFi Llama TVL: $6,555,417.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CEX. Structurally: 4 project-authored contract(s) across 3 chain(s).

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 6
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
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
| GnosisSafe | governance | ethereum | n/a | [`0x2818e5...5932ca`](./contracts/ethereum-1/0x2818e54e0489274f61f33f163504074bee5932ca/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xc48c74...69d996`](./contracts/ethereum-1/0xc48c74c4eda47f915e8580391ec2f386f769d996/) | ⚠️ Unaudited |
| SafeL2 | unknown | bsc | n/a | [`0x8e7b54...91684d`](./contracts/bsc-56/0x8e7b542d93901560583c0c22d156ecca5191684d/) | ⚠️ Unaudited |
| SafeProxy | unknown | polygon | n/a | 3 deployments: bsc `0xc48c74...69d996`; polygon [`0x8e7b54...91684d`](./contracts/polygon-137/0x8e7b542d93901560583c0c22d156ecca5191684d/); polygon `0xc48c74...69d996` | ⚠️ Unaudited |

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
| [pci.pdf](https://static.cex.io/img/legal/pci.pdf) | PCI DSS | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11551] pci.pdf

Fork inheritance lineage and inherited audits are included when available.
