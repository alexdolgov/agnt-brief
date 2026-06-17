# Agentic Audit Brief: Sonic Gateway

⚠️ Lifecycle status: DECLINING - TVL dropped 32.0% over 90 days

## Project Overview

- Project: Sonic Gateway (`sonic-gateway`)
- Website: [https://gateway.soniclabs.com/ethereum/sonic/s](https://gateway.soniclabs.com/ethereum/sonic/s)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:01:00.683Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: sonic
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $45,448,524.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Sonic Gateway is Sonic's canonical bridge between Ethereum and Sonic, enabling users to deposit tokens on Ethereum and receive equivalent tokens on the Sonic network for cross-chain asset transfers.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 8 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 2/6 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-06 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | unknown | sonic | unit-32520 | [`0x9ef762...c895b3`](./contracts/sonic-146/0x9ef7629f9b930168b76283add7120777b3c895b3/) | ⚠️ Unaudited |
| MessageBus | unknown | sonic | n/a | [`0xb5b371...925308`](./contracts/sonic-146/0xb5b371b75f9850ddd6ccb6c436db54972a925308/) | ⚠️ Unaudited |
| UpdateManager | governance | sonic | unit-32519 | [`0x1d3c99...176bb7`](./contracts/sonic-146/0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7/) | ⚠️ Unaudited |

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
| [fantom-audit-first.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-first.pdf) | unknown | Audit | 2018-06 | stale | Direct | n/a | 0 | n/a |
| [fantom-audit-second.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-second.pdf) | unknown | Audit | 2018-06 | stale | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11677] fantom-audit-first.pdf
- [11678] fantom-audit-second.pdf

Fork inheritance lineage and inherited audits are included when available.
