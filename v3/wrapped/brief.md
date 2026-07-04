# Agentic Audit Brief: Wrapped

## Project Overview

- Project: Wrapped (`wrapped`)
- Website: [https://wrapped.com](https://wrapped.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:13.085Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: celo
- Contract surface: 42 unique implementations (42 raw deployments)
- DeFi Llama TVL: $18,686,097.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 2 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 42 (1 live, 41 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
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
| AutoFarmV2_CrossChain | unknown | celo | n/a | [`0xdd11b6...12303f`](./contracts/celo-42220/0xdd11b66b90402f294a017c4688509c364312303f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | celo | n/a | `0x089ee9...480e76` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1009ef...7570d7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x19795c...a01454` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1d1779...d49977` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1f7ceb...e85db3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x222f69...6aee7a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x29bc02...c25557` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2dc13f...e2af08` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2e29b0...49cc6b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2f39b9...a0f927` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3581ae...62edb4` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4508ab...85eccb` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4b6ed3...b2f68f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4e176b...40be01` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5e0b1a...da82b6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x61989e...a9372a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x65ac8a...7268f3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x67030a...1eb409` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x68def7...68e3d5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x703730...5c58ca` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x71f3ba...12a767` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x75e41f...543f9d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7d29b5...558113` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7e8503...d35b13` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9c5765...d13eea` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9f4bef...1687f1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9fbfe1...6e9a8e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa07b88...1bdef1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa0c634...7fd9e8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa5d057...6d3ac6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa92c75...04b04d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc0db3c...ab4e5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd39e81...8bf8a0` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd4ca9f...790dfc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdef8c1...9bdca8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe3fa2f...af879e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe8c9dd...8ca48c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xed2ce4...69a8fd` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf3a2bf...5439b9` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf4cf09...62921c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfd4371...304c56` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
