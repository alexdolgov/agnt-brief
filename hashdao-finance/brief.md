# Agentic Audit Brief: HashDAO Finance

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: HashDAO Finance (`hashdao-finance`)
- Website: [https://www.hashdao.finance](https://www.hashdao.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-24T19:07:45.699Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, optimism
- Contract surface: 51 unique implementations (123 raw deployments)
- DeFi Llama TVL: $1,672,280.98
- On-chain TVL (included contracts): $2,759,621.22
- TVL by chain: Arbitrum $2,759,621.22

## Project Description

HashDAO Finance is a decentralized derivatives protocol enabling users to trade perpetual contracts and other synthetic assets. It provides liquidity pools, order management, and price reporting infrastructure to facilitate trustless trading on Optimism and Arbitrum One.

### Architecture

All contracts are deployed under a single product family and share a common upgradeable proxy infrastructure (AdminUpgradeabilityProxy). Core trading logic in Pool and OrderManager relies on PriceReporter for oracle data, while EsToken and VeToken handle escrowed and vested token mechanics, and FeeVault collects protocol fees. The Bridge contract enables cross-chain asset movement, and external UniswapV2Pair/Pair contracts provide liquidity for the native Token.

## Audit Coverage Summary

- Verified implementations audited: 10/19 (52.6%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 2
- Unverified implementations: 32
- Unique implementations: 51
- Raw deployments: 123
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 10 | 52.6% | 2023-04 |
| SolidProof | Tier 2 | 1 | 5.3% | n/a |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Token | token | optimism | 2 deployments: optimism [`0x2e8025...61b93f`](./contracts/optimism-10/0x2e80259c9071b6176205ff5f5eb6f7ec8361b93f/); arbitrum [`0x2e8025...61b93f`](./contracts/arbitrum-42161/0x2e80259c9071b6176205ff5f5eb6f7ec8361b93f/) | ✅ Audited |
| EsToken | token | arbitrum | 6 deployments: optimism `0xb7047f...9aef47`; optimism `0xda4f46...54ff87`; arbitrum [`0x20cc0f...011fb7`](./contracts/arbitrum-42161/0x20cc0f5701af17effe10cdcc8265abcd5e011fb7/); arbitrum `0x375729...d33700`; arbitrum `0x5c9834...62abc8`; arbitrum `0xa01729...750f11` | ✅ Audited |
| FeeVault | core_logic | arbitrum | 7 deployments: optimism `0x2bd9da...1a2d74`; optimism `0x31241a...785003`; optimism `0xb557c0...b696f1`; arbitrum [`0x1295fd...cfc32a`](./contracts/arbitrum-42161/0x1295fdc7615ad94acb8eed07ffed19113acfc32a/); arbitrum `0x133bec...2485d6`; arbitrum `0x426d93...db7e73`; arbitrum `0x9d66c3...25aaa5` | ✅ Audited |
| OrderManager | governance | arbitrum | 6 deployments: optimism `0x955bd6...f7776b`; optimism `0xce4e6c...9872d5`; arbitrum [`0x43c103...5daf16`](./contracts/arbitrum-42161/0x43c10395f89e49347207f3aa0edf21e2da5daf16/); arbitrum `0x4f405d...90f27d`; arbitrum `0x901c3f...003279`; arbitrum `0xa18be6...51561b` | ✅ Audited |
| Pool | core_logic | arbitrum | 9 deployments: optimism `0x3a436d...d7a853`; optimism `0x5476f8...ad6c51`; optimism `0x605589...87f5c3`; optimism `0xc61793...5f42f2`; optimism `0xd5826b...66f006`; optimism `0xd59a8f...47a530`; optimism `0xf82408...434200`; arbitrum [`0x318b38...17b451`](./contracts/arbitrum-42161/0x318b38b9f7b354b1c77e0ea5abe4cbcba517b451/); arbitrum `0xcc7913...c12a0d` | ✅ Audited |
| PoolHook | core_logic | optimism | 4 deployments: optimism [`0x25e842...bb0765`](./contracts/optimism-10/0x25e842e8d7dbe6124961e05fd0efe9ce7abb0765/); optimism `0x87566d...dbb844`; arbitrum `0xb81316...a341b5`; arbitrum `0xed5061...8fd60a` | ✅ Audited |
| PriceReporter | operational_periphery | arbitrum | 6 deployments: optimism `0xcc7913...c12a0d`; optimism `0xcd7a1b...32dbc4`; arbitrum [`0x26180d...d40232`](./contracts/arbitrum-42161/0x26180d4fa111dbb122d5756323b3aa4bfdd40232/); arbitrum `0x6ce6fe...193db4`; arbitrum `0xe407c5...566f53`; arbitrum `0xe631aa...7acf4c` | ✅ Audited |
| VeToken | token | optimism | 4 deployments: optimism [`0x133bec...2485d6`](./contracts/optimism-10/0x133bec4ac9ccbcc479aa9b9cb7a1c916a72485d6/); arbitrum `0x8b5264...1c73a5`; arbitrum `0xb7047f...9aef47`; arbitrum `0xda4f46...54ff87` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ETHUnwrapper | unknown | optimism | 2 deployments: optimism [`0xcec45b...f9c5d8`](./contracts/optimism-10/0xcec45b47f809f7ae4c47fbcd4df37a71a8f9c5d8/); arbitrum `0xec59fb...734fb7` | ⚠️ Unaudited |
| LiqLocker | unknown | arbitrum | [`0x703b99...f1ebf8`](./contracts/arbitrum-42161/0x703b9994c47ba7521b432b8fac0a954cf6f1ebf8/) | ⚠️ Unaudited |
| LPToken | token | optimism | 6 deployments: optimism [`0x048e77...1775a2`](./contracts/optimism-10/0x048e77257df92787cc1af4015b6e9a7d521775a2/); optimism `0x52d709...fd63f2`; optimism `0x5dad2e...d46125`; optimism `0xfc4535...d4d881`; arbitrum `0x7d5332...cf021f`; arbitrum `0x947af1...e551cd` | ⚠️ Unaudited |
| MasterChefV3 | unknown | arbitrum | 6 deployments: optimism `0x958882...815006`; arbitrum [`0x0517a0...4beade`](./contracts/arbitrum-42161/0x0517a00f1dbb2ec4adbe422255633d5b0a4beade/); arbitrum `0x72f19d...436ab1`; arbitrum `0x824321...42f4d6`; arbitrum `0x882105...c42f85`; arbitrum `0xcec45b...f9c5d8` | ⚠️ Unaudited |
| Oracle | operational_periphery | optimism | 3 deployments: optimism [`0x172ef9...2a3002`](./contracts/optimism-10/0x172ef9fa593a55f01353366462523550762a3002/); arbitrum `0x7e7df8...be14f3`; arbitrum `0xb4e0e4...1ea39a` | ⚠️ Unaudited |
| Pair | unknown | optimism | [`0xb426ae...d35dcf`](./contracts/optimism-10/0xb426ae40e43be57215ba7daa06cbc5d48ed35dcf/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 2 deployments: optimism `0xa01729...750f11`; arbitrum [`0x7c9d49...b7c9db`](./contracts/arbitrum-42161/0x7c9d49af6be557f2ae30f907cd111b42eab7c9db/) | ⚠️ Unaudited |
| Timelock | governance | optimism | 2 deployments: optimism [`0x20cc0f...011fb7`](./contracts/optimism-10/0x20cc0f5701af17effe10cdcc8265abcd5e011fb7/); arbitrum `0x84b7a2...8fe103` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | [`0x8dc6ef...190703`](./contracts/arbitrum-42161/0x8dc6efd57a13b7ba3ff7824c9708db24d3190703/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | arbitrum | 19 deployments: optimism `0x40adcc...534021`; optimism `0x54b00b...98b566`; optimism `0x5556af...771bce`; optimism `0x584a4f...07fca8`; optimism `0x6736e1...5fb861`; optimism `0x99fe96...a22540`; optimism `0x9d66c3...25aaa5`; optimism `0xbc19ee...a7da6c`; optimism `0xeab4c6...51299d`; optimism `0xed5061...8fd60a`; optimism `0xf96aad...fb795d`; arbitrum [`0x019622...e3a61f`](./contracts/arbitrum-42161/0x019622fb05dd0c80751798949e795ff5d5e3a61f/); arbitrum `0x597f5a...a818f2`; arbitrum `0x90d11b...b1bf82`; arbitrum `0x92aee2...e6a39d`; arbitrum `0x958882...815006`; arbitrum `0x99fe96...a22540`; arbitrum `0xb557c0...b696f1`; arbitrum `0xcd7a1b...32dbc4` | ✅ Audited (bytecode match) |
| Bridge | operational_periphery | arbitrum | 4 deployments: optimism `0x2c7505...7701c4`; arbitrum [`0x09f12b...babaf4`](./contracts/arbitrum-42161/0x09f12be3b88587faf2d3d951a9366ab2a7babaf4/); arbitrum `0x94ecc8...f35096`; arbitrum `0xa03cae...6fcf18` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | optimism | `0x2b9c8b...becd19` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x303cc9...8cf6d6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x375729...d33700` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x52d510...5048e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x60d755...ed3cbe` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x722b76...0984e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x92aee2...e6a39d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x95e924...aec878` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x963a0a...1be81f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x98293e...bd4972` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa18be6...51561b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcd00be...3a9b2e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd6c52a...c2345b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xdf40b7...c2a2b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0f48ac...d28ee5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x172ef9...2a3002` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x278fe1...d1f398` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x286fa4...fd8b87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x349c06...76c6dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5556af...771bce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5905e0...141c76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7c8210...b64f84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8f5be3...1b0330` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x97d4b0...273d95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x989cc0...953476` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa0a60e...070e18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb37c07...7e1a3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6a06d...bd917f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe80cdc...f1ed51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec161c...beacc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfdacc1...54e7a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xff0ebb...3a0fe8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [HashDAO.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/April_2023/HashDAO.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 31 | medium |
| [DL audit link](https://app.solidproof.io/projects/hashdao) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | medium |
| [Audit No. 425](https://app.solidproof.io/projects/hashdao?audit=dc54b5c8-2954-4939-a653-7272083fe7b3) | SolidProof | Audit | n/a | unknown | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0xcec45b...f9c5d8`](./contracts/optimism-10/0xcec45b47f809f7ae4c47fbcd4df37a71a8f9c5d8/) | ETHUnwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x703b99...f1ebf8`](./contracts/arbitrum-42161/0x703b9994c47ba7521b432b8fac0a954cf6f1ebf8/) | LiqLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x048e77...1775a2`](./contracts/optimism-10/0x048e77257df92787cc1af4015b6e9a7d521775a2/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x20cc0f...011fb7`](./contracts/optimism-10/0x20cc0f5701af17effe10cdcc8265abcd5e011fb7/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=2
- Match method counts: extraction_exact=35

Fork inheritance lineage and inherited audits are included when available.
