# Agentic Audit Brief: Manta Pacific

## Project Overview

- Project: Manta Pacific (`manta-pacific`)
- Website: [https://pacific-bridge.manta.network](https://pacific-bridge.manta.network)
- Lifecycle: active (Tier 0, 92.7% below peak)
- Generated: 2026-06-17T07:00:50.163Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, manta
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $21,114,059.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This record covers the canonical bridge for transferring assets between Ethereum and Manta Pacific. It should not be treated as a full audit scope for the entire Manta Pacific Layer 2 unless a separate broader project scope and supporting evidence are added.

### Architecture

All contracts belong to a single product family that implements the OP Stack bridging system. The L1StandardBridge and L1ERC721Bridge handle asset transfers, while the OptimismPortal manages deposits and withdrawals, and the L1CrossDomainMessenger enables cross-chain communication, all configured by the SystemConfig and secured by the L2OutputOracle.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 9 (8 live, 1 unknown).
- Excluded by liveness: 1 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 6/8 live.
- Detected codebases: none
- Unverified dependencies: 3/6.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BLSApkRegistry | unknown | ethereum | unit-30745 | [`0xa80f24...25fd60`](./contracts/ethereum-1/0xa80f2401c8ae7d95c7995295dc2c0d651f25fd60/) | ⚠️ Unaudited |
| FinalityRelayerManager | governance | ethereum | unit-30743 | [`0x8e132b...74c94e`](./contracts/ethereum-1/0x8e132b3bd37f3f6e223cd23add390111e674c94e/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-30740 | [`0x3c46c0...3ea01e`](./contracts/ethereum-1/0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | unit-30741 | [`0x635ba6...13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | unit-30738 | [`0x30c789...a05c1d`](./contracts/ethereum-1/0x30c789674ad3b458886bbc9abf42eee19ea05c1d/) | ⚠️ Unaudited |
| Manta | unknown | manta | n/a | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | unit-30742 | [`0x895e00...351a5d`](./contracts/ethereum-1/0x895e00269a05848f3c9889efa677d02ff7351a5d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xab64a3...e46366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec638d...7d8262` | ❓ Unverified |

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
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
