# Agentic Audit Brief: Bitway Earn

## Project Overview

- Project: Bitway Earn (`bitway`)
- Website: [https://bitway.com/](https://bitway.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-07-03T21:05:35.814Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-0293
- Chains: bsc
- Contract surface: 8 unique implementations (30 raw deployments)
- DeFi Llama TVL: $60,611,305.83
- On-chain TVL (included contracts): $178,372.20
- TVL by chain: Bsc $178,372.20

## Project Description

Basis Trading. Structurally: 7 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (29 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/7 (57.1%)
- Deployed-live implementations: 7 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/7
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 8
- Raw deployments: 30
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 57.1% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | bsc | n/a | 4 deployments: bsc [`0x1f0681...538188`](./contracts/bsc-56/0x1f068133a960ecf58f938164e0fd5364cb538188/); bsc `0x3db84f...fffee1`; bsc `0x5c4a69...d52bd1`; bsc `0xb82e32...ae3b63` | ✅ Audited |
| BitwayToken | token | bsc | n/a | 3 deployments: bsc [`0x32e060...3270e0`](./contracts/bsc-56/0x32e060f88398d16b086e5040566cb1897d3270e0/); bsc `0x3a63de...16d25d`; bsc `0x444045...35acaa` | ✅ Audited |
| LPToken | token | bsc | n/a | 12 deployments: bsc [`0x2a0109...65dbee`](./contracts/bsc-56/0x2a0109ac682794b78a9715568abac9d60665dbee/); bsc `0x4effb6...b106d5`; bsc `0x66f2c4...c5370e`; bsc `0x73af54...2ba3a1`; bsc `0x8042c9...3ef00a`; bsc `0x82356c...a8ef71`; bsc `0x8a928c...713386`; bsc `0xaa3d25...ffffb7`; bsc `0xb5c361...2307f9`; bsc `0xccafb7...ed2fd2`; bsc `0xd8a246...08d813`; bsc `0xeebfe7...68229b` | ✅ Audited |
| WithdrawVault | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x2b8464...f157cb`](./contracts/bsc-56/0x2b8464ffb2b77de64cfefdeb00ad925576f157cb/); bsc `0xb466f0...c07f9b`; bsc `0xeff69f...21f09d`; bsc `0xfc8e6b...1d04ef` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BitwayOFTAdapter | adapter | bsc | n/a | [`0x76d775...0f1e50`](./contracts/bsc-56/0x76d77531258b4dddfa4087e97a6c89bc0f0f1e50/) | ⚠️ Unaudited |
| BitwayTokenLock | token | bsc | n/a | 4 deployments: bsc [`0x4e1743...c81b73`](./contracts/bsc-56/0x4e1743201775794e313dd621dfe89c61eec81b73/); bsc `0xca5715...879832`; bsc `0xd15f47...da1b4c`; bsc `0xfa0f1a...665c90` | ⚠️ Unaudited |
| StablecoinV2 | token | bsc | n/a | [`0xce2443...666666`](./contracts/bsc-56/0xce24439f2d9c6a2289f741120fe202248b666666/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0xcfd67d...7c3415` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/iSGHwFKn3P0OZY7c7ITh/uploads/fD8mPTvBi8WxzPI8e7EV/Blocksec_Bitway_Earn_Audit_Report.pdf](https://1739587685-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FiSGHwFKn3P0OZY7c7ITh%2Fuploads%2FfD8mPTvBi8WxzPI8e7EV%2FBlocksec_Bitway_Earn_Audit_Report.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 20 | high |
| [spaces/iSGHwFKn3P0OZY7c7ITh/uploads/op9YWYBDnxCa0YeBdf8t/Salus_BitwayEarn_Audit_Report.pdf](https://1739587685-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FiSGHwFKn3P0OZY7c7ITh%2Fuploads%2Fop9YWYBDnxCa0YeBdf8t%2FSalus_BitwayEarn_Audit_Report.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 20 | high |
| [spaces/iSGHwFKn3P0OZY7c7ITh/uploads/CHW9zrkYycSoPABMSaSk/Salus_Bitway_Token_Audit_Report.pdf](https://1739587685-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FiSGHwFKn3P0OZY7c7ITh%2Fuploads%2FCHW9zrkYycSoPABMSaSk%2FSalus_Bitway_Token_Audit_Report.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4e1743...c81b73`](./contracts/bsc-56/0x4e1743201775794e313dd621dfe89c61eec81b73/) | BitwayTokenLock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=43

Fork inheritance lineage and inherited audits are included when available.
