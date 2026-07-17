# Agentic Audit Brief: Supernova

## Project Overview

- Project: Supernova (`supernova`)
- Website: [https://supernova.xyz/](https://supernova.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.093Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 56 unique implementations (91 raw deployments)
- DeFi Llama TVL: $956,241.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 46 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 5 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 6 common project-authored base contract(s) (multicall, blocktimestamp, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 92; live-surface contracts included: 79 (79 live, 0 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/56 (25.0%)
- Deployed-live implementations: 56 of 56 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/56
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 56
- Raw deployments: 91
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 14 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 14 | 25.0% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BasePluginV3Factory | registry | ethereum | n/a | [`0xdbfd67d12cadb8925c1417ff3638693f2bf99b97`](./contracts/ethereum-1/0xdbfd67d12cadb8925c1417ff3638693f2bf99b97/) | ✅ Audited |
| BlackholePairAPIV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fd265236e240f4f4487ae91de589ec88f7535aa`](./contracts/ethereum-1/0x1fd265236e240f4f4487ae91de589ec88f7535aa/); ethereum `0x2b9fc4714589544aa1e0a75596c611a1364963dc` | ✅ Audited |
| PairBootstrapper | unknown | ethereum | n/a | [`0x7f8f2b6d0b0aae8e95221ce90b5c26b128c1cb66`](./contracts/ethereum-1/0x7f8f2b6d0b0aae8e95221ce90b5c26b128c1cb66/) | ✅ Audited |
| PairGenerator | unknown | ethereum | n/a | [`0x42a7a5baafb1818da3a39ce1b97a58799d69bbb8`](./contracts/ethereum-1/0x42a7a5baafb1818da3a39ce1b97a58799d69bbb8/) | ✅ Audited |
| PermissionsRegistry | registry | ethereum | n/a | [`0x344eec31c725187cd026db73ed8805e72967c28d`](./contracts/ethereum-1/0x344eec31c725187cd026db73ed8805e72967c28d/) | ✅ Audited |
| RewardsDistributor | operational_periphery | ethereum | n/a | [`0xb3410a30af5033af822b8ea5ad3bd0a19490ea97`](./contracts/ethereum-1/0xb3410a30af5033af822b8ea5ad3bd0a19490ea97/) | ✅ Audited |
| RouterHelper | adapter | ethereum | n/a | 4 deployments: ethereum [`0x46b6f6c4148031c504d37e2df538de0d43335620`](./contracts/ethereum-1/0x46b6f6c4148031c504d37e2df538de0d43335620/); ethereum `0x4ead885ab632f76adb9c664384888a272b55dae2`; ethereum `0xb7796f0e4275f3b20f1586e54f9656cb06370396`; ethereum `0xb8b5b13fdf04cfdcee36497ae9289add5589a4ba` | ✅ Audited |
| RouterV2 | adapter | ethereum | n/a | 4 deployments: ethereum [`0x3ce4670530e2a30c99d0b21fed23cf446095813b`](./contracts/ethereum-1/0x3ce4670530e2a30c99d0b21fed23cf446095813b/); ethereum `0xbfae8e87053309fde07ab3ca5f4b5345f8e3058f`; ethereum `0xf0756789a6fb10ce566a24cbf1b6570753d97ec9`; ethereum `0xfed77cf0e5f9fa5ce2099ec05fabac894e3d2c64` | ✅ Audited |
| SecurityRegistry | registry | ethereum | n/a | [`0x454e62e725ad5a47931043f7e6369cfbb879bdfd`](./contracts/ethereum-1/0x454e62e725ad5a47931043f7e6369cfbb879bdfd/) | ✅ Audited |
| SuperNova | unknown | ethereum | n/a | [`0x00da8466b296e382e5da2bf20962d0cb87200c78`](./contracts/ethereum-1/0x00da8466b296e382e5da2bf20962d0cb87200c78/) | ✅ Audited |
| TokenHandler | token | ethereum | n/a | [`0xa1154fe44a3d5c740644b9028e4d68fd876de201`](./contracts/ethereum-1/0xa1154fe44a3d5c740644b9028e4d68fd876de201/) | ✅ Audited |
| veNFTAPI | token | ethereum | n/a | [`0x85dc70913e49e5ebd888ada03034e3be109e5881`](./contracts/ethereum-1/0x85dc70913e49e5ebd888ada03034e3be109e5881/) | ✅ Audited |
| VotingBalanceLogic | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1de64cd9de11525f9bc1494d1f7d39d83da20e28`](./contracts/ethereum-1/0x1de64cd9de11525f9bc1494d1f7d39d83da20e28/); ethereum `0xed686a5b0bf0df5c97f8eabd1b776ae399319847` | ✅ Audited |
| VotingEscrow | operational_periphery | ethereum | n/a | [`0x4c3e7640b3e3a39a2e5d030a0c1412d80fee1d44`](./contracts/ethereum-1/0x4c3e7640b3e3a39a2e5d030a0c1412d80fee1d44/) | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraCustomPoolEntryPoint | core_logic | ethereum | n/a | [`0xb86a85acf0e658e4d3ac02c9fac3e122e5831288`](./contracts/ethereum-1/0xb86a85acf0e658e4d3ac02c9fac3e122e5831288/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | ethereum | n/a | [`0x1e862624eda92b8fe532c16253356d17dd70a337`](./contracts/ethereum-1/0x1e862624eda92b8fe532c16253356d17dd70a337/) | ⚠️ Unaudited |
| AlgebraFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x01f99ca678f82de3c9da01dbd2998e75ce3ade8c`](./contracts/ethereum-1/0x01f99ca678f82de3c9da01dbd2998e75ce3ade8c/); ethereum `0x44b7fbd4d87149efa5347c451e74b9fd18e89c55` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | ethereum | n/a | [`0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18`](./contracts/ethereum-1/0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18/) | ⚠️ Unaudited |
| AlgebraPool | core_logic | ethereum | n/a | [`0x7ec5e050baaa8422d2a1fdd7a81f4650a7551738`](./contracts/ethereum-1/0x7ec5e050baaa8422d2a1fdd7a81f4650a7551738/) | ⚠️ Unaudited |
| AlgebraPoolAPI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ee8553a64edf161b3daa6907a4ff45b0a12ea59`](./contracts/ethereum-1/0x0ee8553a64edf161b3daa6907a4ff45b0a12ea59/); ethereum `0xc0a4ba2af2efad7d8a32db42d1477bbec256e95c` | ⚠️ Unaudited |
| AlgebraPoolAPIStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3d219d5089331f6bf99cb20b9b199ab3b429337a`](./contracts/ethereum-1/0x3d219d5089331f6bf99cb20b9b199ab3b429337a/); ethereum `0x42e71dcbb419e75c303d9a73bec0e85af1497bb8` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x45bc0f9855a626743d57d37d989f3b9462deba45`](./contracts/ethereum-1/0x45bc0f9855a626743d57d37d989f3b9462deba45/); ethereum `0xde5ffe32739162deddffaa58cb41ab7285e71776` | ⚠️ Unaudited |
| ASSET | unknown | ethereum | n/a | [`0xf3212bc5c79e9c36428770dc074490cba192e878`](./contracts/ethereum-1/0xf3212bc5c79e9c36428770dc074490cba192e878/) | ⚠️ Unaudited |
| Bribe | operational_periphery | ethereum | n/a | [`0x016ac7265c967581227aa6fac5cf6489d05fc144`](./contracts/ethereum-1/0x016ac7265c967581227aa6fac5cf6489d05fc144/) | ⚠️ Unaudited |
| BribeFactoryV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8bd718554d2644e4d1c7796f9097e1b93a89cbfb`](./contracts/ethereum-1/0x8bd718554d2644e4d1c7796f9097e1b93a89cbfb/); ethereum `0xeb37f11c573ab01358d5fefb10f5de2b4237344c` | ⚠️ Unaudited |
| CustomPoolDeployer | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1c798614ef4c6a8f8a1aab25785714933e59e963`](./contracts/ethereum-1/0x1c798614ef4c6a8f8a1aab25785714933e59e963/); ethereum `0x2493b36759fb77e40ef863ca59807a9d7689af4a`; ethereum `0x42f5ecd6497d42e093de05bec73e33ceb82493da`; ethereum `0x44acd9579650d300ebbeac2e483b97fdcacdddc0`; ethereum `0xc815b4e0abae3155f8f4f9e404f17c9fa6928eb8`; ethereum `0xd7b7cc843331cbdc857d5e7615d320b8b4ac090e` | ⚠️ Unaudited |
| FarmingCenter | unknown | ethereum | n/a | [`0x428ea5b4ac84ab687851e6a2688411bdbd6c91af`](./contracts/ethereum-1/0x428ea5b4ac84ab687851e6a2688411bdbd6c91af/) | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | ethereum | n/a | [`0x31eda5529b8f219243e8248eff368bc36a3f5975`](./contracts/ethereum-1/0x31eda5529b8f219243e8248eff368bc36a3f5975/) | ⚠️ Unaudited |
| GaugeCL | operational_periphery | ethereum | n/a | [`0x40f348c884a872efc6144db381a83be8cf250935`](./contracts/ethereum-1/0x40f348c884a872efc6144db381a83be8cf250935/) | ⚠️ Unaudited |
| GaugeFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66647a19452e98e98a9f479883f241e33016adb0`](./contracts/ethereum-1/0x66647a19452e98e98a9f479883f241e33016adb0/); ethereum `0x92ec1bb4420f8b4cbd560ad724b8890878646a0c` | ⚠️ Unaudited |
| GaugeFactoryCL | unknown | ethereum | n/a | 2 deployments: ethereum [`0x056f244a27f4d2a3467f80724b466976ee542c80`](./contracts/ethereum-1/0x056f244a27f4d2a3467f80724b466976ee542c80/); ethereum `0x8d38206e38ec86b14530186aa36cc3b1ed8cd674` | ⚠️ Unaudited |
| GaugeManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x120ea99bdc2da6de1b98fbeb84cfaead96a6a9e3`](./contracts/ethereum-1/0x120ea99bdc2da6de1b98fbeb84cfaead96a6a9e3/); ethereum `0x19a410046afc4203aece5fbfc7a6ac1a4f517ae2` | ⚠️ Unaudited |
| GaugeV2 | operational_periphery | ethereum | n/a | [`0x094bef1766eec5db769be1b31246b60787359052`](./contracts/ethereum-1/0x094bef1766eec5db769be1b31246b60787359052/) | ⚠️ Unaudited |
| GSCORE | unknown | ethereum | n/a | [`0x0fd4a527a4422aca27f48cd79e4093867544a616`](./contracts/ethereum-1/0x0fd4a527a4422aca27f48cd79e4093867544a616/) | ⚠️ Unaudited |
| MinterUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa2b9c0f8d866562ce744497c3160749268c32732`](./contracts/ethereum-1/0xa2b9c0f8d866562ce744497c3160749268c32732/); ethereum `0xfe29ea1348f0990273db5e19ad521e45acda84a2` | ⚠️ Unaudited |
| NFTDescriptor | token | ethereum | n/a | [`0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045`](./contracts/ethereum-1/0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | n/a | [`0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa`](./contracts/ethereum-1/0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x405d790b79be7b1fd413a7ffcb08604e9bad2884`](./contracts/ethereum-1/0x405d790b79be7b1fd413a7ffcb08604e9bad2884/); ethereum `0xf9bc949bab0969ec4e32d725d9ffab226ab6535c` | ⚠️ Unaudited |
| Pair | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4f20c37766759c3956f030d2e8749d493ef86e94`](./contracts/ethereum-1/0x4f20c37766759c3956f030d2e8749d493ef86e94/); ethereum `0xa9eae009fca124eb19092f55120fe6ba2cd2f1b5`; ethereum `0xe3b07bc14a3c96e55f474492f1c1c3324cb9ccfe`; ethereum `0xf2c6e60b0bae3a9e129f575ef6001d7300de3a83` | ⚠️ Unaudited |
| PairFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5aef44edfc5a7edd30826c724ea12d7be15bdc30`](./contracts/ethereum-1/0x5aef44edfc5a7edd30826c724ea12d7be15bdc30/); ethereum `0xb2fc2561cce25c9cc45970002bbb2ff1ea5660d4` | ⚠️ Unaudited |
| PairFees | unknown | ethereum | n/a | [`0x35b842d371fb9faaee00ad751016181ae7ec59a1`](./contracts/ethereum-1/0x35b842d371fb9faaee00ad751016181ae7ec59a1/) | ⚠️ Unaudited |
| PluginV3Deployer | unknown | ethereum | n/a | [`0x48012a780779f12b27f0f7f558cab5511d92eee3`](./contracts/ethereum-1/0x48012a780779f12b27f0f7f558cab5511d92eee3/) | ⚠️ Unaudited |
| Quoter | periphery | ethereum | n/a | [`0xf9439cd803dcb11fa574bcc8421207f89b529e41`](./contracts/ethereum-1/0xf9439cd803dcb11fa574bcc8421207f89b529e41/) | ⚠️ Unaudited |
| QuoterV2 | periphery | ethereum | n/a | [`0x8217550d36823b1194b58562dac55d7fe8efb727`](./contracts/ethereum-1/0x8217550d36823b1194b58562dac55d7fe8efb727/) | ⚠️ Unaudited |
| RouterHelper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d0a16356d61dd3c8b49a587f0a91f1cd2cff5c9`](./contracts/ethereum-1/0x2d0a16356d61dd3c8b49a587f0a91f1cd2cff5c9/); ethereum `0xbaed8da16d9cbd089b2b037c13e5a32da16f00da` | ⚠️ Unaudited |
| RouterHelper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8e4387cca2703e4a463e9526d52a15d873a829a1`](./contracts/ethereum-1/0x8e4387cca2703e4a463e9526d52a15d873a829a1/); ethereum `0xd8377aea61c4c4d43bf0588956f4e861720803c6` | ⚠️ Unaudited |
| RouterHelperZap | adapter | ethereum | n/a | 4 deployments: ethereum [`0x15783afd1ae95cc2a9faca5a52be001a52d95564`](./contracts/ethereum-1/0x15783afd1ae95cc2a9faca5a52be001a52d95564/); ethereum `0xb3a44fd78a56634cb59a3731d5719554a9d76af1`; ethereum `0xc3201a04fc03aab76794f5998472ffefbf220ef8`; ethereum `0xeed02aa1d987e17173d924afa7a47f7306779af7` | ⚠️ Unaudited |
| SHARE | unknown | ethereum | n/a | [`0x62e134d7274efadb9d165baff76c7340e663f0e2`](./contracts/ethereum-1/0x62e134d7274efadb9d165baff76c7340e663f0e2/) | ⚠️ Unaudited |
| SuperNovaClaims | governance | ethereum | n/a | [`0x313fdfcc9f19a90748072baec39d786d34961309`](./contracts/ethereum-1/0x313fdfcc9f19a90748072baec39d786d34961309/) | ⚠️ Unaudited |
| SwapRouter | adapter | ethereum | n/a | [`0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac`](./contracts/ethereum-1/0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac/) | ⚠️ Unaudited |
| TickLens | periphery | ethereum | n/a | [`0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9`](./contracts/ethereum-1/0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9/) | ⚠️ Unaudited |
| TokenAPI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x227534a66e521cfd95abb9e65c48d69ae5810b31`](./contracts/ethereum-1/0x227534a66e521cfd95abb9e65c48d69ae5810b31/); ethereum `0xfc0d0640e5a92fbbc79ee03b4375baab97f4522d` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x19f5f9ba55b676cfbb0fbb91f622020ba4621884`](./contracts/ethereum-1/0x19f5f9ba55b676cfbb0fbb91f622020ba4621884/); ethereum `0x87e3982313661a08cb1f0bb9de472eb407397551` | ⚠️ Unaudited |
| veNFTAPIV0 | token | ethereum | n/a | [`0x703fb6862b8d55a13fb174f3b102e722f6715db6`](./contracts/ethereum-1/0x703fb6862b8d55a13fb174f3b102e722f6715db6/) | ⚠️ Unaudited |
| VoterFactoryLib | registry | ethereum | n/a | [`0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278`](./contracts/ethereum-1/0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278/) | ⚠️ Unaudited |
| VoterV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1c7bf2532dfa34eeea02c3759e0ca8d87b1d8171`](./contracts/ethereum-1/0x1c7bf2532dfa34eeea02c3759e0ca8d87b1d8171/); ethereum `0xa6ee3849031bd44db809d0e7447ec5f7965164f7` | ⚠️ Unaudited |

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
| [Paladin_Supernova_Final_Report.pdf](https://resources.supernova.xyz/Paladin_Supernova_Final_Report.pdf) | Paladin | Audit | 2026-02 | fresh | Direct | contract_name | 14 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb86a85acf0e658e4d3ac02c9fac3e122e5831288`](./contracts/ethereum-1/0xb86a85acf0e658e4d3ac02c9fac3e122e5831288/) | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e862624eda92b8fe532c16253356d17dd70a337`](./contracts/ethereum-1/0x1e862624eda92b8fe532c16253356d17dd70a337/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01f99ca678f82de3c9da01dbd2998e75ce3ade8c`](./contracts/ethereum-1/0x01f99ca678f82de3c9da01dbd2998e75ce3ade8c/) | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18`](./contracts/ethereum-1/0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18/) | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ec5e050baaa8422d2a1fdd7a81f4650a7551738`](./contracts/ethereum-1/0x7ec5e050baaa8422d2a1fdd7a81f4650a7551738/) | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ee8553a64edf161b3daa6907a4ff45b0a12ea59`](./contracts/ethereum-1/0x0ee8553a64edf161b3daa6907a4ff45b0a12ea59/) | AlgebraPoolAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d219d5089331f6bf99cb20b9b199ab3b429337a`](./contracts/ethereum-1/0x3d219d5089331f6bf99cb20b9b199ab3b429337a/) | AlgebraPoolAPIStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45bc0f9855a626743d57d37d989f3b9462deba45`](./contracts/ethereum-1/0x45bc0f9855a626743d57d37d989f3b9462deba45/) | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3212bc5c79e9c36428770dc074490cba192e878`](./contracts/ethereum-1/0xf3212bc5c79e9c36428770dc074490cba192e878/) | ASSET | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x016ac7265c967581227aa6fac5cf6489d05fc144`](./contracts/ethereum-1/0x016ac7265c967581227aa6fac5cf6489d05fc144/) | Bribe | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bd718554d2644e4d1c7796f9097e1b93a89cbfb`](./contracts/ethereum-1/0x8bd718554d2644e4d1c7796f9097e1b93a89cbfb/) | BribeFactoryV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c798614ef4c6a8f8a1aab25785714933e59e963`](./contracts/ethereum-1/0x1c798614ef4c6a8f8a1aab25785714933e59e963/) | CustomPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x428ea5b4ac84ab687851e6a2688411bdbd6c91af`](./contracts/ethereum-1/0x428ea5b4ac84ab687851e6a2688411bdbd6c91af/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31eda5529b8f219243e8248eff368bc36a3f5975`](./contracts/ethereum-1/0x31eda5529b8f219243e8248eff368bc36a3f5975/) | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40f348c884a872efc6144db381a83be8cf250935`](./contracts/ethereum-1/0x40f348c884a872efc6144db381a83be8cf250935/) | GaugeCL | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66647a19452e98e98a9f479883f241e33016adb0`](./contracts/ethereum-1/0x66647a19452e98e98a9f479883f241e33016adb0/) | GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x056f244a27f4d2a3467f80724b466976ee542c80`](./contracts/ethereum-1/0x056f244a27f4d2a3467f80724b466976ee542c80/) | GaugeFactoryCL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x120ea99bdc2da6de1b98fbeb84cfaead96a6a9e3`](./contracts/ethereum-1/0x120ea99bdc2da6de1b98fbeb84cfaead96a6a9e3/) | GaugeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x094bef1766eec5db769be1b31246b60787359052`](./contracts/ethereum-1/0x094bef1766eec5db769be1b31246b60787359052/) | GaugeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fd4a527a4422aca27f48cd79e4093867544a616`](./contracts/ethereum-1/0x0fd4a527a4422aca27f48cd79e4093867544a616/) | GSCORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2b9c0f8d866562ce744497c3160749268c32732`](./contracts/ethereum-1/0xa2b9c0f8d866562ce744497c3160749268c32732/) | MinterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045`](./contracts/ethereum-1/0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa`](./contracts/ethereum-1/0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x405d790b79be7b1fd413a7ffcb08604e9bad2884`](./contracts/ethereum-1/0x405d790b79be7b1fd413a7ffcb08604e9bad2884/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f20c37766759c3956f030d2e8749d493ef86e94`](./contracts/ethereum-1/0x4f20c37766759c3956f030d2e8749d493ef86e94/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5aef44edfc5a7edd30826c724ea12d7be15bdc30`](./contracts/ethereum-1/0x5aef44edfc5a7edd30826c724ea12d7be15bdc30/) | PairFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35b842d371fb9faaee00ad751016181ae7ec59a1`](./contracts/ethereum-1/0x35b842d371fb9faaee00ad751016181ae7ec59a1/) | PairFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48012a780779f12b27f0f7f558cab5511d92eee3`](./contracts/ethereum-1/0x48012a780779f12b27f0f7f558cab5511d92eee3/) | PluginV3Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9439cd803dcb11fa574bcc8421207f89b529e41`](./contracts/ethereum-1/0xf9439cd803dcb11fa574bcc8421207f89b529e41/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8217550d36823b1194b58562dac55d7fe8efb727`](./contracts/ethereum-1/0x8217550d36823b1194b58562dac55d7fe8efb727/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d0a16356d61dd3c8b49a587f0a91f1cd2cff5c9`](./contracts/ethereum-1/0x2d0a16356d61dd3c8b49a587f0a91f1cd2cff5c9/) | RouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e4387cca2703e4a463e9526d52a15d873a829a1`](./contracts/ethereum-1/0x8e4387cca2703e4a463e9526d52a15d873a829a1/) | RouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15783afd1ae95cc2a9faca5a52be001a52d95564`](./contracts/ethereum-1/0x15783afd1ae95cc2a9faca5a52be001a52d95564/) | RouterHelperZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62e134d7274efadb9d165baff76c7340e663f0e2`](./contracts/ethereum-1/0x62e134d7274efadb9d165baff76c7340e663f0e2/) | SHARE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x313fdfcc9f19a90748072baec39d786d34961309`](./contracts/ethereum-1/0x313fdfcc9f19a90748072baec39d786d34961309/) | SuperNovaClaims | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac`](./contracts/ethereum-1/0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9`](./contracts/ethereum-1/0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x227534a66e521cfd95abb9e65c48d69ae5810b31`](./contracts/ethereum-1/0x227534a66e521cfd95abb9e65c48d69ae5810b31/) | TokenAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19f5f9ba55b676cfbb0fbb91f622020ba4621884`](./contracts/ethereum-1/0x19f5f9ba55b676cfbb0fbb91f622020ba4621884/) | VeArtProxyUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x703fb6862b8d55a13fb174f3b102e722f6715db6`](./contracts/ethereum-1/0x703fb6862b8d55a13fb174f3b102e722f6715db6/) | veNFTAPIV0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278`](./contracts/ethereum-1/0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278/) | VoterFactoryLib | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c7bf2532dfa34eeea02c3759e0ca8d87b1d8171`](./contracts/ethereum-1/0x1c7bf2532dfa34eeea02c3759e0ca8d87b1d8171/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=14

Fork inheritance lineage and inherited audits are included when available.
