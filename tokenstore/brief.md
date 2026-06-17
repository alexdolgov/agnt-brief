# Agentic Audit Brief: TokenStore

## Project Overview

- Project: TokenStore (`tokenstore`)
- Lifecycle: active (Tier 0, 87.9% below peak)
- Generated: 2026-06-17T07:01:00.711Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $1,052,194.52
- On-chain TVL (included contracts): $265,675.39
- TVL by chain: Ethereum $265,675.39

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

TokenStore is a trustless decentralized exchange on Ethereum where funds are held in open smart contracts.

## Contract Surface Quality

- Indexed contracts: 44; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 42 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $265,675.39
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FreeToken | token | ethereum | n/a | [`0x2f141c...49e4fd`](./contracts/ethereum-1/0x2f141ce366a2462f02cea3d12cf93e4dca49e4fd/) | ⚠️ Unaudited |
| TokenStore | token | ethereum | n/a | [`0x1ce7ae...ee33d8`](./contracts/ethereum-1/0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8/) | ⚠️ Unaudited |

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
| ethereum | [`0x2f141c...49e4fd`](./contracts/ethereum-1/0x2f141ce366a2462f02cea3d12cf93e4dca49e4fd/) | FreeToken | token | $262,668.16 | Verified native implementation with $262,668.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ce7ae...ee33d8`](./contracts/ethereum-1/0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8/) | TokenStore | token | $3,007.23 | Verified native implementation with $3,007.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
