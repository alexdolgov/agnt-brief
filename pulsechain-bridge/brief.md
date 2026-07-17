# Agentic Audit Brief: PulseChain Bridge

## Project Overview

- Project: PulseChain Bridge (`pulsechain-bridge`)
- Website: [https://bridge.pulsechain.com](https://bridge.pulsechain.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.245Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: ethereum
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $47,419,692.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 6 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 8 common project-authored base contract(s) (eternalstorage, ownedupgradeabilityproxy, upgradeabilityownerstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 4 (3 live, 1 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
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
| PermittableToken | token | ethereum | n/a | 2 deployments: ethereum [`0xa1077a294dde1b09bb078844df40758a5d0f9a27`](./contracts/ethereum-1/0xa1077a294dde1b09bb078844df40758a5d0f9a27/); ethereum `0xa882606494d86804b5514e07e6bd2d6a6ee6d68a` | ⚠️ Unaudited |
| WETHOmnibridgeRouter | operational_periphery | ethereum | n/a | [`0x8ac4ae65b3656e26dc4e0e69108b392283350f55`](./contracts/ethereum-1/0x8ac4ae65b3656e26dc4e0e69108b392283350f55/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xf868da5a5d5f799cee2205d8fd1f5ad2c4a28499` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa1077a294dde1b09bb078844df40758a5d0f9a27`](./contracts/ethereum-1/0xa1077a294dde1b09bb078844df40758a5d0f9a27/) | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ac4ae65b3656e26dc4e0e69108b392283350f55`](./contracts/ethereum-1/0x8ac4ae65b3656e26dc4e0e69108b392283350f55/) | WETHOmnibridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
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
