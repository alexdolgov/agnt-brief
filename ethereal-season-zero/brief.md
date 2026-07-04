# Agentic Audit Brief: Ethereal Season Zero

## Project Overview

- Project: Ethereal Season Zero (`ethereal-season-zero`)
- Website: [https://www.ethereal.trade/](https://www.ethereal.trade/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.901Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $2,444,815.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

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
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
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
| EtherealPreDepositVault | core_logic | ethereum | n/a | [`0x90d2af...74cc8f`](./contracts/ethereum-1/0x90d2af7d622ca3141efa4d8f1f24d86e5974cc8f/) | ⚠️ Unaudited |

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
| [drive.google.com/file/d/1HMihTcqKwt75pTAct9F0H3noqDtCJ3u3/view](https://drive.google.com/file/d/1HMihTcqKwt75pTAct9F0H3noqDtCJ3u3/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1HeJGheenSIK2AcA113GV-ErQNFELDAGD/view](https://drive.google.com/file/d/1HeJGheenSIK2AcA113GV-ErQNFELDAGD/view?usp=sharing) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1bgSfCaiyfC438nUNB3K8UVe5Eg006yKb/view](https://drive.google.com/file/d/1bgSfCaiyfC438nUNB3K8UVe5Eg006yKb/view?usp=sharing) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1HMihTcqKwt75pTAct9F0H3noqDtCJ3u3/view](https://drive.google.com/file/d/1HMihTcqKwt75pTAct9F0H3noqDtCJ3u3/view) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x90d2af...74cc8f`](./contracts/ethereum-1/0x90d2af7d622ca3141efa4d8f1f24d86e5974cc8f/) | EtherealPreDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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

- [2776] drive.google.com/file/d/1HMihTcqKwt75pTAct9F0H3noqDtCJ3u3/view
- [2777] drive.google.com/file/d/1HeJGheenSIK2AcA113GV-ErQNFELDAGD/view
- [2778] drive.google.com/file/d/1bgSfCaiyfC438nUNB3K8UVe5Eg006yKb/view
- [2779] drive.google.com/file/d/1HMihTcqKwt75pTAct9F0H3noqDtCJ3u3/view

Fork inheritance lineage and inherited audits are included when available.
