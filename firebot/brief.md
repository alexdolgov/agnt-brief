# Agentic Audit Brief: FireBot

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: FireBot (`firebot`)
- Website: [https://firebot.gg](https://firebot.gg)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:48.629Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: polygon
- Contract surface: 33 unique implementations (73 raw deployments)
- DeFi Llama TVL: $2,419,843.20
- On-chain TVL (included contracts): $3,690,021.64
- TVL by chain: Polygon $3,690,021.64

## Project Description

FireBot is a Polygon-based DeFi project centered on FBX/FireBot token utilities, Fire Vaults staking, swapping, and deflationary-token mechanics. Public positioning should not overstate it as primarily a yield-farming protocol or infer unsupported Uniswap V2 pair staking behavior without contract- or documentation-level evidence.

### Architecture

The FireVaultFBXV2 contract likely manages user deposits and interacts with the Farm contract to distribute rewards. The UniswapV2Pair contracts provide liquidity for the FireBotToken, enabling trading and possibly serving as staking targets.

## Contract Surface Quality

- Indexed contracts: 73; live-surface contracts included: 73 (0 live, 73 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 1/16.

## Audit Coverage Summary

- Verified implementations audited: 1/25 (4.0%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 33
- Raw deployments: 73
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $3,690,021.64
- Latest audit: 2023-10 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $3,690,021.64 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| RedTiger | Tier 2 | 1 | 4.0% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ElementalParticles | unknown | polygon | n/a | [`0x60ed6a...751af2`](./contracts/polygon-137/0x60ed6acef3a96f8cdaf0c0d207bbafa66e751af2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FireBotToken | token | polygon | n/a | [`0xd12544...6f8218`](./contracts/polygon-137/0xd125443f38a69d776177c2b9c041f462936f8218/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | polygon | n/a | 3 deployments: polygon [`0x6c14fa...2d56df`](./contracts/polygon-137/0x6c14fa1b23a245efb97cbad357ca3948052d56df/); polygon `0x9da4de...1f2f1c`; polygon `0xa6b96e...3a29bb` | ⚠️ Unaudited |
| AlgebraPool | core_logic | polygon | n/a | [`0x17b509...a8e821`](./contracts/polygon-137/0x17b509b2b65b0d07b9e46bfc2ffe6c9c09a8e821/) | ⚠️ Unaudited |
| WorldCupPool | core_logic | polygon | n/a | [`0xf378f8...76082e`](./contracts/polygon-137/0xf378f8e9603c2ec54b21f0a876ef847df976082e/) | ⚠️ Unaudited |
| FireVaultEP | core_logic | polygon | n/a | [`0xa2b205...8e5cc3`](./contracts/polygon-137/0xa2b205f8c0f0e30b3f73b7716a718c53cb8e5cc3/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | polygon | unit-29260 | [`0xaeb318...409a07`](./contracts/polygon-137/0xaeb318360f27748acb200ce616e389a6c9409a07/) | ⚠️ Unaudited |
| Farm | unknown | polygon | n/a | 2 deployments: polygon [`0x92a918...6c62c9`](./contracts/polygon-137/0x92a9180af33531a5d78d81d90afc0523dc6c62c9/); polygon `0xf65c47...f57ab8` | ⚠️ Unaudited |
| FBX_WETH_LP_Farm | token | polygon | n/a | [`0x4c1bfe...e8d6ee`](./contracts/polygon-137/0x4c1bfefc1ea12b698540c8f7cf233fe499e8d6ee/) | ⚠️ Unaudited |
| firebot_market | unknown | polygon | n/a | 3 deployments: polygon [`0x02e219...31dd86`](./contracts/polygon-137/0x02e219d7b59c43cb012bb87dcab86172ff31dd86/); polygon `0x242fa7...af9538`; polygon `0xd709e1...d2d0bd` | ⚠️ Unaudited |
| FireBotGovernor | governance | polygon | n/a | [`0x1c10db...9ae457`](./contracts/polygon-137/0x1c10db92c0a6e2bf089f08a60fa98158359ae457/) | ⚠️ Unaudited |
| firebotMarket | unknown | polygon | n/a | 2 deployments: polygon [`0xc99567...c1d334`](./contracts/polygon-137/0xc99567b0b5649120fe882554cacfcaa68bc1d334/); polygon `0xf312bf...7eb39c` | ⚠️ Unaudited |
| FirePool | core_logic | polygon | n/a | [`0xe20e04...670234`](./contracts/polygon-137/0xe20e046b230a5530438d32abfbcc3e61d7670234/) | ⚠️ Unaudited |
| FireVaultFBX | core_logic | polygon | n/a | 3 deployments: polygon [`0xa461b5...cf132b`](./contracts/polygon-137/0xa461b57d4794447bb53ad584844c4a19c6cf132b/); polygon `0xd3368e...a78e75`; polygon `0xe344db...127b9a` | ⚠️ Unaudited |
| FireVaultFBXV2 | core_logic | polygon | n/a | 18 deployments: polygon [`0x09083f...91c049`](./contracts/polygon-137/0x09083fa4a172e52df84808edc31fa167e591c049/); polygon `0x098534...a6d4df`; polygon `0x0f3226...8b22d9`; polygon `0x2b5f17...1ded23`; polygon `0x30f096...0bd486`; polygon `0x364663...abbf56`; polygon `0x4758d9...e16044`; polygon `0x651042...cd9047`; polygon `0x65b8e5...7f936d`; polygon `0x77ff4f...583348`; polygon `0x869f1e...8e241b`; polygon `0x960d43...14dfbe`; polygon `0x9bf581...9c14c7`; polygon `0xa163f1...8f5cfe`; polygon `0xd0e489...e7c271`; polygon `0xda6167...7046d1`; polygon `0xe44f4e...05f5f8`; polygon `0xf584be...4ef875` | ⚠️ Unaudited |
| FireVaultFBXV3 | core_logic | polygon | n/a | [`0x4d979f...022594`](./contracts/polygon-137/0x4d979fed1defc256c02a97687840c0afb7022594/) | ⚠️ Unaudited |
| FireVaultFBXV4 | core_logic | polygon | n/a | [`0x7ccfb7...067577`](./contracts/polygon-137/0x7ccfb7d2598421ea897ba94f5d3fd598f4067577/) | ⚠️ Unaudited |
| FUSDv2 | unknown | polygon | n/a | [`0x3c56f0...563a99`](./contracts/polygon-137/0x3c56f017d9ce85350df8f4b495033aaa15563a99/) | ⚠️ Unaudited |
| item_selector | unknown | polygon | n/a | [`0xad79b4...76dcf0`](./contracts/polygon-137/0xad79b4a1905de5e505a7c8b34a20d7456676dcf0/) | ⚠️ Unaudited |
| item_vault_swap | core_logic | polygon | n/a | [`0xc82669...cf4910`](./contracts/polygon-137/0xc82669f560e1d1099636ada24479bb0f2bcf4910/) | ⚠️ Unaudited |
| LPFarm | unknown | polygon | n/a | [`0x257793...4c6626`](./contracts/polygon-137/0x257793cb6a8111d36d62f50dcd27926f404c6626/) | ⚠️ Unaudited |
| Migrations | operational_periphery | polygon | n/a | [`0x6dcfd6...25a5fc`](./contracts/polygon-137/0x6dcfd69c12e866dfbb857646b77f842c7b25a5fc/) | ⚠️ Unaudited |
| RefToken | token | polygon | n/a | 13 deployments: polygon [`0x055fa3...ff8bb5`](./contracts/polygon-137/0x055fa35955bd0d895d719d8f2a164685fbff8bb5/); polygon `0x0d0c7e...343e94`; polygon `0x13d9bb...292e4d`; polygon `0x1aca6c...790a4e`; polygon `0x1c6bcf...7baab5`; polygon `0x587290...b06798`; polygon `0x5f403d...402beb`; polygon `0x6c1338...49e57f`; polygon `0x7a0412...0e9b08`; polygon `0x7fc0fd...d6cfdc`; polygon `0x995491...316855`; polygon `0xc5d5a5...48fca0`; polygon `0xc7f694...cfbd7d` | ⚠️ Unaudited |
| Test | unknown | polygon | n/a | [`0xefb4ff...994740`](./contracts/polygon-137/0xefb4ff51dd2643f2d700a5561bf36959f4994740/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | 4 deployments: polygon [`0x1000bb...1eb8f9`](./contracts/polygon-137/0x1000bb854fbc6d98dc9d859d6cb47e22a31eb8f9/); polygon `0x41d9de...95e397`; polygon `0xcffbfa...fe8a77`; polygon `0xe7b7cf...5a5bed` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x036724...bb6e35` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19457d...61f5c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d7168...25402d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3f700a...c5ec01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d11d1...ebdfb1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x922dcf...ed62f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c3b60...9aaded` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf9a2d...c193d2` | ❓ Unverified |

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
| polygon | [`0xf378f8...76082e`](./contracts/polygon-137/0xf378f8e9603c2ec54b21f0a876ef847df976082e/) | WorldCupPool | core_logic | $483.85 | Verified native implementation with $483.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa2b205...8e5cc3`](./contracts/polygon-137/0xa2b205f8c0f0e30b3f73b7716a718c53cb8e5cc3/) | FireVaultEP | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x92a918...6c62c9`](./contracts/polygon-137/0x92a9180af33531a5d78d81d90afc0523dc6c62c9/) | Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4c1bfe...e8d6ee`](./contracts/polygon-137/0x4c1bfefc1ea12b698540c8f7cf233fe499e8d6ee/) | FBX_WETH_LP_Farm | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02e219...31dd86`](./contracts/polygon-137/0x02e219d7b59c43cb012bb87dcab86172ff31dd86/) | firebot_market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1c10db...9ae457`](./contracts/polygon-137/0x1c10db92c0a6e2bf089f08a60fa98158359ae457/) | FireBotGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc99567...c1d334`](./contracts/polygon-137/0xc99567b0b5649120fe882554cacfcaa68bc1d334/) | firebotMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe20e04...670234`](./contracts/polygon-137/0xe20e046b230a5530438d32abfbcc3e61d7670234/) | FirePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa461b5...cf132b`](./contracts/polygon-137/0xa461b57d4794447bb53ad584844c4a19c6cf132b/) | FireVaultFBX | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x09083f...91c049`](./contracts/polygon-137/0x09083fa4a172e52df84808edc31fa167e591c049/) | FireVaultFBXV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4d979f...022594`](./contracts/polygon-137/0x4d979fed1defc256c02a97687840c0afb7022594/) | FireVaultFBXV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ccfb7...067577`](./contracts/polygon-137/0x7ccfb7d2598421ea897ba94f5d3fd598f4067577/) | FireVaultFBXV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3c56f0...563a99`](./contracts/polygon-137/0x3c56f017d9ce85350df8f4b495033aaa15563a99/) | FUSDv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xad79b4...76dcf0`](./contracts/polygon-137/0xad79b4a1905de5e505a7c8b34a20d7456676dcf0/) | item_selector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc82669...cf4910`](./contracts/polygon-137/0xc82669f560e1d1099636ada24479bb0f2bcf4910/) | item_vault_swap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x257793...4c6626`](./contracts/polygon-137/0x257793cb6a8111d36d62f50dcd27926f404c6626/) | LPFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6dcfd6...25a5fc`](./contracts/polygon-137/0x6dcfd69c12e866dfbb857646b77f842c7b25a5fc/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x055fa3...ff8bb5`](./contracts/polygon-137/0x055fa35955bd0d895d719d8f2a164685fbff8bb5/) | RefToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xefb4ff...994740`](./contracts/polygon-137/0xefb4ff51dd2643f2d700a5561bf36959f4994740/) | Test | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 1 |

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
