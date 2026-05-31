# Agentic Audit Brief: GoldFinger

## Project Overview

- Project: GoldFinger (`goldfinger`)
- Website: [https://goldfinger.finance/en](https://goldfinger.finance/en)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-31T08:16:54.131Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: bsc
- Contract surface: 5 unique implementations (9 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

GoldFinger is a Real World Asset (RWA) protocol on BSC that tokenizes physical gold, allowing users to hold and transfer gold-backed tokens.

### Architecture

The protocol consists of a single product family centered around the ARTToken contract, with no additional infrastructure or inter-family relationships.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 9
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ARTToken | token | bsc | 2 deployments: bsc [`0x0b3f46...c67424`](./contracts/bsc-56/0x0b3f46fcc5f3ac3ac1b28bed8336060679c67424/); bsc `0xb8a1ed...feaae1` | ⚠️ Unaudited |
| GFDistributor | operational_periphery | bsc | 4 deployments: bsc [`0x92558b...154079`](./contracts/bsc-56/0x92558bda86a95cdbff7bdebfe5c2ba7723154079/); bsc `0xcee77c...d8572b`; bsc `0xeae164...18e32c`; bsc `0xf9e11e...efaa62` | ⚠️ Unaudited |
| GFPriceOracle | operational_periphery | bsc | [`0x2c1bd6...03b4f4`](./contracts/bsc-56/0x2c1bd629a23322bd54d403c9139743795903b4f4/) | ⚠️ Unaudited |
| GFRegistry | registry | bsc | [`0xd1ab3b...f17a9a`](./contracts/bsc-56/0xd1ab3ba1882e7f2a1de63849048ed20a97f17a9a/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | `0x2232a5...06859a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [goldfinger-zerodrift-report.pdf](https://github.com/GoldFingerRWA/token-contracts/blob/main/docs/goldfinger-zerodrift-report.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0b3f46...c67424`](./contracts/bsc-56/0x0b3f46fcc5f3ac3ac1b28bed8336060679c67424/) | ARTToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x92558b...154079`](./contracts/bsc-56/0x92558bda86a95cdbff7bdebfe5c2ba7723154079/) | GFDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c1bd6...03b4f4`](./contracts/bsc-56/0x2c1bd629a23322bd54d403c9139743795903b4f4/) | GFPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd1ab3b...f17a9a`](./contracts/bsc-56/0xd1ab3ba1882e7f2a1de63849048ed20a97f17a9a/) | GFRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
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

- [9641] goldfinger-zerodrift-report.pdf

Fork inheritance lineage and inherited audits are included when available.
