# Agentic Audit Brief: Free Protocol

## Project Overview

- Project: Free Protocol (`free-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.502Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum, manta
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $247,756,160.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 8 project-authored contract(s) across 3 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (mesonconfig). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AtomicLockContract | unknown | ethereum | n/a | [`0x03650533d2a35847c007f25bc630f468905f6241`](./contracts/ethereum-1/0x03650533d2a35847c007f25bc630f468905f6241/) | ⚠️ Unaudited |
| AtomicMintContract | unknown | bsc | n/a | [`0x09d334c6197f52308efc53e3d6726151c6bd0533`](./contracts/bsc-56/0x09d334c6197f52308efc53e3d6726151c6bd0533/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | manta | n/a | [`0x19727db22cba70b1fee40337aba69d83c6741caf`](./contracts/manta-169/0x19727db22cba70b1fee40337aba69d83c6741caf/) | ⚠️ Unaudited |
| ForwardTokenToFormContract | unknown | ethereum | n/a | [`0xdc86b8fc14afa87cc137a1cb07f0890a46d023c1`](./contracts/ethereum-1/0xdc86b8fc14afa87cc137a1cb07f0890a46d023c1/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0xeea3a032f381ab1e415e82fe08ebeb20f513c42c`](./contracts/ethereum-1/0xeea3a032f381ab1e415e82fe08ebeb20f513c42c/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | bsc | n/a | [`0x0a80028d73faaee6e57484e3335befda0de7f455`](./contracts/bsc-56/0x0a80028d73faaee6e57484e3335befda0de7f455/) | ⚠️ Unaudited |
| ProxyToMeson | unknown | ethereum | n/a | [`0x25ab3efd52e6470681ce037cd546dc60726948d3`](./contracts/ethereum-1/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ⚠️ Unaudited |
| SolvBTCV3 | unknown | bsc | n/a | [`0x4aae823a6a0b376de6a78e74ecc5b079d38cbcf7`](./contracts/bsc-56/0x4aae823a6a0b376de6a78e74ecc5b079d38cbcf7/) | ⚠️ Unaudited |
| UpgradableMeson | unknown | bsc | n/a | [`0x1522de0005fddfafbfe1843b40bc2be58b3f5aec`](./contracts/bsc-56/0x1522de0005fddfafbfe1843b40bc2be58b3f5aec/) | ⚠️ Unaudited |

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
| ethereum | [`0x03650533d2a35847c007f25bc630f468905f6241`](./contracts/ethereum-1/0x03650533d2a35847c007f25bc630f468905f6241/) | AtomicLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09d334c6197f52308efc53e3d6726151c6bd0533`](./contracts/bsc-56/0x09d334c6197f52308efc53e3d6726151c6bd0533/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc86b8fc14afa87cc137a1cb07f0890a46d023c1`](./contracts/ethereum-1/0xdc86b8fc14afa87cc137a1cb07f0890a46d023c1/) | ForwardTokenToFormContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25ab3efd52e6470681ce037cd546dc60726948d3`](./contracts/ethereum-1/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ProxyToMeson | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4aae823a6a0b376de6a78e74ecc5b079d38cbcf7`](./contracts/bsc-56/0x4aae823a6a0b376de6a78e74ecc5b079d38cbcf7/) | SolvBTCV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1522de0005fddfafbfe1843b40bc2be58b3f5aec`](./contracts/bsc-56/0x1522de0005fddfafbfe1843b40bc2be58b3f5aec/) | UpgradableMeson | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
