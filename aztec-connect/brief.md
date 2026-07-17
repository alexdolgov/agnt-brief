# Agentic Audit Brief: Aztec Connect

⚠️ Lifecycle status: DEAD - TVL dropped 100.0% over 90 days

## Project Overview

- Project: Aztec Connect (`aztec-connect`)
- Website: [https://aztec.network](https://aztec.network)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-04T14:53:05.052Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Privacy. Structurally: 3 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 4 (2 live, 2 unknown).
- Excluded by liveness: 17 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 2 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RollupProcessor | unknown | ethereum | n/a | [`0x737901bea3eeb88459df9ef1be8ff3ae1b42a2ba`](./contracts/ethereum-1/0x737901bea3eeb88459df9ef1be8ff3ae1b42a2ba/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RollupProcessorV3 | unknown | ethereum | n/a | [`0xff1f2b4adb9df6fc8eafecdcbf96a2b351680455`](./contracts/ethereum-1/0xff1f2b4adb9df6fc8eafecdcbf96a2b351680455/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x7431786f99c62df3d06d417cc4a5bf1d2bf1a61a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8eefd2d44952ddcb94bb383d4c0aa670f941c784` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit Report - Aztec (1).pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20(1).pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |
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
| [Aztec_20221014.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Aztec_20221014.pdf) | unknown | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

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
