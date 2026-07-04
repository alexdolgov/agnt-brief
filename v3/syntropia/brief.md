# Agentic Audit Brief: Syntropia

## Project Overview

- Project: Syntropia (`syntropia`)
- Website: [https://syntropia.ai/](https://syntropia.ai/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:59.389Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 5 unique implementations (8 raw deployments)
- DeFi Llama TVL: $4,425,245.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 6 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 2 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Lagoon** (`lagoon`) in the Vault_v0_5_0 subsystem.
11 audits inherited from `lagoon`, scoped to that subsystem.

Total inherited audits: 11. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 8 (7 live, 1 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 4 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 8
- Audits discovered: 11 (0 direct, 11 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 25.0% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HopperLabs | Tier 2 | 1 | 25.0% | n/a |
| Nomic Foundation | Tier 2 | 1 | 25.0% | 2026-05 |
| Trail of Bits | Tier 1 | 1 | 25.0% | 2026-05 |
| unknown | Tier 2 | 1 | 25.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault_v0_5_0 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x23fbda...d397cb`](./contracts/ethereum-1/0x23fbda54849e8904154c8f8436a59b95b1d397cb/); ethereum `0xc1d5f0...293cf8` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DelayProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x358f9f...334542`](./contracts/ethereum-1/0x358f9ff9eee76bb6fade2a6f5d495e649b334542/); ethereum `0x78ac58...0f2cf4`; ethereum `0xdf2410...f96d24` | ⚠️ Unaudited |
| OptinProxyFactory | unknown | ethereum | n/a | [`0x245d1c...cfc69d`](./contracts/ethereum-1/0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d/) | ⚠️ Unaudited |
| OptinProxyFactory | registry | ethereum | n/a | [`0x8d6f54...60f9b1`](./contracts/ethereum-1/0x8d6f5479b14348186fae9bc7e636e947c260f9b1/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xf42bde...01e5a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NM_0304_HopperLabs.pdf](https://content.gitbook.com/content/5vcVbvvRrtwZ0uaFrufF/blobs/aUGQBCCKrkRj2a2JqcU7/NM_0304_HopperLabs.pdf) | HopperLabs | Audit | n/a | unknown | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |
| [lagoon-review.pdf](https://content.gitbook.com/content/5vcVbvvRrtwZ0uaFrufF/blobs/inufZt8d5BRJq6tJWoED/lagoon-review.pdf) | unknown | Audit | n/a | unknown | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |
| [NM_0432_Lagoon.pdf](https://content.gitbook.com/content/5vcVbvvRrtwZ0uaFrufF/blobs/6mNZOJq6XeTjGMcMnM5N/NM_0432_Lagoon.pdf) | unknown | Audit | n/a | unknown | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/cjt5DaNb1FBoKp1EL22z/NM_0499_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2Fcjt5DaNb1FBoKp1EL22z%2FNM_0499_Lagoon.pdf) | Nomic Foundation | Audit | n/a | unknown | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/6ikCSitYVQQdDDcWfVdp/NM_0516_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F6ikCSitYVQQdDDcWfVdp%2FNM_0516_Lagoon.pdf) | Nomic Foundation | Audit | n/a | unknown | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/8HkE2EU7hepf08gYGPsx/NM_0534_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F8HkE2EU7hepf08gYGPsx%2FNM_0534_Lagoon.pdf) | Nomic Foundation | Audit | n/a | unknown | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/9pXJSEmutn6clKhvly6m/NM_0581-FINAL_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F9pXJSEmutn6clKhvly6m%2FNM_0581-FINAL_Lagoon.pdf) | Nomic Foundation | Audit | n/a | unknown | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/tDP4IRcaDp90PdfyOytL/NM_0534_Bug_Disclosure.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2FtDP4IRcaDp90PdfyOytL%2FNM_0534_Bug_Disclosure.pdf) | Nomic Foundation | Audit | n/a | unknown | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/rk5VgBBMxx0fkaXD65tQ/NM_0822_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2Frk5VgBBMxx0fkaXD65tQ%2FNM_0822_Lagoon.pdf) | Nomic Foundation | Audit | 2026-05 | fresh | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/3Ig5AUs4tRCYQjsMIas1/ToB-v0.6.0.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F3Ig5AUs4tRCYQjsMIas1%2FToB-v0.6.0.pdf) | Trail of Bits | Audit | 2026-05 | fresh | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |
| [spaces/5vcVbvvRrtwZ0uaFrufF/uploads/ILDRIc5ZH9HblSRMBoLw/ToB-v0.5.0.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2FILDRIc5ZH9HblSRMBoLw%2FToB-v0.5.0.pdf) | Trail of Bits | Audit | 2026-03 | fresh | Inherited from Lagoon — forked code, scoped to Vault_v0_5_0 | inherited | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=22

Fork inheritance lineage and inherited audits are included when available.
