# Agentic Audit Brief: Starknet BTC Staking

## Project Overview

- Project: Starknet BTC Staking (`starknet-btc-staking`)
- Website: [https://www.starknet.io/staking/bitcoin-staking-user-guide-for-starknet/](https://www.starknet.io/staking/bitcoin-staking-user-guide-for-starknet/)
- Lifecycle: unknown
- Generated: 2026-06-17T07:00:57.414Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $43,882,318.15
- On-chain TVL (included contracts): $412,192,393.45
- TVL by chain: Ethereum $412,192,393.45

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $412,192,393.45
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StarkNetToken | token | ethereum | n/a | [`0xca1400...d42766`](./contracts/ethereum-1/0xca14007eff0db1f8135f4c25b34de49ab0d42766/) | ⚠️ Unaudited |
| RewardSupplier | unknown | ethereum | unit-32365 | [`0xca1406...be9ff5`](./contracts/ethereum-1/0xca1406d57ed09947e68de121316c87113fbe9ff5/) | ⚠️ Unaudited |

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
| [Nimbora - Zellic Audit Report.pdf](https://github.com/0xSpaceShard/nimbora-lst-public-audit/blob/main/Nimbora%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Nimbora Audit Report.pdf](https://github.com/0xSpaceShard/nimbora_audit_report_yield_dex/blob/main/Nimbora%20Audit%20Report.pdf) | Nimbora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4715] Nimbora - Zellic Audit Report.pdf
- [4716] Nimbora Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
