# Agentic Audit Brief: Veno Finance

## Project Overview

- Project: Veno Finance (`veno-finance`)
- Website: [https://veno.finance/](https://veno.finance/)
- Lifecycle: active (Tier 0, 72.5% below peak)
- Generated: 2026-06-17T07:00:46.636Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: cronos, ethereum, zksync-era
- Contract surface: 44 unique implementations (44 raw deployments)
- DeFi Llama TVL: $37,489,443.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Veno Finance is an active liquid staking and DeFi protocol whose current public liquid-staking-token surface includes LCRO, LATOM, LETH and LTIA. VNO should be described separately as the protocol token. ZkCro, YbEth and YBUSD should not be presented as the current main liquid-staking-token examples; if retained, they should be labeled as separate bridge or yield-bearing products. Cronos should be treated as a core current product surface for Veno rather than as a legacy or isolated component.

### Architecture

The Liquid Staking Tokens family uses ERC1967Proxy contracts to enable upgradeable token implementations. The Cronos Mainnet contract appears separate and may represent an earlier or standalone deployment.

## Contract Surface Quality

- Indexed contracts: 58; live-surface contracts included: 44 (10 live, 34 unknown).
- Excluded by liveness: 6 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: none
- Dependencies extracted: 14; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 44
- Raw deployments: 44
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeMiddleware | operational_periphery | ethereum | n/a | [`0x248c73...a0b01e`](./contracts/ethereum-1/0x248c731b155af4cae198af705fb803f087a0b01e/) | ⚠️ Unaudited |
| L1Nullifier | unknown | ethereum | unit-28148 | [`0xd7f9f5...8cb2cb`](./contracts/ethereum-1/0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb/) | ⚠️ Unaudited |
| YbEthBridge | operational_periphery | ethereum | n/a | [`0xd91629...bdf73f`](./contracts/ethereum-1/0xd91629518a1ec964cfce27c2a939f689dcbdf73f/) | ⚠️ Unaudited |
| YBUSDBridge | operational_periphery | ethereum | n/a | [`0x42696a...7b0dff`](./contracts/ethereum-1/0x42696a64a238e5c661b1bad2530198d54e7b0dff/) | ⚠️ Unaudited |
| ZkCroMintAndBridge | operational_periphery | ethereum | n/a | [`0xe69a53...ab4e12`](./contracts/ethereum-1/0xe69a535730858fd8dc386b448972a9f801ab4e12/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x0bbe7e...2af25d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x10a1d7...e5d191` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x186a96...05c7c1` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x211793...8cca07` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x276e28...0b6995` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x4c86f7...130b72` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x502473...2f27f6` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x56fefe...1de156` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x579206...a84ac3` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x655c5e...eddf55` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x6b5e1f...139419` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x85ca39...4ee8a2` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x89ccc2...f01587` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x8f1010...1413fa` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x8f4bfe...778565` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x9fae23...7c08a6` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xa31259...8b2f69` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xa90ee4...8d1666` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xac974e...85750d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xac9e47...e52d70` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xb15533...633965` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xb4be51...d6ca95` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xbd6909...e0aee5` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xc07a8a...439c58` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xd73863...bc456c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xdb7d0a...4404e9` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe4fa42...15c6f8` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xf67dca...9002de` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xf7a5c2...c5049d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4e313f...b8cd24` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x64b774...2c81dc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa512db...8ff15d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa55fa3...e1413d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbddd1a...e20aca` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xd70904...ed626b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe75a17...785e63` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe7895e...2e7f9d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf8b19e...e903ab` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xfea419...404936` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FkW555WIVoUbzUslDZTlZ%2FSlowMist%20Audit%20Report%20-%20Veno-Liquid%20Staking%20Contracts%20Core.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FgvneLOUCCjnAQYcHhFj7%2FSlowMist%20Audit%20Report%20-%20Veno%20-%20Liquid%20Staking%20Contracts%20Tokenomic.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FtzPxX5tBafm0DUCRrLqa%2FSlowMist%20Audit%20Report%20-%20Veno%20Liquid%20Staking%20Strategy%20Vault.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 44 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11713] Rendered PDF capture
- [11714] Rendered PDF capture
- [11715] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
