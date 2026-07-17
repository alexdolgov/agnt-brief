# Agentic Audit Brief: B-Lucky

## Project Overview

- Project: B-Lucky (`b-lucky`)
- Website: [https://b-lucky.gg/](https://b-lucky.gg/)
- Lifecycle: active (Tier 0, 55.9% below peak)
- Generated: 2026-07-04T14:53:05.116Z
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

- Coverage of deployed-live implementations: 0/1 (0.0%)
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
| Token | token | bsc | n/a | [`0x67b47971426bb2180453b3993ff2ec319e704444`](./contracts/bsc-56/0x67b47971426bb2180453b3993ff2ec319e704444/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | bsc | n/a | [`0x211cbe6be0250c7ec744fedb8d66fa2984fdde58`](./contracts/bsc-56/0x211cbe6be0250c7ec744fedb8d66fa2984fdde58/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x14515a777baf856e21605949e02e0747abf62046` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16e31565b639a43c06b1c70e1baac77fe8cc3433` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18b5342db7233a0bbcd033ea150a2af4415406c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e3eaa28c911cb5e753b35f606b0883cae841286` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x523558ab12bdea66e967a8f4089451978473f1be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58956cfcead5a2dac9bf7099321f1594fb7f6572` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7424b99a4de7cf97eca82d743ac6d91c73cb203a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ef0d0ab584e4708b7e062856682eac743157aba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98207bb96e5fae18e930de1c2aaa27a5a72263cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99eead80fda9de2a0c28bbad38f8730601b96d3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4c3988babf43ec961b66824df547bae9aa6d62a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7f03beaf428801476b1ebb226a5ad434dcfba50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa862984d2c752550a6e33c5671625a8b50836780` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8a4ef2d65f7b397f5796f4b8a78de6a3aaf6d39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb3bfface9c9bf7fed9ecbb93c0dcf4449e878fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe18ead45d0b0c04293ad90fa4e27c561e935ad5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8964e52b3d5b6155b8bf1058a42c89142304b9a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [bailsec.pdf](https://b-lucky.gg/audit/bailsec.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x67b47971426bb2180453b3993ff2ec319e704444`](./contracts/bsc-56/0x67b47971426bb2180453b3993ff2ec319e704444/) | Token | token | $2,362,119.07 | Verified native implementation with $2,362,119.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
