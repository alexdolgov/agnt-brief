# Agentic Audit Brief: Veno Finance

## Project Overview

- Project: Veno Finance (`veno-finance`)
- Website: [https://veno.finance/](https://veno.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.881Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: cronos, ethereum, zksync-era
- Contract surface: 21 unique implementations (53 raw deployments)
- DeFi Llama TVL: $34,040,635.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 8 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 5 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 57; live-surface contracts included: 49 (9 live, 40 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 9 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 21
- Raw deployments: 53
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeMiddleware | operational_periphery | ethereum | n/a | [`0x248c731b155af4cae198af705fb803f087a0b01e`](./contracts/ethereum-1/0x248c731b155af4cae198af705fb803f087a0b01e/) | ⚠️ Unaudited |
| L1Nullifier | unknown | ethereum | n/a | [`0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb`](./contracts/ethereum-1/0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb/) | ⚠️ Unaudited |
| YbEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x76bf2d1e6dfda645c0c17440b17eccc181dfc351`](./contracts/ethereum-1/0x76bf2d1e6dfda645c0c17440b17eccc181dfc351/); ethereum `0xc0c23f557e0e9cc324e2817f26fffcca4952d6a2` | ⚠️ Unaudited |
| YbEthBridge | operational_periphery | ethereum | n/a | [`0xd91629518a1ec964cfce27c2a939f689dcbdf73f`](./contracts/ethereum-1/0xd91629518a1ec964cfce27c2a939f689dcbdf73f/) | ⚠️ Unaudited |
| YbEthNft | unknown | ethereum | n/a | 2 deployments: ethereum [`0x43df9d854d3fcb882847b9a638cabd06fe86d2c5`](./contracts/ethereum-1/0x43df9d854d3fcb882847b9a638cabd06fe86d2c5/); ethereum `0x8f6b0512e63a644631694178b83419fecd90762d` | ⚠️ Unaudited |
| YBUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd501a4d2141799f3228c40af972df622c632b7ce`](./contracts/ethereum-1/0xd501a4d2141799f3228c40af972df622c632b7ce/); ethereum `0xfa59075dfce274e028b58bddfcc3d709960f594a` | ⚠️ Unaudited |
| YBUSDBridge | operational_periphery | ethereum | n/a | [`0x42696a64a238e5c661b1bad2530198d54e7b0dff`](./contracts/ethereum-1/0x42696a64a238e5c661b1bad2530198d54e7b0dff/) | ⚠️ Unaudited |
| ZkCro | unknown | ethereum | n/a | 2 deployments: ethereum [`0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2`](./contracts/ethereum-1/0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2/); ethereum `0x34b35bed5aced7c4472de906912acb3e4c4616a5` | ⚠️ Unaudited |
| ZkCroMintAndBridge | operational_periphery | ethereum | n/a | [`0xe69a535730858fd8dc386b448972a9f801ab4e12`](./contracts/ethereum-1/0xe69a535730858fd8dc386b448972a9f801ab4e12/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3fa18f870818b85002dd627617a7eda332d0daa2` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | 29 deployments: cronos `0x0bbe7ee32c2dc26f51467431f2f61b8c572af25d`; cronos `0x10a1d7d9abefbc84f4ebe9daa546f50eb9e5d191`; cronos `0x186a963f78ba0ca8e1799a32e3106c9fee05c7c1`; cronos `0x21179329c1dcfd36ffe0862cca2c7e85538cca07`; cronos `0x276e28664dec4982f892a5b836e11f23040b6995`; cronos `0x4c86f72904c95bcdc2cbdeee606e40e565130b72`; cronos `0x5024739e1db8d7d1d1d7d3ca06daae786c2f27f6`; cronos `0x56fefec44ec1915f33e1d355ebb2f22ff51de156`; cronos `0x579206e4e49581ca8ada619e9e42641f61a84ac3`; cronos `0x655c5e4782f5a656228ce9f200fac8c47deddf55`; cronos `0x6b5e1fc9b73abee02926f796dcd948dffa139419`; cronos `0x85ca3999fe9214ce6e41cc1648e04a817f4ee8a2`; cronos `0x89ccc2fee737eb9838aab4083675989148f01587`; cronos `0x8f101084ca4ada1e2b039b869f7002c0e81413fa`; cronos `0x8f4bfee00a3b5efa0b49afb35eb44d03c5778565`; cronos `0x9fae23a2700feecd5b93e43fdbc03c76aa7c08a6`; cronos `0xa312599f647cedb12ee02c92a37d12dd5c8b2f69`; cronos `0xa90ee4bbe1d2a5b098f44d314d31d4764e8d1666`; cronos `0xac974ee7fc5d083112c809ccb3fce4a4f385750d`; cronos `0xac9e4730340722540012aef8af3d7e0b74e52d70`; cronos `0xb15533a0bc7c530d692a9660785226dfd3633965`; cronos `0xb4be51216f4926ab09ddf4e64bc20f499fd6ca95`; cronos `0xbd69099e29dd0d4a1dd24f3c2058fd7f07e0aee5`; cronos `0xc07a8accb05ee538cdd9bcd73427ccc9c3439c58`; cronos `0xd73863c0d3637ca805d449aac7ed04c605bc456c`; cronos `0xdb7d0a1ec37de1de924f8e8adac6ed338d4404e9`; cronos `0xe4fa4237b04934b71c9563119f19ec0c1b15c6f8`; cronos `0xf67dcae6b333a784c62a9ee77fa0e4178a9002de`; cronos `0xf7a5c2efc578ac9ed8356314764981192bc5049d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4e313ff3a7210b9356be34fd35007d42a0b8cd24` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x64b77462a671c94f620488bdf9b1fb2cc82c81dc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa512dbd63e9d94a05cb0a374fc74e8664c8ff15d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa55fa3a5b6451187e42839162e7650a043e1413d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbddd1aa977acd01510a9e9627eee8ac1c5e20aca` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xd70904f3a732e49a8ef142738d6b24e5c1ed626b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe75a17b4f5c4f844688d5670b684515d7c785e63` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe7895ed01a1a6aacf1c2e955af14e7cf612e7f9d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf8b19e020eca23353dc0079e2eaef19a87e903ab` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xfea4195be610c4dd1b25a97a1c1402333c404936` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FkW555WIVoUbzUslDZTlZ%2FSlowMist%20Audit%20Report%20-%20Veno-Liquid%20Staking%20Contracts%20Core.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FgvneLOUCCjnAQYcHhFj7%2FSlowMist%20Audit%20Report%20-%20Veno%20-%20Liquid%20Staking%20Contracts%20Tokenomic.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FtzPxX5tBafm0DUCRrLqa%2FSlowMist%20Audit%20Report%20-%20Veno%20Liquid%20Staking%20Strategy%20Vault.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x248c731b155af4cae198af705fb803f087a0b01e`](./contracts/ethereum-1/0x248c731b155af4cae198af705fb803f087a0b01e/) | BridgeMiddleware | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb`](./contracts/ethereum-1/0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb/) | L1Nullifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76bf2d1e6dfda645c0c17440b17eccc181dfc351`](./contracts/ethereum-1/0x76bf2d1e6dfda645c0c17440b17eccc181dfc351/) | YbEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd91629518a1ec964cfce27c2a939f689dcbdf73f`](./contracts/ethereum-1/0xd91629518a1ec964cfce27c2a939f689dcbdf73f/) | YbEthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43df9d854d3fcb882847b9a638cabd06fe86d2c5`](./contracts/ethereum-1/0x43df9d854d3fcb882847b9a638cabd06fe86d2c5/) | YbEthNft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd501a4d2141799f3228c40af972df622c632b7ce`](./contracts/ethereum-1/0xd501a4d2141799f3228c40af972df622c632b7ce/) | YBUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42696a64a238e5c661b1bad2530198d54e7b0dff`](./contracts/ethereum-1/0x42696a64a238e5c661b1bad2530198d54e7b0dff/) | YBUSDBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2`](./contracts/ethereum-1/0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2/) | ZkCro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe69a535730858fd8dc386b448972a9f801ab4e12`](./contracts/ethereum-1/0xe69a535730858fd8dc386b448972a9f801ab4e12/) | ZkCroMintAndBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11713] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf
- [11714] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf
- [11715] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf

Fork inheritance lineage and inherited audits are included when available.
