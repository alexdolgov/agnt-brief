# Agentic Audit Brief: Neutra Finance

⚠️ Lifecycle status: DECLINING - TVL changed 0.0% over 90 days

## Project Overview

- Project: Neutra Finance (`neutra-finance`)
- Lifecycle: declining (Tier 0, 99.8% below peak)
- Generated: 2026-06-19T19:30:09.357Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $3,213.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Neutra Finance is a yield protocol on Arbitrum that provides token vesting and reward tracking mechanisms. It enables users to lock tokens and earn rewards over time through a system of vesters and reward trackers.

### Architecture

The NEU token is the core asset, distributed through various vester contracts (VesterV2, VesterV3, ReserveFreeVester, VesterReserveFree) which manage token locks and releases. RewardTrackerV2 contracts track staking rewards and interact with the vesters, while ERC1967Proxy contracts provide upgradeability for these core components.

## Contract Surface Quality

- Indexed contracts: 134; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 107 inactive, 19 singleton, 0 uninitialized.
- Deployment units: 0/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EsNEU | unknown | arbitrum | n/a | [`0x22f473...85e53f`](./contracts/arbitrum-42161/0x22f4730e21e40dc751c08826d93010a64185e53f/) | ⚠️ Unaudited |
| NEU | unknown | arbitrum | n/a | [`0x6609be...e600c3`](./contracts/arbitrum-42161/0x6609be1547166d1c4605f3a243fdcff467e600c3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x031ef5...0531cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x720726...bc915e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b7e3e...29e514` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa557f8...3f8b40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab4ccb...f73081` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xefb6a9...6d94f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [v2_SmartContract_Audit_Solidproof_NeutraFinance.pdf](https://github.com/NeutraFinance/neutra-gmx-contracts/blob/master/audits/solidproof/v2_SmartContract_Audit_Solidproof_NeutraFinance.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x22f473...85e53f`](./contracts/arbitrum-42161/0x22f4730e21e40dc751c08826d93010a64185e53f/) | EsNEU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6609be...e600c3`](./contracts/arbitrum-42161/0x6609be1547166d1c4605f3a243fdcff467e600c3/) | NEU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=3

Zero-match audit list:

- [13557] v2_SmartContract_Audit_Solidproof_NeutraFinance.pdf

Fork inheritance lineage and inherited audits are included when available.
