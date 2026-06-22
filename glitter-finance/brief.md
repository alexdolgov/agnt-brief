# Agentic Audit Brief: Glitter Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 23.5% over 90 days

## Project Overview

- Project: Glitter Finance (`glitter-finance`)
- Website: [https://www.glitterfinance.org/](https://www.glitterfinance.org/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T12:08:10.704Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $13.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 3 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 5 unknown
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
| NotASecurity | unknown | ethereum | n/a | [`0x68f0c0...ee0581`](./contracts/ethereum-1/0x68f0c0003f1826c4e9646df7e1ecf3707fee0581/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/glitter-finance) | CertiK | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://rdauditors.com/wp-content/uploads/2022/06/Glitter-Finance-Penetration-and-Load-Testing-Summary-Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.dropbox.com/scl/fi/4d8u1vjhtslagyglrpcs7/certik_glitter_finance_algorand_audit.pdf?rlkey=0wjyjn7hh60aramrc2q2r7bga&dl=0) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.dropbox.com/scl/fi/52sbhzvyl1794w4uwc7oh/certik_glitter_finance_algorand_addendum.pdf?rlkey=y9pr55way2a10ryv32pqt7wpi&dl=0) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.dropbox.com/scl/fi/2j5g0xdjj86mrdl4iqkom/certik_glitter_finance_solana_audit.pdf?rlkey=1r88rkq8ibnlo5k7ywqghbr5l&dl=0) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**Here**](https://www.dropbox.com/scl/fi/m2op0hazl11symixqn8pc/RD_Audit.pdf?rlkey=7nri2ruov2ras1f7pwwd5r5ev&dl=0) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x68f0c0...ee0581`](./contracts/ethereum-1/0x68f0c0003f1826c4e9646df7e1ecf3707fee0581/) | NotASecurity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13190] DL audit link
- [13191] DL audit link
- [13192] DL audit link
- [13193] DL audit link
- [13194] DL audit link
- [13195] **Here**

Fork inheritance lineage and inherited audits are included when available.
