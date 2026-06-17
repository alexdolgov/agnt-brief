# Agentic Audit Brief: KAIO

⚠️ Lifecycle status: DECLINING - TVL dropped 32.0% over 90 days

## Project Overview

- Project: KAIO (`kaio`)
- Website: [https://www.kaio.xyz/](https://www.kaio.xyz/)
- Lifecycle: declining (Tier 0, 49.4% below peak)
- Generated: 2026-06-17T07:00:36.838Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: sei
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $60,807,206.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

KAIO, previously Libre Capital, is an institutional fund and real-world asset (RWA) platform focused on bringing regulated funds onchain. The project provides compliant fund tokenization and access infrastructure, interoperability across supported chains, liquidity access, mirrored/receipt token components, and a sovereign AppChain for regulated onchain fund distribution and management.

### Architecture

All contracts belong to a single product family, KAIO, which uses ERC1967Proxy for upgradeability across its core token contracts. SecurityTokenMirror and LibreReceiptToken instances are deployed via proxies and share supporting infrastructure like InvestorRegistryMirror for compliance and LibreEdgeGateway for cross-chain interactions.

## Contract Surface Quality

- Indexed contracts: 206; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 201 singleton, 0 uninitialized.
- Deployment units: 0/55 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
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
| UnnamedContract | unknown | sei | n/a | `0x2018a6...804e20` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x34c424...77d4e7` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x39cc01...6b26e7` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x8fe9d1...ff748a` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9998ee...0b078a` | ❓ Unverified |

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
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
