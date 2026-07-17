# Agentic Audit Brief: Supernova

## Export Authority

- Production state: **published scope**
- Raw selected rows: 21 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Supernova (`supernova`)
- Website: [https://supernova.xyz/](https://supernova.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 63 unique implementations (93 raw deployments)
- Coverage basis: 21/44 confirmed own live verified implementations (47.7%); conservative 47.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $956,241.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Supernova. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 62 contract row(s) across ethereum. Structural roles: 29 unclassified, 19 supporting, 14 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 62
- Structural roles: unclassified (29), supporting (19), core (14)
- Contract kinds: contract (59), unclassified (3)
- Detected standards: ownable (8), erc165 (3), multicall (3), erc721 (2), accesscontrol (1), erc20 (1), ownable2step (1)
- Frameworks: openzeppelin (17), openzeppelin-upgradeable (4), foundry (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

2 of 41 contracts are derived from known codebases. 39 contracts have no detected origin.

### Forked Contracts

**AlgebraEternalFarming** (`0x1e862624eda92b8fe532c16253356d17dd70a337`, chain 1)
Origin: bladeswap (`0x23d3a34c1723a83ece3db05405be0a9f78af47f3`)
Containment: 84.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- createEternalFarming(IncentiveKey,IncentiveParams,address,address)
- deactivateIncentive(IncentiveKey,address)
- incentiveKeys(address)

Removals (removed from original):
- claimWethAndUsdbYield(address)
- createEternalFarming(IncentiveKey,IncentiveParams,address)
- deactivateIncentive(IncentiveKey)
- setCollector(address)

**AlgebraFactory** (`0x44b7fbd4d87149efa5347c451e74b9fd18e89c55`, chain 1)
Origin: supernova (`0x01f99ca678f82de3c9da01dbd2998e75ce3ade8c`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- AlgebraCustomPoolEntryPoint (`0xb86a85acf0e658e4d3ac02c9fac3e122e5831288`, chain 1)
- AlgebraInterfaceMulticall (`0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18`, chain 1)
- AlgebraPoolAPI (`0xc0a4ba2af2efad7d8a32db42d1477bbec256e95c`, chain 1)
- AlgebraPoolAPIStorage (`0x42e71dcbb419e75c303d9a73bec0e85af1497bb8`, chain 1)
- AlgebraPoolDeployer (`0x45bc0f9855a626743d57d37d989f3b9462deba45`, chain 1)
- AlgebraVaultFactory (`0xafc0497f052a3b5274659308d0b875271c03038d`, chain 1)
- BasePluginV3Factory (`0xdbfd67d12cadb8925c1417ff3638693f2bf99b97`, chain 1)
- BlackholePairAPIV2 (`0x2b9fc4714589544aa1e0a75596c611a1364963dc`, chain 1)
- BribeFactoryV3 (`0x8bd718554d2644e4d1c7796f9097e1b93a89cbfb`, chain 1)
- CustomPoolDeployer (`0x2493b36759fb77e40ef863ca59807a9d7689af4a`, chain 1)
- FarmingCenter (`0x428ea5b4ac84ab687851e6a2688411bdbd6c91af`, chain 1)
- FeeDiscountRegistry (`0x31eda5529b8f219243e8248eff368bc36a3f5975`, chain 1)
- GaugeManager (`0x120ea99bdc2da6de1b98fbeb84cfaead96a6a9e3`, chain 1)
- MinterUpgradeable (`0xa2b9c0f8d866562ce744497c3160749268c32732`, chain 1)
- NFTDescriptor (`0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045`, chain 1)
- NonfungiblePositionManager (`0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa`, chain 1)
- PairBootstrapper (`0x7f8f2b6d0b0aae8e95221ce90b5c26b128c1cb66`, chain 1)
- PairFactory (`0xb2fc2561cce25c9cc45970002bbb2ff1ea5660d4`, chain 1)
- PairGenerator (`0x42a7a5baafb1818da3a39ce1b97a58799d69bbb8`, chain 1)
- PermissionsRegistry (`0x344eec31c725187cd026db73ed8805e72967c28d`, chain 1)
- PluginV3Deployer (`0x48012a780779f12b27f0f7f558cab5511d92eee3`, chain 1)
- Quoter (`0xf9439cd803dcb11fa574bcc8421207f89b529e41`, chain 1)
- QuoterV2 (`0x8217550d36823b1194b58562dac55d7fe8efb727`, chain 1)
- RewardsDistributor (`0xb3410a30af5033af822b8ea5ad3bd0a19490ea97`, chain 1)
- RouterHelper (`0x8e4387cca2703e4a463e9526d52a15d873a829a1`, chain 1)
- RouterV2 (`0xbfae8e87053309fde07ab3ca5f4b5345f8e3058f`, chain 1)
- SecurityRegistry (`0x454e62e725ad5a47931043f7e6369cfbb879bdfd`, chain 1)
- SuperNova (`0x00da8466b296e382e5da2bf20962d0cb87200c78`, chain 1)
- SuperNovaClaims (`0x313fdfcc9f19a90748072baec39d786d34961309`, chain 1)
- SwapRouter (`0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac`, chain 1)
- TickLens (`0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9`, chain 1)
- TokenAPI (`0xfc0d0640e5a92fbbc79ee03b4375baab97f4522d`, chain 1)
- TokenHandler (`0xa1154fe44a3d5c740644b9028e4d68fd876de201`, chain 1)
- VeArtProxyUpgradeable (`0x19f5f9ba55b676cfbb0fbb91f622020ba4621884`, chain 1)
- veNFTAPI (`0x85dc70913e49e5ebd888ada03034e3be109e5881`, chain 1)
- VoterFactoryLib (`0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278`, chain 1)
- VoterV3 (`0xa6ee3849031bd44db809d0e7447ec5f7965164f7`, chain 1)
- VotingBalanceLogic (`0xed686a5b0bf0df5c97f8eabd1b776ae399319847`, chain 1)
- VotingEscrow (`0x4c3e7640b3e3a39a2e5d030a0c1412d80fee1d44`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 62; live-surface rows included: 62 (62 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 44/91 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 21/44 (47.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 44 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 44 of 63 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 21/63
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 63
- Raw deployments: 93
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 21 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 21 | 33.3% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393460 | `0xafc0497f052a3b5274659308d0b875271c03038d` | ✅ Audited |
| BasePluginV3Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-393473 | `0xdbfd67d12cadb8925c1417ff3638693f2bf99b97` | ✅ Audited |
| BribeFactoryV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393497 | 2 deployments: ethereum `0x8bd718554d2644e4d1c7796f9097e1b93a89cbfb`; ethereum `0xeb37f11c573ab01358d5fefb10f5de2b4237344c` | ✅ Audited |
| CustomPoolDeployer | unknown | project_anchor | own_supporting | 5 | ethereum | unit-393494 (5 proxies) | 6 deployments: ethereum `0x1c798614ef4c6a8f8a1aab25785714933e59e963`; ethereum `0x2493b36759fb77e40ef863ca59807a9d7689af4a`; ethereum `0x42f5ecd6497d42e093de05bec73e33ceb82493da`; ethereum `0x44acd9579650d300ebbeac2e483b97fdcacdddc0`; ethereum `0xc815b4e0abae3155f8f4f9e404f17c9fa6928eb8`; ethereum `0xd7b7cc843331cbdc857d5e7615d320b8b4ac090e` | ✅ Audited |
| GaugeFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393499 | 2 deployments: ethereum `0x66647a19452e98e98a9f479883f241e33016adb0`; ethereum `0x92ec1bb4420f8b4cbd560ad724b8890878646a0c` | ✅ Audited |
| GaugeFactoryCL | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393491 | 2 deployments: ethereum `0x056f244a27f4d2a3467f80724b466976ee542c80`; ethereum `0x8d38206e38ec86b14530186aa36cc3b1ed8cd674` | ✅ Audited |
| GaugeManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393492 | 2 deployments: ethereum `0x120ea99bdc2da6de1b98fbeb84cfaead96a6a9e3`; ethereum `0x19a410046afc4203aece5fbfc7a6ac1a4f517ae2` | ✅ Audited |
| MinterUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393500 | 2 deployments: ethereum `0xa2b9c0f8d866562ce744497c3160749268c32732`; ethereum `0xfe29ea1348f0990273db5e19ad521e45acda84a2` | ✅ Audited |
| PairBootstrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393444 | `0x7f8f2b6d0b0aae8e95221ce90b5c26b128c1cb66` | ✅ Audited |
| PairFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393502 | 2 deployments: ethereum `0x5aef44edfc5a7edd30826c724ea12d7be15bdc30`; ethereum `0xb2fc2561cce25c9cc45970002bbb2ff1ea5660d4` | ✅ Audited |
| PairGenerator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393432 | `0x42a7a5baafb1818da3a39ce1b97a58799d69bbb8` | ✅ Audited |
| PermissionsRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-393428 | `0x344eec31c725187cd026db73ed8805e72967c28d` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393463 | `0xb3410a30af5033af822b8ea5ad3bd0a19490ea97` | ✅ Audited |
| RouterHelper | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393498 | 2 deployments: ethereum `0x8e4387cca2703e4a463e9526d52a15d873a829a1`; ethereum `0xd8377aea61c4c4d43bf0588956f4e861720803c6` | ✅ Audited |
| SecurityRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-393434 | `0x454e62e725ad5a47931043f7e6369cfbb879bdfd` | ✅ Audited |
| SuperNova | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393412 | `0x00da8466b296e382e5da2bf20962d0cb87200c78` | ✅ Audited |
| TokenHandler | token | project_anchor | own_supporting | 0 | ethereum | unit-393456 | `0xa1154fe44a3d5c740644b9028e4d68fd876de201` | ✅ Audited |
| veNFTAPI | token | project_anchor | own_supporting | 0 | ethereum | unit-393447 | `0x85dc70913e49e5ebd888ada03034e3be109e5881` | ✅ Audited |
| VoterV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393501 | 2 deployments: ethereum `0x1c7bf2532dfa34eeea02c3759e0ca8d87b1d8171`; ethereum `0xa6ee3849031bd44db809d0e7447ec5f7965164f7` | ✅ Audited |
| VotingBalanceLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393480 | `0xed686a5b0bf0df5c97f8eabd1b776ae399319847` | ✅ Audited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393437 | `0x4c3e7640b3e3a39a2e5d030a0c1412d80fee1d44` | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraCustomPoolEntryPoint | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393464 | `0xb86a85acf0e658e4d3ac02c9fac3e122e5831288` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393422 | `0x1e862624eda92b8fe532c16253356d17dd70a337` | ⚠️ Unaudited |
| AlgebraFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f99ca678f82de3c9da01dbd2998e75ce3ade8c` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-393433 | `0x44b7fbd4d87149efa5347c451e74b9fd18e89c55` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | ethereum | unit-393470 | `0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18` | ⚠️ Unaudited |
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec5e050baaa8422d2a1fdd7a81f4650a7551738` | ⚠️ Unaudited |
| AlgebraPoolAPI | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393503 | 2 deployments: ethereum `0x0ee8553a64edf161b3daa6907a4ff45b0a12ea59`; ethereum `0xc0a4ba2af2efad7d8a32db42d1477bbec256e95c` | ⚠️ Unaudited |
| AlgebraPoolAPIStorage | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393496 | 2 deployments: ethereum `0x3d219d5089331f6bf99cb20b9b199ab3b429337a`; ethereum `0x42e71dcbb419e75c303d9a73bec0e85af1497bb8` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393435 | `0x45bc0f9855a626743d57d37d989f3b9462deba45` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde5ffe32739162deddffaa58cb41ab7285e71776` | ⚠️ Unaudited |
| AlgebraVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x789a0e0a6aedf3e6c090d305ac59cfaf75a43e62` | ⚠️ Unaudited |
| ASSET | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3212bc5c79e9c36428770dc074490cba192e878` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fd265236e240f4f4487ae91de589ec88f7535aa` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393423 | `0x2b9fc4714589544aa1e0a75596c611a1364963dc` | ⚠️ Unaudited |
| Bribe | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x016ac7265c967581227aa6fac5cf6489d05fc144` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393431 | `0x428ea5b4ac84ab687851e6a2688411bdbd6c91af` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-393426 | `0x31eda5529b8f219243e8248eff368bc36a3f5975` | ⚠️ Unaudited |
| GaugeCL | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40f348c884a872efc6144db381a83be8cf250935` | ⚠️ Unaudited |
| GaugeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094bef1766eec5db769be1b31246b60787359052` | ⚠️ Unaudited |
| GSCORE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fd4a527a4422aca27f48cd79e4093867544a616` | ⚠️ Unaudited |
| NFTDescriptor | token | project_anchor | own_supporting | 0 | ethereum | unit-393458 | `0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-393490 | `0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393495 | 2 deployments: ethereum `0x405d790b79be7b1fd413a7ffcb08604e9bad2884`; ethereum `0xf9bc949bab0969ec4e32d725d9ffab226ab6535c` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4f20c37766759c3956f030d2e8749d493ef86e94`; ethereum `0xa9eae009fca124eb19092f55120fe6ba2cd2f1b5`; ethereum `0xe3b07bc14a3c96e55f474492f1c1c3324cb9ccfe`; ethereum `0xf2c6e60b0bae3a9e129f575ef6001d7300de3a83` | ⚠️ Unaudited |
| PairFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35b842d371fb9faaee00ad751016181ae7ec59a1` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393436 | `0x48012a780779f12b27f0f7f558cab5511d92eee3` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | ethereum | unit-393485 | `0xf9439cd803dcb11fa574bcc8421207f89b529e41` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | ethereum | unit-393445 | `0x8217550d36823b1194b58562dac55d7fe8efb727` | ⚠️ Unaudited |
| RouterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d0a16356d61dd3c8b49a587f0a91f1cd2cff5c9`; ethereum `0xbaed8da16d9cbd089b2b037c13e5a32da16f00da` | ⚠️ Unaudited |
| RouterHelper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x46b6f6c4148031c504d37e2df538de0d43335620`; ethereum `0x4ead885ab632f76adb9c664384888a272b55dae2`; ethereum `0xb7796f0e4275f3b20f1586e54f9656cb06370396`; ethereum `0xb8b5b13fdf04cfdcee36497ae9289add5589a4ba` | ⚠️ Unaudited |
| RouterHelperZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x15783afd1ae95cc2a9faca5a52be001a52d95564`; ethereum `0xb3a44fd78a56634cb59a3731d5719554a9d76af1`; ethereum `0xc3201a04fc03aab76794f5998472ffefbf220ef8`; ethereum `0xeed02aa1d987e17173d924afa7a47f7306779af7` | ⚠️ Unaudited |
| RouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3ce4670530e2a30c99d0b21fed23cf446095813b`; ethereum `0xf0756789a6fb10ce566a24cbf1b6570753d97ec9`; ethereum `0xfed77cf0e5f9fa5ce2099ec05fabac894e3d2c64` | ⚠️ Unaudited |
| RouterV2 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-393466 | `0xbfae8e87053309fde07ab3ca5f4b5345f8e3058f` | ⚠️ Unaudited |
| SHARE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62e134d7274efadb9d165baff76c7340e663f0e2` | ⚠️ Unaudited |
| SuperNovaClaims | governance | project_anchor | own_supporting | 0 | ethereum | unit-393424 | `0x313fdfcc9f19a90748072baec39d786d34961309` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-393443 | `0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac` | ⚠️ Unaudited |
| TickLens | periphery | project_anchor | own_supporting | 0 | ethereum | unit-393438 | `0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9` | ⚠️ Unaudited |
| TokenAPI | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393504 | 2 deployments: ethereum `0x227534a66e521cfd95abb9e65c48d69ae5810b31`; ethereum `0xfc0d0640e5a92fbbc79ee03b4375baab97f4522d` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393493 | 2 deployments: ethereum `0x19f5f9ba55b676cfbb0fbb91f622020ba4621884`; ethereum `0x87e3982313661a08cb1f0bb9de472eb407397551` | ⚠️ Unaudited |
| veNFTAPIV0 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x703fb6862b8d55a13fb174f3b102e722f6715db6` | ⚠️ Unaudited |
| VoterFactoryLib | registry | project_anchor | own_supporting | 0 | ethereum | unit-393465 | `0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278` | ⚠️ Unaudited |
| VotingBalanceLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de64cd9de11525f9bc1494d1f7d39d83da20e28` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Paladin_Supernova_Final_Report.pdf](https://resources.supernova.xyz/Paladin_Supernova_Final_Report.pdf) | Paladin | Audit | 2026-02 | fresh | Direct | address | matched | 21 | 8 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2887] Paladin_Supernova_Final_Report.pdf — matched: Extracted 35 contract names from the 'Contracts Assessed' table and findings sections. Audit date from cover page: '14 Feb 2026'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Paladin_Supernova_Final_Report.pdf | SuperNova | own contract | SuperNova (selected) `0x00da8466b296e382e5da2bf20962d0cb87200c78` — deployed 2026-01-19 14:15:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | MinterUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfe29ea1348f0990273db5e19ad521e45acda84a2` — deployed 2026-02-05 15:33:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0xb3410a30af5033af822b8ea5ad3bd0a19490ea97` — deployed 2026-02-05 15:30:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | PairFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5aef44edfc5a7edd30826c724ea12d7be15bdc30` — deployed 2026-02-05 15:08:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | Pair | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | PairFees | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | PairGenerator | own contract | PairGenerator (selected) `0x42a7a5baafb1818da3a39ce1b97a58799d69bbb8` — deployed 2026-02-05 15:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | PairBootstrapper | own contract | PairBootstrapper (selected) `0x7f8f2b6d0b0aae8e95221ce90b5c26b128c1cb66` — deployed 2026-02-05 15:40:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | RouterV2 | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | RouterHelper | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8377aea61c4c4d43bf0588956f4e861720803c6` — deployed 2026-02-05 15:28:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | VotingEscrow | own contract | VotingEscrow (selected) `0x4c3e7640b3e3a39a2e5d030a0c1412d80fee1d44` — deployed 2026-01-19 14:23:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | VotingBalanceLogic | own contract | VotingBalanceLogic (selected) `0xed686a5b0bf0df5c97f8eabd1b776ae399319847` — deployed 2026-01-19 14:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | VotingDelegationLib | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | VoterV3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1c7bf2532dfa34eeea02c3759e0ca8d87b1d8171` — deployed 2026-02-05 15:22:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | GaugeManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x19a410046afc4203aece5fbfc7a6ac1a4f517ae2` — deployed 2026-02-05 15:17:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | GaugeFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x66647a19452e98e98a9f479883f241e33016adb0` — deployed 2026-02-05 15:12:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | GaugeV2 | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | GaugeFactoryCL | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8d38206e38ec86b14530186aa36cc3b1ed8cd674` — deployed 2026-02-05 15:13:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | GaugeCL | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | BribeFactoryV3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xeb37f11c573ab01358d5fefb10f5de2b4237344c` — deployed 2026-02-05 15:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | Bribe | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | CustomPoolDeployer | own contract | CustomPoolDeployer (selected) `0x2493b36759fb77e40ef863ca59807a9d7689af4a` — deployed 2026-02-05 15:42:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | PermissionsRegistry | own contract | PermissionsRegistry (selected) `0x344eec31c725187cd026db73ed8805e72967c28d` — deployed 2026-02-05 15:02:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | TokenHandler | own contract | TokenHandler (selected) `0xa1154fe44a3d5c740644b9028e4d68fd876de201` — deployed 2026-02-05 15:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | BlackTimeLibrary | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | BlackholePairAPIV2 | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | veNFTAPI | own contract | veNFTAPI (selected) `0x85dc70913e49e5ebd888ada03034e3be109e5881` — deployed 2026-02-05 15:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | AlgebraVaultFactory | own contract | AlgebraVaultFactory (selected) `0xafc0497f052a3b5274659308d0b875271c03038d` — deployed 2026-02-05 14:47:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | CustomPluginV1Factory | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | CustomPluginV2Factory | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | AlgebraBasePluginV3 | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | BasePluginV3Factory | own contract | BasePluginV3Factory (selected) `0xdbfd67d12cadb8925c1417ff3638693f2bf99b97` — deployed 2026-02-05 14:48:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | SecurityPlugin | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | SecurityRegistry | own contract | SecurityRegistry (selected) `0x454e62e725ad5a47931043f7e6369cfbb879bdfd` — deployed 2026-02-05 14:49:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb86a85acf0e658e4d3ac02c9fac3e122e5831288` | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e862624eda92b8fe532c16253356d17dd70a337` | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x44b7fbd4d87149efa5347c451e74b9fd18e89c55` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc9ba2ef71d4c5ca59b426c4c3dae6aeabe041f18` | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ee8553a64edf161b3daa6907a4ff45b0a12ea59` | AlgebraPoolAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d219d5089331f6bf99cb20b9b199ab3b429337a` | AlgebraPoolAPIStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45bc0f9855a626743d57d37d989f3b9462deba45` | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b9fc4714589544aa1e0a75596c611a1364963dc` | BlackholePairAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x428ea5b4ac84ab687851e6a2688411bdbd6c91af` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31eda5529b8f219243e8248eff368bc36a3f5975` | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xabca00f6e3fb9fe4c8adbecc5f2daffe8c851045` | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00d5bbd0fe275efee371a2b34d0a4b95b0c8aaaa` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x405d790b79be7b1fd413a7ffcb08604e9bad2884` | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48012a780779f12b27f0f7f558cab5511d92eee3` | PluginV3Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf9439cd803dcb11fa574bcc8421207f89b529e41` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8217550d36823b1194b58562dac55d7fe8efb727` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbfae8e87053309fde07ab3ca5f4b5345f8e3058f` | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x313fdfcc9f19a90748072baec39d786d34961309` | SuperNovaClaims | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72d63a5b080e1b89cc93f9b9f50cbfa5e291c8ac` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4e6a86199fc06adbf1ff59634c1a806116a7d6c9` | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x227534a66e521cfd95abb9e65c48d69ae5810b31` | TokenAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19f5f9ba55b676cfbb0fbb91f622020ba4621884` | VeArtProxyUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd08f4d76ca903cc922ec14fcfef90d4e1a95278` | VoterFactoryLib | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 21 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 21 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: address=21

Fork inheritance lineage and inherited audits are included when available.
