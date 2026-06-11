# Agentic Audit Brief: Unichain Bridge

## Project Overview

- Project: Unichain Bridge (`unichain-bridge`)
- Website: [https://www.unichain.org](https://www.unichain.org)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-11T03:49:52.820Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-7b75
- Chains: ethereum
- Contract surface: 15 unique implementations (30 raw deployments)
- DeFi Llama TVL: $2,752,550.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Unichain Bridge is the canonical bridge for the Unichain network, enabling users to transfer ETH and ERC-20 tokens between Ethereum and Unichain. It uses the OP Stack's standard bridge architecture with a portal, cross-domain messenger, and dispute game factory for secure message passing and fraud proofs.

### Architecture

The bridge family shares infrastructure through the OP Stack's modular design: the OptimismPortal2 coordinates deposits and withdrawals, relying on the L1CrossDomainMessenger for message passing and the L1StandardBridge for token transfers. Supporting contracts like SystemConfig, DisputeGameFactory, and AnchorStateRegistry provide configuration, fraud proof handling, and state anchoring, all working together to secure the bridge.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 30
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

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressManager | governance | ethereum | 3 deployments: ethereum [`0x7e2e1f...b8def6`](./contracts/ethereum-1/0x7e2e1fe92d67f0199708056a22c34d1331b8def6/); ethereum `0x8098f6...63d575`; ethereum `0xc9fd0f...9fce07` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | 2 deployments: ethereum [`0x318a64...38643b`](./contracts/ethereum-1/0x318a642db9e24a85318b8bf18efd5287ba38643b/); ethereum `0x401522...d76e48` | ⚠️ Unaudited |
| Challenger1of2 | unknown | ethereum | [`0x35d539...4efcd1`](./contracts/ethereum-1/0x35d539d303b1baf30ec59b81044fad70bc4efcd1/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | 4 deployments: ethereum [`0x4755de...75826f`](./contracts/ethereum-1/0x4755de7b3ea590d76eb15e1217456e948075826f/); ethereum `0x7d8ea6...499d70`; ethereum `0x92ac36...04230d`; ethereum `0xc49b2d...9a9da2` | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | 2 deployments: ethereum [`0x2f12d6...51dfe4`](./contracts/ethereum-1/0x2f12d621a16e2d3285929c9996f478508951dfe4/); ethereum `0x86a380...989be9` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | [`0x9a3d64...6e98a6`](./contracts/ethereum-1/0x9a3d64e386c18cb1d6d5179a9596a4b5736e98a6/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x308017...68f339`](./contracts/ethereum-1/0x3080177e8503b63aa97f15caba69099d7668f339/); ethereum `0xd04d0d...6849cf` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | 2 deployments: ethereum [`0x81014f...35feea`](./contracts/ethereum-1/0x81014f44b0a345033bb2b3b21c7a1a308b35feea/); ethereum `0x9e7569...b98eb5` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | 2 deployments: ethereum [`0x98742e...a5d286`](./contracts/ethereum-1/0x98742ec6718b49c32aee6daccf5245980fa5d286/); ethereum `0xa2b597...d5edad` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | 2 deployments: ethereum [`0x0bd48f...56a7a2`](./contracts/ethereum-1/0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2/); ethereum `0xd3a31c...2b3963` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | 2 deployments: ethereum [`0xa35f3d...685772`](./contracts/ethereum-1/0xa35f3d6b5c1ab1de36fe830fc4288fd585685772/); ethereum `0xb2872e...669e8d` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | [`0x86b30e...1d9adf`](./contracts/ethereum-1/0x86b30e3263250c9f947cdb711a2c16cda81d9adf/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x3b73fa...e2f2a4`](./contracts/ethereum-1/0x3b73fa8d82f511a3cae17b5a26e4e1a2d5e2f2a4/); ethereum `0x48ff88...80fa9d`; ethereum `0xb1b8a6...8ab3b9` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | [`0x374454...3f2124`](./contracts/ethereum-1/0x374454d6c756c8b594ff9aa799ad8dbfd93f2124/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | 2 deployments: ethereum [`0x1f5ef8...f2d6c1`](./contracts/ethereum-1/0x1f5ef8626a313a32d314664f6d42431f92f2d6c1/); ethereum `0xc40739...f1bda6` | ⚠️ Unaudited |

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
| ethereum | [`0x7e2e1f...b8def6`](./contracts/ethereum-1/0x7e2e1fe92d67f0199708056a22c34d1331b8def6/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x318a64...38643b`](./contracts/ethereum-1/0x318a642db9e24a85318b8bf18efd5287ba38643b/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35d539...4efcd1`](./contracts/ethereum-1/0x35d539d303b1baf30ec59b81044fad70bc4efcd1/) | Challenger1of2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4755de...75826f`](./contracts/ethereum-1/0x4755de7b3ea590d76eb15e1217456e948075826f/) | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f12d6...51dfe4`](./contracts/ethereum-1/0x2f12d621a16e2d3285929c9996f478508951dfe4/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a3d64...6e98a6`](./contracts/ethereum-1/0x9a3d64e386c18cb1d6d5179a9596a4b5736e98a6/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x308017...68f339`](./contracts/ethereum-1/0x3080177e8503b63aa97f15caba69099d7668f339/) | L1ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81014f...35feea`](./contracts/ethereum-1/0x81014f44b0a345033bb2b3b21c7a1a308b35feea/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98742e...a5d286`](./contracts/ethereum-1/0x98742ec6718b49c32aee6daccf5245980fa5d286/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bd48f...56a7a2`](./contracts/ethereum-1/0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa35f3d...685772`](./contracts/ethereum-1/0xa35f3d6b5c1ab1de36fe830fc4288fd585685772/) | PermissionedDisputeGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86b30e...1d9adf`](./contracts/ethereum-1/0x86b30e3263250c9f947cdb711a2c16cda81d9adf/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x374454...3f2124`](./contracts/ethereum-1/0x374454d6c756c8b594ff9aa799ad8dbfd93f2124/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f5ef8...f2d6c1`](./contracts/ethereum-1/0x1f5ef8626a313a32d314664f6d42431f92f2d6c1/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
