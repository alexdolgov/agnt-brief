# Agentic Audit Brief: Pepu Bridge

## Project Overview

- Project: Pepu Bridge (`pepu-bridge`)
- Website: [https://pepubridge.com/](https://pepubridge.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.067Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $330,801.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 5 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
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
| PresaleNewClaimsV1 | unknown | ethereum | n/a | [`0xc9291ac4f0b9de2b334b0493869595ff85009961`](./contracts/ethereum-1/0xc9291ac4f0b9de2b334b0493869595ff85009961/) | ⚠️ Unaudited |
| PresaleNewClaimsV2 | unknown | ethereum | n/a | [`0xc5fd40e4daf9ff211ff99b0be59b7260bcbb0c61`](./contracts/ethereum-1/0xc5fd40e4daf9ff211ff99b0be59b7260bcbb0c61/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x092dd6c876c78a8e7478b35417f98d964b9b5319`](./contracts/ethereum-1/0x092dd6c876c78a8e7478b35417f98d964b9b5319/) | ⚠️ Unaudited |
| Token | unknown | ethereum | n/a | [`0x93aa0ccd1e5628d3a841c4dbdf602d9eb04085d6`](./contracts/ethereum-1/0x93aa0ccd1e5628d3a841c4dbdf602d9eb04085d6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xe77864e6368103da3e0c3f86781456af1a10ee3a`](./contracts/ethereum-1/0xe77864e6368103da3e0c3f86781456af1a10ee3a/) | ⚠️ Unaudited |

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
| ethereum | [`0xc9291ac4f0b9de2b334b0493869595ff85009961`](./contracts/ethereum-1/0xc9291ac4f0b9de2b334b0493869595ff85009961/) | PresaleNewClaimsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5fd40e4daf9ff211ff99b0be59b7260bcbb0c61`](./contracts/ethereum-1/0xc5fd40e4daf9ff211ff99b0be59b7260bcbb0c61/) | PresaleNewClaimsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93aa0ccd1e5628d3a841c4dbdf602d9eb04085d6`](./contracts/ethereum-1/0x93aa0ccd1e5628d3a841c4dbdf602d9eb04085d6/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
