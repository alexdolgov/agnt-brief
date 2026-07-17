# Agentic Audit Brief: CavalRe

## Project Overview

- Project: CavalRe (`cavalre`)
- Website: [https://beta.caval.re](https://beta.caval.re)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.095Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: avalanche
- Contract surface: 19 unique implementations (30 raw deployments)
- DeFi Llama TVL: $10,044.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 2 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 2 contract(s).

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (12 live, 18 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 19
- Raw deployments: 30
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Pool | unknown | avalanche | n/a | 12 deployments: avalanche [`0x1c7e70f5b6031a3b39279d24f7c8b2e7da0e5cf9`](./contracts/avalanche-43114/0x1c7e70f5b6031a3b39279d24f7c8b2e7da0e5cf9/); avalanche `0x370142573cc83b0a90657c472ccf7d717c46f08e`; avalanche `0x5f1e8ed8468232bab71eda9f4598bda3161f48ea`; avalanche `0x6a3bcb98a03bf38775cdae70719f0600b6982702`; avalanche `0x6c96c8876668d02f136aec4bb5f3aa0df5226832`; avalanche `0x7441508a758353558df82de3d6efe23d737237dd`; avalanche `0x84db13e578deee365ab28f11a74b576ea20f6d2b`; avalanche `0x9741411d4379e0c359e45fcb3fbc8e1442dc2963`; avalanche `0xe0612acd9e95af153f393d6b2d06f9f82d74eb04`; avalanche `0xe2cd9e8f6b489445199d0655bac076d945d9fec4`; avalanche `0xea1d38713c126a289978793db9a7a16f693d66f3`; avalanche `0xede42958846e44d1f2b2254bdd6b1236b190e706` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x01ab0e485d1f4fd47630500f1fafcbf5a4d6e463` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x031f870c65b439435003839a2fb7c0a8d48add02` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0d8fb116403f1039046cd0c37b2c67a460d448d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10620b44604bbeaabbef1e2758061752599f31e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x112f41baa5ccb59a7da351dd6a2a31b5ea0d0c2f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d0f5edaa038d6c78bb84e2ea9bf41a047b3d60d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32ba3e68d6aa6c12ed647d621831af1a729ea72a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x36b01ffc971fa0ac8a656ca017f64835b64c3aab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x47d046526d0c0739d38e2f1ed62d646ed7bacecb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4d39f7168ad38ace05b0e0ac55828ea1fdfbb09d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f1cd03b94244403c0e7f5e1f0fce8ec76bc9417` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6097fa836432fae372692949b7c7c00809ce70ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80d75dddce270184e891e98b5d9650deff4bc326` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x90cdc6ae916be7616397550faa982a50c45e5a2a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x972564404366874fe68ccdfd778e04e329079e52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb25aa4fb0370c0e3c5549d3d3dc9a3257025daf9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7cb89f89c05462407755c549bf0a615fcb92575` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc5a16c2d8c707b48def0bfa489eb5fa79dd3e5a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/MPC8VyOwEYMS3andgvMd/uploads/SDbbJDn4JqYUPjWUvv6O/Audit #1.pdf](https://3106160242-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMPC8VyOwEYMS3andgvMd%2Fuploads%2FSDbbJDn4JqYUPjWUvv6O%2FAudit%20%231.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 12 | high |
| [spaces/MPC8VyOwEYMS3andgvMd/uploads/dlSoK7xFtp4ztQ9IP1iI/Audit #2.pdf](https://3106160242-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMPC8VyOwEYMS3andgvMd%2Fuploads%2FdlSoK7xFtp4ztQ9IP1iI%2FAudit%20%232.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=24

Fork inheritance lineage and inherited audits are included when available.
