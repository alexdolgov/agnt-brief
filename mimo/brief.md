# Agentic Audit Brief: Mimo

## Project Overview

- Project: Mimo (`mimo`)
- Website: [https://mimo.exchange](https://mimo.exchange)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.087Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, hyperliquid, polygon, sonic
- Contract surface: 26 unique implementations (26 raw deployments)
- DeFi Llama TVL: $431,143.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 26 project-authored contract(s) across 4 chain(s); 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 12 common project-authored base contract(s) (oft, oftcore, oapp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (26 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/24 (0.0%)
- Deployed-live implementations: 26 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/26
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeableToken | unknown | polygon | n/a | [`0x1b03d0...583342`](./contracts/polygon-137/0x1b03d006a47df53b440b9a94af88f38f63583342/) | ⚠️ Unaudited |
| BridgeableTokenP | unknown | base | n/a | [`0x4dde0e...8531fc`](./contracts/base-8453/0x4dde0e308cfb60515218c6ad2df1134fc48531fc/) | ⚠️ Unaudited |
| DiamondCut | unknown | base | n/a | [`0x154524...9295b1`](./contracts/base-8453/0x15452454a9735d68df430879b2941316a09295b1/) | ⚠️ Unaudited |
| DiamondInitializer | unknown | hyperliquid | n/a | [`0x056566...cc2c3f`](./contracts/hyperliquid-999/0x056566077da53b0a349af9b9bdbfa2658ccc2c3f/) | ⚠️ Unaudited |
| DiamondLoupe | unknown | base | n/a | [`0x24cef2...13d3aa`](./contracts/base-8453/0x24cef236056834f38e9247a1fff6681dd313d3aa/) | ⚠️ Unaudited |
| DiamondProxy | unknown | hyperliquid | n/a | [`0x125030...0f1707`](./contracts/hyperliquid-999/0x1250304f66404cd153fa39388ddcdaec7e0f1707/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | [`0x08417c...c3f182`](./contracts/sonic-146/0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | [`0x08417c...c3f182`](./contracts/base-8453/0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182/) | ⚠️ Unaudited |
| GenericHarvester | unknown | sonic | n/a | [`0x120805...06a9d2`](./contracts/sonic-146/0x120805265fa944834dc6e930de2995768806a9d2/) | ⚠️ Unaudited |
| Getters | unknown | hyperliquid | n/a | [`0x120805...06a9d2`](./contracts/hyperliquid-999/0x120805265fa944834dc6e930de2995768806a9d2/) | ⚠️ Unaudited |
| MainFeeDistributor | unknown | base | n/a | [`0x5d49c8...59b7e3`](./contracts/base-8453/0x5d49c8b8cc691533742602d6ab3127904959b7e3/) | ⚠️ Unaudited |
| MIMOVaultActions | unknown | polygon | n/a | [`0x1d5825...f4c595`](./contracts/polygon-137/0x1d58251e035654fdd4b8ca53c0bb06fb4af4c595/) | ⚠️ Unaudited |
| ParallelAccessManager | unknown | base | n/a | [`0x0e4e7c...debf46`](./contracts/base-8453/0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46/) | ⚠️ Unaudited |
| PeripheralPRL | unknown | sonic | n/a | [`0xfd28f1...85998e`](./contracts/sonic-146/0xfd28f108e95f4d41daae9dbfff707d677985998e/) | ⚠️ Unaudited |
| Redeemer | unknown | sonic | n/a | [`0xe5c82b...032cc8`](./contracts/sonic-146/0xe5c82b4f09fd4d079757e156db44afd2c8032cc8/) | ⚠️ Unaudited |
| RewardHandler | unknown | base | n/a | [`0x2b6c7c...6e4dec`](./contracts/base-8453/0x2b6c7c275404e93a14a05b549af292231d6e4dec/) | ⚠️ Unaudited |
| RewardMerkleDistributor | unknown | base | n/a | [`0x13e867...41a96b`](./contracts/base-8453/0x13e867f55043302925971e88ab8fab704241a96b/) | ⚠️ Unaudited |
| SavingsNameable | unknown | base | n/a | [`0x472ed5...e3e7e7`](./contracts/base-8453/0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7/) | ⚠️ Unaudited |
| SettersGovernor | unknown | hyperliquid | n/a | [`0x472ed5...e3e7e7`](./contracts/hyperliquid-999/0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7/) | ⚠️ Unaudited |
| SettersGuardian | unknown | hyperliquid | n/a | [`0xae2fb6...403e2e`](./contracts/hyperliquid-999/0xae2fb66d1989ec1684ff095b75d151ae8e403e2e/) | ⚠️ Unaudited |
| SideChainFeeCollector | unknown | hyperliquid | n/a | [`0x2f77c2...908574`](./contracts/hyperliquid-999/0x2f77c2fe829ecc1cc4fe891ca05d121971908574/) | ⚠️ Unaudited |
| sPRL1 | unknown | base | n/a | [`0x01fa35...922e48`](./contracts/base-8453/0x01fa35fde0e813e2d6687660a74a313d8d922e48/) | ⚠️ Unaudited |
| sPRL2V2 | unknown | base | n/a | [`0xb22f5e...a00e24`](./contracts/base-8453/0xb22f5edbc62adcc093307025b8fdf75a0aa00e24/) | ⚠️ Unaudited |
| Swapper | unknown | hyperliquid | n/a | [`0x1b2741...1b5179`](./contracts/hyperliquid-999/0x1b2741db9f46a0411852e4cc28ddc476851b5179/) | ⚠️ Unaudited |
| VaultsCore | unknown | polygon | n/a | [`0x0a9202...1b400f`](./contracts/polygon-137/0x0a9202c6417a7b6b166e7f7fe2719b09261b400f/) | ⚠️ Unaudited |
| VaultsCoreState | unknown | polygon | n/a | [`0x02c69c...6f25d8`](./contracts/polygon-137/0x02c69c480ab4a35f2c7117e2c17c904cd76f25d8/) | ⚠️ Unaudited |

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
| polygon | [`0x1b03d0...583342`](./contracts/polygon-137/0x1b03d006a47df53b440b9a94af88f38f63583342/) | BridgeableToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4dde0e...8531fc`](./contracts/base-8453/0x4dde0e308cfb60515218c6ad2df1134fc48531fc/) | BridgeableTokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x154524...9295b1`](./contracts/base-8453/0x15452454a9735d68df430879b2941316a09295b1/) | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x056566...cc2c3f`](./contracts/hyperliquid-999/0x056566077da53b0a349af9b9bdbfa2658ccc2c3f/) | DiamondInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x24cef2...13d3aa`](./contracts/base-8453/0x24cef236056834f38e9247a1fff6681dd313d3aa/) | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x125030...0f1707`](./contracts/hyperliquid-999/0x1250304f66404cd153fa39388ddcdaec7e0f1707/) | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x120805...06a9d2`](./contracts/sonic-146/0x120805265fa944834dc6e930de2995768806a9d2/) | GenericHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x120805...06a9d2`](./contracts/hyperliquid-999/0x120805265fa944834dc6e930de2995768806a9d2/) | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5d49c8...59b7e3`](./contracts/base-8453/0x5d49c8b8cc691533742602d6ab3127904959b7e3/) | MainFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1d5825...f4c595`](./contracts/polygon-137/0x1d58251e035654fdd4b8ca53c0bb06fb4af4c595/) | MIMOVaultActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e4e7c...debf46`](./contracts/base-8453/0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46/) | ParallelAccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xfd28f1...85998e`](./contracts/sonic-146/0xfd28f108e95f4d41daae9dbfff707d677985998e/) | PeripheralPRL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe5c82b...032cc8`](./contracts/sonic-146/0xe5c82b4f09fd4d079757e156db44afd2c8032cc8/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b6c7c...6e4dec`](./contracts/base-8453/0x2b6c7c275404e93a14a05b549af292231d6e4dec/) | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13e867...41a96b`](./contracts/base-8453/0x13e867f55043302925971e88ab8fab704241a96b/) | RewardMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x472ed5...e3e7e7`](./contracts/base-8453/0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7/) | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x472ed5...e3e7e7`](./contracts/hyperliquid-999/0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7/) | SettersGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xae2fb6...403e2e`](./contracts/hyperliquid-999/0xae2fb66d1989ec1684ff095b75d151ae8e403e2e/) | SettersGuardian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x2f77c2...908574`](./contracts/hyperliquid-999/0x2f77c2fe829ecc1cc4fe891ca05d121971908574/) | SideChainFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x01fa35...922e48`](./contracts/base-8453/0x01fa35fde0e813e2d6687660a74a313d8d922e48/) | sPRL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb22f5e...a00e24`](./contracts/base-8453/0xb22f5edbc62adcc093307025b8fdf75a0aa00e24/) | sPRL2V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1b2741...1b5179`](./contracts/hyperliquid-999/0x1b2741db9f46a0411852e4cc28ddc476851b5179/) | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a9202...1b400f`](./contracts/polygon-137/0x0a9202c6417a7b6b166e7f7fe2719b09261b400f/) | VaultsCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02c69c...6f25d8`](./contracts/polygon-137/0x02c69c480ab4a35f2c7117e2c17c904cd76f25d8/) | VaultsCoreState | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
