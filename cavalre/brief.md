# Agentic Audit Brief: CavalRe

⚠️ Lifecycle status: DECLINING - TVL dropped 21.0% over 90 days

## Project Overview

- Project: CavalRe (`cavalre`)
- Website: [https://beta.caval.re](https://beta.caval.re)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T22:02:59.670Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: avalanche
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $10,188.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Pool | core_logic | avalanche | n/a | [`0x5f1e8e...1f48ea`](./contracts/avalanche-43114/0x5f1e8ed8468232bab71eda9f4598bda3161f48ea/) | ⚠️ Unaudited |

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
| [DL audit link](https://3106160242-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMPC8VyOwEYMS3andgvMd%2Fuploads%2FSDbbJDn4JqYUPjWUvv6O%2FAudit%20%231.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://3106160242-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMPC8VyOwEYMS3andgvMd%2Fuploads%2FdlSoK7xFtp4ztQ9IP1iI%2FAudit%20%232.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x5f1e8e...1f48ea`](./contracts/avalanche-43114/0x5f1e8ed8468232bab71eda9f4598bda3161f48ea/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12888] DL audit link
- [12889] DL audit link

Fork inheritance lineage and inherited audits are included when available.
