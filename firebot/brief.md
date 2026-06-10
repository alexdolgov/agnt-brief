# Agentic Audit Brief: FireBot

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: FireBot (`firebot`)
- Website: [https://firebot.gg](https://firebot.gg)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-10T23:22:06.745Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-22cc
- Chains: polygon
- Contract surface: 29 unique implementations (65 raw deployments)
- DeFi Llama TVL: $2,264,926.05
- On-chain TVL (included contracts): $3,673,167.12
- TVL by chain: Polygon $3,673,167.12

## Project Description

FireBot is a Polygon-based DeFi project centered on FBX/FireBot token utilities, Fire Vaults staking, swapping, and deflationary-token mechanics. Public positioning should not overstate it as primarily a yield-farming protocol or infer unsupported Uniswap V2 pair staking behavior without contract- or documentation-level evidence.

### Architecture

The FireVaultFBXV2 contract likely manages user deposits and interacts with the Farm contract to distribute rewards. The UniswapV2Pair contracts provide liquidity for the FireBotToken, enabling trading and possibly serving as staking targets.

## Audit Coverage Summary

- Verified implementations audited: 1/21 (4.8%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 29
- Raw deployments: 65
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $3,673,167.12
- Latest audit: 2023-10 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $3,673,167.12 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| RedTiger | Tier 2 | 1 | 4.8% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ElementalParticles | unknown | polygon | [`0x60ed6a...751af2`](./contracts/polygon-137/0x60ed6acef3a96f8cdaf0c0d207bbafa66e751af2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FireBotToken | token | polygon | [`0xd12544...6f8218`](./contracts/polygon-137/0xd125443f38a69d776177c2b9c041f462936f8218/) | ⚠️ Unaudited |
| Farm | unknown | polygon | 2 deployments: polygon [`0x92a918...6c62c9`](./contracts/polygon-137/0x92a9180af33531a5d78d81d90afc0523dc6c62c9/); polygon `0xf65c47...f57ab8` | ⚠️ Unaudited |
| FBX_WETH_LP_Farm | token | polygon | [`0x4c1bfe...e8d6ee`](./contracts/polygon-137/0x4c1bfefc1ea12b698540c8f7cf233fe499e8d6ee/) | ⚠️ Unaudited |
| firebot_market | unknown | polygon | 3 deployments: polygon [`0x02e219...31dd86`](./contracts/polygon-137/0x02e219d7b59c43cb012bb87dcab86172ff31dd86/); polygon `0x242fa7...af9538`; polygon `0xd709e1...d2d0bd` | ⚠️ Unaudited |
| FireBotGovernor | governance | polygon | [`0x1c10db...9ae457`](./contracts/polygon-137/0x1c10db92c0a6e2bf089f08a60fa98158359ae457/) | ⚠️ Unaudited |
| FireBotItems | unknown | polygon | [`0x3e3c74...3c89da`](./contracts/polygon-137/0x3e3c7417555b7c77db6efd7697a9dc19e13c89da/) | ⚠️ Unaudited |
| FireBotItemsV2 | unknown | polygon | [`0x2e1452...d6176e`](./contracts/polygon-137/0x2e14520c30370d114612552616964a3bced6176e/) | ⚠️ Unaudited |
| firebotMarket | unknown | polygon | 2 deployments: polygon [`0xc99567...c1d334`](./contracts/polygon-137/0xc99567b0b5649120fe882554cacfcaa68bc1d334/); polygon `0xf312bf...7eb39c` | ⚠️ Unaudited |
| FireBots | unknown | polygon | [`0xe9eee7...333295`](./contracts/polygon-137/0xe9eee7294dc7c3bb64fd57a514e755022a333295/) | ⚠️ Unaudited |
| FireVaultFBX | core_logic | polygon | 3 deployments: polygon [`0xa461b5...cf132b`](./contracts/polygon-137/0xa461b57d4794447bb53ad584844c4a19c6cf132b/); polygon `0xd3368e...a78e75`; polygon `0xe344db...127b9a` | ⚠️ Unaudited |
| FireVaultFBXV2 | core_logic | polygon | 18 deployments: polygon [`0x09083f...91c049`](./contracts/polygon-137/0x09083fa4a172e52df84808edc31fa167e591c049/); polygon `0x098534...a6d4df`; polygon `0x0f3226...8b22d9`; polygon `0x2b5f17...1ded23`; polygon `0x30f096...0bd486`; polygon `0x364663...abbf56`; polygon `0x4758d9...e16044`; polygon `0x651042...cd9047`; polygon `0x65b8e5...7f936d`; polygon `0x77ff4f...583348`; polygon `0x869f1e...8e241b`; polygon `0x960d43...14dfbe`; polygon `0x9bf581...9c14c7`; polygon `0xa163f1...8f5cfe`; polygon `0xd0e489...e7c271`; polygon `0xda6167...7046d1`; polygon `0xe44f4e...05f5f8`; polygon `0xf584be...4ef875` | ⚠️ Unaudited |
| FireVaultFBXV3 | core_logic | polygon | [`0x4d979f...022594`](./contracts/polygon-137/0x4d979fed1defc256c02a97687840c0afb7022594/) | ⚠️ Unaudited |
| FireVaultFBXV4 | core_logic | polygon | [`0x7ccfb7...067577`](./contracts/polygon-137/0x7ccfb7d2598421ea897ba94f5d3fd598f4067577/) | ⚠️ Unaudited |
| item_selector | unknown | polygon | [`0xad79b4...76dcf0`](./contracts/polygon-137/0xad79b4a1905de5e505a7c8b34a20d7456676dcf0/) | ⚠️ Unaudited |
| item_vault_swap | core_logic | polygon | [`0xc82669...cf4910`](./contracts/polygon-137/0xc82669f560e1d1099636ada24479bb0f2bcf4910/) | ⚠️ Unaudited |
| LPFarm | unknown | polygon | [`0x257793...4c6626`](./contracts/polygon-137/0x257793cb6a8111d36d62f50dcd27926f404c6626/) | ⚠️ Unaudited |
| Migrations | operational_periphery | polygon | [`0x6dcfd6...25a5fc`](./contracts/polygon-137/0x6dcfd69c12e866dfbb857646b77f842c7b25a5fc/) | ⚠️ Unaudited |
| RefToken | token | polygon | 13 deployments: polygon [`0x055fa3...ff8bb5`](./contracts/polygon-137/0x055fa35955bd0d895d719d8f2a164685fbff8bb5/); polygon `0x0d0c7e...343e94`; polygon `0x13d9bb...292e4d`; polygon `0x1aca6c...790a4e`; polygon `0x1c6bcf...7baab5`; polygon `0x587290...b06798`; polygon `0x5f403d...402beb`; polygon `0x6c1338...49e57f`; polygon `0x7a0412...0e9b08`; polygon `0x7fc0fd...d6cfdc`; polygon `0x995491...316855`; polygon `0xc5d5a5...48fca0`; polygon `0xc7f694...cfbd7d` | ⚠️ Unaudited |
| Test | unknown | polygon | [`0xefb4ff...994740`](./contracts/polygon-137/0xefb4ff51dd2643f2d700a5561bf36959f4994740/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | 2 deployments: polygon [`0x41d9de...95e397`](./contracts/polygon-137/0x41d9de53ebf26f766229e42aa02904eb2495e397/); polygon `0xcffbfa...fe8a77` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | polygon | `0x036724...bb6e35` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x19457d...61f5c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3d7168...25402d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3f700a...c5ec01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6d11d1...ebdfb1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x922dcf...ed62f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9c3b60...9aaded` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xcf9a2d...c193d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://firebot.gg/audits/RedTiger_FireBot_2023.pdf) | RedTiger | Audit | 2023-07 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://firebot.gg/audits/RedTiger_Sweeep_2023.pdf) | RedTiger | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xd12544...6f8218`](./contracts/polygon-137/0xd125443f38a69d776177c2b9c041f462936f8218/) | FireBotToken | token | $3,673,167.12 | Verified native implementation with $3,673,167.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x92a918...6c62c9`](./contracts/polygon-137/0x92a9180af33531a5d78d81d90afc0523dc6c62c9/) | Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4c1bfe...e8d6ee`](./contracts/polygon-137/0x4c1bfefc1ea12b698540c8f7cf233fe499e8d6ee/) | FBX_WETH_LP_Farm | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02e219...31dd86`](./contracts/polygon-137/0x02e219d7b59c43cb012bb87dcab86172ff31dd86/) | firebot_market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1c10db...9ae457`](./contracts/polygon-137/0x1c10db92c0a6e2bf089f08a60fa98158359ae457/) | FireBotGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3e3c74...3c89da`](./contracts/polygon-137/0x3e3c7417555b7c77db6efd7697a9dc19e13c89da/) | FireBotItems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e1452...d6176e`](./contracts/polygon-137/0x2e14520c30370d114612552616964a3bced6176e/) | FireBotItemsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc99567...c1d334`](./contracts/polygon-137/0xc99567b0b5649120fe882554cacfcaa68bc1d334/) | firebotMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe9eee7...333295`](./contracts/polygon-137/0xe9eee7294dc7c3bb64fd57a514e755022a333295/) | FireBots | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa461b5...cf132b`](./contracts/polygon-137/0xa461b57d4794447bb53ad584844c4a19c6cf132b/) | FireVaultFBX | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x09083f...91c049`](./contracts/polygon-137/0x09083fa4a172e52df84808edc31fa167e591c049/) | FireVaultFBXV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4d979f...022594`](./contracts/polygon-137/0x4d979fed1defc256c02a97687840c0afb7022594/) | FireVaultFBXV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ccfb7...067577`](./contracts/polygon-137/0x7ccfb7d2598421ea897ba94f5d3fd598f4067577/) | FireVaultFBXV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xad79b4...76dcf0`](./contracts/polygon-137/0xad79b4a1905de5e505a7c8b34a20d7456676dcf0/) | item_selector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc82669...cf4910`](./contracts/polygon-137/0xc82669f560e1d1099636ada24479bb0f2bcf4910/) | item_vault_swap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x257793...4c6626`](./contracts/polygon-137/0x257793cb6a8111d36d62f50dcd27926f404c6626/) | LPFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x055fa3...ff8bb5`](./contracts/polygon-137/0x055fa35955bd0d895d719d8f2a164685fbff8bb5/) | RefToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xefb4ff...994740`](./contracts/polygon-137/0xefb4ff51dd2643f2d700a5561bf36959f4994740/) | Test | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2866] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
