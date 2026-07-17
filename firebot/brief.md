# Agentic Audit Brief: FireBot

## Project Overview

- Project: FireBot (`firebot`)
- Website: [https://firebot.gg](https://firebot.gg)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.347Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: polygon
- Contract surface: 42 unique implementations (82 raw deployments)
- DeFi Llama TVL: $2,357,511.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 68 project-authored contract(s) across 1 chain(s); 27 ERC20 tokens, 1 ERC721 NFT, 3 ERC1155 multi-tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 8 common project-authored base contract(s) (erc20burnable, erc20permit, eip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 192; live-surface contracts included: 82 (66 live, 16 unknown).
- Excluded by liveness: 110 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/24 (4.2%)
- Deployed-live implementations: 26 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/26
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 42
- Raw deployments: 82
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| RedTiger | Tier 2 | 1 | 3.8% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ElementalParticles | unknown | polygon | n/a | [`0x60ed6acef3a96f8cdaf0c0d207bbafa66e751af2`](./contracts/polygon-137/0x60ed6acef3a96f8cdaf0c0d207bbafa66e751af2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraPool | core_logic | polygon | n/a | [`0x17b509b2b65b0d07b9e46bfc2ffe6c9c09a8e821`](./contracts/polygon-137/0x17b509b2b65b0d07b9e46bfc2ffe6c9c09a8e821/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | polygon | n/a | [`0xaeb318360f27748acb200ce616e389a6c9409a07`](./contracts/polygon-137/0xaeb318360f27748acb200ce616e389a6c9409a07/) | ⚠️ Unaudited |
| Farm | unknown | polygon | n/a | 2 deployments: polygon [`0x92a9180af33531a5d78d81d90afc0523dc6c62c9`](./contracts/polygon-137/0x92a9180af33531a5d78d81d90afc0523dc6c62c9/); polygon `0xf65c47befed8eb5d388bce2c0e88254360f57ab8` | ⚠️ Unaudited |
| FBX_WETH_LP_Farm | token | polygon | n/a | [`0x4c1bfefc1ea12b698540c8f7cf233fe499e8d6ee`](./contracts/polygon-137/0x4c1bfefc1ea12b698540c8f7cf233fe499e8d6ee/) | ⚠️ Unaudited |
| firebot_market | unknown | polygon | n/a | 3 deployments: polygon [`0x02e219d7b59c43cb012bb87dcab86172ff31dd86`](./contracts/polygon-137/0x02e219d7b59c43cb012bb87dcab86172ff31dd86/); polygon `0x242fa75d00d8904ae01abb3625c22a8138af9538`; polygon `0xd709e16081b3ac929833a1cbd389555142d2d0bd` | ⚠️ Unaudited |
| FireBotGovernor | governance | polygon | n/a | [`0x1c10db92c0a6e2bf089f08a60fa98158359ae457`](./contracts/polygon-137/0x1c10db92c0a6e2bf089f08a60fa98158359ae457/) | ⚠️ Unaudited |
| firebotMarket | unknown | polygon | n/a | 2 deployments: polygon [`0xc99567b0b5649120fe882554cacfcaa68bc1d334`](./contracts/polygon-137/0xc99567b0b5649120fe882554cacfcaa68bc1d334/); polygon `0xf312bf23569151becd5ba27745e4e05e9d7eb39c` | ⚠️ Unaudited |
| FireBotToken | token | polygon | n/a | [`0xd125443f38a69d776177c2b9c041f462936f8218`](./contracts/polygon-137/0xd125443f38a69d776177c2b9c041f462936f8218/) | ⚠️ Unaudited |
| FirePool | core_logic | polygon | n/a | [`0xe20e046b230a5530438d32abfbcc3e61d7670234`](./contracts/polygon-137/0xe20e046b230a5530438d32abfbcc3e61d7670234/) | ⚠️ Unaudited |
| FireVaultEP | core_logic | polygon | n/a | [`0xa2b205f8c0f0e30b3f73b7716a718c53cb8e5cc3`](./contracts/polygon-137/0xa2b205f8c0f0e30b3f73b7716a718c53cb8e5cc3/) | ⚠️ Unaudited |
| FireVaultFBX | core_logic | polygon | n/a | 3 deployments: polygon [`0xa461b57d4794447bb53ad584844c4a19c6cf132b`](./contracts/polygon-137/0xa461b57d4794447bb53ad584844c4a19c6cf132b/); polygon `0xd3368e1fe701e9b3a7be7de1560cf08375a78e75`; polygon `0xe344dbaa709c52982ecd3bbdd9b690631d127b9a` | ⚠️ Unaudited |
| FireVaultFBXV2 | core_logic | polygon | n/a | 18 deployments: polygon [`0x09083fa4a172e52df84808edc31fa167e591c049`](./contracts/polygon-137/0x09083fa4a172e52df84808edc31fa167e591c049/); polygon `0x0985342ed8cf870b970526f7b8ccf40b68a6d4df`; polygon `0x0f322612bd773346246786fab0014fcaa68b22d9`; polygon `0x2b5f1730efcd888591e4916606e0247b3d1ded23`; polygon `0x30f096f04e8be3b6d6b0e59256249b6f680bd486`; polygon `0x36466360e3d1f245e53fbe95cb1238284eabbf56`; polygon `0x4758d97b44c9ae11d5e45b956c5e050711e16044`; polygon `0x65104285ebd1d500293a20dda5a40c5ce6cd9047`; polygon `0x65b8e5d50885c2a2896ac65ca5772e71377f936d`; polygon `0x77ff4fbc590e54f32b5b64a1f2287525c3583348`; polygon `0x869f1ed23ca99f00efd38baf891cc36a918e241b`; polygon `0x960d43be128585ca45365cd74a7773b9d814dfbe`; polygon `0x9bf581e148f187f5df8cea884daa6192589c14c7`; polygon `0xa163f1a2ebcca2eb07fac7388be491d9768f5cfe`; polygon `0xd0e48967af74240d1c9526dcac63a9a782e7c271`; polygon `0xda6167d718b7439b8eca16e011d2d85c2c7046d1`; polygon `0xe44f4eb297ab29e163968a72df27a2442c05f5f8`; polygon `0xf584be26441bf224a91d4f6bb0320b7c9f4ef875` | ⚠️ Unaudited |
| FireVaultFBXV3 | core_logic | polygon | n/a | [`0x4d979fed1defc256c02a97687840c0afb7022594`](./contracts/polygon-137/0x4d979fed1defc256c02a97687840c0afb7022594/) | ⚠️ Unaudited |
| FireVaultFBXV4 | core_logic | polygon | n/a | [`0x7ccfb7d2598421ea897ba94f5d3fd598f4067577`](./contracts/polygon-137/0x7ccfb7d2598421ea897ba94f5d3fd598f4067577/) | ⚠️ Unaudited |
| FUSDv2 | unknown | polygon | n/a | [`0x3c56f017d9ce85350df8f4b495033aaa15563a99`](./contracts/polygon-137/0x3c56f017d9ce85350df8f4b495033aaa15563a99/) | ⚠️ Unaudited |
| item_selector | unknown | polygon | n/a | [`0xad79b4a1905de5e505a7c8b34a20d7456676dcf0`](./contracts/polygon-137/0xad79b4a1905de5e505a7c8b34a20d7456676dcf0/) | ⚠️ Unaudited |
| item_vault_swap | core_logic | polygon | n/a | [`0xc82669f560e1d1099636ada24479bb0f2bcf4910`](./contracts/polygon-137/0xc82669f560e1d1099636ada24479bb0f2bcf4910/) | ⚠️ Unaudited |
| LPFarm | unknown | polygon | n/a | [`0x257793cb6a8111d36d62f50dcd27926f404c6626`](./contracts/polygon-137/0x257793cb6a8111d36d62f50dcd27926f404c6626/) | ⚠️ Unaudited |
| Migrations | operational_periphery | polygon | n/a | [`0x6dcfd69c12e866dfbb857646b77f842c7b25a5fc`](./contracts/polygon-137/0x6dcfd69c12e866dfbb857646b77f842c7b25a5fc/) | ⚠️ Unaudited |
| Oracle | unknown | polygon | n/a | [`0x1267398f95a7ded2c5eaabd5508c047aff008592`](./contracts/polygon-137/0x1267398f95a7ded2c5eaabd5508c047aff008592/) | ⚠️ Unaudited |
| RefToken | token | polygon | n/a | 13 deployments: polygon [`0x055fa35955bd0d895d719d8f2a164685fbff8bb5`](./contracts/polygon-137/0x055fa35955bd0d895d719d8f2a164685fbff8bb5/); polygon `0x0d0c7e1ec40bc585d5c4e42dbab92be50c343e94`; polygon `0x13d9bb61fcc4d51b80fec1575de1d30500292e4d`; polygon `0x1aca6cde3cd48bb81715228c56a78cf23d790a4e`; polygon `0x1c6bcf00a3dafef41f4e69a36ba4de1a7f7baab5`; polygon `0x587290e8de1485c56a33368639bd45c68bb06798`; polygon `0x5f403d3517612fb4c93bd99d78505099cb402beb`; polygon `0x6c133826102c1da5dfcc023980a23e2f9649e57f`; polygon `0x7a0412239534361eafb2bd455b8d2c23350e9b08`; polygon `0x7fc0fd0d563c0487342ae937d6c0d98565d6cfdc`; polygon `0x995491caf3b001f7b0a5d945c32242208a316855`; polygon `0xc5d5a56fd7f2d7fd27bd670e17f8dbb7af48fca0`; polygon `0xc7f6940a28414ed619d4f08fd4fa07b972cfbd7d` | ⚠️ Unaudited |
| Test | unknown | polygon | n/a | [`0xefb4ff51dd2643f2d700a5561bf36959f4994740`](./contracts/polygon-137/0xefb4ff51dd2643f2d700a5561bf36959f4994740/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | 4 deployments: polygon [`0x1000bb854fbc6d98dc9d859d6cb47e22a31eb8f9`](./contracts/polygon-137/0x1000bb854fbc6d98dc9d859d6cb47e22a31eb8f9/); polygon `0x41d9de53ebf26f766229e42aa02904eb2495e397`; polygon `0xcffbfa978ac3fb10e829ca6b763c307daafe8a77`; polygon `0xe7b7cf919e2798defc1f08133312cd151e5a5bed` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | polygon | n/a | 3 deployments: polygon [`0x6c14fa1b23a245efb97cbad357ca3948052d56df`](./contracts/polygon-137/0x6c14fa1b23a245efb97cbad357ca3948052d56df/); polygon `0x9da4dee26ab002521f0cb7ac73dcb91c6e1f2f1c`; polygon `0xa6b96e60648e11055e82f1b7b226a2aa453a29bb` | ⚠️ Unaudited |
| WorldCupPool | core_logic | polygon | n/a | [`0xf378f8e9603c2ec54b21f0a876ef847df976082e`](./contracts/polygon-137/0xf378f8e9603c2ec54b21f0a876ef847df976082e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x036724df2bf0b053bb7e577e70cb61b4b9bb6e35` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19457defec6feee72c83ce43ea40a97f2561f5c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d7168e865ef72372badf5f9b4a561ba1a25402d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3f700a105741e88f9f2a0a2e72b3a6aa82c5ec01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x61521398d03d59ebd7fd13f450c0cf9a645add21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6be50a218fc7a1f5098cdbdad3dfeaf877ec0007` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d11d105614c5b78f626ab7e3f2d156efdebdfb1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x74911f83e714888a9f29d9af0007f3408b5fd403` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x74b03ffee5ed5a9436caa719a0455038c2cfea94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x922dcfd4ac4b219b3bf0d731ce2ef63e60ed62f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x96f5791c6e2e436715888a0194c3f481930bb17e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c3b60e93f1e6a07f638e72f17c24e96fb9aaded` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2d6560c45e09ea9221c3815ad0fe53fd0439b08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbaec62f014a65941f51ea542e73934776e5c8410` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc42f651c6b8efa7a1a3d6953353ee63898620f80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf9a2de6c4a1799599b594fd9905a6e25bc193d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [RedTiger_FireBot_2023.pdf](https://firebot.gg/audits/RedTiger_FireBot_2023.pdf) | RedTiger | Audit | 2023-07 | stale | Direct | contract_name | 1 | n/a |
| [RedTiger_Sweeep_2023.pdf](https://firebot.gg/audits/RedTiger_Sweeep_2023.pdf) | RedTiger | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x17b509b2b65b0d07b9e46bfc2ffe6c9c09a8e821`](./contracts/polygon-137/0x17b509b2b65b0d07b9e46bfc2ffe6c9c09a8e821/) | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaeb318360f27748acb200ce616e389a6c9409a07`](./contracts/polygon-137/0xaeb318360f27748acb200ce616e389a6c9409a07/) | CometWithExtendedAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x92a9180af33531a5d78d81d90afc0523dc6c62c9`](./contracts/polygon-137/0x92a9180af33531a5d78d81d90afc0523dc6c62c9/) | Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4c1bfefc1ea12b698540c8f7cf233fe499e8d6ee`](./contracts/polygon-137/0x4c1bfefc1ea12b698540c8f7cf233fe499e8d6ee/) | FBX_WETH_LP_Farm | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02e219d7b59c43cb012bb87dcab86172ff31dd86`](./contracts/polygon-137/0x02e219d7b59c43cb012bb87dcab86172ff31dd86/) | firebot_market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1c10db92c0a6e2bf089f08a60fa98158359ae457`](./contracts/polygon-137/0x1c10db92c0a6e2bf089f08a60fa98158359ae457/) | FireBotGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc99567b0b5649120fe882554cacfcaa68bc1d334`](./contracts/polygon-137/0xc99567b0b5649120fe882554cacfcaa68bc1d334/) | firebotMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd125443f38a69d776177c2b9c041f462936f8218`](./contracts/polygon-137/0xd125443f38a69d776177c2b9c041f462936f8218/) | FireBotToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe20e046b230a5530438d32abfbcc3e61d7670234`](./contracts/polygon-137/0xe20e046b230a5530438d32abfbcc3e61d7670234/) | FirePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa2b205f8c0f0e30b3f73b7716a718c53cb8e5cc3`](./contracts/polygon-137/0xa2b205f8c0f0e30b3f73b7716a718c53cb8e5cc3/) | FireVaultEP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa461b57d4794447bb53ad584844c4a19c6cf132b`](./contracts/polygon-137/0xa461b57d4794447bb53ad584844c4a19c6cf132b/) | FireVaultFBX | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x09083fa4a172e52df84808edc31fa167e591c049`](./contracts/polygon-137/0x09083fa4a172e52df84808edc31fa167e591c049/) | FireVaultFBXV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4d979fed1defc256c02a97687840c0afb7022594`](./contracts/polygon-137/0x4d979fed1defc256c02a97687840c0afb7022594/) | FireVaultFBXV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ccfb7d2598421ea897ba94f5d3fd598f4067577`](./contracts/polygon-137/0x7ccfb7d2598421ea897ba94f5d3fd598f4067577/) | FireVaultFBXV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3c56f017d9ce85350df8f4b495033aaa15563a99`](./contracts/polygon-137/0x3c56f017d9ce85350df8f4b495033aaa15563a99/) | FUSDv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xad79b4a1905de5e505a7c8b34a20d7456676dcf0`](./contracts/polygon-137/0xad79b4a1905de5e505a7c8b34a20d7456676dcf0/) | item_selector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc82669f560e1d1099636ada24479bb0f2bcf4910`](./contracts/polygon-137/0xc82669f560e1d1099636ada24479bb0f2bcf4910/) | item_vault_swap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x257793cb6a8111d36d62f50dcd27926f404c6626`](./contracts/polygon-137/0x257793cb6a8111d36d62f50dcd27926f404c6626/) | LPFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6dcfd69c12e866dfbb857646b77f842c7b25a5fc`](./contracts/polygon-137/0x6dcfd69c12e866dfbb857646b77f842c7b25a5fc/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1267398f95a7ded2c5eaabd5508c047aff008592`](./contracts/polygon-137/0x1267398f95a7ded2c5eaabd5508c047aff008592/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x055fa35955bd0d895d719d8f2a164685fbff8bb5`](./contracts/polygon-137/0x055fa35955bd0d895d719d8f2a164685fbff8bb5/) | RefToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xefb4ff51dd2643f2d700a5561bf36959f4994740`](./contracts/polygon-137/0xefb4ff51dd2643f2d700a5561bf36959f4994740/) | Test | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf378f8e9603c2ec54b21f0a876ef847df976082e`](./contracts/polygon-137/0xf378f8e9603c2ec54b21f0a876ef847df976082e/) | WorldCupPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [2866] RedTiger_Sweeep_2023.pdf

Fork inheritance lineage and inherited audits are included when available.
