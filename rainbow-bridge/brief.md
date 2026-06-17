# Agentic Audit Brief: Rainbow Bridge

⚠️ Lifecycle status: DECLINING - TVL changed 13.6% over 90 days

## Project Overview

- Project: Rainbow Bridge (`rainbow-bridge`)
- Website: [https://rainbowbridge.app/transfer](https://rainbowbridge.app/transfer)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:52.228Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $1,673,576.84
- On-chain TVL (included contracts): $23,285,836.32
- TVL by chain: Ethereum $23,285,836.32

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Rainbow Bridge is an Aurora product that enables asset transfers between Ethereum, NEAR Protocol, and Aurora. Its Ethereum-side surface includes bridge infrastructure such as NearBridge, an EthCustodian contract for locking assets, and token/asset contracts such as eNear, with cross-chain transfers secured by light client verification.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $23,285,836.32
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $23,285,836.32 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20Locker | token | ethereum | n/a | [`0x23ddd3...9e127f`](./contracts/ethereum-1/0x23ddd3e3692d1861ed57ede224608875809e127f/) | ⚠️ Unaudited |
| eNear | unknown | ethereum | n/a | [`0x85f17c...b9f6a4`](./contracts/ethereum-1/0x85f17cf997934a597031b2e18a9ab6ebd4b9f6a4/) | ⚠️ Unaudited |
| EthCustodian | unknown | ethereum | n/a | [`0x6bfad4...89fa52`](./contracts/ethereum-1/0x6bfad42cfc4efc96f529d786d643ff4a8b89fa52/) | ⚠️ Unaudited |

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
| ethereum | [`0x23ddd3...9e127f`](./contracts/ethereum-1/0x23ddd3e3692d1861ed57ede224608875809e127f/) | ERC20Locker | token | $23,285,836.32 | Verified native implementation with $23,285,836.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85f17c...b9f6a4`](./contracts/ethereum-1/0x85f17cf997934a597031b2e18a9ab6ebd4b9f6a4/) | eNear | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bfad4...89fa52`](./contracts/ethereum-1/0x6bfad42cfc4efc96f529d786d643ff4a8b89fa52/) | EthCustodian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
