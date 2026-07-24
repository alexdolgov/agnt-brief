# Agentic Audit Brief: KPK

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: KPK (`kpk`)
- Website: [https://kpk.io/](https://kpk.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, gnosis, optimism, polygon
- Contract surface: 272 unique implementations (274 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $149,875,170.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for KPK. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 supporting, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (1), ownable (1)
- Frameworks: openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6d1a4c0878ad24793b1655ae1f78cfa4522ba765`, chain 1)
- UnnamedContract (`0x7bb5e307edf80630f153bd28789b4365efe4cce3`, chain 1)
- UnnamedContract (`0x97ab9e7a2275d4bd86913809b3c29c4dda49c694`, chain 1)
- UnnamedContract (`0xed01a1fe4e020ca901f43e17b6203a7e0cea818c`, chain 1)
- ERC1967Proxy (`0xa57a641417fe2703c5364c2f57f35297b16189a5`, chain 1)
- GnosisSafeProxy (`0x38f6a1b46144faee6a6d9f79d8de264c18e23848`, chain 1)
- Roles (`0x2ba2f894d0ac9435346a40521ae513d1be6d9b17`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 265 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 7 of 272 unique; 265 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 239
- Unique implementations: 272
- Raw deployments: 274
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Aura | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45006c280bf3dc44d7d370c9a801c95ec501aa3e` | ⚠️ Unaudited |
| BeaconProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6cbcc646d7422b734c6fc0954a1c3ca87b1b4ceb` | ⚠️ Unaudited |
| CapBalanceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb812cc304cb417b635470681160e75cffb0006b0` | ⚠️ Unaudited |
| cbETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x957d726b1848d074fc0208017023b64f393c5bfd` | ⚠️ Unaudited |
| CrossRatePriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70dd216ccd75551a170e361bebd33db64fc0cfae` | ⚠️ Unaudited |
| DefillamaCompressor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81cb9ea2d59414ab13ec0567efb09767ddbe897a` | ⚠️ Unaudited |
| eETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2ea278a490284d775bdd7899972a35e86f9713` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2f77a41c17c7cab30cc320112b649ab8b070617e`; ethereum `0xbf7d1dd7aede0841f563584e39ca8b69f4ca29b1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244391 | `0xa57a641417fe2703c5364c2f57f35297b16189a5` | ⚠️ Unaudited |
| ERC4626WrapBalanceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89b0157921b4efb88dcf96f570d8c07d675dc4f1` | ⚠️ Unaudited |
| EulerEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b47c128b35dddcb66ce2fa5b33c95314a7de245` | ⚠️ Unaudited |
| ezETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x305bdb829066c9ce15d5a2af0c4267b326c8a1cf` | ⚠️ Unaudited |
| GearboxMarketBalanceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02d6b6613952db1ae1294c81f443f03195762bba` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4f2083f5fbede34c2714affb3105539775f7fe64` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0000aeb716a0df7a9a1aad119b772644bc089da8` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244392 | `0x38f6a1b46144faee6a6d9f79d8de264c18e23848` | ⚠️ Unaudited |
| KpkGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x488da14cff5b42a31684d4c6999ea0b1c7693211`; ethereum `0xc0c0f14bb3511e86ff02771e7bc003d1ae28a11b` | ⚠️ Unaudited |
| KpkShares | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38ef95d5f8b7a276a5c1a38fdc358d977c88ab42` | ⚠️ Unaudited |
| KpkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5af203018e9043f2aaa5622c3f5014b0aa82904c` | ⚠️ Unaudited |
| MarketConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b265b97eb169fb6668e3258007c3b0242c7bdbe` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6aec603d48ebf1cecc7b247a2c3da08b398dc1` | ⚠️ Unaudited |
| PoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9396dcbf78fc526bb003665337c5e73b699571ef` | ⚠️ Unaudited |
| rETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6366a015e7c72d238e0e289e1652eaa06f962e` | ⚠️ Unaudited |
| Roles | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244386 | `0x2ba2f894d0ac9435346a40521ae513d1be6d9b17` | ⚠️ Unaudited |
| rsETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f580e84d92e89150be94fcaa4d03c6b855d2fd8` | ⚠️ Unaudited |
| StakeWiseV3OsTokenBalanceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ecc77db1f9d2b1dfe3948b53d4d0e6c1569d50e` | ⚠️ Unaudited |
| sUSDe_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde04bb0a8fd927c137547401f30213fcc7607d63` | ⚠️ Unaudited |
| sUSDS_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76752e33050f2011cacd3edbbb8125ee1e49c140` | ⚠️ Unaudited |
| syrupUSDC_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc73ed3f07e2d1d6c59294936c12048dae2b8cbe7` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee27fad903feca9e78c5075803c8833e885b2b7a` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a1985f50352b58090eb36425afdfacbac7806f4` | ⚠️ Unaudited |
| weETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e7a6154ace2ec453de9527d7f81b13e7b5e5b59` | ⚠️ Unaudited |
| wstETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35b2aae4de9e66cd6d86fc2ed360e9bcb79a4561` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (239)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0274369564931993627496eac14cff831404b025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04e39d917e0d515384b3c027658a8b2f401eceb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b3739d312349723239eda1b4c4687e7359885d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0710d2daab1e9accee65b66eded745d3b852898c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082ae9f59fbedc58d0189db7f2e6dc78569dc448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09295b414600b75f5c173f75d85b924b57d46781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b22c30ece2da0120ffb64dc0ad95d1b506c8cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8c4954ceb7b4795d479801d829fc1f5f2e7da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0de789dd1ecbaf1da7a242b92ad720f92d3618fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x100b5cceb975f54b0542659374039022c9a32b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1021f43b502524d5e4e0f68ba284771996e0f25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105dbd8d772d2e68eab691e9b635166f0b7a17e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1062709c03ae060f1491fa4d170e3562d6114046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a8871e6a3e57947270cfe8bc035e4608d2218a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129637a37f92c6b5961fc259b5713116c5b65ef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13845fc9dffdf1afb8b1cf22ea298c01c8d7f71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15007679f32a86ae1c3c79b04ffb914f03b23f1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1598188996dbb5e3d42db7f1faf706cb6cbde0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x165083217e5c38e1746a2e06bcc6ef2898c36044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c48eb866ac95cc1346befd909a8f9ddec4ffe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16fcb0e5fb44e8cf54d433245a09e2db650458c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1ec70cb783c75518cf79b7ea7fda89e79e1622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ce2c056c2b1acfe26aa0553b5767831c755a011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e2496c43d1dc5cbb213bc982cf978335590d434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e2800893fdd965e0502ef01d746ce6838a72842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eec1612c00057b525f9f342b0df474370cc7cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fd4b126f175eb0818402acd9e34b6c19e48faf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204b1f3f1345ff383259035a639e1de0b1183289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20661eb4116fa0a8196133feee661383b180598d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2208e15c5aaa18adc0535705743502982f060717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x225bce0b55abecf4400ab9e3788e9ff56da70ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a11034c5d17a2019cf5bd814aaad33123990ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23d4d7eadd23f1f1bfbe1f35c64e15b6e9957074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243432a1938df7378ba26e801da12d48d6b19c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26822d956b190de802db47b2730e54bde1c64c12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x268e6370f70aa5b365ce81b8155bb82f3d538e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x270957c9a972465a5510e13534e4807ac2cfc5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27b92ad567dd21543a60976578481f62b2d37bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x289b00007469e19c178f15968f1a09e78d4db013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a52578a516b5a20bdd365d4c5789a94849bd577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b10500c04502edbc875d979a832624112d2c97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c488b9f773b29e6c9fb5b2428b79962f01d2051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd1b610452f776de9aec8eb2cbe9c068fd5bf88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebe0e858ec7860dd22e23dd09765c0dbe5f0560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32dee9b94da8b25841f009c4419cceadb3dd246b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33c29376fbf93aec8223eefe93c322227f02c7b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ea399d2fcfb70e3780229acb9a1b87df50ac54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x356c0fafbf187d0ae2b125db55e0627f9a552f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e8819832fda41f978448e67ef1930705c32011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37752a1902be34066dcdc22572bb2496bd1136eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37e19bbc036b11fae7ce8081b8b03e322469ccce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b783333fb0e0c5cfe49f5855c30b0e828713120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bdec7ebf6c7bf879a6f1a87875b34ec63e16ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c99fec0fc1d2637a68ca7aa5ee4a63b854ce3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d224217e8f6010f3354e71487598454201dfcd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e51f7d4b3e2af63ad9e5c2be0ca2f72aab5396b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40cfd8f5a145b5daff7c96882031ac03a9536f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x411f5e064d5b77c9ae31f45c5768de3aea26052e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4128a0bf149fe6750a02410cc73814a544ad0961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4137477a27668f636bbfd4f01a67e42e79ca87e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41792634def77fb35856b9a3cd9e8087828a7e68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x421e3a5f4a7d6f7623c07e6bde73f573fbb4bffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44006163f43cae780d71af73ffec74b4b6fe1815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4595a7d745299031363d5eb92f7dce170a7f31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4645fdd4a87f3d3d239739de488e3417030d67a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x474551061ec411319fd6873fcf00b3d170cd038d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4780a24f9b425ba9aa2a56cef6e3fea04a46cfa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4912f95141eee9c29c48417c912bfec1621e1b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bb60007c62115cf20c9e304e461a278a46295d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cdab97d28f097b5a66e91cc76bd4846b5ce4abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9fb4470dfc423fe48f202c57b59ac40fd859f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d718a68b4f385da5c67be94d42851777f22e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x550d7555aa2aa40a4e2eae127ca040e827c80619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5731d36a273dd934e703dd72b617e907879cb193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a28024ccd6b90edb44011fb6dcc0e8cf16ecf81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a81f5574c165a7b231e2f6c2b89af3de3d4e941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b50a5ff1c80a178bb8da9fdff077fbc3dd4e543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c0d73ec8ac1fc58cf8c8dd445ff2851c0231aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c12ca070f4d472756647a35eb9b0cf2dd00a09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca489d9a453a2e5d5d484ffe4bf080f42961fc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eb71a443356d5bae3c980221f60ff4a1694ceb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f4c41421e9388cbd89d54f59e3d9c6cc660b413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6099bf1682f6a0541fb576c20db9e2e6f4f6d017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62aeb4b816f0fb7a7f4776c40b0cffeb6fb750c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x647f9c2715c665a65da1bd911d41f644b8957714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x673493c9d023cecdb026ab090853f9d2f2ffe764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6774daf37bf31a74b1c3f59432e9c7baffe4a6ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678be00a7530aad2c944b76aaa43ef46c6213da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x685ad6392204a03ad579405037eb9d40bdd3a720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68da22d5c021c018b7abdf35fba79075b6b34282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6985c9b85127687a6fb60924aaf00a9d950e66ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f614dbc8cfcdfd58025fb1e60372c2f0032150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba7a92df2e46711e9ff087b1e49702f334077cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3567b74dcaa380e82cb4d935d27864b11daf1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244387 | `0x6d1a4c0878ad24793b1655ae1f78cfa4522ba765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e139ff9d134376ec0c2899c12a1ffb4b327d284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e2ec4b0da622513a303ad6be52288806f968682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70dcd641f79391ecaf36f4aa16731aed11d1a522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71259bf62ff00f562749101cf00fb5ccd0714c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7212e2917d7f69c1a3a1f1bc9fbf99ac0b3f3772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734ae4e728f958d21bef9a4c558b712520c62854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x759093b4b05f605bb5bb46f94087fae7cc1b3a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76bb2c593a4b1081da59899a579adf815f52bbac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7788db1684db9d19be2518b78d69dd64b7b9eb80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7823ed364ebf1cc7dad3fc2c99f7bd9ec19c330c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x796d244b5c8c830b47ca34c30b7f09b142b75f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d15dfd9223424656f683dac6224b9c59515645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b8315fa225977302950d0c5b988a03cc4b98362` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244388 | `0x7bb5e307edf80630f153bd28789b4365efe4cce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e321cc0436e2dee1800c7d70e6f5ad56f1263c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0d0d648e7baead2602c15ab5901476676694b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5945d2f7afd109b8d2e853e864b2a8549a507b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe0244ed6b3d690c2f5ebdb0f7c1150a44a7c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x809eabaeb3e96fb72c3416426cfbc36a6bf95394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80add8f89bdf5d4c1f1ed9952e51c567e4eb3430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81229dc207eae57a2e2906b567945c81d91f2270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83de2773a99cc90c7a9a205410efc249149d82c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84e0df859f9442505ef576c3635b67d719c78ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85aaacccba92526c7004a936866840793e3d0a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85b258392fc7a3eb6444e22ed896d582b9a89f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86533ddd8b818e93a85d48ad1019a52bf80516cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86ea82a47f8a5a2c8d6bbf8e557c7b1061355388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89cee4578fc8d74010ee9e4505e893d5d4992dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a1c05bd2bc8e6e78afc9753ab5b377391af43b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a887c7fa17dbba626497024833778354785c580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ab8f6cab2bdb7b602b7258dfd3cd028a9b921b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6ee0bb357a07d2d0e3d29901826d9ff7c7a25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8caca3f3408721f096c9739eda6c44a44ae205c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d0237436a4be679bf059dcc177e09ea1f6c3094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eb858292487a49fa2791ee0bf7355f608deef5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91336b447bd92798be49a481923da7f7595d8333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cf99a78ce9b7a0bba7ce7724cf4cdf9a6d4f31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933eaa3f9b237be3f8bd88beeee643e7ae72595d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9480397097d896188c0f93ef4d4bf7b8d1f24223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95595f0c72cbc75ed5e15afc1d0a59f97f46ccb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95f85363927496cc5cb54b2c83c0940cb6802513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x970235365d812812262e1838071d97928f51347f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x973ebbd800a7cd7a2aad8bb0070a7ed45ab48072` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244389 | `0x97ab9e7a2275d4bd86913809b3c29c4dda49c694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98c1c89b34aed91191c447c96fe947782fdf866c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99690d21eb64ca7941e974691455be41d558441b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99b9f5f24205cb88e33b1cc72008f644fc23768b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b384f5a0731cc441657f149c406e324de03de8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b3ee866e030f9cfda181e7ffd9bb0a49606ef0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2367ecc23dcc851c011894cb7e49bbff5109dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c45400ec105b2ac72f5a5d2ce585aa831e76b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cd8465223b6a304f41eebb319ef4ceacdb2d789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e0afa49c7705ea4f2b77ad6d890a110741a0c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e86de75d1405807a057a815f961155f358bdb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa188ad0ab0f3c77ac2d3f75b5f92e0751a62fe7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa42c97f51ddd2a74c637775ccac18dc37fe6c607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4a6b844afd83b323bebb79529f0bc14630e033d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5a49ee54956ace3109b950f0a637a01bd72d9ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ace959c28686c22e239c2eb8ac79cf7b6ff7e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa80305f86c4f7f35b7f55a4876f0b0f110aee761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa996288b8b70744d51cac8b72fe5f751db92430d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9a0f30e38f8e0f0435c82b1a72b84d61d7b0df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa55df835689590411c0d34be275b49b4ecf9d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa7e7f7f09f2c12b91245e2e761d4f9c62f7db1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaab3bbdeccde6800c33febb49ce81a1cbb46dfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5a2db56e6608de7fe12a447b26d349a10fb037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8ef2dc1ee81f30a3249fcab6789ed85fd189cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacbe56d6d844fc62d3bf2cd0faa911853916d434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf2dde51859648be10cc870e146dc2779e0e1b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2c4ed08c1b8d5ee6c2c845d9ef6a10540f6aedd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3feb41e5309692c2e78884287c3a25642385730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4871167e7f71ccd987f4fb5c9a40907add0aa2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb52f84861b2a631f49fc14e71d1449973b8bb4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5599b1605d750eea1eed25a4a5f8d2ca3198afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6cac691be72cd866eb6b74cd9b8ddcf41ed85c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb728ca2b544be0bcae08a1697db08b0d47800c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb73b3a6b65b1465d305870f7933af8cc140d3c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb834a03f1c6920cadd47bcc16250c0843361e7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8b43453b5d0194858c2584a93dc207765241fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9210b8311ea6cee6cc9d1f8d4c29371fda23495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a7a8ac57383969703f67f61d48fa7142640815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9fa95eb9b4b638df623fcf47c0438f2817f290c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb07683cf459b85c39ef71a264af6311d9c9813c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbdb7f69450715f2f550b58477e65d34835f7f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc671d4af513b2a1d7967830ae96e82e9de4234e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe6943b50f0bcd56cb938533fbcc1eaed8d7bcbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe87b9232113e4c5fdafeb165caf7f2bd208c887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf3f63d8ac133b16d7d50c015036b33219dd8d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc11b5df5b6ffa9d1c83c1f7267e17ce261361486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc37e9ee82eb1920401db78a3b2d1f518964ccbd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3e04720338bc8addc335764914b7602dd11e79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5dc98bc974cc70010be2fc3784d1fff5f354014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9b96d0e1d6544f34ce292f74c9c14a5c514d599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e5515080af4798289529326e38eca359c3e4f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9ed4933792beb342b32a03e86d66236e300814d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb97da2c799cfc17463704edb1caad451c28a861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf359a24511f6cebe19125fe733338fcae28fc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf68c23c31566784cfb177c9fcf7d447307d78c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcffad458df30d9baef09c611ea777b03f7afb2b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd17fb5854616a810fb5dfe5c6348cd12ae46603a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1ca43e1a9c1ac594f22f12ad1bfb12eef6ffe8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b21d1aeed184e9a5d25c5d8ec7073a0636bd66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2c516a384fce250097ba7ddde50edcd833a12a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd301d0a41ef61ce0111242ab0b41a4599f7c9864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a2b8c80b4cb6543ced7ce8ae12f718e908138d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda821985d9bfd79e8ddf3b08cc2f4300912d58ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbdef36429566a1e1341b1e14633dee67952bd95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc2be878c68a0064270eab33a823bf72b06f9f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc8d67a1b5b1233634ceff550bf5edee3d71ad0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde4f9bd6500a170cad20ff9b0e4d5f7a4f388468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde5c22e16e0cb686d5c1f07e2c0a971dfccc9aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebc38d7315590b4f291fab27258e2d97fb7a7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfa04a339046b8faa45bc3e2535904b067863cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2ac3842ed574fdcc6e3581f92fa40b7196f0b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2ed91913dba1b34a2387df541013a7fe226ec3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ab5e270193bc7639527325cbc2dc6e9fe0495e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe43bdceb764971b1ced97da8612815daef23e423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe444fd7e8d2c83436cdd3018e1db235bf2b6813f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe511ccc2e161e15b05b735d68adab1b355c98187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe80f5fa11f423aca42bd5807b7ea6303a553c294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8455f4f027f86dd0e0cccea0769d7b008c57f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead70a56dfe3c0052f57a11cb9d79713787b95e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb7edae4bdeb9170f722b312a8d64104e1f0ad45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeba2177dd069a3bca2d6bea3085a702d9a1c47dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebdfca4230b5b1d54478bb1f08a5447590fdadfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244390 | `0xed01a1fe4e020ca901f43e17b6203a7e0cea818c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed3715fdd7b98edb55d3c9e4fb19c5784a2606b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed743692fddb75e44066d4be1ec72529b592f4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xede67f248eed27e871019496992a51a1d5472752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeed32cdf2f6a14f7a8e9c2d0c624c397c31cf99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeefcd96618fc66088e72c806bc37edefd3b4e9e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf133b541b96d69b77be66ba926cd11d14ab28daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf140b75db6f10ee6276f6d5a2a91c434e72ff7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf170a386733a70d1868cfcf0d2f86fe0589b2df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ee8e6ae73fb9015bac2f0cdb11224294884fc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4b0a386a39f3e9a67cebb4cc8b11383a5b1788a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4ecb09078e72c22dfa44ccf0c9e6183e9a9139c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf530198739eeb3a94ab7993c12c823bd65134a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf63321f5d995e1581edeb6fa3cfd0925fce2d8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf758fa8c67727c73ff75d67ee595e65a8e594c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc06742af04d186a4a25bb46188ddf32e3f7775b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc21ce9965b9750262b9df180a2115db16b4f023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd4da0aaa9a8416faf564e76200d64c2ef7fe7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffd2e0ef6dafaefb76634434faac9d180d58ff59` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 235
- Live contracts: 0
- Unknown liveness contracts: 235
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=235

Showing first 200 of 235 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x0274369564931993627496eac14cff831404b025` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04e39d917e0d515384b3c027658a8b2f401eceb0` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06b3739d312349723239eda1b4c4687e7359885d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0710d2daab1e9accee65b66eded745d3b852898c` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x082ae9f59fbedc58d0189db7f2e6dc78569dc448` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09295b414600b75f5c173f75d85b924b57d46781` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b22c30ece2da0120ffb64dc0ad95d1b506c8cd8` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b8c4954ceb7b4795d479801d829fc1f5f2e7da7` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0de789dd1ecbaf1da7a242b92ad720f92d3618fd` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x100b5cceb975f54b0542659374039022c9a32b2c` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1021f43b502524d5e4e0f68ba284771996e0f25c` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x105dbd8d772d2e68eab691e9b635166f0b7a17e9` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1062709c03ae060f1491fa4d170e3562d6114046` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x11a8871e6a3e57947270cfe8bc035e4608d2218a` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x129637a37f92c6b5961fc259b5713116c5b65ef5` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13845fc9dffdf1afb8b1cf22ea298c01c8d7f71b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15007679f32a86ae1c3c79b04ffb914f03b23f1b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1598188996dbb5e3d42db7f1faf706cb6cbde0b8` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x165083217e5c38e1746a2e06bcc6ef2898c36044` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16c48eb866ac95cc1346befd909a8f9ddec4ffe4` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16fcb0e5fb44e8cf54d433245a09e2db650458c8` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c1ec70cb783c75518cf79b7ea7fda89e79e1622` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ce2c056c2b1acfe26aa0553b5767831c755a011` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e2496c43d1dc5cbb213bc982cf978335590d434` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e2800893fdd965e0502ef01d746ce6838a72842` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1eec1612c00057b525f9f342b0df474370cc7cdd` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1fd4b126f175eb0818402acd9e34b6c19e48faf9` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x204b1f3f1345ff383259035a639e1de0b1183289` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20661eb4116fa0a8196133feee661383b180598d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2208e15c5aaa18adc0535705743502982f060717` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x225bce0b55abecf4400ab9e3788e9ff56da70ddf` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23a11034c5d17a2019cf5bd814aaad33123990ff` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23d4d7eadd23f1f1bfbe1f35c64e15b6e9957074` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x243432a1938df7378ba26e801da12d48d6b19c6b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26822d956b190de802db47b2730e54bde1c64c12` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x268e6370f70aa5b365ce81b8155bb82f3d538e6d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x270957c9a972465a5510e13534e4807ac2cfc5a1` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27b92ad567dd21543a60976578481f62b2d37bb0` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x289b00007469e19c178f15968f1a09e78d4db013` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a52578a516b5a20bdd365d4c5789a94849bd577` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b10500c04502edbc875d979a832624112d2c97d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c488b9f773b29e6c9fb5b2428b79962f01d2051` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2cd1b610452f776de9aec8eb2cbe9c068fd5bf88` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ebe0e858ec7860dd22e23dd09765c0dbe5f0560` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32dee9b94da8b25841f009c4419cceadb3dd246b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33c29376fbf93aec8223eefe93c322227f02c7b5` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34ea399d2fcfb70e3780229acb9a1b87df50ac54` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x356c0fafbf187d0ae2b125db55e0627f9a552f70` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36e8819832fda41f978448e67ef1930705c32011` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37752a1902be34066dcdc22572bb2496bd1136eb` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37e19bbc036b11fae7ce8081b8b03e322469ccce` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b783333fb0e0c5cfe49f5855c30b0e828713120` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bdec7ebf6c7bf879a6f1a87875b34ec63e16ea9` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c99fec0fc1d2637a68ca7aa5ee4a63b854ce3b8` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d224217e8f6010f3354e71487598454201dfcd4` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e51f7d4b3e2af63ad9e5c2be0ca2f72aab5396b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40cfd8f5a145b5daff7c96882031ac03a9536f5b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x411f5e064d5b77c9ae31f45c5768de3aea26052e` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4128a0bf149fe6750a02410cc73814a544ad0961` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4137477a27668f636bbfd4f01a67e42e79ca87e7` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41792634def77fb35856b9a3cd9e8087828a7e68` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x421e3a5f4a7d6f7623c07e6bde73f573fbb4bffd` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44006163f43cae780d71af73ffec74b4b6fe1815` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4595a7d745299031363d5eb92f7dce170a7f31d6` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4645fdd4a87f3d3d239739de488e3417030d67a0` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x474551061ec411319fd6873fcf00b3d170cd038d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4780a24f9b425ba9aa2a56cef6e3fea04a46cfa9` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4912f95141eee9c29c48417c912bfec1621e1b5f` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bb60007c62115cf20c9e304e461a278a46295d6` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4cdab97d28f097b5a66e91cc76bd4846b5ce4abd` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f9fb4470dfc423fe48f202c57b59ac40fd859f0` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52d718a68b4f385da5c67be94d42851777f22e85` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x550d7555aa2aa40a4e2eae127ca040e827c80619` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5731d36a273dd934e703dd72b617e907879cb193` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a28024ccd6b90edb44011fb6dcc0e8cf16ecf81` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a81f5574c165a7b231e2f6c2b89af3de3d4e941` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b50a5ff1c80a178bb8da9fdff077fbc3dd4e543` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c0d73ec8ac1fc58cf8c8dd445ff2851c0231aa5` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c12ca070f4d472756647a35eb9b0cf2dd00a09e` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ca489d9a453a2e5d5d484ffe4bf080f42961fc1` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5eb71a443356d5bae3c980221f60ff4a1694ceb2` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f4c41421e9388cbd89d54f59e3d9c6cc660b413` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6099bf1682f6a0541fb576c20db9e2e6f4f6d017` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62aeb4b816f0fb7a7f4776c40b0cffeb6fb750c9` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x647f9c2715c665a65da1bd911d41f644b8957714` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x673493c9d023cecdb026ab090853f9d2f2ffe764` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6774daf37bf31a74b1c3f59432e9c7baffe4a6ea` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x678be00a7530aad2c944b76aaa43ef46c6213da9` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x685ad6392204a03ad579405037eb9d40bdd3a720` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68da22d5c021c018b7abdf35fba79075b6b34282` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6985c9b85127687a6fb60924aaf00a9d950e66ef` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69f614dbc8cfcdfd58025fb1e60372c2f0032150` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ba7a92df2e46711e9ff087b1e49702f334077cd` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c3567b74dcaa380e82cb4d935d27864b11daf1e` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e139ff9d134376ec0c2899c12a1ffb4b327d284` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e2ec4b0da622513a303ad6be52288806f968682` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70dcd641f79391ecaf36f4aa16731aed11d1a522` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71259bf62ff00f562749101cf00fb5ccd0714c87` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7212e2917d7f69c1a3a1f1bc9fbf99ac0b3f3772` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x734ae4e728f958d21bef9a4c558b712520c62854` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x759093b4b05f605bb5bb46f94087fae7cc1b3a48` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76bb2c593a4b1081da59899a579adf815f52bbac` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7788db1684db9d19be2518b78d69dd64b7b9eb80` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7823ed364ebf1cc7dad3fc2c99f7bd9ec19c330c` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x796d244b5c8c830b47ca34c30b7f09b142b75f57` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79d15dfd9223424656f683dac6224b9c59515645` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b8315fa225977302950d0c5b988a03cc4b98362` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e321cc0436e2dee1800c7d70e6f5ad56f1263c5` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f0d0d648e7baead2602c15ab5901476676694b9` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f5945d2f7afd109b8d2e853e864b2a8549a507b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fe0244ed6b3d690c2f5ebdb0f7c1150a44a7c9f` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x809eabaeb3e96fb72c3416426cfbc36a6bf95394` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80add8f89bdf5d4c1f1ed9952e51c567e4eb3430` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81229dc207eae57a2e2906b567945c81d91f2270` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83de2773a99cc90c7a9a205410efc249149d82c7` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84e0df859f9442505ef576c3635b67d719c78ed5` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85aaacccba92526c7004a936866840793e3d0a9d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85b258392fc7a3eb6444e22ed896d582b9a89f6d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86533ddd8b818e93a85d48ad1019a52bf80516cb` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86ea82a47f8a5a2c8d6bbf8e557c7b1061355388` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89cee4578fc8d74010ee9e4505e893d5d4992dd4` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a1c05bd2bc8e6e78afc9753ab5b377391af43b2` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a887c7fa17dbba626497024833778354785c580` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ab8f6cab2bdb7b602b7258dfd3cd028a9b921b0` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b6ee0bb357a07d2d0e3d29901826d9ff7c7a25c` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8caca3f3408721f096c9739eda6c44a44ae205c9` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d0237436a4be679bf059dcc177e09ea1f6c3094` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8eb858292487a49fa2791ee0bf7355f608deef5d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x91336b447bd92798be49a481923da7f7595d8333` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x92cf99a78ce9b7a0bba7ce7724cf4cdf9a6d4f31` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9480397097d896188c0f93ef4d4bf7b8d1f24223` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95595f0c72cbc75ed5e15afc1d0a59f97f46ccb5` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95f85363927496cc5cb54b2c83c0940cb6802513` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x970235365d812812262e1838071d97928f51347f` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x973ebbd800a7cd7a2aad8bb0070a7ed45ab48072` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98c1c89b34aed91191c447c96fe947782fdf866c` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99690d21eb64ca7941e974691455be41d558441b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b384f5a0731cc441657f149c406e324de03de8b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b3ee866e030f9cfda181e7ffd9bb0a49606ef0e` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c2367ecc23dcc851c011894cb7e49bbff5109dd` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c45400ec105b2ac72f5a5d2ce585aa831e76b09` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9cd8465223b6a304f41eebb319ef4ceacdb2d789` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e0afa49c7705ea4f2b77ad6d890a110741a0c0a` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e86de75d1405807a057a815f961155f358bdb2a` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa188ad0ab0f3c77ac2d3f75b5f92e0751a62fe7d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa42c97f51ddd2a74c637775ccac18dc37fe6c607` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa4a6b844afd83b323bebb79529f0bc14630e033d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5a49ee54956ace3109b950f0a637a01bd72d9ed` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7ace959c28686c22e239c2eb8ac79cf7b6ff7e1` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa80305f86c4f7f35b7f55a4876f0b0f110aee761` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa996288b8b70744d51cac8b72fe5f751db92430d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa9a0f30e38f8e0f0435c82b1a72b84d61d7b0df6` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa55df835689590411c0d34be275b49b4ecf9d43` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa7e7f7f09f2c12b91245e2e761d4f9c62f7db1d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaab3bbdeccde6800c33febb49ce81a1cbb46dfde` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab5a2db56e6608de7fe12a447b26d349a10fb037` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac8ef2dc1ee81f30a3249fcab6789ed85fd189cd` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xacbe56d6d844fc62d3bf2cd0faa911853916d434` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xadf2dde51859648be10cc870e146dc2779e0e1b6` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2c4ed08c1b8d5ee6c2c845d9ef6a10540f6aedd` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3feb41e5309692c2e78884287c3a25642385730` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4871167e7f71ccd987f4fb5c9a40907add0aa2e` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb52f84861b2a631f49fc14e71d1449973b8bb4f8` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5599b1605d750eea1eed25a4a5f8d2ca3198afc` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6cac691be72cd866eb6b74cd9b8ddcf41ed85c7` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb728ca2b544be0bcae08a1697db08b0d47800c69` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb73b3a6b65b1465d305870f7933af8cc140d3c0b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb834a03f1c6920cadd47bcc16250c0843361e7e9` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8b43453b5d0194858c2584a93dc207765241fc7` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9210b8311ea6cee6cc9d1f8d4c29371fda23495` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9a7a8ac57383969703f67f61d48fa7142640815` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9fa95eb9b4b638df623fcf47c0438f2817f290c` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb07683cf459b85c39ef71a264af6311d9c9813c` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbbdb7f69450715f2f550b58477e65d34835f7f1e` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc671d4af513b2a1d7967830ae96e82e9de4234e` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe6943b50f0bcd56cb938533fbcc1eaed8d7bcbb` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe87b9232113e4c5fdafeb165caf7f2bd208c887` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbf7d1dd7aede0841f563584e39ca8b69f4ca29b1` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc11b5df5b6ffa9d1c83c1f7267e17ce261361486` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc37e9ee82eb1920401db78a3b2d1f518964ccbd4` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3e04720338bc8addc335764914b7602dd11e79f` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5dc98bc974cc70010be2fc3784d1fff5f354014` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9b96d0e1d6544f34ce292f74c9c14a5c514d599` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9e5515080af4798289529326e38eca359c3e4f5` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9ed4933792beb342b32a03e86d66236e300814d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb97da2c799cfc17463704edb1caad451c28a861` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf359a24511f6cebe19125fe733338fcae28fc2e` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf68c23c31566784cfb177c9fcf7d447307d78c3` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcffad458df30d9baef09c611ea777b03f7afb2b8` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd17fb5854616a810fb5dfe5c6348cd12ae46603a` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1ca43e1a9c1ac594f22f12ad1bfb12eef6ffe8d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2b21d1aeed184e9a5d25c5d8ec7073a0636bd66` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2c516a384fce250097ba7ddde50edcd833a12a2` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd301d0a41ef61ce0111242ab0b41a4599f7c9864` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9a2b8c80b4cb6543ced7ce8ae12f718e908138d` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda821985d9bfd79e8ddf3b08cc2f4300912d58ba` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbdef36429566a1e1341b1e14633dee67952bd95` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc2be878c68a0064270eab33a823bf72b06f9f2c` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc8d67a1b5b1233634ceff550bf5edee3d71ad0b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde4f9bd6500a170cad20ff9b0e4d5f7a4f388468` | non_address_book | unknown | unknown | unverified | n/a | `0xaa5a7c7ea51f276301f881f9ccb501a1dfef4f72` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina-kpk-oivs-oct-2025.pdf](https://raw.githubusercontent.com/karpatkey/onchain-investment-vehicles/main/audit-reports/cantina-kpk-oivs-oct-2025.pdf) | Cantina | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [team-omega-kpk-oivs-oct-2025.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/karpatkey/onchain-investment-vehicles/main/audit-reports/team-omega-kpk-oivs-oct-2025.pdf) | Team Omega | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [05_04_2024_Omniscia.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/karpatkey/kpk-token/main/audits/05_04_2024_Omniscia.pdf) | Omniscia | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [15_04_2024_G0-Group.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/karpatkey/kpk-token/main/audits/15_04_2024_G0-Group.pdf) | G0 Group | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [cantina-kpk-oivs-oct-2025.pdf](https://github.com/karpatkey/onchain-investment-vehicles/blob/main/audit-reports/cantina-kpk-oivs-oct-2025.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21250] cantina-kpk-oivs-oct-2025.pdf — no match: Scope section explicitly lists 4 files under contracts/src/. Audit date is December 17, 2025 from the cover page.
- [21251] team-omega-kpk-oivs-oct-2025.pdf — no match: Scope explicitly lists two files: IkpkShares.sol and kpkShares.sol. Audit date from cover page.
- [21252] 05_04_2024_Omniscia.pdf — no match: Only one contract (karpatkeyToken) is explicitly listed in scope. The report mentions 'Token & Governor module' but only karpatkeyToken.sol is assessed.
- [21253] 15_04_2024_G0-Group.pdf — no match: Only one contract file is listed in scope.
- [24103] cantina-kpk-oivs-oct-2025.pdf — no match: Scope section explicitly lists four files: IkpkShares.sol, kpkShares.sol, IPerfFeeModule.sol, RecoverFunds.sol. Audit date is December 17, 2025 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina-kpk-oivs-oct-2025.pdf | IPerfFeeModule | unmatched — not counted | — | listed in scope section | no |
| cantina-kpk-oivs-oct-2025.pdf | IkpkShares | unmatched — not counted | — | listed in scope section | no |
| cantina-kpk-oivs-oct-2025.pdf | kpkShares | unmatched — not counted | — | listed in scope section | no |
| cantina-kpk-oivs-oct-2025.pdf | RecoverFunds | unmatched — not counted | — | listed in scope section | no |
| team-omega-kpk-oivs-oct-2025.pdf | kpkShares | unmatched — not counted | — | listed in scope | no |
| team-omega-kpk-oivs-oct-2025.pdf | IkpkShares | unmatched — not counted | — | listed in scope | no |
| 05_04_2024_Omniscia.pdf | karpatkeyToken | unmatched — not counted | — | listed in scope table as Target Contracts Assessed | no |
| 15_04_2024_G0-Group.pdf | karpatkeyToken | unmatched — not counted | — | listed in scope | no |
| cantina-kpk-oivs-oct-2025.pdf | IkpkShares | unmatched — not counted | — | listed in scope section: contracts/src/fund/IkpkShares.sol | no |
| cantina-kpk-oivs-oct-2025.pdf | kpkShares | unmatched — not counted | — | listed in scope section: contracts/src/fund/kpkShares.sol | no |
| cantina-kpk-oivs-oct-2025.pdf | IPerfFeeModule | unmatched — not counted | — | listed in scope section: contracts/src/fund/FeeModules/IPerfFeeModule.sol | no |
| cantina-kpk-oivs-oct-2025.pdf | RecoverFunds | unmatched — not counted | — | listed in scope section: contracts/src/RecoverFunds.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2ba2f894d0ac9435346a40521ae513d1be6d9b17` | Roles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 2 |
| standard_library | 7 |
| needs_review | 239 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [21250] cantina-kpk-oivs-oct-2025.pdf
- [21251] team-omega-kpk-oivs-oct-2025.pdf
- [21252] 05_04_2024_Omniscia.pdf
- [21253] 15_04_2024_G0-Group.pdf
- [24103] cantina-kpk-oivs-oct-2025.pdf

Fork inheritance lineage and inherited audits are included when available.
