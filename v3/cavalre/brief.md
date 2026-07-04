# Agentic Audit Brief: CavalRe

## Project Overview

- Project: CavalRe (`cavalre`)
- Website: [https://beta.caval.re](https://beta.caval.re)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:39.139Z
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
| Pool | unknown | avalanche | n/a | 12 deployments: avalanche [`0x1c7e70...0e5cf9`](./contracts/avalanche-43114/0x1c7e70f5b6031a3b39279d24f7c8b2e7da0e5cf9/); avalanche `0x370142...46f08e`; avalanche `0x5f1e8e...1f48ea`; avalanche `0x6a3bcb...982702`; avalanche `0x6c96c8...226832`; avalanche `0x744150...7237dd`; avalanche `0x84db13...0f6d2b`; avalanche `0x974141...dc2963`; avalanche `0xe0612a...74eb04`; avalanche `0xe2cd9e...d9fec4`; avalanche `0xea1d38...3d66f3`; avalanche `0xede429...90e706` | ✅ Audited |

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
| UnnamedContract | unknown | avalanche | n/a | `0x01ab0e...d6e463` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x031f87...8add02` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0d8fb1...d448d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10620b...9f31e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x112f41...0d0c2f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d0f5e...b3d60d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32ba3e...9ea72a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x36b01f...4c3aab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x47d046...bacecb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4d39f7...fbb09d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f1cd0...bc9417` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6097fa...ce70ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80d75d...4bc326` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x90cdc6...5e5a2a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x972564...079e52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb25aa4...25daf9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7cb89...b92575` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc5a16...dd3e5a` | ❓ Unverified |

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
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=24

Fork inheritance lineage and inherited audits are included when available.
