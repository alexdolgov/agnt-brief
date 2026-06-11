# Agentic Audit Brief: Supernova

⚠️ Lifecycle status: DECLINING - TVL dropped 89.5% over 90 days

## Project Overview

- Project: Supernova (`supernova`)
- Website: [https://supernova.xyz/](https://supernova.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-11T03:18:10.045Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-ce25
- Chains: ethereum
- Contract surface: 47 unique implementations (82 raw deployments)
- DeFi Llama TVL: $2,116,535.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Supernova is an Ethereum DEX protocol with two product families: Supernova AMM, covering V2-style pair, factory, router, bootstrapper, and pair API contracts; and Supernova CL, covering concentrated-liquidity trading infrastructure. The protocol enables token swaps and liquidity provision across these AMM and concentrated-liquidity surfaces.

### Architecture

The protocol's infrastructure is shared across multiple pool deployers (CustomPoolDeployer), gauge and bribe factories, and a unified voting and ve-token system (VoterV3, VeArtProxy, Minter). These components support liquidity incentives and governance across all pool types, including the concentrated liquidity pools from Supernova CL.

## Audit Coverage Summary

- Verified implementations audited: 23/47 (48.9%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 47
- Raw deployments: 82
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 23 | 48.9% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlgebraVaultFactory | registry | ethereum | 2 deployments: ethereum [`0x789a0e...a43e62`](./contracts/ethereum-1/0x789a0e0a6aedf3e6c090d305ac59cfaf75a43e62/); ethereum `0xafc049...03038d` | ✅ Audited |
| BasePluginV3Factory | registry | ethereum | [`0xdbfd67...f99b97`](./contracts/ethereum-1/0xdbfd67d12cadb8925c1417ff3638693f2bf99b97/) | ✅ Audited |
| BlackholePairAPIV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x1fd265...7535aa`](./contracts/ethereum-1/0x1fd265236e240f4f4487ae91de589ec88f7535aa/); ethereum `0x2b9fc4...4963dc` | ✅ Audited |
| BribeFactoryV3 | operational_periphery | ethereum | 2 deployments: ethereum [`0x8bd718...89cbfb`](./contracts/ethereum-1/0x8bd718554d2644e4d1c7796f9097e1b93a89cbfb/); ethereum `0xeb37f1...37344c` | ✅ Audited |
| CustomPoolDeployer | core_logic | ethereum | 6 deployments: ethereum [`0x1c7986...59e963`](./contracts/ethereum-1/0x1c798614ef4c6a8f8a1aab25785714933e59e963/); ethereum `0x2493b3...89af4a`; ethereum `0x42f5ec...2493da`; ethereum `0x44acd9...cdddc0`; ethereum `0xc815b4...928eb8`; ethereum `0xd7b7cc...ac090e` | ✅ Audited |
| GaugeFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0x66647a...16adb0`](./contracts/ethereum-1/0x66647a19452e98e98a9f479883f241e33016adb0/); ethereum `0x92ec1b...646a0c` | ✅ Audited |
| GaugeFactoryCL | operational_periphery | ethereum | 2 deployments: ethereum [`0x056f24...542c80`](./contracts/ethereum-1/0x056f244a27f4d2a3467f80724b466976ee542c80/); ethereum `0x8d3820...8cd674` | ✅ Audited |
| GaugeManager | operational_periphery | ethereum | 2 deployments: ethereum [`0x120ea9...a6a9e3`](./contracts/ethereum-1/0x120ea99bdc2da6de1b98fbeb84cfaead96a6a9e3/); ethereum `0x19a410...517ae2` | ✅ Audited |
| MinterUpgradeable | unknown | ethereum | 2 deployments: ethereum [`0xa2b9c0...c32732`](./contracts/ethereum-1/0xa2b9c0f8d866562ce744497c3160749268c32732/); ethereum `0xfe29ea...da84a2` | ✅ Audited |
| PairBootstrapper | operational_periphery | ethereum | [`0x7f8f2b...c1cb66`](./contracts/ethereum-1/0x7f8f2b6d0b0aae8e95221ce90b5c26b128c1cb66/) | ✅ Audited |
| PairFactory | registry | ethereum | 2 deployments: ethereum [`0x5aef44...5bdc30`](./contracts/ethereum-1/0x5aef44edfc5a7edd30826c724ea12d7be15bdc30/); ethereum `0xb2fc25...5660d4` | ✅ Audited |
| PairGenerator | registry | ethereum | [`0x42a7a5...69bbb8`](./contracts/ethereum-1/0x42a7a5baafb1818da3a39ce1b97a58799d69bbb8/) | ✅ Audited |
| PermissionsRegistry | registry | ethereum | [`0x344eec...67c28d`](./contracts/ethereum-1/0x344eec31c725187cd026db73ed8805e72967c28d/) | ✅ Audited |
| RewardsDistributor | operational_periphery | ethereum | [`0xb3410a...90ea97`](./contracts/ethereum-1/0xb3410a30af5033af822b8ea5ad3bd0a19490ea97/) | ✅ Audited |
| RouterHelper | adapter | ethereum | 8 deployments: ethereum [`0x2d0a16...cff5c9`](./contracts/ethereum-1/0x2d0a16356d61dd3c8b49a587f0a91f1cd2cff5c9/); ethereum `0x46b6f6...335620`; ethereum `0x4ead88...55dae2`; ethereum `0x8e4387...a829a1`; ethereum `0xb7796f...370396`; ethereum `0xb8b5b1...89a4ba`; ethereum `0xbaed8d...6f00da`; ethereum `0xd8377a...0803c6` | ✅ Audited |
| RouterV2 | adapter | ethereum | 4 deployments: ethereum [`0x3ce467...95813b`](./contracts/ethereum-1/0x3ce4670530e2a30c99d0b21fed23cf446095813b/); ethereum `0xbfae8e...e3058f`; ethereum `0xf07567...d97ec9`; ethereum `0xfed77c...3d2c64` | ✅ Audited |
| SecurityRegistry | registry | ethereum | [`0x454e62...79bdfd`](./contracts/ethereum-1/0x454e62e725ad5a47931043f7e6369cfbb879bdfd/) | ✅ Audited |
| SuperNova | unknown | ethereum | [`0x00da84...200c78`](./contracts/ethereum-1/0x00da8466b296e382e5da2bf20962d0cb87200c78/) | ✅ Audited |
| TokenHandler | token | ethereum | [`0xa1154f...6de201`](./contracts/ethereum-1/0xa1154fe44a3d5c740644b9028e4d68fd876de201/) | ✅ Audited |
| veNFTAPI | token | ethereum | [`0x85dc70...9e5881`](./contracts/ethereum-1/0x85dc70913e49e5ebd888ada03034e3be109e5881/) | ✅ Audited |
| VoterV3 | unknown | ethereum | 2 deployments: ethereum [`0x1c7bf2...1d8171`](./contracts/ethereum-1/0x1c7bf2532dfa34eeea02c3759e0ca8d87b1d8171/); ethereum `0xa6ee38...5164f7` | ✅ Audited |
| VotingBalanceLogic | unknown | ethereum | 2 deployments: ethereum [`0x1de64c...a20e28`](./contracts/ethereum-1/0x1de64cd9de11525f9bc1494d1f7d39d83da20e28/); ethereum `0xed686a...319847` | ✅ Audited |
| VotingEscrow | operational_periphery | ethereum | [`0x4c3e76...ee1d44`](./contracts/ethereum-1/0x4c3e7640b3e3a39a2e5d030a0c1412d80fee1d44/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlgebraCustomPoolEntryPoint | core_logic | ethereum | [`0xb86a85...831288`](./contracts/ethereum-1/0xb86a85acf0e658e4d3ac02c9fac3e122e5831288/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | ethereum | [`0x1e8626...70a337`](./contracts/ethereum-1/0x1e862624eda92b8fe532c16253356d17dd70a337/) | ⚠️ Unaudited |
| AlgebraFactory | registry | ethereum | 2 deployments: ethereum [`0x01f99c...3ade8c`](./contracts/ethereum-1/0x01f99ca678f82de3c9da01dbd2998e75ce3ade8c/); ethereum `0x44b7fb...e89c55` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | ethereum | [`0xc9ba2e...041f18`](./contracts/ethereum-1/0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18/) | ⚠️ Unaudited |
| AlgebraPoolAPI | core_logic | ethereum | 2 deployments: ethereum [`0x0ee855...12ea59`](./contracts/ethereum-1/0x0ee8553a64edf161b3daa6907a4ff45b0a12ea59/); ethereum `0xc0a4ba...56e95c` | ⚠️ Unaudited |
| AlgebraPoolAPIStorage | core_logic | ethereum | 2 deployments: ethereum [`0x3d219d...29337a`](./contracts/ethereum-1/0x3d219d5089331f6bf99cb20b9b199ab3b429337a/); ethereum `0x42e71d...497bb8` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | ethereum | 2 deployments: ethereum [`0x45bc0f...deba45`](./contracts/ethereum-1/0x45bc0f9855a626743d57d37d989f3b9462deba45/); ethereum `0xde5ffe...e71776` | ⚠️ Unaudited |
| FarmingCenter | unknown | ethereum | [`0x428ea5...6c91af`](./contracts/ethereum-1/0x428ea5b4ac84ab687851e6a2688411bdbd6c91af/) | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | ethereum | [`0x31eda5...3f5975`](./contracts/ethereum-1/0x31eda5529b8f219243e8248eff368bc36a3f5975/) | ⚠️ Unaudited |
| GSCORE | unknown | ethereum | [`0x0fd4a5...44a616`](./contracts/ethereum-1/0x0fd4a527a4422aca27f48cd79e4093867544a616/) | ⚠️ Unaudited |
| NFTDescriptor | token | ethereum | [`0xabca00...851045`](./contracts/ethereum-1/0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | [`0x00d5bb...c8aaaa`](./contracts/ethereum-1/0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | ethereum | 2 deployments: ethereum [`0x405d79...ad2884`](./contracts/ethereum-1/0x405d790b79be7b1fd413a7ffcb08604e9bad2884/); ethereum `0xf9bc94...b6535c` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | ethereum | [`0x48012a...92eee3`](./contracts/ethereum-1/0x48012a780779f12b27f0f7f558cab5511d92eee3/) | ⚠️ Unaudited |
| Quoter | periphery | ethereum | [`0xf9439c...529e41`](./contracts/ethereum-1/0xf9439cd803dcb11fa574bcc8421207f89b529e41/) | ⚠️ Unaudited |
| QuoterV2 | periphery | ethereum | [`0x821755...efb727`](./contracts/ethereum-1/0x8217550d36823b1194b58562dac55d7fe8efb727/) | ⚠️ Unaudited |
| RouterHelperZap | adapter | ethereum | 4 deployments: ethereum [`0x15783a...d95564`](./contracts/ethereum-1/0x15783afd1ae95cc2a9faca5a52be001a52d95564/); ethereum `0xb3a44f...d76af1`; ethereum `0xc3201a...220ef8`; ethereum `0xeed02a...779af7` | ⚠️ Unaudited |
| SuperNovaClaims | governance | ethereum | [`0x313fdf...961309`](./contracts/ethereum-1/0x313fdfcc9f19a90748072baec39d786d34961309/) | ⚠️ Unaudited |
| SwapRouter | adapter | ethereum | [`0x72d63a...91c8ac`](./contracts/ethereum-1/0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac/) | ⚠️ Unaudited |
| TickLens | periphery | ethereum | [`0x4e6a86...a7d6c9`](./contracts/ethereum-1/0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9/) | ⚠️ Unaudited |
| TokenAPI | token | ethereum | 2 deployments: ethereum [`0x227534...810b31`](./contracts/ethereum-1/0x227534a66e521cfd95abb9e65c48d69ae5810b31/); ethereum `0xfc0d06...f4522d` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | ethereum | 2 deployments: ethereum [`0x19f5f9...621884`](./contracts/ethereum-1/0x19f5f9ba55b676cfbb0fbb91f622020ba4621884/); ethereum `0x87e398...397551` | ⚠️ Unaudited |
| veNFTAPIV0 | token | ethereum | [`0x703fb6...715db6`](./contracts/ethereum-1/0x703fb6862b8d55a13fb174f3b102e722f6715db6/) | ⚠️ Unaudited |
| VoterFactoryLib | registry | ethereum | [`0xbd08f4...a95278`](./contracts/ethereum-1/0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278/) | ⚠️ Unaudited |

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
| [link](https://resources.supernova.xyz/Paladin_Supernova_Final_Report.pdf) | Paladin | Audit | 2026-02 | fresh | Direct | contract_name | 48 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb86a85...831288`](./contracts/ethereum-1/0xb86a85acf0e658e4d3ac02c9fac3e122e5831288/) | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9ba2e...041f18`](./contracts/ethereum-1/0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18/) | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45bc0f...deba45`](./contracts/ethereum-1/0x45bc0f9855a626743d57d37d989f3b9462deba45/) | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31eda5...3f5975`](./contracts/ethereum-1/0x31eda5529b8f219243e8248eff368bc36a3f5975/) | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fd4a5...44a616`](./contracts/ethereum-1/0x0fd4a527a4422aca27f48cd79e4093867544a616/) | GSCORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabca00...851045`](./contracts/ethereum-1/0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00d5bb...c8aaaa`](./contracts/ethereum-1/0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x405d79...ad2884`](./contracts/ethereum-1/0x405d790b79be7b1fd413a7ffcb08604e9bad2884/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48012a...92eee3`](./contracts/ethereum-1/0x48012a780779f12b27f0f7f558cab5511d92eee3/) | PluginV3Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9439c...529e41`](./contracts/ethereum-1/0xf9439cd803dcb11fa574bcc8421207f89b529e41/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x821755...efb727`](./contracts/ethereum-1/0x8217550d36823b1194b58562dac55d7fe8efb727/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15783a...d95564`](./contracts/ethereum-1/0x15783afd1ae95cc2a9faca5a52be001a52d95564/) | RouterHelperZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x313fdf...961309`](./contracts/ethereum-1/0x313fdfcc9f19a90748072baec39d786d34961309/) | SuperNovaClaims | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72d63a...91c8ac`](./contracts/ethereum-1/0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e6a86...a7d6c9`](./contracts/ethereum-1/0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19f5f9...621884`](./contracts/ethereum-1/0x19f5f9ba55b676cfbb0fbb91f622020ba4621884/) | VeArtProxyUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x703fb6...715db6`](./contracts/ethereum-1/0x703fb6862b8d55a13fb174f3b102e722f6715db6/) | veNFTAPIV0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd08f4...a95278`](./contracts/ethereum-1/0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278/) | VoterFactoryLib | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 3 |
| standard_library | 7 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=48

Fork inheritance lineage and inherited audits are included when available.
