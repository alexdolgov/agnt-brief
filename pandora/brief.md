# Agentic Audit Brief: Pandora

⚠️ Lifecycle status: DECLINING - TVL dropped 6.6% over 90 days

## Project Overview

- Project: Pandora (`pandora`)
- Lifecycle: declining (Tier 0, 99.8% below peak)
- Generated: 2026-06-19T21:47:08.540Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $8,936.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Pandora is a decentralized exchange (DEX) protocol on BSC, likely a Uniswap V2 fork, enabling users to swap tokens and provide liquidity. It appears to use an NFT-based assembly pattern for liquidity positions.

### Architecture

The PandoAssembly proxy uses NFTLib as its implementation, indicating that liquidity positions are managed as NFTs. The single unnamed contract at 0xb72ba371c900aa68bb9fa473e93cfbe212030fcb likely serves as the factory or router, tying the system together.

## Contract Surface Quality

- Indexed contracts: 87; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 80 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 22; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

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

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x72e3d5...e3120d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb72ba3...030fcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2426f...7fafc5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb10af...ca9806` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd72121...ed315a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Pandora-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Pandora-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=3

Zero-match audit list:

- [13652] PeckShield-Audit-Report-Pandora-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
