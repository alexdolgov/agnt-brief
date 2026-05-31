# Agentic Audit Brief: Veno Finance

## Project Overview

- Project: Veno Finance (`veno-finance`)
- Website: [https://veno.finance/](https://veno.finance/)
- Lifecycle: active (Tier 0, 72.5% below peak)
- Generated: 2026-05-31T11:31:37.860Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: cronos, ethereum, zksync-era
- Contract surface: 49 unique implementations (56 raw deployments)
- DeFi Llama TVL: $42,842,322.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Veno Finance is a liquid staking protocol that allows users to stake assets like CRO and ETH to receive yield-bearing liquid tokens (e.g., ZkCro, YbEth, YBUSD). These tokens can be used across DeFi while earning staking rewards.

### Architecture

The Liquid Staking Tokens family uses ERC1967Proxy contracts to enable upgradeable token implementations. The Cronos Mainnet contract appears separate and may represent an earlier or standalone deployment.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 40
- Unique implementations: 49
- Raw deployments: 56
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BridgeMiddleware | operational_periphery | ethereum | 2 deployments: ethereum [`0x248c73...a0b01e`](./contracts/ethereum-1/0x248c731b155af4cae198af705fb803f087a0b01e/); ethereum `0x3766eb...3c356d` | ⚠️ Unaudited |
| EthereumDeposit | unknown | ethereum | [`0xe8dd48...32d2ac`](./contracts/ethereum-1/0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac/) | ⚠️ Unaudited |
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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x248c73...a0b01e`](./contracts/ethereum-1/0x248c731b155af4cae198af705fb803f087a0b01e/) | BridgeMiddleware | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe8dd48...32d2ac`](./contracts/ethereum-1/0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac/) | EthereumDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd91629...bdf73f`](./contracts/ethereum-1/0xd91629518a1ec964cfce27c2a939f689dcbdf73f/) | YbEthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43df9d...86d2c5`](./contracts/ethereum-1/0x43df9d854d3fcb882847b9a638cabd06fe86d2c5/) | YbEthNft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd501a4...32b7ce`](./contracts/ethereum-1/0xd501a4d2141799f3228c40af972df622c632b7ce/) | YBUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17daca...d014f8`](./contracts/ethereum-1/0x17dacad8aa962963830136422e2eaa8d27d014f8/) | YBUSDBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe69a53...ab4e12`](./contracts/ethereum-1/0xe69a535730858fd8dc386b448972a9f801ab4e12/) | ZkCroMintAndBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
