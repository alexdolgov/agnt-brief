# Agentic Audit Brief: 3xcalibur

⚠️ Lifecycle status: DEAD - TVL dropped 8.2% over 90 days

## Project Overview

- Project: 3xcalibur (`3xcalibur`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-07-04T14:52:57.813Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum
- Contract surface: 18 unique implementations (30 raw deployments)
- DeFi Llama TVL: $2,538.87
- On-chain TVL (included contracts): $32,649.55
- TVL by chain: Arbitrum $32,649.55

## Project Description

Dexs. Structurally: 29 project-authored contract(s) across 1 chain(s); 5 ERC721 NFTs; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 12 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 30 (26 live, 4 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/14 (78.6%)
- Deployed-live implementations: 14 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/14
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 18
- Raw deployments: 30
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 11 | 78.6% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | arbitrum | n/a | 2 deployments: arbitrum [`0xd2568accd10a4c98e87c44e9920360031ad89fcb`](./contracts/arbitrum-42161/0xd2568accd10a4c98e87c44e9920360031ad89fcb/); arbitrum `0xd618832ef3183aab301a23a3eba31bdf5aaddd17` | ✅ Audited |
| BribeFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xb7ecaa0317ad26a1ab00c22b057dc347ace0fb37`](./contracts/arbitrum-42161/0xb7ecaa0317ad26a1ab00c22b057dc347ace0fb37/); arbitrum `0xddb19078bd6aa88bd7ff0e13bfd806a726260c72` | ✅ Audited |
| GaugeFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4a6adf7969a9ceb46127a12a839722bf813ecdc7`](./contracts/arbitrum-42161/0x4a6adf7969a9ceb46127a12a839722bf813ecdc7/); arbitrum `0x6b351768c862da400024edc7270765bbdd5ae571` | ✅ Audited |
| Minter | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x2513db1b4dac06ccb03931321292045fdbc573b0`](./contracts/arbitrum-42161/0x2513db1b4dac06ccb03931321292045fdbc573b0/); arbitrum `0x61ad9e92bb9eb4f8eb2bb6c87bc9ef5f817b312e` | ✅ Audited |
| Multiswap | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0e7d0d4ae86054d182a2a82590967bd5ac2c7eee`](./contracts/arbitrum-42161/0x0e7d0d4ae86054d182a2a82590967bd5ac2c7eee/); arbitrum `0x85d43cc79915c087ab62791f9f4eb2444e6800ad` | ✅ Audited |
| Router | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x29fbf1ccc1d1b20cbdcb380f07c6346efa7a5fc5`](./contracts/arbitrum-42161/0x29fbf1ccc1d1b20cbdcb380f07c6346efa7a5fc5/); arbitrum `0x81c7ebbc66b5f9e1db29c4c427fe6339cc32d4ea`; arbitrum `0x8e72bf5a45f800e182362bdf906dfb13d5d5cb5d` | ✅ Audited |
| RouterUtil | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xdac267495da46082993ce188c9647822c25bd4fa`](./contracts/arbitrum-42161/0xdac267495da46082993ce188c9647822c25bd4fa/); arbitrum `0xe9c5e500503b5eaab0f7f99b2a8dfc5a4c87ea0e` | ✅ Audited |
| SwapFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x30270bc0d7b1768158b3a5f6b8bfc78597f82c84`](./contracts/arbitrum-42161/0x30270bc0d7b1768158b3a5f6b8bfc78597f82c84/); arbitrum `0xd158bd9e8b6efd3ca76830b66715aa2b7bad2218` | ✅ Audited |
| Voter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x56d27bd3cd2f3d135f91e36bf061f8f7ae2da685`](./contracts/arbitrum-42161/0x56d27bd3cd2f3d135f91e36bf061f8f7ae2da685/); arbitrum `0xe6ccdc80c4838b670c94da07e8338589dec5e628` | ✅ Audited |
| VotingDist | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x399e66e8d2b9c83351531bdcabb827f73e8ba25f`](./contracts/arbitrum-42161/0x399e66e8d2b9c83351531bdcabb827f73e8ba25f/); arbitrum `0xa1b35806bd42a9e8d62c6eb5ce0b2fb0fb713a89` | ✅ Audited |
| VotingEscrow | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x50aaced9396405d1410dcb8974a6c30b9757a4f7`](./contracts/arbitrum-42161/0x50aaced9396405d1410dcb8974a6c30b9757a4f7/); arbitrum `0x8f2e03ba1e9bfe2beb395da56458f0c296e21917` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Claim | unknown | arbitrum | n/a | [`0xeb8feeb4589c64959d7cbf3c7ec377328ab68b11`](./contracts/arbitrum-42161/0xeb8feeb4589c64959d7cbf3c7ec377328ab68b11/) | ⚠️ Unaudited |
| SBT | unknown | arbitrum | n/a | [`0xbb6e57f1c0b35298c121b5151d2c7411da77929d`](./contracts/arbitrum-42161/0xbb6e57f1c0b35298c121b5151d2c7411da77929d/) | ⚠️ Unaudited |
| VoterAux | unknown | arbitrum | n/a | [`0xbe99eb17fe79f98e5865df4f0e0ccff003102e28`](./contracts/arbitrum-42161/0xbe99eb17fe79f98e5865df4f0e0ccff003102e28/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x2bcaae992f074545b9c65c96d9fe793a1bf35982` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3cc66598cf5e5005b9f4cd45a801a7e23504542e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60241ff97f257f0d13208b28b900b53c1e917f05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8a05ca33dd0ec9bda3130b0372ddb7e79f520cc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/dfX5W2ttoTF0UsavgZhT/uploads/NiALqEGB39ep1N0BtMU2/omniscia-report_1667586376.pdf](https://2688442826-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FdfX5W2ttoTF0UsavgZhT%2Fuploads%2FNiALqEGB39ep1N0BtMU2%2Fomniscia-report_1667586376.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 23 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xeb8feeb4589c64959d7cbf3c7ec377328ab68b11`](./contracts/arbitrum-42161/0xeb8feeb4589c64959d7cbf3c7ec377328ab68b11/) | Claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbb6e57f1c0b35298c121b5151d2c7411da77929d`](./contracts/arbitrum-42161/0xbb6e57f1c0b35298c121b5151d2c7411da77929d/) | SBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbe99eb17fe79f98e5865df4f0e0ccff003102e28`](./contracts/arbitrum-42161/0xbe99eb17fe79f98e5865df4f0e0ccff003102e28/) | VoterAux | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=23

Fork inheritance lineage and inherited audits are included when available.
