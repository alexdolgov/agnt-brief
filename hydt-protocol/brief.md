# Agentic Audit Brief: hydt-protocol

## Project Overview

- Project: hydt-protocol (`hydt-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.691Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc
- Contract surface: 10 unique implementations (10 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 10 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (erc165, eip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/10 (80.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/10
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 80.0% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Control | unknown | bsc | n/a | [`0x73210fbe16461929735eb7ea114924a6eaf7573c`](./contracts/bsc-56/0x73210fbe16461929735eb7ea114924a6eaf7573c/) | ✅ Audited |
| ControlResolver | unknown | bsc | n/a | [`0x2c9d6a49be8727fce1e9e7d39e93261417a73542`](./contracts/bsc-56/0x2c9d6a49be8727fce1e9e7d39e93261417a73542/) | ✅ Audited |
| Earn | unknown | bsc | n/a | [`0x3b65b37b7111f6d3b31159853ff8f7155dca7071`](./contracts/bsc-56/0x3b65b37b7111f6d3b31159853ff8f7155dca7071/) | ✅ Audited |
| Farm | unknown | bsc | n/a | [`0x4590bad61ae62acff33032e3bf64b52b7264a779`](./contracts/bsc-56/0x4590bad61ae62acff33032e3bf64b52b7264a779/) | ✅ Audited |
| HYDT | unknown | bsc | n/a | [`0x9810512be701801954449408966c630595d0cd51`](./contracts/bsc-56/0x9810512be701801954449408966c630595d0cd51/) | ✅ Audited |
| HYGT | unknown | bsc | n/a | [`0x100995a7e5ffd8ee60cc18a10c75cee8c572c59b`](./contracts/bsc-56/0x100995a7e5ffd8ee60cc18a10c75cee8c572c59b/) | ✅ Audited |
| Reserve | unknown | bsc | n/a | [`0xc5161ae3437c08036b98bdb58cfe6bbff876c177`](./contracts/bsc-56/0xc5161ae3437c08036b98bdb58cfe6bbff876c177/) | ✅ Audited |
| sHYDT | unknown | bsc | n/a | [`0xab4f1bb558e564ae294d45a025111277c36c89c0`](./contracts/bsc-56/0xab4f1bb558e564ae294d45a025111277c36c89c0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| InitialMintV2 | unknown | bsc | n/a | [`0xa2268fcc2fe7a2bb755fbe5a7b3ac346ddfedb9b`](./contracts/bsc-56/0xa2268fcc2fe7a2bb755fbe5a7b3ac346ddfedb9b/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0xbb8ae522f812e9e65239a0e5db87a9d738ce957a`](./contracts/bsc-56/0xbb8ae522f812e9e65239a0e5db87a9d738ce957a/) | ⚠️ Unaudited |

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
| [www.cyberscope.io/audits/hydt](https://www.cyberscope.io/audits/hydt) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xa2268fcc2fe7a2bb755fbe5a7b3ac346ddfedb9b`](./contracts/bsc-56/0xa2268fcc2fe7a2bb755fbe5a7b3ac346ddfedb9b/) | InitialMintV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb8ae522f812e9e65239a0e5db87a9d738ce957a`](./contracts/bsc-56/0xbb8ae522f812e9e65239a0e5db87a9d738ce957a/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
