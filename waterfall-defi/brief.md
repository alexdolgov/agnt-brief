# Agentic Audit Brief: Waterfall DeFi

⚠️ Lifecycle status: DEAD - TVL dropped 17.2% over 90 days

## Project Overview

- Project: Waterfall DeFi (`waterfall-defi`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-20T00:14:55.916Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $19,019.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Waterfall DeFi is a yield aggregator on BSC that optimizes returns by automatically compounding rewards from underlying protocols like Alpaca Finance. It uses upgradeable strategy contracts to manage deposits and a governance token for protocol control.

### Architecture

The StrategyManagerAlpacaFarm oversees multiple StrategyAlpacaFarmUpgradeable contracts, which handle the actual yield optimization. TokenEscrow likely manages fee distribution or reward vesting, while WaterfallGovernanceToken serves as the protocol's governance and incentive layer.

## Contract Surface Quality

- Indexed contracts: 177; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 166 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: none
- Dependencies extracted: 9; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: 33.3% (SlowMist)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 33.3% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WTF | unknown | bsc | n/a | [`0x2fa0ca...cf65b0`](./contracts/bsc-56/0x2fa0cac2c75efb50382b5091c6494194eacf65b0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VotingEscrow | operational_periphery | bsc | n/a | [`0x4df3cc...73e7c7`](./contracts/bsc-56/0x4df3cc03fafb2bcc139e23cd6fa6073a8f73e7c7/) | ⚠️ Unaudited |
| WaterfallGovernanceToken | token | bsc | n/a | [`0xd73f32...39823c`](./contracts/bsc-56/0xd73f32833b6d5d9c8070c23e599e283a3039823c/) | ⚠️ Unaudited |

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
| [SlowMist Audit Report - Waterfall DeFi Mainnet.pdf](https://github.com/WaterfallDefi/Waterfall-audit/blob/main/SlowMist%20Audit%20Report%20-%20Waterfall%20DeFi%20Mainnet.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4df3cc...73e7c7`](./contracts/bsc-56/0x4df3cc03fafb2bcc139e23cd6fa6073a8f73e7c7/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd73f32...39823c`](./contracts/bsc-56/0xd73f32833b6d5d9c8070c23e599e283a3039823c/) | WaterfallGovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=44

Fork inheritance lineage and inherited audits are included when available.
