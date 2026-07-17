# Agentic Audit Brief: B2 Buzz

## Project Overview

- Project: B2 Buzz (`b2-buzz`)
- Website: [https://www.bsquared.network](https://www.bsquared.network)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:05.136Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc, ethereum, polygon
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $167,985,487.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| B2Token | unknown | bsc | n/a | [`0x783c3f003f172c6ac5ac700218a357d2d66ee2a2`](./contracts/bsc-56/0x783c3f003f172c6ac5ac700218a357d2d66ee2a2/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0xeea3a032f381ab1e415e82fe08ebeb20f513c42c`](./contracts/ethereum-1/0xeea3a032f381ab1e415e82fe08ebeb20f513c42c/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | polygon | n/a | [`0x01ce88498ed095d386e09834d32fd8f1fecd184a`](./contracts/polygon-137/0x01ce88498ed095d386e09834d32fd8f1fecd184a/) | ⚠️ Unaudited |

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
| [B²--Stake-Final-Audit-Report.pdf](https://scalebit.xyz/reports/B%C2%B2--Stake-Final-Audit-Report.pdf) | ScaleBit | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [B²-Network-zkEVM-Final-Audit-Report.pdf](https://scalebit.xyz/reports/B%C2%B2-Network-zkEVM-Final-Audit-Report.pdf) | ScaleBit | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x783c3f003f172c6ac5ac700218a357d2d66ee2a2`](./contracts/bsc-56/0x783c3f003f172c6ac5ac700218a357d2d66ee2a2/) | B2Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21248] B²--Stake-Final-Audit-Report.pdf
- [21249] B²-Network-zkEVM-Final-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
