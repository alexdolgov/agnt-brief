# Agentic Audit Brief: Morph Bridge

## Project Overview

- Project: Morph Bridge (`morph-bridge`)
- Website: [https://bridge.morphl2.io/](https://bridge.morphl2.io/)
- Lifecycle: active (Tier 0, 64% below peak)
- Generated: 2026-06-12T19:26:52.460Z
- Pipeline run: v2-pipeline-2026-06-12-546062-9988
- Chains: ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $13,435,866.81
- On-chain TVL (included contracts): $2,846,267.25
- TVL by chain: Ethereum $2,846,267.25

## Project Description

Morph Bridge enables cross-chain messaging and asset transfers between Ethereum and the Morph Layer 2 network, using a secure messenger contract to relay messages and facilitate bridging operations.

### Architecture

The single product family relies on a proxy-upgradable L1CrossDomainMessenger contract, which serves as the core bridge component; no additional families or shared infrastructure are present.

## Audit Coverage Summary

- Verified implementations audited: 0/17 (0.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1StandardERC20Gateway | token | ethereum | [`0x44c28f...ab2bd8`](./contracts/ethereum-1/0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8/) | ⚠️ Unaudited |
| L1CustomERC20Gateway | token | ethereum | [`0xa534ba...b52ef1`](./contracts/ethereum-1/0xa534badd09b4c62b7b1c32c41df310aa17b52ef1/) | ⚠️ Unaudited |
| EnforcedTxGateway | unknown | ethereum | [`0xc5fa3b...d8abb7`](./contracts/ethereum-1/0xc5fa3b8968c7fabeea2b530a20b88d0c2ed8abb7/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | [`0xdc7136...623304`](./contracts/ethereum-1/0xdc71366effa760804dcfc3edf87fa2a6f1623304/) | ⚠️ Unaudited |
| L1ERC1155Gateway | token | ethereum | [`0x7c9a3d...7e9765`](./contracts/ethereum-1/0x7c9a3d9531692d057d496d04938bdb7d367e9765/) | ⚠️ Unaudited |
| L1ERC721Gateway | token | ethereum | [`0x5ae782...5d77c4`](./contracts/ethereum-1/0x5ae782c23a303c0d70ae697a0aee9eae9a5d77c4/) | ⚠️ Unaudited |
| L1ETHGateway | unknown | ethereum | [`0x1c1ffb...8ade68`](./contracts/ethereum-1/0x1c1ffb5828c3a48b54e8910f1c75256a498ade68/) | ⚠️ Unaudited |
| L1GatewayRouter | adapter | ethereum | [`0x749775...8f8a8a`](./contracts/ethereum-1/0x7497756ada7e656ae9f00781af49fc0fd08f8a8a/) | ⚠️ Unaudited |
| L1MessageQueueWithGasPriceOracle | unknown | ethereum | [`0x3931ad...6cc1ef`](./contracts/ethereum-1/0x3931ade842f5bb8763164bdd81e5361dce6cc1ef/) | ⚠️ Unaudited |
| L1Staking | unknown | ethereum | [`0x0dc417...0543f7`](./contracts/ethereum-1/0x0dc417f8af88388737c5053ff73f345f080543f7/) | ⚠️ Unaudited |
| L1USDCGateway | unknown | ethereum | [`0x2c8314...e1b289`](./contracts/ethereum-1/0x2c8314f5aada5d7a9d32eefebfc43accabe1b289/) | ⚠️ Unaudited |
| L1WETHGateway | token | ethereum | [`0x788890...01877f`](./contracts/ethereum-1/0x788890ba6f105cca373c4ff01055cd34de01877f/) | ⚠️ Unaudited |
| MultipleVersionRollupVerifier | unknown | ethereum | [`0x5d1584...220ec1`](./contracts/ethereum-1/0x5d1584c27b4ad233283c6da1ca1b825d6f220ec1/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x311106...7f16a0`](./contracts/ethereum-1/0x31110622d6ca24c9ff307d6ae1715f16e47f16a0/) | ⚠️ Unaudited |
| Rollup | unknown | ethereum | [`0x759894...3cef60`](./contracts/ethereum-1/0x759894ced0e6af42c26668076ffa84d02e3cef60/) | ⚠️ Unaudited |
| TimelockControllerUpgradeable | governance | ethereum | [`0x542675...55b530`](./contracts/ethereum-1/0x542675e90e269f20ecbb9e0095d4751ac155b530/) | ⚠️ Unaudited |
| ZkEvmVerifierV1 | unknown | ethereum | [`0xd9f244...3ad692`](./contracts/ethereum-1/0xd9f24400816c4cc1a3cbb9b851c9b0bab63ad692/) | ⚠️ Unaudited |

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
| ethereum | [`0x5d1584...220ec1`](./contracts/ethereum-1/0x5d1584c27b4ad233283c6da1ca1b825d6f220ec1/) | MultipleVersionRollupVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x542675...55b530`](./contracts/ethereum-1/0x542675e90e269f20ecbb9e0095d4751ac155b530/) | TimelockControllerUpgradeable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9f244...3ad692`](./contracts/ethereum-1/0xd9f24400816c4cc1a3cbb9b851c9b0bab63ad692/) | ZkEvmVerifierV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
