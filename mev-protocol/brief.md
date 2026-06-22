# Agentic Audit Brief: MEV Protocol

⚠️ Lifecycle status: DEAD - TVL dropped 4.2% over 90 days

## Project Overview

- Project: MEV Protocol (`mev-protocol`)
- Website: [https://mev.io/](https://mev.io/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T07:37:29.781Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $80,724.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

MEV Protocol provides liquid staking for Ethereum, allowing users to stake ETH and receive a liquid staking token (mevETH) that accrues staking rewards and MEV capture. It aims to maximize yield by capturing Maximal Extractable Value (MEV) through its staking infrastructure.

### Architecture

The MevEth token contract is the core liquid staking token, with WagyuStaker handling staking logic and MEV capture. MevEthRateProvider supplies exchange rate data, while MevEthRouter acts as an adapter for user interactions, and GnosisSafeProxy provides governance control.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 12; unverified dependencies: 0.

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
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | unit-41659 | [`0x617c8d...38f582`](./contracts/ethereum-1/0x617c8de5bde54ffbb8d92716cc947858ca38f582/) | ⚠️ Unaudited |
| MevEth | unknown | ethereum | n/a | [`0x24ae2d...e4f27e`](./contracts/ethereum-1/0x24ae2da0f361aa4be46b48eb19c91e02c5e4f27e/) | ⚠️ Unaudited |
| MevEthRouter | adapter | ethereum | n/a | [`0xb60598...7b4a93`](./contracts/ethereum-1/0xb60598cd27fb881b92a34afce93aa1ee647b4a93/) | ⚠️ Unaudited |

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
| [DL audit link](https://manifoldfinance.slack.com/?redir=%2Ffiles%2FU058FSRGPLM%2FF060DJ8NJ2C%2Fmanifold_finance_july23_public__liquid_staking_.pdf%3Fu%3DU058FSRGPLM%26file_id%3DF060DJ8NJ2C%26name%3Dmanifold_finance_july23_public__liquid_staking_.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Manifold mevETH2 Audit](https://kebabsec.xyz/audits/manifold_finance_meveth2_audit) | Kebabsec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x24ae2d...e4f27e`](./contracts/ethereum-1/0x24ae2da0f361aa4be46b48eb19c91e02c5e4f27e/) | MevEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb60598...7b4a93`](./contracts/ethereum-1/0xb60598cd27fb881b92a34afce93aa1ee647b4a93/) | MevEthRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13489] DL audit link
- [13490] Manifold mevETH2 Audit

Fork inheritance lineage and inherited audits are included when available.
