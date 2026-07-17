# Agentic Audit Brief: Glitter Finance

## Project Overview

- Project: Glitter Finance (`glitter-finance`)
- Website: [https://www.glitterfinance.org/](https://www.glitterfinance.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.679Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $14.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 3 (1 live, 2 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NotASecurity | unknown | ethereum | n/a | [`0x68f0c0003f1826c4e9646df7e1ecf3707fee0581`](./contracts/ethereum-1/0x68f0c0003f1826c4e9646df7e1ecf3707fee0581/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x446c264ed8888dad27f5452094d2ceadb1e038ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a468d6f8b0e8eac1806e783ce4e7e5e4e78ee59` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/glitter-finance](https://skynet.certik.com/projects/glitter-finance) | CertiK | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Glitter-Finance-Penetration-and-Load-Testing-Summary-Report.pdf](https://rdauditors.com/wp-content/uploads/2022/06/Glitter-Finance-Penetration-and-Load-Testing-Summary-Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [certik_glitter_finance_algorand_audit.pdf](https://www.dropbox.com/scl/fi/4d8u1vjhtslagyglrpcs7/certik_glitter_finance_algorand_audit.pdf?rlkey=0wjyjn7hh60aramrc2q2r7bga&dl=0) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [certik_glitter_finance_algorand_addendum.pdf](https://www.dropbox.com/scl/fi/52sbhzvyl1794w4uwc7oh/certik_glitter_finance_algorand_addendum.pdf?rlkey=y9pr55way2a10ryv32pqt7wpi&dl=0) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [certik_glitter_finance_solana_audit.pdf](https://www.dropbox.com/scl/fi/2j5g0xdjj86mrdl4iqkom/certik_glitter_finance_solana_audit.pdf?rlkey=1r88rkq8ibnlo5k7ywqghbr5l&dl=0) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RD_Audit.pdf](https://www.dropbox.com/scl/fi/m2op0hazl11symixqn8pc/RD_Audit.pdf?rlkey=7nri2ruov2ras1f7pwwd5r5ev&dl=0) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x68f0c0003f1826c4e9646df7e1ecf3707fee0581`](./contracts/ethereum-1/0x68f0c0003f1826c4e9646df7e1ecf3707fee0581/) | NotASecurity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13190] skynet.certik.com/projects/glitter-finance
- [13191] Glitter-Finance-Penetration-and-Load-Testing-Summary-Report.pdf
- [13192] certik_glitter_finance_algorand_audit.pdf
- [13193] certik_glitter_finance_algorand_addendum.pdf
- [13194] certik_glitter_finance_solana_audit.pdf
- [13195] RD_Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
