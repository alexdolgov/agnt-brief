# Agentic Audit Brief: HurricaneSwap

⚠️ Lifecycle status: DEAD - TVL dropped 73.5% over 90 days

## Project Overview

- Project: HurricaneSwap (`hurricaneswap`)
- Website: [https://hurricaneswap.com](https://hurricaneswap.com)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T22:25:28.276Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: avalanche
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $11,221.89
- On-chain TVL (included contracts): $10,631.29
- TVL by chain: Avalanche $10,631.29

## Project Description

HurricaneSwap is a decentralized exchange (DEX) on Avalanche that enables users to swap tokens, provide liquidity, and earn rewards. It uses a factory to create liquidity pools and a staking contract for incentive distribution.

### Architecture

The HcSwapAvaxFactory deploys and registers AvaxPool liquidity pools, which use HctToken as the base asset. StakingRewards distributes incentives to liquidity providers, while HctBar likely serves as a fee collector or treasury.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 33 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $10,631.29
- Latest audit: 2021-10 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $10,631.29 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HctToken | token | avalanche | n/a | [`0x45c136...10fdbd`](./contracts/avalanche-43114/0x45c13620b55c35a5f539d26e88247011eb10fdbd/) | ⚠️ Unaudited |
| AvaxPool | core_logic | avalanche | n/a | [`0x1c9f36...696b24`](./contracts/avalanche-43114/0x1c9f36fe608190d1fe99e001b596c31871696b24/) | ⚠️ Unaudited |
| HctBar | unknown | avalanche | n/a | [`0x75b797...a01140`](./contracts/avalanche-43114/0x75b797a0ed87f77bb546f3a3556f18fc35a01140/) | ⚠️ Unaudited |
| StakingRewards | unknown | avalanche | n/a | [`0xe4ae2e...22a350`](./contracts/avalanche-43114/0xe4ae2e8648b8e84c4a487a559b04e884b822a350/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | avalanche | n/a | `0x3ce2fc...1bc032` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-HurricanSwapV2-v1.0rc.pdf](https://github.com/HurricaneSam/AuditReport/blob/main/PeckShield-Audit-Report-HurricanSwapV2-v1.0rc.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x45c136...10fdbd`](./contracts/avalanche-43114/0x45c13620b55c35a5f539d26e88247011eb10fdbd/) | HctToken | token | $9,805.56 | Verified native implementation with $9,805.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1c9f36...696b24`](./contracts/avalanche-43114/0x1c9f36fe608190d1fe99e001b596c31871696b24/) | AvaxPool | core_logic | $825.73 | Verified native implementation with $825.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x75b797...a01140`](./contracts/avalanche-43114/0x75b797a0ed87f77bb546f3a3556f18fc35a01140/) | HctBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe4ae2e...22a350`](./contracts/avalanche-43114/0xe4ae2e8648b8e84c4a487a559b04e884b822a350/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [13258] PeckShield-Audit-Report-HurricanSwapV2-v1.0rc.pdf

Fork inheritance lineage and inherited audits are included when available.
