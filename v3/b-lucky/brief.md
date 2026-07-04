# Agentic Audit Brief: B-Lucky

## Project Overview

- Project: B-Lucky (`b-lucky`)
- Website: [https://b-lucky.gg/](https://b-lucky.gg/)
- Lifecycle: active (Tier 0, 55.9% below peak)
- Generated: 2026-07-03T21:05:32.546Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: bsc
- Contract surface: 19 unique implementations (19 raw deployments)
- DeFi Llama TVL: $1,019,242.40
- On-chain TVL (included contracts): $2,646,188.25
- TVL by chain: Bsc $2,646,188.25

## Project Description

Luck Games. Structurally: 2 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (2 live, 17 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,646,188.25
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | bsc | n/a | [`0x67b479...704444`](./contracts/bsc-56/0x67b47971426bb2180453b3993ff2ec319e704444/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | bsc | n/a | [`0x211cbe...fdde58`](./contracts/bsc-56/0x211cbe6be0250c7ec744fedb8d66fa2984fdde58/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x14515a...f62046` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16e315...cc3433` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18b534...5406c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e3eaa...841286` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x523558...73f1be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58956c...7f6572` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7424b9...cb203a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ef0d0...157aba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98207b...2263cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99eead...b96d3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4c398...a6d62a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7f03b...cfba50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa86298...836780` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8a4ef...af6d39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb3bff...e878fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe18ead...35ad5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8964e...304b9a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [bailsec.pdf](https://b-lucky.gg/audit/bailsec.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x67b479...704444`](./contracts/bsc-56/0x67b47971426bb2180453b3993ff2ec319e704444/) | Token | token | $2,362,119.07 | Verified native implementation with $2,362,119.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3235] bailsec.pdf

Fork inheritance lineage and inherited audits are included when available.
