# Agentic Audit Brief: OCP Finance

⚠️ Lifecycle status: DEAD - TVL dropped 9.4% over 90 days

## Project Overview

- Project: OCP Finance (`ocp-finance`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T22:16:22.576Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $10,226.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

OCP Finance is a lending protocol on BSC that enables users to supply and borrow assets through interest rate markets. It appears to be a Compound fork, providing algorithmic money markets for decentralized lending and borrowing.

### Architecture

The protocol consists of a single product family with one core contract, likely a Compound-like money market, with no additional supporting contracts identified.

## Contract Surface Quality

- Indexed contracts: 407; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 392 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: compound-v2
- Unverified dependencies: 2/5.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0abbab...05cb31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14da51...13c42e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1af197...fe58df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a6766...d94709` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c7026...289fbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5801d0...943276` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b54f0...43811b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x606f53...137852` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7759ee...e5b319` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b1357...aa6fc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e9644...acf995` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f7f20...bba7f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa169d0...fd17b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde4f1c...72c798` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4f570...396047` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [OmniOracle Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/Audit_Reports/blob/master/OmniOracle%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13588] OmniOracle Smart Contract Audit Report - QuillAudits.pdf

Fork inheritance lineage and inherited audits are included when available.
