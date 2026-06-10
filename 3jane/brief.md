# Agentic Audit Brief: 3Jane

⚠️ Lifecycle status: DECLINING - TVL dropped 99.4% over 90 days

## Project Overview

- Project: 3Jane (`3jane`)
- Website: [https://www.3jane.xyz/](https://www.3jane.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T19:57:14.550Z
- Pipeline run: v2-pipeline-2026-06-10-b79301-df6b
- Chains: ethereum
- Contract surface: 23 unique implementations (49 raw deployments)
- DeFi Llama TVL: $40,708,011.00
- On-chain TVL (included contracts): $76,614,572.45
- TVL by chain: Ethereum $76,614,572.45

## Project Description

3Jane is a credit-based DeFi money market centered on USD3 and sUSD3, providing fintech and cryptonative credit-backed financing and yield opportunities. Options vaults may exist as a separate, smaller, or legacy product rather than the protocol’s primary focus.

### Architecture

The lending and options families rely on the core infrastructure family for stablecoin (USD3), credit assessment (CreditLine, AdaptiveCurveIrm), and risk management (InsuranceFund). Governance is controlled by the Permissions family via ProtocolConfig and timelock.

## Audit Coverage Summary

- Verified implementations audited: 13/21 (61.9%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 23
- Raw deployments: 49
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $76,614,572.45
- Latest audit: 2025-10 (fresh)
- Staleness: 4 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 61.9% (Sherlock)
- Note: This protocol is classified as [declining]. ASD of $76,614,572.45 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 13 | 61.9% | 2025-10 |
| Veridise | Tier 2 | 8 | 38.1% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AdaptiveCurveIrm | unknown | ethereum | [`0x1d434d...f9c7df`](./contracts/ethereum-1/0x1d434d2899f81f3c3fdf52c814a6e23318f9c7df/) | ✅ Audited |
| CreditLine | unknown | ethereum | [`0x26389b...20c6a9`](./contracts/ethereum-1/0x26389b03298ba5da0664ffd6bf78cf3a7820c6a9/) | ✅ Audited |
| Helper | periphery | ethereum | 2 deployments: ethereum [`0x2a66f9...f3f682`](./contracts/ethereum-1/0x2a66f992bf227d2e50ef19edd21503c3c4f3f682/); ethereum `0x82736f...444505` | ✅ Audited |
| InsuranceFund | unknown | ethereum | [`0x4507b5...d29935`](./contracts/ethereum-1/0x4507b5b23340d248457d955a211c8b0634d29935/) | ✅ Audited |
| Jane | unknown | ethereum | 2 deployments: ethereum [`0x333333...0e3404`](./contracts/ethereum-1/0x333333330522f64ee8d0b3039c460b41670e3404/); ethereum `0xff031e...fd72fc` | ✅ Audited |
| MarkdownController | governance | ethereum | [`0xf0eae7...726214`](./contracts/ethereum-1/0xf0eae71092f3c9411a9eab8f81e7d91d29726214/) | ✅ Audited |
| MarkdownManager | governance | ethereum | [`0xfd1726...118b5d`](./contracts/ethereum-1/0xfd172699e44008d1f48fd945a0421a03d8118b5d/) | ✅ Audited |
| MorphoCredit | unknown | ethereum | [`0xde6e08...b0ecbc`](./contracts/ethereum-1/0xde6e08ac208088cc62812ba30608d852c6b0ecbc/) | ✅ Audited |
| ProtocolConfig | governance | ethereum | 3 deployments: ethereum [`0x64bc68...b70b98`](./contracts/ethereum-1/0x64bc68ea388e42c73747668122eee3a5bfb70b98/); ethereum `0x6b276a...84f34e`; ethereum `0xaa11ab...a9bf1e` | ✅ Audited |
| RewardsDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0xac6985...f064e8`](./contracts/ethereum-1/0xac6985d4dbcd89ccad71db9bf0309eaf57f064e8/); ethereum `0xc95f8f...2f555c` | ✅ Audited |
| sUSD3 | unknown | ethereum | [`0xf68955...6164a7`](./contracts/ethereum-1/0xf689555121e529ff0463e191f9bd9d1e496164a7/) | ✅ Audited |
| TokenizedStrategy | core_logic | ethereum | 7 deployments: ethereum [`0x05367c...36a06e`](./contracts/ethereum-1/0x05367c7a76afeb7bdf7c06b479d7551d6536a06e/); ethereum `0x492a3d...3d9f91`; ethereum `0x49ef4a...0df852`; ethereum `0x4f6694...bc0645`; ethereum `0x83872d...45f35a`; ethereum `0xbd35e3...247c2e`; ethereum `0xf733c7...3304de` | ✅ Audited |
| USD3 | unknown | ethereum | [`0x056b26...d55ecc`](./contracts/ethereum-1/0x056b269eb1f75477a8666ae8c7fe01b64dd55ecc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StataTokenV2 | token | ethereum | [`0xd4fa2d...8cd23e`](./contracts/ethereum-1/0xd4fa2d31b7968e448877f69a96de69f5de8cd23e/) | ⚠️ Unaudited |
| Amplol | unknown | ethereum | 3 deployments: ethereum [`0x3fbb7b...03fc5a`](./contracts/ethereum-1/0x3fbb7b2f220e2b68f1ff14794543f01ed703fc5a/); ethereum `0xeadf1d...7509e5`; ethereum `0xf7a18b...417e21` | ⚠️ Unaudited |
| EmergencyController | governance | ethereum | 2 deployments: ethereum [`0x792a14...2ea12c`](./contracts/ethereum-1/0x792a1450a3d2023e2de6bb29208031dea52ea12c/); ethereum `0x84b31b...d2e051` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | [`0x333333...6fb5ef`](./contracts/ethereum-1/0x33333333bd7045f1a601a1e289d7ab21036fb5ef/) | ⚠️ Unaudited |
| ManualStrikeSelection | token | ethereum | 2 deployments: ethereum [`0x4ef286...656b46`](./contracts/ethereum-1/0x4ef28605dd3921320da832cefe72a674da656b46/); ethereum `0xa7b3a9...17a9d9` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | ethereum | 11 deployments: ethereum [`0x2e96b8...efb619`](./contracts/ethereum-1/0x2e96b888c0f7d5362022de5f330e24dff5efb619/); ethereum `0x4a94a0...5da126`; ethereum `0x4c8ce0...a9944c`; ethereum `0x65809c...a803d0`; ethereum `0x73092a...6f2dc9`; ethereum `0x8ee376...55dafb`; ethereum `0x959744...41ea9f`; ethereum `0xa235c6...147572`; ethereum `0xa6f76b...45f030`; ethereum `0xacd147...99fb4d`; ethereum `0xbc8a59...6521a7` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0x1dccd4...08f8c2`](./contracts/ethereum-1/0x1dccd4628d48a50c1a7adea3848bcc869f08f8c2/) | ⚠️ Unaudited |
| VaultLifecycleWithSwap | core_logic | ethereum | 2 deployments: ethereum [`0x4f1faf...dc19ba`](./contracts/ethereum-1/0x4f1fafbfe3a3a3f66e17ba674c5c79eb0cdc19ba/); ethereum `0x8fe8d5...c0dd11` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x98633a...b4520b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe12caa...48c754` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [veridise-audit](https://github.com/3jane-protocol/audits/blob/main/veridise-audit.pdf) | Veridise | Audit | 2025-08 | fresh | Direct | contract_name | 17 | high |
| [sherlock-audit](https://github.com/3jane-protocol/audits/blob/main/sherlock-audit.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | 19 | high |
| [electisec-audit](https://github.com/3jane-protocol/audits/blob/main/electisec-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | contract_name | 23 | high |
| [sherlock-2-audit](https://github.com/3jane-protocol/audits/blob/main/sherlock-2-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | contract_name | 23 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x792a14...2ea12c`](./contracts/ethereum-1/0x792a1450a3d2023e2de6bb29208031dea52ea12c/) | EmergencyController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ef286...656b46`](./contracts/ethereum-1/0x4ef28605dd3921320da832cefe72a674da656b46/) | ManualStrikeSelection | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e96b8...efb619`](./contracts/ethereum-1/0x2e96b888c0f7d5362022de5f330e24dff5efb619/) | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f1faf...dc19ba`](./contracts/ethereum-1/0x4f1fafbfe3a3a3f66e17ba674c5c79eb0cdc19ba/) | VaultLifecycleWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=82

Fork inheritance lineage and inherited audits are included when available.
