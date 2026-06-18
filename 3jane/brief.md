# Agentic Audit Brief: 3Jane

⚠️ Lifecycle status: DECLINING - TVL dropped 99.4% over 90 days

## Project Overview

- Project: 3Jane (`3jane`)
- Website: [https://www.3jane.xyz/](https://www.3jane.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T14:43:53.668Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4e21
- Chains: ethereum
- Contract surface: 17 unique implementations (27 raw deployments)
- DeFi Llama TVL: $46,360,631.00
- On-chain TVL (included contracts): $76,614,572.45
- TVL by chain: Ethereum $76,614,572.45

## Project Description

3Jane is a credit-based DeFi money market centered on USD3 and sUSD3, providing fintech and cryptonative credit-backed financing and yield opportunities. Options vaults may exist as a separate, smaller, or legacy product rather than the protocol’s primary focus.

### Architecture

The lending and options families rely on the core infrastructure family for stablecoin (USD3), credit assessment (CreditLine, AdaptiveCurveIrm), and risk management (InsuranceFund). Governance is controlled by the Permissions family via ProtocolConfig and timelock.

## Contract Surface Quality

- Indexed contracts: 49; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 9 inactive, 13 singleton, 0 uninitialized.
- Deployment units: 7/15 live.
- Detected codebases: none
- Dependencies extracted: 13; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 13/17 (76.5%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 27
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $76,614,572.45
- Latest audit: 2025-10 (fresh)
- Staleness: 4 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 76.5% (Sherlock)
- Note: This protocol is classified as [declining]. ASD of $76,614,572.45 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 13 | 76.5% | 2025-10 |
| Veridise | Tier 2 | 8 | 47.1% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdaptiveCurveIrm | unknown | ethereum | unit-37572 | [`0x1d434d...f9c7df`](./contracts/ethereum-1/0x1d434d2899f81f3c3fdf52c814a6e23318f9c7df/) | ✅ Audited |
| CreditLine | unknown | ethereum | n/a | [`0x26389b...20c6a9`](./contracts/ethereum-1/0x26389b03298ba5da0664ffd6bf78cf3a7820c6a9/) | ✅ Audited |
| Helper | periphery | ethereum | n/a | 2 deployments: ethereum [`0x2a66f9...f3f682`](./contracts/ethereum-1/0x2a66f992bf227d2e50ef19edd21503c3c4f3f682/); ethereum `0x82736f...444505` | ✅ Audited |
| InsuranceFund | unknown | ethereum | n/a | [`0x4507b5...d29935`](./contracts/ethereum-1/0x4507b5b23340d248457d955a211c8b0634d29935/) | ✅ Audited |
| Jane | unknown | ethereum | n/a | 2 deployments: ethereum [`0x333333...0e3404`](./contracts/ethereum-1/0x333333330522f64ee8d0b3039c460b41670e3404/); ethereum `0xff031e...fd72fc` | ✅ Audited |
| MarkdownController | governance | ethereum | n/a | [`0xf0eae7...726214`](./contracts/ethereum-1/0xf0eae71092f3c9411a9eab8f81e7d91d29726214/) | ✅ Audited |
| MarkdownManager | governance | ethereum | n/a | [`0xfd1726...118b5d`](./contracts/ethereum-1/0xfd172699e44008d1f48fd945a0421a03d8118b5d/) | ✅ Audited |
| MorphoCredit | unknown | ethereum | unit-37581 | [`0xde6e08...b0ecbc`](./contracts/ethereum-1/0xde6e08ac208088cc62812ba30608d852c6b0ecbc/) | ✅ Audited |
| ProtocolConfig | governance | ethereum | n/a | [`0xaa11ab...a9bf1e`](./contracts/ethereum-1/0xaa11ab352fd05094a2400609fb6100e755a9bf1e/) | ✅ Audited |
| RewardsDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xac6985...f064e8`](./contracts/ethereum-1/0xac6985d4dbcd89ccad71db9bf0309eaf57f064e8/); ethereum `0xc95f8f...2f555c` | ✅ Audited |
| sUSD3 | unknown | ethereum | unit-37583 | [`0xf68955...6164a7`](./contracts/ethereum-1/0xf689555121e529ff0463e191f9bd9d1e496164a7/) | ✅ Audited |
| TokenizedStrategy | core_logic | ethereum | unit-37570 (7 proxies) | 7 deployments: ethereum [`0x05367c...36a06e`](./contracts/ethereum-1/0x05367c7a76afeb7bdf7c06b479d7551d6536a06e/); ethereum `0x492a3d...3d9f91`; ethereum `0x49ef4a...0df852`; ethereum `0x4f6694...bc0645`; ethereum `0x83872d...45f35a`; ethereum `0xbd35e3...247c2e`; ethereum `0xf733c7...3304de` | ✅ Audited |
| USD3 | unknown | ethereum | unit-37571 | [`0x056b26...d55ecc`](./contracts/ethereum-1/0x056b269eb1f75477a8666ae8c7fe01b64dd55ecc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StataTokenV2 | token | ethereum | unit-37580 | [`0xd4fa2d...8cd23e`](./contracts/ethereum-1/0xd4fa2d31b7968e448877f69a96de69f5de8cd23e/) | ⚠️ Unaudited |
| EmergencyController | governance | ethereum | n/a | 2 deployments: ethereum [`0x792a14...2ea12c`](./contracts/ethereum-1/0x792a1450a3d2023e2de6bb29208031dea52ea12c/); ethereum `0x84b31b...d2e051` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | unit-37573 | [`0x333333...6fb5ef`](./contracts/ethereum-1/0x33333333bd7045f1a601a1e289d7ab21036fb5ef/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x1dccd4...08f8c2`](./contracts/ethereum-1/0x1dccd4628d48a50c1a7adea3848bcc869f08f8c2/) | ⚠️ Unaudited |

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
| [veridise-audit](https://github.com/3jane-protocol/audits/blob/main/veridise-audit.pdf) | Veridise | Audit | 2025-08 | fresh | Direct | contract_name | 15 | high |
| [sherlock-audit](https://github.com/3jane-protocol/audits/blob/main/sherlock-audit.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | 17 | high |
| [electisec-audit](https://github.com/3jane-protocol/audits/blob/main/electisec-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | contract_name | 21 | high |
| [sherlock-2-audit](https://github.com/3jane-protocol/audits/blob/main/sherlock-2-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | contract_name | 21 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x792a14...2ea12c`](./contracts/ethereum-1/0x792a1450a3d2023e2de6bb29208031dea52ea12c/) | EmergencyController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=82

Fork inheritance lineage and inherited audits are included when available.
