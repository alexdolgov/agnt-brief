# Agentic Audit Brief: Unitas

## Project Overview

- Project: Unitas (`unitas`)
- Website: [https://app.unitas.so](https://app.unitas.so)
- Lifecycle: active (Tier 0, 38.6% below peak)
- Generated: 2026-06-14T04:38:18.295Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-d641
- Chains: bsc
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $59,863,077.28
- On-chain TVL (included contracts): $48,508,892.11
- TVL by chain: Bsc $48,508,892.11

## Project Description

Unitas is a yield-bearing stablecoin protocol listed as Basis Trading, with deployments on Binance/BSC and Solana. Its contract and program surface should not be treated as BSC-only unless the brief is explicitly scoped to BSC coverage.

### Architecture

The protocol consists of a single product family centered around the USDu stablecoin, with all functionality likely contained within that contract or its associated deployer cluster, indicating a tightly integrated system without separate infrastructure contracts.

## Audit Coverage Summary

- Verified implementations audited: 3/5 (60.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 5
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $704,685.78
- Latest audit: 2026-01 (fresh)
- Staleness: 3 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: 60.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 3 | 60.0% | 2025-10 |
| unknown | Tier 2 | 3 | 60.0% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedUSDuV2 | token | bsc | [`0x385c27...52ec71`](./contracts/bsc-56/0x385c279445581a186a4182a5503094ebb652ec71/) | ✅ Audited |
| UnitasMintingV2 | unknown | bsc | [`0xbb984c...4ea82a`](./contracts/bsc-56/0xbb984ce670100aa855f6152f88b26ee57f4ea82a/) | ✅ Audited |
| USDu | unknown | bsc | [`0xea953e...db5882`](./contracts/bsc-56/0xea953ea6634d55dac6697c436b1e81a679db5882/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PancakeV3Pool | core_logic | bsc | [`0x8aab55...852120`](./contracts/bsc-56/0x8aab5522d601bbb85501d703b55a272e47852120/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | [`0xb464c9...0ed3a9`](./contracts/bsc-56/0xb464c9890604926bd5fa7b66bf15d26bcd0ed3a9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x3b5f4a...5fbb4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x643c75...a6e4b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6e705a...2c0c0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x82a7cc...95c361` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa1e952...31c89d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcfff99...39eb38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe60106...50ac91` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Unipay Audit Report-2026-1-9.pdf](https://github.com/UnipayFi/Audit/blob/main/EVM/Unipay%20Audit%20Report-2026-1-9.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [Unitas Audit Audit Report-2025-9-12.pdf](https://github.com/UnipayFi/Audit/blob/main/EVM/Unitas%20Audit%20Audit%20Report-2025-9-12.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | 3 | high |
| [Unitas Contracts - SlowMist Audit Report.pdf](https://github.com/UnipayFi/Audit/blob/main/EVM/Unitas%20Contracts%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |
| [2025-04-04 Audit Report - Unipay.pdf](https://github.com/UnipayFi/Audit/blob/main/SVM/2025-04-04%20Audit%20Report%20-%20Unipay.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [20250326-Unipay-Final-Audit-Report.pdf](https://github.com/UnipayFi/Audit/blob/main/SVM/20250326-Unipay-Final-Audit-Report.pdf) | unknown | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=7

Zero-match audit list:

- [4619] Unipay Audit Report-2026-1-9.pdf
- [4623] 20250326-Unipay-Final-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
