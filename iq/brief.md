# Agentic Audit Brief: IQ

## Project Overview

- Project: IQ (`iq`)
- Website: [https://iq.wiki](https://iq.wiki)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:06.324Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $5,039,162.28
- On-chain TVL (included contracts): $23,853,191.63
- TVL by chain: Ethereum $23,853,191.63

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

IQ.wiki is a blockchain and cryptocurrency encyclopedia powered by the IQ token. The IQ token is used within the ecosystem for governance and staking, including HiIQ staking as reflected in DefiLlama staking data.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $23,853,191.63
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| IQERC20 | token | ethereum | [`0x579cea...29b0c9`](./contracts/ethereum-1/0x579cea1889991f68acc35ff5c3dd0621ff29b0c9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | [`0x1bf545...4e16ba`](./contracts/ethereum-1/0x1bf5457ecaa14ff63cc89efd560e251e814e16ba/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x579cea...29b0c9`](./contracts/ethereum-1/0x579cea1889991f68acc35ff5c3dd0621ff29b0c9/) | IQERC20 | token | $23,853,191.63 | Verified native implementation with $23,853,191.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bf545...4e16ba`](./contracts/ethereum-1/0x1bf5457ecaa14ff63cc89efd560e251e814e16ba/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
