# Agentic Audit Brief: Morph Bridge

## Project Overview

- Project: Morph Bridge (`morph-bridge`)
- Website: [https://bridge.morphl2.io/](https://bridge.morphl2.io/)
- Lifecycle: active (Tier 0, 64% below peak)
- Generated: 2026-06-17T07:00:53.461Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $13,435,866.81
- On-chain TVL (included contracts): $2,846,267.25
- TVL by chain: Ethereum $2,846,267.25

## Project Description

Morph Bridge enables cross-chain messaging and asset transfers between Ethereum and the Morph Layer 2 network, using a secure messenger contract to relay messages and facilitate bridging operations.

### Architecture

The single product family relies on a proxy-upgradable L1CrossDomainMessenger contract, which serves as the core bridge component; no additional families or shared infrastructure are present.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 10/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,846,267.25
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L1StandardERC20Gateway | token | ethereum | unit-32027 | [`0x44c28f...ab2bd8`](./contracts/ethereum-1/0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8/) | ⚠️ Unaudited |
| L1CustomERC20Gateway | token | ethereum | unit-32034 | [`0xa534ba...b52ef1`](./contracts/ethereum-1/0xa534badd09b4c62b7b1c32c41df310aa17b52ef1/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | unit-32036 | [`0xdc7136...623304`](./contracts/ethereum-1/0xdc71366effa760804dcfc3edf87fa2a6f1623304/) | ⚠️ Unaudited |
| L1ETHGateway | unknown | ethereum | unit-32024 | [`0x1c1ffb...8ade68`](./contracts/ethereum-1/0x1c1ffb5828c3a48b54e8910f1c75256a498ade68/) | ⚠️ Unaudited |
| L1GatewayRouter | adapter | ethereum | unit-32030 | [`0x749775...8f8a8a`](./contracts/ethereum-1/0x7497756ada7e656ae9f00781af49fc0fd08f8a8a/) | ⚠️ Unaudited |
| L1Staking | unknown | ethereum | unit-32023 | [`0x0dc417...0543f7`](./contracts/ethereum-1/0x0dc417f8af88388737c5053ff73f345f080543f7/) | ⚠️ Unaudited |
| L1USDCGateway | unknown | ethereum | unit-32025 | [`0x2c8314...e1b289`](./contracts/ethereum-1/0x2c8314f5aada5d7a9d32eefebfc43accabe1b289/) | ⚠️ Unaudited |
| L1WETHGateway | token | ethereum | unit-32032 | [`0x788890...01877f`](./contracts/ethereum-1/0x788890ba6f105cca373c4ff01055cd34de01877f/) | ⚠️ Unaudited |
| Rollup | unknown | ethereum | unit-32031 | [`0x759894...3cef60`](./contracts/ethereum-1/0x759894ced0e6af42c26668076ffa84d02e3cef60/) | ⚠️ Unaudited |
| TimelockControllerUpgradeable | governance | ethereum | unit-32028 | [`0x542675...55b530`](./contracts/ethereum-1/0x542675e90e269f20ecbb9e0095d4751ac155b530/) | ⚠️ Unaudited |
| ZkEvmVerifierV1 | unknown | ethereum | n/a | [`0xd9f244...3ad692`](./contracts/ethereum-1/0xd9f24400816c4cc1a3cbb9b851c9b0bab63ad692/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x542675...55b530`](./contracts/ethereum-1/0x542675e90e269f20ecbb9e0095d4751ac155b530/) | TimelockControllerUpgradeable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9f244...3ad692`](./contracts/ethereum-1/0xd9f24400816c4cc1a3cbb9b851c9b0bab63ad692/) | ZkEvmVerifierV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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
