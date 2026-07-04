# Agentic Audit Brief: toupee.tech

## Project Overview

- Project: toupee.tech (`toupee.tech`)
- Website: [https://www.toupee.tech](https://www.toupee.tech)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:01.931Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: base
- Contract surface: 14 unique implementations (15 raw deployments)
- DeFi Llama TVL: $4,702,291.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 21 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 15 (11 live, 4 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/10 (90.0%)
- Deployed-live implementations: 10 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/10
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 14
- Raw deployments: 15
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 9 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 9 | 90.0% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AeroGaugePlugin | operational_periphery | base | n/a | [`0x25a7e6...89f040`](./contracts/base-8453/0x25a7e6a89f06ef3f90b844f69f1f0b63d389f040/) | ✅ Audited |
| AeroPairPlugin | unknown | base | n/a | 2 deployments: base [`0xd1ca9d...3ed715`](./contracts/base-8453/0xd1ca9d78005b5a891c8a6bd8408ed308b33ed715/); base `0xef0487...2755bd` | ✅ Audited |
| Minter | unknown | base | n/a | [`0xf49222...162576`](./contracts/base-8453/0xf49222fccba2c149b3ff3ae9d3a30edb1f162576/) | ✅ Audited |
| OTOKEN | token | base | n/a | [`0xbe1053...9a2b79`](./contracts/base-8453/0xbe1053ec4ac137c9a5b4462d53d5c2c0b89a2b79/) | ✅ Audited |
| ScaleGaugePlugin | operational_periphery | base | n/a | [`0xf19a7b...5290b8`](./contracts/base-8453/0xf19a7b64809dc969b173f40d3f8c6734935290b8/) | ✅ Audited |
| TOKEN | token | base | n/a | [`0x58dd17...79e9b9`](./contracts/base-8453/0x58dd173f30ecffdfebcd242c71241fb2f179e9b9/) | ✅ Audited |
| TOKENFees | token | base | n/a | [`0x8d05ef...ecd6c1`](./contracts/base-8453/0x8d05ef8093a746101cee1a0578edd277f3ecd6c1/) | ✅ Audited |
| Voter | unknown | base | n/a | [`0x756fc5...492452`](./contracts/base-8453/0x756fc5e6bdb26a85594346d7d0520e1c0e492452/) | ✅ Audited |
| VTOKEN | token | base | n/a | [`0x60c087...b11515`](./contracts/base-8453/0x60c08737877a5262bdb1c1cac8fb90b5e5b11515/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VTOKENRewarder | token | base | n/a | [`0xdd3e79...1de558`](./contracts/base-8453/0xdd3e797522e15c3ede6ed468738cba754e1de558/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x1441cb...b07d27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56df15...329e01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ed50f...ee106d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd54b64...36590c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf](https://2268926613-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5qfDTx0sJybWgitP8x4j%2Fuploads%2FnzcUOiAySnZr2UQCCpsK%2FPeckShield-Audit-Report-LilToken-v1.0rc%20(1).pdf) | PeckShield | Audit | 2023-09 | stale | Direct | contract_name | 9 | high |
| [spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf](https://2268926613-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5qfDTx0sJybWgitP8x4j%2Fuploads%2F0dGTom7KMTseCGo56Xg0%2FZokyoAudit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=9

Zero-match audit list:

- [12598] spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
