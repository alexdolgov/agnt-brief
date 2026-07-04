# Agentic Audit Brief: Omni Liquid Staking

## Project Overview

- Project: Omni Liquid Staking (`omni-liquid-staking`)
- Website: [https://omni.ls/](https://omni.ls/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:37.607Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: moonbeam, moonriver
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $178,091.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 5 project-authored contract(s) across 2 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MoonbeamSlpx | unknown | moonriver | n/a | [`0x0e13c5...e0a29d`](./contracts/moonriver-1285/0x0e13c5327914929b62a1809f62ad044c4be0a29d/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | moonriver | n/a | [`0x051713...7ccb58`](./contracts/moonriver-1285/0x051713fd66845a13bf23baca008c5c22c27ccb58/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonriver | n/a | [`0x20ae8a...5f74a1`](./contracts/moonriver-1285/0x20ae8a2aa8ccb2a096a8b3510c5c15854a5f74a1/) | ⚠️ Unaudited |
| XC20 | unknown | moonbeam | n/a | [`0xffffff...899abf`](./contracts/moonbeam-1284/0xffffffff15e1b7e3df971dd813bc394deb899abf/) | ⚠️ Unaudited |
| XcmOracle | unknown | moonriver | n/a | [`0x0b8e6d...0399b1`](./contracts/moonriver-1285/0x0b8e6d7974b4f8e23ac520e786b4cb5f120399b1/) | ⚠️ Unaudited |

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
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
