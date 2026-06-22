# Agentic Audit Brief: Throne

⚠️ Lifecycle status: UNKNOWN - TVL dropped 39.4% over 90 days

## Project Overview

- Project: Throne (`throne`)
- Website: [https://throne.exchange](https://throne.exchange)
- Lifecycle: unknown (Tier 0, 93.7% below peak)
- Generated: 2026-06-19T23:27:00.237Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: base
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $16,850.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Throne is a decentralized exchange (DEX) protocol on Base that facilitates token swaps and liquidity provision. It appears to use a concentrated liquidity model similar to Uniswap V3, with a focus on efficient trading and position management.

### Architecture

The Throne V3 family relies on the OATH token as a core asset, while the NonfungibleTokenPositionDescriptorOffChain contract (behind a proxy) likely supports position management by describing liquidity positions off-chain.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 43 inactive, 1 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 3/16.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OATH | unknown | base | n/a | [`0x798acf...a28ab5`](./contracts/base-8453/0x798acf1bd6e556f0c3cd72e77b3d169d26a28ab5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SmartRouter | adapter | base | n/a | [`0xf40700...df9196`](./contracts/base-8453/0xf407009ea759728e4349cca85292739347df9196/) | ⚠️ Unaudited |

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
| [SmartContract_Audit_Solidproof_Throne.pdf](https://github.com/solidproof/projects/blob/main/2023/Throne/SmartContract_Audit_Solidproof_Throne.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xf40700...df9196`](./contracts/base-8453/0xf407009ea759728e4349cca85292739347df9196/) | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
