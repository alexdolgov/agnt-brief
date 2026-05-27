# Agentic Audit Brief: Unitas

## Project Overview

- Project: Unitas (`unitas`)
- Website: [https://app.unitas.so/points?ref=llama](https://app.unitas.so/points?ref=llama)
- Lifecycle: active (Tier 0, 38.6% below peak)
- Generated: 2026-05-27T12:44:59.025Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: bsc
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $83,171,426.72
- On-chain TVL (included contracts): $47,804,206.32
- TVL by chain: Bsc $47,804,206.32

## Project Description

Unitas is a DeFi protocol on BSC that enables basis trading, allowing users to mint and redeem a stablecoin (USDu) against a basket of assets to capture yield from price discrepancies between spot and futures markets.

### Architecture

The protocol consists of a single product family centered around the USDu stablecoin, with all functionality likely contained within that contract or its associated deployer cluster, indicating a tightly integrated system without separate infrastructure contracts.

## Audit Coverage Summary

- Verified implementations audited: 3/3 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 5
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Staleness: 3 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 3 | 100.0% | 2025-10 |
| unknown | Tier 2 | 3 | 100.0% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedUSDuV2 | token | bsc | [`0x385c27...52ec71`](./contracts/bsc-56/0x385c279445581a186a4182a5503094ebb652ec71/) | ✅ Audited |
| UnitasMintingV2 | unknown | bsc | [`0xbb984c...4ea82a`](./contracts/bsc-56/0xbb984ce670100aa855f6152f88b26ee57f4ea82a/) | ✅ Audited |
| USDu | unknown | bsc | [`0xea953e...db5882`](./contracts/bsc-56/0xea953ea6634d55dac6697c436b1e81a679db5882/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
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
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

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
