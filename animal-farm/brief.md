# Agentic Audit Brief: Animal Farm

⚠️ Lifecycle status: DEAD - TVL dropped 5.6% over 90 days

## Project Overview

- Project: Animal Farm (`animal-farm`)
- Website: [https://animalfarm.app](https://animalfarm.app)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T07:27:24.772Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $66,921.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Animal Farm is a yield farming protocol on BSC that allows users to stake tokens and earn rewards. It consists of two versions, V1 and V2, with V2 introducing additional farming and staking mechanisms.

### Architecture

Animal Farm V1 and V2 are separate product families with no shared contracts, indicating independent deployments. V2 likely supersedes V1 with enhanced features, but both operate on BSC.

## Contract Surface Quality

- Indexed contracts: 244; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 226 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
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

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x1514c7...d256c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x198271...6b9829` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f8a98...0d7e4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2139c4...3bf8b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a4c15...ae07ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e634a...051529` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x685bfd...3027ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78205c...8d8a10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x853617...1c638f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x932c5e...ffbd9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x935b36...1c0297` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a3321...742002` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0feb3...491b58` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb51519...ac8132` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0e30e...07426e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbdc73...75fb9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5d9c5...7bad44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf911d1...99e28d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://dripcommunity.wiki/static/paladin_af.pdf) | Paladin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://dripcommunity.wiki/static/animalfarm_truthseekers_audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12661] DL audit link
- [12662] DL audit link

Fork inheritance lineage and inherited audits are included when available.
