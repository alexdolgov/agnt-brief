# Agentic Audit Brief: HoneyFarm

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: HoneyFarm (`honeyfarm`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T18:52:08.000Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 4 unique implementations (6 raw deployments)
- DeFi Llama TVL: $1,017.02
- On-chain TVL (included contracts): $431,428.49
- TVL by chain: Bsc $431,428.49

## Project Description

HoneyFarm is a yield farming protocol on BSC that allows users to stake tokens and earn rewards, likely in the form of its native HoneyToken.

### Architecture

The protocol consists of a single product family centered around the HoneyToken, which serves as the reward token for yield farming activities.

## Contract Surface Quality

- Indexed contracts: 1117; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 1111 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 7/33.

## Audit Coverage Summary

- Verified implementations audited: 1/4 (25.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 6
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $1.76
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $1.76 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 25.0% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HoneyToken | token | bsc | n/a | 3 deployments: bsc [`0x1a8d7a...919222`](./contracts/bsc-56/0x1a8d7ac01d21991bf5249a3657c97b2b6d919222/); bsc `0xe8c933...02ceba`; bsc `0xfa3630...3f6ac5` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BuzybeeVault | core_logic | bsc | n/a | [`0xee8888...54cbe6`](./contracts/bsc-56/0xee8888bd1f16bedc3b9864af544e3b4e0f54cbe6/) | ⚠️ Unaudited |
| HoneycombStrategyForPancake | core_logic | bsc | n/a | [`0x8cc67a...e3e3e2`](./contracts/bsc-56/0x8cc67a178d2b95563dca03a15ec7aee894e3e3e2/) | ⚠️ Unaudited |
| HoneyCombToken | token | bsc | n/a | [`0x0edb33...947696`](./contracts/bsc-56/0x0edb3301437b255310ccdcb5be9f736764947696/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-HoneyFarm-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-HoneyFarm-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | 3 | high |
| [PeckShield-Audit-Report-HoneyFarm-v1.0.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-HoneyFarm-v1.0.1.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x8cc67a...e3e3e2`](./contracts/bsc-56/0x8cc67a178d2b95563dca03a15ec7aee894e3e3e2/) | HoneycombStrategyForPancake | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0edb33...947696`](./contracts/bsc-56/0x0edb3301437b255310ccdcb5be9f736764947696/) | HoneyCombToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=329

Fork inheritance lineage and inherited audits are included when available.
