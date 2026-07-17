# Agentic Audit Brief: Starknet BTC Staking

## Project Overview

- Project: Starknet BTC Staking (`starknet-btc-staking`)
- Website: [https://www.starknet.io/staking/bitcoin-staking-user-guide-for-starknet/](https://www.starknet.io/staking/bitcoin-staking-user-guide-for-starknet/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.908Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $40,574,374.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RewardSupplier | unknown | ethereum | n/a | [`0xca1406d57ed09947e68de121316c87113fbe9ff5`](./contracts/ethereum-1/0xca1406d57ed09947e68de121316c87113fbe9ff5/) | ⚠️ Unaudited |
| StarkNetToken | token | ethereum | n/a | [`0xca14007eff0db1f8135f4c25b34de49ab0d42766`](./contracts/ethereum-1/0xca14007eff0db1f8135f4c25b34de49ab0d42766/) | ⚠️ Unaudited |

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
| [Nimbora - Zellic Audit Report.pdf](https://github.com/0xSpaceShard/nimbora-lst-public-audit/blob/main/Nimbora%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Nimbora Audit Report.pdf](https://github.com/0xSpaceShard/nimbora_audit_report_yield_dex/blob/main/Nimbora%20Audit%20Report.pdf) | Nimbora | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xca1406d57ed09947e68de121316c87113fbe9ff5`](./contracts/ethereum-1/0xca1406d57ed09947e68de121316c87113fbe9ff5/) | RewardSupplier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca14007eff0db1f8135f4c25b34de49ab0d42766`](./contracts/ethereum-1/0xca14007eff0db1f8135f4c25b34de49ab0d42766/) | StarkNetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4715] Nimbora - Zellic Audit Report.pdf
- [4716] Nimbora Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
