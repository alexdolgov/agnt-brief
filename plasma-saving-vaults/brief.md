# Agentic Audit Brief: Plasma Saving Vaults

⚠️ Lifecycle status: DECLINING - TVL dropped 48.1% over 90 days

## Project Overview

- Project: Plasma Saving Vaults (`plasma-saving-vaults`)
- Website: [https://app.plasma.to/](https://app.plasma.to/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:43.621Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: plasma
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $43,923,429.26
- On-chain TVL (included contracts): $2,646,281.07
- TVL by chain: Plasma $2,646,281.07

## Project Description

Plasma Saving Vaults is an on-chain savings/yield vault product. Its live Savings Lending Vault is publicly described as using Veda vault infrastructure to deploy deposited assets into Aave for yield. BoringVault-style vault infrastructure may be part of the checked surface, but ATokenInstance receipt-token claims and TetherTokenOFTExtension adapter scope should be treated as unconfirmed unless supported by project documentation or source verification.

### Architecture

The BoringVault serves as the main asset management contract, while multiple TetherTokenOFTExtension adapters (deployed as proxies) enable cross-chain token transfers. The ATokenInstance proxy issues receipt tokens to users, linking deposits to yield accrual.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 11 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: aave-v2
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,646,281.07
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,646,281.07 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoringVault | core_logic | plasma | n/a | [`0xd1074e...73a000`](./contracts/plasma-9745/0xd1074e0ae85610ddba0147e29ebe0d8e5873a000/) | ⚠️ Unaudited |
| ProxyAdmin | governance | plasma | n/a | 2 deployments: plasma [`0x322483...773772`](./contracts/plasma-9745/0x3224831b5f45c616f8accba907798c6236773772/); plasma `0x5be536...47d8b2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | plasma | n/a | `0x779ded...713736` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
