# Agentic Audit Brief: ObeliskBTC

⚠️ Lifecycle status: DECLINING - TVL changed 27.1% over 90 days

## Project Overview

- Project: ObeliskBTC (`obeliskbtc`)
- Website: [https://obelisk.nodedao.com](https://obelisk.nodedao.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:08.753Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 19 unique implementations (32 raw deployments)
- DeFi Llama TVL: $8,953,906.82
- On-chain TVL (included contracts): $33,187,987.45
- TVL by chain: Ethereum $33,187,987.45

## Project Description

ObeliskBTC is a Bitcoin asset-management and bridge protocol tracked as a separate DeFiLlama protocol. Its scope should be treated separately from broader NodeDAO/NETH liquid-staking or restaking contracts unless project documentation explicitly links those deployments to ObeliskBTC.

### Architecture

The protocol consists of a single product family with no shared infrastructure across multiple families. All contracts are deployed by the same deployer cluster, indicating a unified codebase.

## Audit Coverage Summary

- Verified implementations audited: 0/19 (0.0%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 32
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $33,187,987.45
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $33,187,987.45 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RestakingPool | core_logic | ethereum | [`0x0d6f76...a725bc`](./contracts/ethereum-1/0x0d6f764452ca43eb8bd22788c9db43e4b5a725bc/) | ⚠️ Unaudited |
| NethPool | core_logic | ethereum | [`0xf3c794...c07c18`](./contracts/ethereum-1/0xf3c79408164abfb6fd5ddfe33b084e4ad2c07c18/) | ⚠️ Unaudited |
| ELVault | core_logic | ethereum | 2 deployments: ethereum [`0xa9d213...dee8f3`](./contracts/ethereum-1/0xa9d21395a58d832d2c44605d286560876ddee8f3/); ethereum `0xbdfe7f...def3d8` | ⚠️ Unaudited |
| DefiStrategy | core_logic | ethereum | 6 deployments: ethereum [`0x174799...bfc410`](./contracts/ethereum-1/0x174799af838f3883e88161f04011e2a316bfc410/); ethereum `0x59c384...73382d`; ethereum `0x5b14af...a7f503`; ethereum `0x75b2e4...775bae`; ethereum `0x8446c9...ddf8f5`; ethereum `0xfc2891...14c4a7` | ⚠️ Unaudited |
| MintSecurity | unknown | ethereum | 2 deployments: ethereum [`0xa57dc7...f9d25f`](./contracts/ethereum-1/0xa57dc79b2852415448b66100bf59753318f9d25f/); ethereum `0xd297dc...befb57` | ⚠️ Unaudited |
| MintStrategy | core_logic | ethereum | 2 deployments: ethereum [`0xb97ab3...1f67a0`](./contracts/ethereum-1/0xb97ab3198f6117d2d093807faa670eb1c11f67a0/); ethereum `0xdd2d80...43e6fe` | ⚠️ Unaudited |
| NodeDAOView | unknown | ethereum | [`0xd7c049...812121`](./contracts/ethereum-1/0xd7c049cd4ba216679ecc04eb2767cc5e39812121/) | ⚠️ Unaudited |
| ObeliskCustody | unknown | ethereum | 2 deployments: ethereum [`0x385d89...93b4e3`](./contracts/ethereum-1/0x385d894a946be929cc1ba1a26331fd4ccd93b4e3/); ethereum `0x9f836f...8b1a2c` | ⚠️ Unaudited |
| ObeliskNetwork | unknown | ethereum | 3 deployments: ethereum [`0x934cbd...ebad42`](./contracts/ethereum-1/0x934cbd2af86c074478a1fe1d10d2c5d4adebad42/); ethereum `0xe423b9...1cd999`; ethereum `0xef2df4...43e80b` | ⚠️ Unaudited |
| OBTC | unknown | ethereum | [`0xb1e128...de0e3c`](./contracts/ethereum-1/0xb1e12802831da99d2d47b6a55049d69bf7de0e3c/) | ⚠️ Unaudited |
| OBTCOFTAdapter | adapter | ethereum | [`0x5be163...3be65f`](./contracts/ethereum-1/0x5be1630b4241ebb479b2dd3a1917e3c4253be65f/) | ⚠️ Unaudited |
| OYBTCB2 | unknown | ethereum | [`0x7f58f8...3d24b6`](./contracts/ethereum-1/0x7f58f8d540324a7a895794bb819f2d635c3d24b6/) | ⚠️ Unaudited |
| OYBTCBBN | unknown | ethereum | [`0x587fa5...c0f887`](./contracts/ethereum-1/0x587fa54a1682ae73ecc709e1439d096ff0c0f887/) | ⚠️ Unaudited |
| OYBTCFBTC | unknown | ethereum | [`0xc47a9d...2ce338`](./contracts/ethereum-1/0xc47a9dce0192e0d82c0b6f8f75c1881df32ce338/) | ⚠️ Unaudited |
| PoolConfig | core_logic | ethereum | 2 deployments: ethereum [`0x54f661...d1ea62`](./contracts/ethereum-1/0x54f661260dd47b6178cf4f6f3e90cc30d8d1ea62/); ethereum `0xea66a6...ad497a` | ⚠️ Unaudited |
| RestakingPod | unknown | ethereum | [`0x9efdeb...a3b75c`](./contracts/ethereum-1/0x9efdeb695f1e3f0ad3bcfb1e07d2749b50a3b75c/) | ⚠️ Unaudited |
| StrategyManager | core_logic | ethereum | 2 deployments: ethereum [`0x36f57f...a16e16`](./contracts/ethereum-1/0x36f57f0379cb36e54248d219954274ee86a16e16/); ethereum `0x995f4e...8d5e38` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0xe4c555...312f20`](./contracts/ethereum-1/0xe4c555c2aa8f7fdb7baf90039b3a583c8e312f20/) | ⚠️ Unaudited |
| TokenAuthority | governance | ethereum | [`0x6fdfd0...6d74a7`](./contracts/ethereum-1/0x6fdfd096687a2d7b83e4afdc05c43519166d74a7/) | ⚠️ Unaudited |

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
| ethereum | [`0x385d89...93b4e3`](./contracts/ethereum-1/0x385d894a946be929cc1ba1a26331fd4ccd93b4e3/) | ObeliskCustody | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x934cbd...ebad42`](./contracts/ethereum-1/0x934cbd2af86c074478a1fe1d10d2c5d4adebad42/) | ObeliskNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1e128...de0e3c`](./contracts/ethereum-1/0xb1e12802831da99d2d47b6a55049d69bf7de0e3c/) | OBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5be163...3be65f`](./contracts/ethereum-1/0x5be1630b4241ebb479b2dd3a1917e3c4253be65f/) | OBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f58f8...3d24b6`](./contracts/ethereum-1/0x7f58f8d540324a7a895794bb819f2d635c3d24b6/) | OYBTCB2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x587fa5...c0f887`](./contracts/ethereum-1/0x587fa54a1682ae73ecc709e1439d096ff0c0f887/) | OYBTCBBN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc47a9d...2ce338`](./contracts/ethereum-1/0xc47a9dce0192e0d82c0b6f8f75c1881df32ce338/) | OYBTCFBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36f57f...a16e16`](./contracts/ethereum-1/0x36f57f0379cb36e54248d219954274ee86a16e16/) | StrategyManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fdfd0...6d74a7`](./contracts/ethereum-1/0x6fdfd096687a2d7b83e4afdc05c43519166d74a7/) | TokenAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
