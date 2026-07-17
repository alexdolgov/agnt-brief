# Agentic Audit Brief: WhaleSwap

## Project Overview

- Project: WhaleSwap (`whaleswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.219Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-bd47
- Chains: bsc
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $2,289.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 3 (2 live, 1 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PodMaster | unknown | bsc | n/a | [`0xdee627eaab378ec57ecfb94b389b718ef3687c0d`](./contracts/bsc-56/0xdee627eaab378ec57ecfb94b389b718ef3687c0d/) | ⚠️ Unaudited |
| PodToken | token | bsc | n/a | [`0xdded222297b3d08dafdac8f65eeb799b2674c78f`](./contracts/bsc-56/0xdded222297b3d08dafdac8f65eeb799b2674c78f/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x929b6932e43f85d4ab405d6ce3271a1f7ee5e8b9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [WhaleSwap_Audit.pdf](https://github.com/Whale-Swap/audits/blob/878e4671851d65c4fc9a35a7d2fec94a483e1d72/WhaleSwap_Audit.pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xdee627eaab378ec57ecfb94b389b718ef3687c0d`](./contracts/bsc-56/0xdee627eaab378ec57ecfb94b389b718ef3687c0d/) | PodMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdded222297b3d08dafdac8f65eeb799b2674c78f`](./contracts/bsc-56/0xdded222297b3d08dafdac8f65eeb799b2674c78f/) | PodToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14128] WhaleSwap_Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
