# Agentic Audit Brief: Aztec Connect

## Project Overview

- Project: Aztec Connect (`aztec-connect`)
- Website: [https://aztec.network](https://aztec.network)
- Lifecycle: active (Tier 0, 81.3% below peak)
- Generated: 2026-06-19T06:13:18.213Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $4,314,065.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 12 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 12
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Staleness: 0 fresh, 0 aging, 12 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RollupProcessor | unknown | ethereum | n/a | [`0x737901...42a2ba`](./contracts/ethereum-1/0x737901bea3eeb88459df9ef1be8ff3ae1b42a2ba/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Audit Report - Aztec (1).pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20(1).pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [Audit Report - Aztec Aave Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Aave%20Bridge.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Compound Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Compound%20Bridge.pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Curve Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Curve%20Bridge.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec DCA Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20DCA%20Bridge.pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Element Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Element%20Bridge.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Lido Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Lido%20Bridge.pdf) | unknown | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Liquity Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Liquity%20Bridge.pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Liquity Trove Bridge II.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Liquity%20Trove%20Bridge%20II.pdf) | unknown | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Set Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Set%20Bridge.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Subsidy Contract.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Subsidy%20Contract.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Aztec_20221014.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Aztec_20221014.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Zero-match audit list:

- [2446] Audit Report - Aztec Aave Bridge.pdf
- [2447] Audit Report - Aztec Compound Bridge.pdf
- [2448] Audit Report - Aztec Curve Bridge.pdf
- [2449] Audit Report - Aztec DCA Bridge.pdf
- [2450] Audit Report - Aztec Element Bridge.pdf
- [2451] Audit Report - Aztec Lido Bridge.pdf
- [2452] Audit Report - Aztec Liquity Bridge.pdf
- [2453] Audit Report - Aztec Liquity Trove Bridge II.pdf
- [2454] Audit Report - Aztec Set Bridge.pdf
- [2455] Audit Report - Aztec Subsidy Contract.pdf
- [2456] Aztec_20221014.pdf

Fork inheritance lineage and inherited audits are included when available.
