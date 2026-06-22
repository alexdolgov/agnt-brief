# Agentic Audit Brief: Huckleberry

⚠️ Lifecycle status: DEAD - TVL dropped 2.5% over 90 days

## Project Overview

- Project: Huckleberry (`huckleberry`)
- Website: [https://www.huckleberry.finance/](https://www.huckleberry.finance/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-22T10:37:21.580Z
- Pipeline run: v2-pipeline-2026-06-22-727228-695b
- Chains: moonriver
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $31,917.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Huckleberry is a DeFi protocol on Moonriver offering a decentralized exchange (AMM) and a lending market, enabling users to swap tokens and borrow or lend assets.

### Architecture

The single deployer cluster suggests shared infrastructure, but only one lending contract is identified; the AMM contracts are not explicitly listed, so no cross-family relationships are visible.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 31 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/8.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FINN | unknown | moonriver | n/a | [`0x9a92b5...35a756`](./contracts/moonriver-1285/0x9a92b5ebf1f6f6f7d93696fcd44e5cf75035a756/) | ⚠️ Unaudited |
| FinnBar | unknown | moonriver | n/a | [`0x37619c...c9210b`](./contracts/moonriver-1285/0x37619cc85325afea778830e184cb60a3abc9210b/) | ⚠️ Unaudited |
| HuckleberryFarm | unknown | moonriver | n/a | [`0x1f4b76...e343e6`](./contracts/moonriver-1285/0x1f4b7660b6adc3943b5038e3426b33c1c0e343e6/) | ⚠️ Unaudited |
| MappingTokenV2 | token | moonriver | n/a | [`0x900f1e...802667`](./contracts/moonriver-1285/0x900f1ec5819fa087d368877cd03b265bf1802667/) | ⚠️ Unaudited |
| TomVault | core_logic | moonriver | n/a | [`0xd90a92...c00fe7`](./contracts/moonriver-1285/0xd90a92bd23b30dc3a69403e00651ff6d08c00fe7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | moonriver | n/a | [`0xe31a0d...7c994f`](./contracts/moonriver-1285/0xe31a0da5e59df4c82c60d2dd14be64e7ec7c994f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonriver | n/a | `0x425880...a9e263` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Smart contract security audit report-Huckleberry.pdf](https://github.com/HuckleberryDex/huckleberry-contracts/blob/main/Smart%20contract%20security%20audit%20report-Huckleberry.pdf) | yAudit | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | [`0x9a92b5...35a756`](./contracts/moonriver-1285/0x9a92b5ebf1f6f6f7d93696fcd44e5cf75035a756/) | FINN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x37619c...c9210b`](./contracts/moonriver-1285/0x37619cc85325afea778830e184cb60a3abc9210b/) | FinnBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1f4b76...e343e6`](./contracts/moonriver-1285/0x1f4b7660b6adc3943b5038e3426b33c1c0e343e6/) | HuckleberryFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x900f1e...802667`](./contracts/moonriver-1285/0x900f1ec5819fa087d368877cd03b265bf1802667/) | MappingTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xd90a92...c00fe7`](./contracts/moonriver-1285/0xd90a92bd23b30dc3a69403e00651ff6d08c00fe7/) | TomVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13238] Smart contract security audit report-Huckleberry.pdf

Fork inheritance lineage and inherited audits are included when available.
