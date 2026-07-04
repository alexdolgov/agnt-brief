# Agentic Audit Brief: Ethervista

## Project Overview

- Project: Ethervista (`ethervista`)
- Website: [https://ethervista.app](https://ethervista.app)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.920Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $457,744.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 15 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 9 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
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

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EtherFunFactory | unknown | ethereum | n/a | [`0x149bd5...1549e6`](./contracts/ethereum-1/0x149bd5c2fc1ea9241e4e90548eb5c8cc3d1549e6/) | ⚠️ Unaudited |
| EtherfunSale | unknown | ethereum | n/a | [`0x759245...d99515`](./contracts/ethereum-1/0x75924504b696f3d29fefd01b2bde7ae21ed99515/) | ⚠️ Unaudited |
| EtherfunSaleDeployer | unknown | ethereum | n/a | [`0x28be3d...573c7b`](./contracts/ethereum-1/0x28be3d3ea9deb58f492c76d2cb4cb4ab3c573c7b/) | ⚠️ Unaudited |
| Ethervista | unknown | ethereum | n/a | [`0x06577f...389899`](./contracts/ethereum-1/0x06577fa758057f343dafe18a45231db075389899/) | ⚠️ Unaudited |
| EtherVistaFactory | unknown | ethereum | n/a | [`0x76f095...ac828a`](./contracts/ethereum-1/0x76f0951a56bf3a9f1c7906f3dbc71e7888ac828a/) | ⚠️ Unaudited |
| EtherVistaRouter | unknown | ethereum | n/a | [`0x07fff0...f3e80b`](./contracts/ethereum-1/0x07fff0025556dac7a1e96fc64abda54ee7f3e80b/) | ⚠️ Unaudited |
| EulerFactory | unknown | ethereum | n/a | [`0xa90134...356f59`](./contracts/ethereum-1/0xa90134a35008c234f0fdb2ede6064ade4f356f59/) | ⚠️ Unaudited |
| HARDLOCK | unknown | ethereum | n/a | [`0xf6b510...8a9c78`](./contracts/ethereum-1/0xf6b510928ab880507246cd6946b7f061eb8a9c78/) | ⚠️ Unaudited |
| HARDSTAKE | unknown | ethereum | n/a | [`0x597919...e89265`](./contracts/ethereum-1/0x5979190de1962a6b1e25b104c49a26995ee89265/) | ⚠️ Unaudited |
| OREBIT20Deployer | unknown | ethereum | n/a | [`0x8c6623...c76cce`](./contracts/ethereum-1/0x8c662347d94f1983ddd00c90120f05dc8fc76cce/) | ⚠️ Unaudited |
| safeTokenFactory | unknown | ethereum | n/a | [`0x1a97a0...9cf5d0`](./contracts/ethereum-1/0x1a97a037a120db530ddce8370e24ead0fe9cf5d0/) | ⚠️ Unaudited |
| SOGWReceiver | unknown | ethereum | n/a | [`0xeec2d1...d68d5a`](./contracts/ethereum-1/0xeec2d148be96020d276dde0bb8a23e1838d68d5a/) | ⚠️ Unaudited |
| standard20Deployer | unknown | ethereum | n/a | [`0x054cef...f13e7f`](./contracts/ethereum-1/0x054cef04c2a16468cbda2bf7f1affc0ca9f13e7f/) | ⚠️ Unaudited |
| swog20Deployer | unknown | ethereum | n/a | [`0x2b7ce3...18938f`](./contracts/ethereum-1/0x2b7ce3421df9595079ab60e8e5dbb6727318938f/) | ⚠️ Unaudited |
| vista20Deployer | unknown | ethereum | n/a | [`0x05dc31...830dbf`](./contracts/ethereum-1/0x05dc314ea2029c7dceee9e3ee7b28058b4830dbf/) | ⚠️ Unaudited |

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
| ethereum | [`0x149bd5...1549e6`](./contracts/ethereum-1/0x149bd5c2fc1ea9241e4e90548eb5c8cc3d1549e6/) | EtherFunFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x759245...d99515`](./contracts/ethereum-1/0x75924504b696f3d29fefd01b2bde7ae21ed99515/) | EtherfunSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28be3d...573c7b`](./contracts/ethereum-1/0x28be3d3ea9deb58f492c76d2cb4cb4ab3c573c7b/) | EtherfunSaleDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06577f...389899`](./contracts/ethereum-1/0x06577fa758057f343dafe18a45231db075389899/) | Ethervista | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76f095...ac828a`](./contracts/ethereum-1/0x76f0951a56bf3a9f1c7906f3dbc71e7888ac828a/) | EtherVistaFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07fff0...f3e80b`](./contracts/ethereum-1/0x07fff0025556dac7a1e96fc64abda54ee7f3e80b/) | EtherVistaRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa90134...356f59`](./contracts/ethereum-1/0xa90134a35008c234f0fdb2ede6064ade4f356f59/) | EulerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6b510...8a9c78`](./contracts/ethereum-1/0xf6b510928ab880507246cd6946b7f061eb8a9c78/) | HARDLOCK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x597919...e89265`](./contracts/ethereum-1/0x5979190de1962a6b1e25b104c49a26995ee89265/) | HARDSTAKE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c6623...c76cce`](./contracts/ethereum-1/0x8c662347d94f1983ddd00c90120f05dc8fc76cce/) | OREBIT20Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a97a0...9cf5d0`](./contracts/ethereum-1/0x1a97a037a120db530ddce8370e24ead0fe9cf5d0/) | safeTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeec2d1...d68d5a`](./contracts/ethereum-1/0xeec2d148be96020d276dde0bb8a23e1838d68d5a/) | SOGWReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054cef...f13e7f`](./contracts/ethereum-1/0x054cef04c2a16468cbda2bf7f1affc0ca9f13e7f/) | standard20Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b7ce3...18938f`](./contracts/ethereum-1/0x2b7ce3421df9595079ab60e8e5dbb6727318938f/) | swog20Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05dc31...830dbf`](./contracts/ethereum-1/0x05dc314ea2029c7dceee9e3ee7b28058b4830dbf/) | vista20Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
