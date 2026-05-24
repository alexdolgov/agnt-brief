# Agentic Audit Brief: Asseto CASH+

⚠️ Lifecycle status: DECLINING - TVL dropped 76.1% over 90 days

## Project Overview

- Project: Asseto CASH+ (`asseto-cash+`)
- Website: [https://asseto.finance/#invest](https://asseto.finance/#invest)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-24T23:42:04.282Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 2 unique implementations (32 raw deployments)
- DeFi Llama TVL: $1,399,182.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Asseto CASH+ is a protocol for tokenized real-world assets (RWA), specifically offering on-chain money market fund shares. It uses upgradeable proxy contracts to represent fund positions, enabling users to gain exposure to traditional financial instruments on Ethereum.

### Architecture

All contracts belong to a single product family with no shared infrastructure across families. The proxies point to SAmMMF implementations, indicating a direct tokenization pattern without additional supporting contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 32
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SAmMMF | unknown | ethereum | 31 deployments: ethereum [`0x048a8a...60b809`](./contracts/ethereum-1/0x048a8afa8cf69ea53b72298d50033d1e2560b809/); ethereum `0x0d90a6...fe866c`; ethereum `0x101363...a0f75f`; ethereum `0x1c7952...ef9f8e`; ethereum `0x212624...72f8af`; ethereum `0x28d77e...b12c88`; ethereum `0x37d03d...f3bdee`; ethereum `0x3be5dd...2d5049`; ethereum `0x401336...15e980`; ethereum `0x45c5bd...964303`; ethereum `0x498d93...22a373`; ethereum `0x5081c6...a2431f`; ethereum `0x5142df...b3e2b1`; ethereum `0x5b0c6a...c767d2`; ethereum `0x640eb8...1ae3f8`; ethereum `0x6c3de4...48483f`; ethereum `0x734bb4...cc3d28`; ethereum `0x78e80d...d6a42d`; ethereum `0x923369...e49e72`; ethereum `0xa4dbaa...3bd261`; ethereum `0xab935a...5d4459`; ethereum `0xafdfd8...a960c0`; ethereum `0xb91865...07a77e`; ethereum `0xc43ce4...dd3e19`; ethereum `0xc8faf6...82e5a8`; ethereum `0xcd01a9...b3fa83`; ethereum `0xd37295...f3c05f`; ethereum `0xd9ffec...103940`; ethereum `0xde2ac0...d032ff`; ethereum `0xeaa41f...d0251f`; ethereum `0xf252c5...5730d9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xc9f2d7...f86f64` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CASH+ Smart Contract Audit Report](https://reale-assets.gitbook.io/reale/product/cash+/appendix/cash+-smart-contract-audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x048a8a...60b809`](./contracts/ethereum-1/0x048a8afa8cf69ea53b72298d50033d1e2560b809/) | SAmMMF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3093] CASH+ Smart Contract Audit Report

Fork inheritance lineage and inherited audits are included when available.
