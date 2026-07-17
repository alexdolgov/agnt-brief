# Agentic Audit Brief: Unit

## Project Overview

- Project: Unit (`unit`)
- Website: [https://hyperunit.xyz/deposit](https://hyperunit.xyz/deposit)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.864Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: hyperliquid
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $417,682,458.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 6 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x068f321fa8fb9f0d135f290ef6a3e2813e1c8a29`](./contracts/hyperliquid-999/0x068f321fa8fb9f0d135f290ef6a3e2813e1c8a29/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x27ec642013bcb3d80ca3706599d3cda04f6f4452`](./contracts/hyperliquid-999/0x27ec642013bcb3d80ca3706599d3cda04f6f4452/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x3b4575e689ded21caad31d64c4df1f10f3b2cedf`](./contracts/hyperliquid-999/0x3b4575e689ded21caad31d64c4df1f10f3b2cedf/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x9fdbda0a5e284c32744d2f17ee5c74b284993463`](./contracts/hyperliquid-999/0x9fdbda0a5e284c32744d2f17ee5c74b284993463/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0xbe6727b535545c67d5caa73dea54865b92cf7907`](./contracts/hyperliquid-999/0xbe6727b535545c67d5caa73dea54865b92cf7907/) | ⚠️ Unaudited |
| UnitPlasma | unknown | hyperliquid | n/a | [`0x11e10b315363d43e46b04f139fc051164e0798a1`](./contracts/hyperliquid-999/0x11e10b315363d43e46b04f139fc051164e0798a1/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x11e10b315363d43e46b04f139fc051164e0798a1`](./contracts/hyperliquid-999/0x11e10b315363d43e46b04f139fc051164e0798a1/) | UnitPlasma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
