# Agentic Audit Brief: Solidly Labs

## Project Overview

- Project: Solidly Labs (`solidly-labs`)
- Website: [https://solidly.com](https://solidly.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.492Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $624,675.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/2 (100.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/2
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 100.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseV2TokenInterface | token | ethereum | n/a | [`0x777172...a60990`](./contracts/ethereum-1/0x777172d858dc1599914a1c4c6c9fc48c99a60990/) | ✅ Audited |
| VeV2Interface | unknown | ethereum | n/a | [`0x77730e...eaaf73`](./contracts/ethereum-1/0x77730ed992d286c53f3a0838232c3957daeaaf73/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Cyfrin_Memebox_Audit.pdf](https://github.com/SolidlyLabs/Solidly-Audits/blob/main/Memebox%20(Solidly%20V2%20Memecore)/Cyfrin_Memebox_Audit.pdf) | Cyfrin | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [audit_solidly.pdf](https://github.com/SolidlyLabs/Solidly-Audits/blob/main/Solidly%20V2/audit_solidly.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | n/a |
| [cyfrin_solidlyV3.pdf](https://github.com/SolidlyLabs/Solidly-Audits/blob/main/Solidly%20V3/cyfrin_solidlyV3.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [13871] Cyfrin_Memebox_Audit.pdf
- [13873] cyfrin_solidlyV3.pdf

Fork inheritance lineage and inherited audits are included when available.
