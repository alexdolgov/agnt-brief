# Agentic Audit Brief: IQ

## Project Overview

- Project: IQ (`iq`)
- Website: [https://iq.wiki](https://iq.wiki)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:57.550Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, fraxtal
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $3,712,021.57
- On-chain TVL (included contracts): $23,853,191.63
- TVL by chain: Ethereum $23,853,191.63

## Project Description

IQ.wiki is a blockchain and cryptocurrency encyclopedia powered by the IQ token. The IQ token is used within the ecosystem for governance and staking, including HiIQ staking as reflected in DefiLlama staking data.

### Architecture

The IQ token contract is the core asset, while the Vyper contract likely serves as a supporting infrastructure component such as a staking or governance mechanism, sharing the same deployer cluster.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IQERC20 | token | ethereum | n/a | [`0x579cea...29b0c9`](./contracts/ethereum-1/0x579cea1889991f68acc35ff5c3dd0621ff29b0c9/) | ⚠️ Unaudited |
| BAMMFactory | registry | fraxtal | n/a | [`0x199281...7db0ba`](./contracts/fraxtal-252/0x19928170d739139bfbbb6614007f8eeed17db0ba/) | ⚠️ Unaudited |
| FraxswapFactory | registry | fraxtal | n/a | [`0xe30521...a667e6`](./contracts/fraxtal-252/0xe30521fe7f3beb6ad556887b50739d6c7ca667e6/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x1bf545...4e16ba`](./contracts/ethereum-1/0x1bf5457ecaa14ff63cc89efd560e251e814e16ba/) | ⚠️ Unaudited |

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
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
