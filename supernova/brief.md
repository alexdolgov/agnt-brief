# Agentic Audit Brief: Supernova

⚠️ Lifecycle status: DECLINING - TVL dropped 89.5% over 90 days

## Project Overview

- Project: Supernova (`supernova`)
- Website: [https://supernova.xyz/](https://supernova.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T17:51:08.260Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: ethereum
- Contract surface: 41 unique implementations (57 raw deployments)
- DeFi Llama TVL: $1,348,460.00
- On-chain TVL (included contracts): $4.67
- TVL by chain: Ethereum $4.67

## Project Description

Supernova is an Ethereum DEX protocol with two product families: Supernova AMM, covering V2-style pair, factory, router, bootstrapper, and pair API contracts; and Supernova CL, covering concentrated-liquidity trading infrastructure. The protocol enables token swaps and liquidity provision across these AMM and concentrated-liquidity surfaces.

### Architecture

The protocol's infrastructure is shared across multiple pool deployers (CustomPoolDeployer), gauge and bribe factories, and a unified voting and ve-token system (VoterV3, VeArtProxy, Minter). These components support liquidity incentives and governance across all pool types, including the concentrated liquidity pools from Supernova CL.

## Contract Surface Quality

- Indexed contracts: 91; live-surface contracts included: 57 (54 live, 3 unknown).
- Excluded by liveness: 0 inactive, 34 singleton, 0 uninitialized.
- Deployment units: 1/16 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/38.

## Audit Coverage Summary

- Verified implementations audited: 14/41 (34.1%)
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 41
- Raw deployments: 57
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $4.67
- Latest audit: 2026-02 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $4.67 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 14 | 34.1% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BasePluginV3Factory | registry | ethereum | n/a | [`0xdbfd67...f99b97`](./contracts/ethereum-1/0xdbfd67d12cadb8925c1417ff3638693f2bf99b97/) | ✅ Audited |
| BlackholePairAPIV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fd265...7535aa`](./contracts/ethereum-1/0x1fd265236e240f4f4487ae91de589ec88f7535aa/); ethereum `0x2b9fc4...4963dc` | ✅ Audited |
| PairBootstrapper | unknown | ethereum | n/a | [`0x7f8f2b...c1cb66`](./contracts/ethereum-1/0x7f8f2b6d0b0aae8e95221ce90b5c26b128c1cb66/) | ✅ Audited |
| PairGenerator | unknown | ethereum | n/a | [`0x42a7a5...69bbb8`](./contracts/ethereum-1/0x42a7a5baafb1818da3a39ce1b97a58799d69bbb8/) | ✅ Audited |
| PermissionsRegistry | registry | ethereum | n/a | [`0x344eec...67c28d`](./contracts/ethereum-1/0x344eec31c725187cd026db73ed8805e72967c28d/) | ✅ Audited |
| RewardsDistributor | operational_periphery | ethereum | n/a | [`0xb3410a...90ea97`](./contracts/ethereum-1/0xb3410a30af5033af822b8ea5ad3bd0a19490ea97/) | ✅ Audited |
| RouterHelper | adapter | ethereum | n/a | 4 deployments: ethereum [`0x46b6f6...335620`](./contracts/ethereum-1/0x46b6f6c4148031c504d37e2df538de0d43335620/); ethereum `0x4ead88...55dae2`; ethereum `0xb7796f...370396`; ethereum `0xb8b5b1...89a4ba` | ✅ Audited |
| RouterV2 | adapter | ethereum | n/a | 4 deployments: ethereum [`0x3ce467...95813b`](./contracts/ethereum-1/0x3ce4670530e2a30c99d0b21fed23cf446095813b/); ethereum `0xbfae8e...e3058f`; ethereum `0xf07567...d97ec9`; ethereum `0xfed77c...3d2c64` | ✅ Audited |
| SecurityRegistry | registry | ethereum | n/a | [`0x454e62...79bdfd`](./contracts/ethereum-1/0x454e62e725ad5a47931043f7e6369cfbb879bdfd/) | ✅ Audited |
| SuperNova | unknown | ethereum | n/a | [`0x00da84...200c78`](./contracts/ethereum-1/0x00da8466b296e382e5da2bf20962d0cb87200c78/) | ✅ Audited |
| TokenHandler | token | ethereum | n/a | [`0xa1154f...6de201`](./contracts/ethereum-1/0xa1154fe44a3d5c740644b9028e4d68fd876de201/) | ✅ Audited |
| veNFTAPI | token | ethereum | n/a | [`0x85dc70...9e5881`](./contracts/ethereum-1/0x85dc70913e49e5ebd888ada03034e3be109e5881/) | ✅ Audited |
| VotingBalanceLogic | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1de64c...a20e28`](./contracts/ethereum-1/0x1de64cd9de11525f9bc1494d1f7d39d83da20e28/); ethereum `0xed686a...319847` | ✅ Audited |
| VotingEscrow | operational_periphery | ethereum | n/a | [`0x4c3e76...ee1d44`](./contracts/ethereum-1/0x4c3e7640b3e3a39a2e5d030a0c1412d80fee1d44/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraPool | core_logic | ethereum | n/a | [`0x7ec5e0...551738`](./contracts/ethereum-1/0x7ec5e050baaa8422d2a1fdd7a81f4650a7551738/) | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | ethereum | n/a | [`0xb86a85...831288`](./contracts/ethereum-1/0xb86a85acf0e658e4d3ac02c9fac3e122e5831288/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | ethereum | n/a | [`0x1e8626...70a337`](./contracts/ethereum-1/0x1e862624eda92b8fe532c16253356d17dd70a337/) | ⚠️ Unaudited |
| AlgebraFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x01f99c...3ade8c`](./contracts/ethereum-1/0x01f99ca678f82de3c9da01dbd2998e75ce3ade8c/); ethereum `0x44b7fb...e89c55` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | ethereum | n/a | [`0xc9ba2e...041f18`](./contracts/ethereum-1/0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x45bc0f...deba45`](./contracts/ethereum-1/0x45bc0f9855a626743d57d37d989f3b9462deba45/); ethereum `0xde5ffe...e71776` | ⚠️ Unaudited |
| ASSET | unknown | ethereum | n/a | [`0xf3212b...92e878`](./contracts/ethereum-1/0xf3212bc5c79e9c36428770dc074490cba192e878/) | ⚠️ Unaudited |
| Bribe | operational_periphery | ethereum | n/a | [`0x016ac7...5fc144`](./contracts/ethereum-1/0x016ac7265c967581227aa6fac5cf6489d05fc144/) | ⚠️ Unaudited |
| FarmingCenter | unknown | ethereum | n/a | [`0x428ea5...6c91af`](./contracts/ethereum-1/0x428ea5b4ac84ab687851e6a2688411bdbd6c91af/) | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | ethereum | n/a | [`0x31eda5...3f5975`](./contracts/ethereum-1/0x31eda5529b8f219243e8248eff368bc36a3f5975/) | ⚠️ Unaudited |
| GaugeCL | operational_periphery | ethereum | n/a | [`0x40f348...250935`](./contracts/ethereum-1/0x40f348c884a872efc6144db381a83be8cf250935/) | ⚠️ Unaudited |
| GaugeV2 | operational_periphery | ethereum | n/a | [`0x094bef...359052`](./contracts/ethereum-1/0x094bef1766eec5db769be1b31246b60787359052/) | ⚠️ Unaudited |
| GSCORE | unknown | ethereum | n/a | [`0x0fd4a5...44a616`](./contracts/ethereum-1/0x0fd4a527a4422aca27f48cd79e4093867544a616/) | ⚠️ Unaudited |
| NFTDescriptor | token | ethereum | n/a | [`0xabca00...851045`](./contracts/ethereum-1/0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | unit-38562 | [`0x00d5bb...c8aaaa`](./contracts/ethereum-1/0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa/) | ⚠️ Unaudited |
| Pair | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4f20c3...f86e94`](./contracts/ethereum-1/0x4f20c37766759c3956f030d2e8749d493ef86e94/); ethereum `0xa9eae0...d2f1b5`; ethereum `0xe3b07b...b9ccfe`; ethereum `0xf2c6e6...de3a83` | ⚠️ Unaudited |
| PairFees | unknown | ethereum | n/a | [`0x35b842...ec59a1`](./contracts/ethereum-1/0x35b842d371fb9faaee00ad751016181ae7ec59a1/) | ⚠️ Unaudited |
| PluginV3Deployer | unknown | ethereum | n/a | [`0x48012a...92eee3`](./contracts/ethereum-1/0x48012a780779f12b27f0f7f558cab5511d92eee3/) | ⚠️ Unaudited |
| Quoter | periphery | ethereum | n/a | [`0xf9439c...529e41`](./contracts/ethereum-1/0xf9439cd803dcb11fa574bcc8421207f89b529e41/) | ⚠️ Unaudited |
| QuoterV2 | periphery | ethereum | n/a | [`0x821755...efb727`](./contracts/ethereum-1/0x8217550d36823b1194b58562dac55d7fe8efb727/) | ⚠️ Unaudited |
| RouterHelperZap | adapter | ethereum | n/a | 4 deployments: ethereum [`0x15783a...d95564`](./contracts/ethereum-1/0x15783afd1ae95cc2a9faca5a52be001a52d95564/); ethereum `0xb3a44f...d76af1`; ethereum `0xc3201a...220ef8`; ethereum `0xeed02a...779af7` | ⚠️ Unaudited |
| SHARE | unknown | ethereum | n/a | [`0x62e134...63f0e2`](./contracts/ethereum-1/0x62e134d7274efadb9d165baff76c7340e663f0e2/) | ⚠️ Unaudited |
| SuperNovaClaims | governance | ethereum | n/a | [`0x313fdf...961309`](./contracts/ethereum-1/0x313fdfcc9f19a90748072baec39d786d34961309/) | ⚠️ Unaudited |
| SwapRouter | adapter | ethereum | n/a | [`0x72d63a...91c8ac`](./contracts/ethereum-1/0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac/) | ⚠️ Unaudited |
| TickLens | periphery | ethereum | n/a | [`0x4e6a86...a7d6c9`](./contracts/ethereum-1/0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9/) | ⚠️ Unaudited |
| veNFTAPIV0 | token | ethereum | n/a | [`0x703fb6...715db6`](./contracts/ethereum-1/0x703fb6862b8d55a13fb174f3b102e722f6715db6/) | ⚠️ Unaudited |
| VoterFactoryLib | registry | ethereum | n/a | [`0xbd08f4...a95278`](./contracts/ethereum-1/0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278/) | ⚠️ Unaudited |

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
| [link](https://resources.supernova.xyz/Paladin_Supernova_Final_Report.pdf) | Paladin | Audit | 2026-02 | fresh | Direct | contract_name | 22 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7ec5e0...551738`](./contracts/ethereum-1/0x7ec5e050baaa8422d2a1fdd7a81f4650a7551738/) | AlgebraPool | core_logic | $4.67 | Verified native implementation with $4.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb86a85...831288`](./contracts/ethereum-1/0xb86a85acf0e658e4d3ac02c9fac3e122e5831288/) | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9ba2e...041f18`](./contracts/ethereum-1/0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18/) | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45bc0f...deba45`](./contracts/ethereum-1/0x45bc0f9855a626743d57d37d989f3b9462deba45/) | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3212b...92e878`](./contracts/ethereum-1/0xf3212bc5c79e9c36428770dc074490cba192e878/) | ASSET | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x016ac7...5fc144`](./contracts/ethereum-1/0x016ac7265c967581227aa6fac5cf6489d05fc144/) | Bribe | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x428ea5...6c91af`](./contracts/ethereum-1/0x428ea5b4ac84ab687851e6a2688411bdbd6c91af/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31eda5...3f5975`](./contracts/ethereum-1/0x31eda5529b8f219243e8248eff368bc36a3f5975/) | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40f348...250935`](./contracts/ethereum-1/0x40f348c884a872efc6144db381a83be8cf250935/) | GaugeCL | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x094bef...359052`](./contracts/ethereum-1/0x094bef1766eec5db769be1b31246b60787359052/) | GaugeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fd4a5...44a616`](./contracts/ethereum-1/0x0fd4a527a4422aca27f48cd79e4093867544a616/) | GSCORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabca00...851045`](./contracts/ethereum-1/0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00d5bb...c8aaaa`](./contracts/ethereum-1/0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f20c3...f86e94`](./contracts/ethereum-1/0x4f20c37766759c3956f030d2e8749d493ef86e94/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35b842...ec59a1`](./contracts/ethereum-1/0x35b842d371fb9faaee00ad751016181ae7ec59a1/) | PairFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48012a...92eee3`](./contracts/ethereum-1/0x48012a780779f12b27f0f7f558cab5511d92eee3/) | PluginV3Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9439c...529e41`](./contracts/ethereum-1/0xf9439cd803dcb11fa574bcc8421207f89b529e41/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x821755...efb727`](./contracts/ethereum-1/0x8217550d36823b1194b58562dac55d7fe8efb727/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15783a...d95564`](./contracts/ethereum-1/0x15783afd1ae95cc2a9faca5a52be001a52d95564/) | RouterHelperZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62e134...63f0e2`](./contracts/ethereum-1/0x62e134d7274efadb9d165baff76c7340e663f0e2/) | SHARE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x313fdf...961309`](./contracts/ethereum-1/0x313fdfcc9f19a90748072baec39d786d34961309/) | SuperNovaClaims | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72d63a...91c8ac`](./contracts/ethereum-1/0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e6a86...a7d6c9`](./contracts/ethereum-1/0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x703fb6...715db6`](./contracts/ethereum-1/0x703fb6862b8d55a13fb174f3b102e722f6715db6/) | veNFTAPIV0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd08f4...a95278`](./contracts/ethereum-1/0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278/) | VoterFactoryLib | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=48

Fork inheritance lineage and inherited audits are included when available.
