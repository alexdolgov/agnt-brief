# Agentic Audit Brief: pNetwork

## Project Overview

- Project: pNetwork (`pnetwork`)
- Website: [https://p.network](https://p.network)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.815Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: polygon
- Contract surface: 71 unique implementations (71 raw deployments)
- DeFi Llama TVL: $13,099,805.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 3 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 3 contract(s).

## Fork Lineage

This project reuses audited code from **TEN Finance** (`ten-finance`) in the TENLock subsystem.
3 audits inherited from `ten-finance`, scoped to that subsystem.

Total inherited audits: 3. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 75; live-surface contracts included: 71 (1 live, 70 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 71 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 71
- Raw deployments: 71
- Audits discovered: 4 (1 direct, 3 inherited from forked code)
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
| AutoFarmV2_CrossChain | unknown | polygon | n/a | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x027da2...830a71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x02a124...95194e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x086efc...e574c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0eaa78...53bd04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11e963...cd8033` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x144c0c...2f9f22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17f619...60172f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cae78...253067` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1deaee...32ef38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20e260...73ceeb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31c818...c494eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36ac93...dab483` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37da0f...bea1ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x38d409...21c8a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x39acf8...68a98e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b4e26...fc0c5b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3c7a4e...fc2d32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x495682...e21b29` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x49a215...a3d89b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a9e97...f9ced2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e176b...40be01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x51567c...aabc80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x533152...f60e6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53bae3...036d17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x582cc1...91deab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5d4346...055dee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5dd9ba...654572` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eb8ae...dcfa27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5fa81b...d0242e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x602817...525f4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x61989e...a9372a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x61b7bd...e60874` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x654776...e88733` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x65620c...187b62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x67030a...1eb409` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6841c2...fa34d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7347c5...2aeaa0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d29b5...558113` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ea728...f22681` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f7b23...563ff1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x807c4d...03cc10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x88bf81...760643` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89d829...c48206` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99c1de...98d27e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c5765...d13eea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c9d29...377ebe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e98b8...ff5f8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa92c75...04b04d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadb1c7...2c0297` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae9720...4868e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb09a88...2f36f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb43ad6...ea7877` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb6dddf...947499` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc8722...4b8db2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe12ff...0b0395` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xca4b64...b3509a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd3be99...5dd0ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd69fb7...fe7079` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd717db...f8296b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda4f3e...e4f86a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdbb5f3...f4e46e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe457cd...0ef170` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe5d2b9...fe6060` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeba805...5fccfb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeca70a...9c3556` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeeee27...222c95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf75687...9a2158` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbc177...2a3d1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbd96c...b63047` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/tenfinance](https://skynet.certik.com/projects/tenfinance) | CertiK | Audit | n/a | unknown | Inherited from TEN Finance — forked code, scoped to TENLock | n/a | 0 | n/a |
| [audit.md](https://tenfinance.gitbook.io/ten/documentation-1/audit.md) | unknown | Audit | n/a | unknown | Inherited from TEN Finance — forked code, scoped to TENLock | n/a | 0 | n/a |
| [spaces/-MTg9bsJ23imtGvbcYvG/uploads/a4RWF03WuDG7oB33JzOD/PeckShield-Audit-Report-TenLend-v1.0.pdf](https://3931236349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MTg9bsJ23imtGvbcYvG%2Fuploads%2Fa4RWF03WuDG7oB33JzOD%2FPeckShield-Audit-Report-TenLend-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Inherited from TEN Finance — forked code, scoped to TENLock | n/a | 0 | n/a |
| [20200915_pNetwork DAO staking+reward audit.pdf](https://github.com/cryptonicsconsulting/audits/blob/master/pNetwork/20200915_pNetwork%20DAO%20staking%2Breward%20audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 71 |

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
