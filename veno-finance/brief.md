# Agentic Audit Brief: Veno Finance

## Project Overview

- Project: Veno Finance (`veno-finance`)
- Website: [https://veno.finance/](https://veno.finance/)
- Lifecycle: active (Tier 0, 72.5% below peak)
- Generated: 2026-06-12T10:45:00.815Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-b7d4
- Chains: cronos, ethereum, zksync-era
- Contract surface: 51 unique implementations (58 raw deployments)
- DeFi Llama TVL: $37,489,443.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Veno Finance is an active liquid staking and DeFi protocol whose current public liquid-staking-token surface includes LCRO, LATOM, LETH and LTIA. VNO should be described separately as the protocol token. ZkCro, YbEth and YBUSD should not be presented as the current main liquid-staking-token examples; if retained, they should be labeled as separate bridge or yield-bearing products. Cronos should be treated as a core current product surface for Veno rather than as a legacy or isolated component.

### Architecture

The Liquid Staking Tokens family uses ERC1967Proxy contracts to enable upgradeable token implementations. The Cronos Mainnet contract appears separate and may represent an earlier or standalone deployment.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 40
- Unique implementations: 51
- Raw deployments: 58
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BridgeMiddleware | operational_periphery | ethereum | 2 deployments: ethereum [`0x248c73...a0b01e`](./contracts/ethereum-1/0x248c731b155af4cae198af705fb803f087a0b01e/); ethereum `0x3766eb...3c356d` | ⚠️ Unaudited |
| EthereumDeposit | unknown | ethereum | [`0xe8dd48...32d2ac`](./contracts/ethereum-1/0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac/) | ⚠️ Unaudited |
| L1Nullifier | unknown | ethereum | [`0xd7f9f5...8cb2cb`](./contracts/ethereum-1/0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb/) | ⚠️ Unaudited |
| ValidatorTimelock | governance | ethereum | [`0x5d8ba1...bad06e`](./contracts/ethereum-1/0x5d8ba173dc6c3c90c8f7c04c9288bef5fdbad06e/) | ⚠️ Unaudited |
| YbEth | unknown | ethereum | 2 deployments: ethereum [`0x76bf2d...dfc351`](./contracts/ethereum-1/0x76bf2d1e6dfda645c0c17440b17eccc181dfc351/); ethereum `0xc0c23f...52d6a2` | ⚠️ Unaudited |
| YbEthBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0xd91629...bdf73f`](./contracts/ethereum-1/0xd91629518a1ec964cfce27c2a939f689dcbdf73f/); ethereum `0xded4dd...50643d` | ⚠️ Unaudited |
| YbEthNft | token | ethereum | 2 deployments: ethereum [`0x43df9d...86d2c5`](./contracts/ethereum-1/0x43df9d854d3fcb882847b9a638cabd06fe86d2c5/); ethereum `0x8f6b05...90762d` | ⚠️ Unaudited |
| YBUSD | unknown | ethereum | 2 deployments: ethereum [`0xd501a4...32b7ce`](./contracts/ethereum-1/0xd501a4d2141799f3228c40af972df622c632b7ce/); ethereum `0xfa5907...0f594a` | ⚠️ Unaudited |
| YBUSDBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x17daca...d014f8`](./contracts/ethereum-1/0x17dacad8aa962963830136422e2eaa8d27d014f8/); ethereum `0x42696a...7b0dff` | ⚠️ Unaudited |
| ZkCro | unknown | ethereum | 2 deployments: ethereum [`0x28ff2e...1e44e2`](./contracts/ethereum-1/0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2/); ethereum `0x34b35b...4616a5` | ⚠️ Unaudited |
| ZkCroMintAndBridge | operational_periphery | ethereum | [`0xe69a53...ab4e12`](./contracts/ethereum-1/0xe69a535730858fd8dc386b448972a9f801ab4e12/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (40)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x3fa18f...d0daa2` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x0bbe7e...2af25d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x10a1d7...e5d191` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x186a96...05c7c1` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x211793...8cca07` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x276e28...0b6995` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x4c86f7...130b72` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x502473...2f27f6` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x56fefe...1de156` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x579206...a84ac3` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x655c5e...eddf55` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x6b5e1f...139419` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x85ca39...4ee8a2` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x89ccc2...f01587` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x8f1010...1413fa` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x8f4bfe...778565` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x9fae23...7c08a6` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xa31259...8b2f69` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xa90ee4...8d1666` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xac974e...85750d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xac9e47...e52d70` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xb15533...633965` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xb4be51...d6ca95` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xbd6909...e0aee5` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xc07a8a...439c58` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xd73863...bc456c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xdb7d0a...4404e9` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xe4fa42...15c6f8` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xf67dca...9002de` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xf7a5c2...c5049d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x4e313f...b8cd24` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x64b774...2c81dc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xa512db...8ff15d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xa55fa3...e1413d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xbddd1a...e20aca` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xd70904...ed626b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xe75a17...785e63` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xe7895e...2e7f9d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xf8b19e...e903ab` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xfea419...404936` | ❓ Unverified |

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
| needs_review | 51 |

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
