# Agentic Audit Brief: Olive Network

## Project Overview

- Project: Olive Network (`olive-network`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.930Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 5 unique implementations (26 raw deployments)
- DeFi Llama TVL: $63,579.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 4 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol forms a single structural family (Core Logic) of 4 contract(s).

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (26 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/5 (100.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/5
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 100.0% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Administrator | unknown | ethereum | n/a | 4 deployments: ethereum [`0x23b679e0d21d2227e5c9dc15f541a6bb8b50c505`](./contracts/ethereum-1/0x23b679e0d21d2227e5c9dc15f541a6bb8b50c505/); ethereum `0x74122ecf222c80b3927557c487c2a17af78ab3bb`; ethereum `0xc51dcd2bf427cf042d1c505ce7471657c1767780`; ethereum `0xf2cd21a7d2f1944a5983826c0ed8907e16a41cdb` | ✅ Audited |
| Administrator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5f248d0e633d50f9a6aab757d8fb4cf54509cb8b`](./contracts/ethereum-1/0x5f248d0e633d50f9a6aab757d8fb4cf54509cb8b/); ethereum `0x9871936187e828d136983b422b7cd295855f348b` | ✅ Audited |
| Strategy | core_logic | ethereum | n/a | 17 deployments: ethereum [`0x08d6b154ce6883bf3efaa9a2c6ef1c600ed96284`](./contracts/ethereum-1/0x08d6b154ce6883bf3efaa9a2c6ef1c600ed96284/); ethereum `0x0fbd886dbee8ccfe8d428b66b21080087dc704c1`; ethereum `0x25742f47adee06191b9a25d0a0abed012a8d76cc`; ethereum `0x2865568ad1ca0fe12db53c8f866039fa4500962f`; ethereum `0x31ec45f7da20998775d594539f54e443e268f9f5`; ethereum `0x47764d88f8f54dad6db75ec3667a11d58811abc6`; ethereum `0x4f34e6d8ba2ec773f7ca76632bc297d9b26e38ef`; ethereum `0x6d8c42855690c493e9c6404803478cd321a63376`; ethereum `0x7531b2aba509e09566c08d61cad6324b78444ecd`; ethereum `0x9f3e781b25501a6b9051556b8058812d7ba30549`; ethereum `0xd75c669b3da058cf589bf0076fdaceda40380c4d`; ethereum `0xda4d36dbdf5154b22580c0f1c998d37bfbb33d85`; ethereum `0xdb0d6f58a63118e20c91c0de84f4d8ea1a407c36`; ethereum `0xdea5f3171c5052384a0a974e3c85b0d419c48204`; ethereum `0xef0df466417bc45007773c363866b3693fc0b1e7`; ethereum `0xf1365d1e96d0f9d1823c827286a9c3d40dba6f30`; ethereum `0xf3b442217f18eb46417effd3a6ce09c3b311f4f5` | ✅ Audited |
| Strategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6de2a95331400bb6cf9cf75c7a8861d33687a95f`](./contracts/ethereum-1/0x6de2a95331400bb6cf9cf75c7a8861d33687a95f/); ethereum `0x700886a402d42113ad94d9756f08a923bb5ac77a` | ✅ Audited |
| StrategyETH | unknown | ethereum | n/a | [`0xd94a9fbae86e662350ffebb352f70c3cbeb9e96e`](./contracts/ethereum-1/0xd94a9fbae86e662350ffebb352f70c3cbeb9e96e/) | ✅ Audited |

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
| [spaces/diKpPMQRzcvmKZPuBfGZ/uploads/xfzaty6B6Gtxx18McMTQ/Olive Audit Report.pdf](https://2227259712-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FdiKpPMQRzcvmKZPuBfGZ%2Fuploads%2Fxfzaty6B6Gtxx18McMTQ%2FOlive%20Audit%20Report.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 26 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=26

Fork inheritance lineage and inherited audits are included when available.
