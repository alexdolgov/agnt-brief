# Agentic Audit Brief: Synthswap

⚠️ Lifecycle status: DECLINING - TVL dropped 17.0% over 90 days

## Project Overview

- Project: Synthswap (`synthswap`)
- Website: [https://synthswap.io](https://synthswap.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-22T10:42:19.673Z
- Pipeline run: v2-pipeline-2026-06-22-727228-695b
- Chains: base
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $16,722.00
- On-chain TVL (included contracts): $12,176.49
- TVL by chain: Base $12,176.49

## Project Description

Synthswap is a decentralized exchange and perpetual futures trading platform on Base. It offers spot trading via an automated market maker and leveraged futures trading through a vault-based system, with shared liquidity and reward mechanisms.

### Architecture

The DEX and Futures Trading families share the Synth token for incentives and governance, with the TimelockController providing administrative control. The Vault in Futures Trading may utilize liquidity from DEX pairs, and reward contracts distribute fees across both families.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 33 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/11.

## Audit Coverage Summary

- Verified implementations audited: 4/9 (44.4%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 44.4% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SynthToken | token | base | n/a | [`0xbd2dbb...fe5ed2`](./contracts/base-8453/0xbd2dbb8ecea9743ca5b16423b4eaa26bdcfe5ed2/) | ✅ Audited |
| Dividends | unknown | base | n/a | [`0xb8b0e1...10508f`](./contracts/base-8453/0xb8b0e1ebd2266a0dff7da4ebee8daaaa6810508f/) | ✅ Audited |
| SynthChef | unknown | base | n/a | [`0xef153c...0098b9`](./contracts/base-8453/0xef153cb7bfc04c657cb7f582c7411556320098b9/) | ✅ Audited |
| XSynthToken | token | base | n/a | [`0x01cc6b...2d05ea`](./contracts/base-8453/0x01cc6b33c63cee896521d63451896c14d42d05ea/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SLP | unknown | base | n/a | [`0x67599b...b8291d`](./contracts/base-8453/0x67599b62d6864621704b2a124857fcfa39b8291d/) | ⚠️ Unaudited |
| SynthPair | unknown | base | n/a | [`0xac5af1...7ecb28`](./contracts/base-8453/0xac5af1706cc42a7c398c274c3b8ecf735e7ecb28/) | ⚠️ Unaudited |
| SynthRouter | adapter | base | n/a | [`0x8734b3...abeff0`](./contracts/base-8453/0x8734b3264dbd22f899bcef4e92d442d538abeff0/) | ⚠️ Unaudited |
| Vesting | operational_periphery | base | n/a | [`0x253f74...735a05`](./contracts/base-8453/0x253f744e6faf9c7a452a819bb9e07314ca735a05/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-SynthSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SynthSwap-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x67599b...b8291d`](./contracts/base-8453/0x67599b62d6864621704b2a124857fcfa39b8291d/) | SLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xac5af1...7ecb28`](./contracts/base-8453/0xac5af1706cc42a7c398c274c3b8ecf735e7ecb28/) | SynthPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8734b3...abeff0`](./contracts/base-8453/0x8734b3264dbd22f899bcef4e92d442d538abeff0/) | SynthRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x253f74...735a05`](./contracts/base-8453/0x253f744e6faf9c7a452a819bb9e07314ca735a05/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
