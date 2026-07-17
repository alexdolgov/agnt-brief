# Agentic Audit Brief: pNetwork

## Project Overview

- Project: pNetwork (`pnetwork`)
- Website: [https://p.network](https://p.network)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.938Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: polygon
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $13,099,805.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Fork Lineage

This project reuses audited code from **TEN Finance** (`ten-finance`) in the TENLock subsystem.
3 audits inherited from `ten-finance`, scoped to that subsystem.

Total inherited audits: 3. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 4 (1 direct, 3 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 3 unknown
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
| AutoFarmV2_CrossChain | unknown | polygon | n/a | [`0x89d065572136814230a55ddeeddec9df34eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/tenfinance](https://skynet.certik.com/projects/tenfinance) | CertiK | Audit | n/a | unknown | Inherited from TEN Finance — forked code, scoped to TENLock | n/a | 0 | n/a |
| [audit.md](https://tenfinance.gitbook.io/ten/documentation-1/audit.md) | unknown | Audit | n/a | unknown | Inherited from TEN Finance — forked code, scoped to TENLock | n/a | 0 | n/a |
| [spaces/-MTg9bsJ23imtGvbcYvG/uploads/a4RWF03WuDG7oB33JzOD/PeckShield-Audit-Report-TenLend-v1.0.pdf](https://3931236349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MTg9bsJ23imtGvbcYvG%2Fuploads%2Fa4RWF03WuDG7oB33JzOD%2FPeckShield-Audit-Report-TenLend-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Inherited from TEN Finance — forked code, scoped to TENLock | n/a | 0 | n/a |
| [20200915_pNetwork DAO staking+reward audit.pdf](https://github.com/cryptonicsconsulting/audits/blob/master/pNetwork/20200915_pNetwork%20DAO%20staking%2Breward%20audit.pdf) | unknown | Audit | 2020-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x89d065572136814230a55ddeeddec9df34eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19125] skynet.certik.com/projects/tenfinance
- [19126] audit.md
- [19127] spaces/-MTg9bsJ23imtGvbcYvG/uploads/a4RWF03WuDG7oB33JzOD/PeckShield-Audit-Report-TenLend-v1.0.pdf
- [20632] 20200915_pNetwork DAO staking+reward audit.pdf

Fork inheritance lineage and inherited audits are included when available.
