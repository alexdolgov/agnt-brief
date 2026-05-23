# Agentic Audit Brief: Angstrom

## Project Overview

- Project: Angstrom (`angstrom`)
- Website: [https://angstrom.xyz/](https://angstrom.xyz/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-23T02:24:54.754Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base, ethereum
- Contract surface: 13 unique implementations (14 raw deployments)
- DeFi Llama TVL: $11,346,885.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Angstrom is a decentralized exchange protocol operating across Ethereum and Base. It provides MEV-aware trading infrastructure with governance controls and L2-specific hook factories.

### Architecture

The L1 family provides governance and core DEX logic, while L2 instances leverage a factory for deployment and MEV tax features. The AngstromInspector likely serves both layers for trade analysis.

## Audit Coverage Summary

- Verified implementations audited: 1/13 (7.7%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 14
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: 7.7% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 1 | 7.7% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Angstrom | unknown | ethereum | [`0x000000...edfad4`](./contracts/ethereum-1/0x0000000aa232009084bd71a5797d089aa4edfad4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AngstromAdapter | adapter | ethereum | [`0xb535ae...4efbf8`](./contracts/ethereum-1/0xb535aeb27335b91e1b5bccbd64888ba7574efbf8/) | ⚠️ Unaudited |
| AngstromInspector | unknown | ethereum | [`0xd262c2...03b6c3`](./contracts/ethereum-1/0xd262c224402e9a7f5e8ad1621be1bb1f3203b6c3/) | ⚠️ Unaudited |
| AngstromL2 | unknown | base | 2 deployments: base [`0x7fa49d...09e5cf`](./contracts/base-8453/0x7fa49d29481b6d168505ccde26635e204c09e5cf/); base `0xcd256a...1de5cf` | ⚠️ Unaudited |
| AngstromL2Factory | registry | base | [`0x000000...69cd05`](./contracts/base-8453/0x0000000000fd3b85c30f942e8d878e858e69cd05/) | ⚠️ Unaudited |
| AngstromVaultFactory | registry | ethereum | [`0x6582c7...0c169c`](./contracts/ethereum-1/0x6582c770fc4167aa807c3846c73e6006e90c169c/) | ⚠️ Unaudited |
| ControllerV1 | governance | ethereum | [`0x174648...315fd4`](./contracts/ethereum-1/0x1746484ea5e11c75e009252c102c8c33e0315fd4/) | ⚠️ Unaudited |
| EventEmitter | unknown | ethereum | [`0xb3df86...8a00df`](./contracts/ethereum-1/0xb3df869572ac94bb1acf5e9ecbfae3afee8a00df/) | ⚠️ Unaudited |
| PerpsOracleAttested | operational_periphery | ethereum | [`0x5d8555...a65c0b`](./contracts/ethereum-1/0x5d8555f8c710798274a8c655b9a26a3465a65c0b/) | ⚠️ Unaudited |
| PriceOracle | operational_periphery | ethereum | [`0x4cf26a...74b89d`](./contracts/ethereum-1/0x4cf26a7e680d5d86232f985b91c6cb9e0774b89d/) | ⚠️ Unaudited |
| Swapper | adapter | ethereum | [`0x814e3b...ebf8cc`](./contracts/ethereum-1/0x814e3b8dfdc2376b59a5ab70e8784dcb3bebf8cc/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0x60d41d...526c01`](./contracts/ethereum-1/0x60d41d9708bbefd29000d1486c6406ef23526c01/) | ⚠️ Unaudited |
| VaultExtension | adapter | ethereum | [`0x06d9f5...e06c79`](./contracts/ethereum-1/0x06d9f5e807eeca914482bbd8ed3f40c55ce06c79/) | ⚠️ Unaudited |

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
| [VIEW REPORT](https://cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8?utm_source=x&utm_medium=social&utm_campaign=july) | Spearbit | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [VIEW REPORT](https://cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940) | Spearbit | Contest | 2024-11 | aging | Direct | contract_name | 1 | high |
| [VIEW REPORT](https://cantina.xyz/portfolio/c2fe4e46-66a3-416e-ab26-40dd4b437ff6) | Spearbit | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb535ae...4efbf8`](./contracts/ethereum-1/0xb535aeb27335b91e1b5bccbd64888ba7574efbf8/) | AngstromAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd262c2...03b6c3`](./contracts/ethereum-1/0xd262c224402e9a7f5e8ad1621be1bb1f3203b6c3/) | AngstromInspector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7fa49d...09e5cf`](./contracts/base-8453/0x7fa49d29481b6d168505ccde26635e204c09e5cf/) | AngstromL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x000000...69cd05`](./contracts/base-8453/0x0000000000fd3b85c30f942e8d878e858e69cd05/) | AngstromL2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6582c7...0c169c`](./contracts/ethereum-1/0x6582c770fc4167aa807c3846c73e6006e90c169c/) | AngstromVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x174648...315fd4`](./contracts/ethereum-1/0x1746484ea5e11c75e009252c102c8c33e0315fd4/) | ControllerV1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3df86...8a00df`](./contracts/ethereum-1/0xb3df869572ac94bb1acf5e9ecbfae3afee8a00df/) | EventEmitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x814e3b...ebf8cc`](./contracts/ethereum-1/0x814e3b8dfdc2376b59a5ab70e8784dcb3bebf8cc/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06d9f5...e06c79`](./contracts/ethereum-1/0x06d9f5e807eeca914482bbd8ed3f40c55ce06c79/) | VaultExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2046] VIEW REPORT
- [2048] VIEW REPORT

Fork inheritance lineage and inherited audits are included when available.
