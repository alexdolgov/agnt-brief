# Agentic Audit Brief: Morph Bridge

## Project Overview

- Project: Morph Bridge (`morph-bridge`)
- Website: [https://bridge.morphl2.io/](https://bridge.morphl2.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:36.930Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $12,938,553.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 2 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0xdc71366effa760804dcfc3edf87fa2a6f1623304`](./contracts/ethereum-1/0xdc71366effa760804dcfc3edf87fa2a6f1623304/) | ⚠️ Unaudited |
| L1CustomERC20Gateway | token | ethereum | n/a | [`0xa534badd09b4c62b7b1c32c41df310aa17b52ef1`](./contracts/ethereum-1/0xa534badd09b4c62b7b1c32c41df310aa17b52ef1/) | ⚠️ Unaudited |
| L1ETHGateway | unknown | ethereum | n/a | [`0x1c1ffb5828c3a48b54e8910f1c75256a498ade68`](./contracts/ethereum-1/0x1c1ffb5828c3a48b54e8910f1c75256a498ade68/) | ⚠️ Unaudited |
| L1GatewayRouter | adapter | ethereum | n/a | [`0x7497756ada7e656ae9f00781af49fc0fd08f8a8a`](./contracts/ethereum-1/0x7497756ada7e656ae9f00781af49fc0fd08f8a8a/) | ⚠️ Unaudited |
| L1Staking | unknown | ethereum | n/a | [`0x0dc417f8af88388737c5053ff73f345f080543f7`](./contracts/ethereum-1/0x0dc417f8af88388737c5053ff73f345f080543f7/) | ⚠️ Unaudited |
| L1StandardERC20Gateway | token | ethereum | n/a | [`0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8`](./contracts/ethereum-1/0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8/) | ⚠️ Unaudited |
| L1USDCGateway | unknown | ethereum | n/a | [`0x2c8314f5aada5d7a9d32eefebfc43accabe1b289`](./contracts/ethereum-1/0x2c8314f5aada5d7a9d32eefebfc43accabe1b289/) | ⚠️ Unaudited |
| L1WETHGateway | token | ethereum | n/a | [`0x788890ba6f105cca373c4ff01055cd34de01877f`](./contracts/ethereum-1/0x788890ba6f105cca373c4ff01055cd34de01877f/) | ⚠️ Unaudited |
| Rollup | unknown | ethereum | n/a | [`0x759894ced0e6af42c26668076ffa84d02e3cef60`](./contracts/ethereum-1/0x759894ced0e6af42c26668076ffa84d02e3cef60/) | ⚠️ Unaudited |
| TimelockControllerUpgradeable | governance | ethereum | n/a | [`0x542675e90e269f20ecbb9e0095d4751ac155b530`](./contracts/ethereum-1/0x542675e90e269f20ecbb9e0095d4751ac155b530/) | ⚠️ Unaudited |
| ZkEvmVerifierV1 | periphery | ethereum | n/a | [`0xd9f24400816c4cc1a3cbb9b851c9b0bab63ad692`](./contracts/ethereum-1/0xd9f24400816c4cc1a3cbb9b851c9b0bab63ad692/) | ⚠️ Unaudited |

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
| [Audit_Report.pdf](https://github.com/sherlock-audit/2024-02-telcoin-platform-audit-update-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdc71366effa760804dcfc3edf87fa2a6f1623304`](./contracts/ethereum-1/0xdc71366effa760804dcfc3edf87fa2a6f1623304/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa534badd09b4c62b7b1c32c41df310aa17b52ef1`](./contracts/ethereum-1/0xa534badd09b4c62b7b1c32c41df310aa17b52ef1/) | L1CustomERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c1ffb5828c3a48b54e8910f1c75256a498ade68`](./contracts/ethereum-1/0x1c1ffb5828c3a48b54e8910f1c75256a498ade68/) | L1ETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7497756ada7e656ae9f00781af49fc0fd08f8a8a`](./contracts/ethereum-1/0x7497756ada7e656ae9f00781af49fc0fd08f8a8a/) | L1GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dc417f8af88388737c5053ff73f345f080543f7`](./contracts/ethereum-1/0x0dc417f8af88388737c5053ff73f345f080543f7/) | L1Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8`](./contracts/ethereum-1/0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8/) | L1StandardERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c8314f5aada5d7a9d32eefebfc43accabe1b289`](./contracts/ethereum-1/0x2c8314f5aada5d7a9d32eefebfc43accabe1b289/) | L1USDCGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x788890ba6f105cca373c4ff01055cd34de01877f`](./contracts/ethereum-1/0x788890ba6f105cca373c4ff01055cd34de01877f/) | L1WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x759894ced0e6af42c26668076ffa84d02e3cef60`](./contracts/ethereum-1/0x759894ced0e6af42c26668076ffa84d02e3cef60/) | Rollup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x542675e90e269f20ecbb9e0095d4751ac155b530`](./contracts/ethereum-1/0x542675e90e269f20ecbb9e0095d4751ac155b530/) | TimelockControllerUpgradeable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9f24400816c4cc1a3cbb9b851c9b0bab63ad692`](./contracts/ethereum-1/0xd9f24400816c4cc1a3cbb9b851c9b0bab63ad692/) | ZkEvmVerifierV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20845] Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
