# Agentic Audit Brief: TokenWorks

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: TokenWorks (`tokenworks`)
- Website: [https://www.nftstrategy.fun/](https://www.nftstrategy.fun/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 75 unique implementations (118 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,495,587.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for TokenWorks in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 75 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 75
- Raw deployments: 118
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Autoglyphs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4e4078ca3495de5b1d4db434bebc5a986197782` | ⚠️ Unaudited |
| CabalClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0e2bf6301e8cb314772412204c1cc8d91b5afe6` | ⚠️ Unaudited |
| ChecksFeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989947278a87b7a3e00ca258d7ed416711e190f3` | ⚠️ Unaudited |
| ChimpStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x070e12b6b522e337e3fbbb9d77d97e339f4a1bfd`; ethereum `0x317140b32fff1910a89cd846b241c7bdf5f890e6`; ethereum `0x3ca20831ebea5c99aa6e574d83f0a7c733f7e4d0`; ethereum `0x9b13923e82c327b27bf9f67b3b68783bb0e421b5` | ⚠️ Unaudited |
| CrypToadzFeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b6e249be854e65d9b320c2993a19fc034664daf` | ⚠️ Unaudited |
| CryptoPunks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba6f2207e343923ba692e5cae646fb0f566db8d` | ⚠️ Unaudited |
| CryptopunksData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f5a35647d6f03d5d3da7b35409d65ba03af3b2` | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb` | ⚠️ Unaudited |
| DemocratizingDeath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20ccd62b33142fc357b6449422dd53c0d5ae6af` | ⚠️ Unaudited |
| ERC1155Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x96893a8568e0e5377a75137eb5d1d82f2057d251`; ethereum `0xb7d8a9f5e4a9ba72cbd641581c52ea2d7a97fc32`; ethereum `0xdd08d4d4e8f890aebcefa900a3220538f6fe2f31` | ⚠️ Unaudited |
| ERC1155StrategyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698ba054a8dd4535753aa14e6d67ddaa59f5328d` | ⚠️ Unaudited |
| ERC20Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x322a52637848bafb39a4b2137872abc01b3adc34`; ethereum `0xb1a3015b61e4eac9253a674c6942cdc5dd8de510`; ethereum `0xb40ede070d9d9f37e32a106b04b29e20ef6ee26e`; ethereum `0xce9f3633e721d05a4eb6912f598bb11ec02e9495`; ethereum `0xe5a9634bf5db3d8d6138c3182d09a561bcf1a2a5` | ⚠️ Unaudited |
| ERC20StrategyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f834e16b709c0781537186e7bb09de42a000a0a` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2afd0d67c3bbda1599dc279c2cd4c94df3ea031c`; ethereum `0x6e46eaa57e1c7589686e2b0c935e8a8cf907683e` | ⚠️ Unaudited |
| FundingWorks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb33d806a94b6770c9d309e0842a75f8e6edcd5a6` | ⚠️ Unaudited |
| FundingWorksFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2b591c6de84fbcdbfd4813f9ae263c9e872e119d`; ethereum `0x67c8a70bbe2bfee0a82fab2171abc5062f0b8b4c`; ethereum `0xa4cde76aaca6148ea52715cdd3f460f7fe091783`; ethereum `0xccf04733e14e2622cd27669f62c3157b716567b2` | ⚠️ Unaudited |
| FundingWorksFeeSplit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27119c7b63b85ab587850120c16f0cda9229e499` | ⚠️ Unaudited |
| FundingWorksRenderer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8d619bc2b65f3405c1170331fc3637d5ca6ada` | ⚠️ Unaudited |
| FundingWorksSignature | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38b2d254cd935ac6f5a1be4ce2847b2ac63498ed` | ⚠️ Unaudited |
| FW2Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1f5f8ccccb6524e7d91fc4ed2395981c20ddd2b` | ⚠️ Unaudited |
| GlobalDistributorHandler | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf99bd1218e7eb288cffecf9775385167bb09b2d` | ⚠️ Unaudited |
| HeftUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x5515c4bf85d9dd3ed0f2d8f1bbc3bd78421544bd`; ethereum `0x6834fb269967d0293464fcf4f53e701300144e45`; ethereum `0x756046996d155e5705e35ebd25462b2e2f52fc0a`; ethereum `0x7f722c5ad9907aa86c30e0d4a423d0e7243ea292`; ethereum `0x8279cde5116aca09b50cf0e32a9692672fb17a22` | ⚠️ Unaudited |
| MaxPainFeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15e869f13e941eeb84069e5c6f22294f260baa08`; ethereum `0x7aca5424c570c2ad530ee3d4dbfd731a9aebacff` | ⚠️ Unaudited |
| Meebits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd29408f11d2bfc23c34f18275bbf23bb716bc7` | ⚠️ Unaudited |
| NFTStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x2090dc81f42f6ddd8deace0d3c3339017417b0dc`; ethereum `0x31e9de22a08bafa9a8e292087be9dace2e6442a2`; ethereum `0x3e17172096fbe0a0bbae6931c2e4e6bd9c09bca1`; ethereum `0x4839e62bceb19b38938f15e2edeb8cdc98bfbb74`; ethereum `0x5d855d8a3090243fed9bf73999eedfbc2d1dcf21`; ethereum `0x60b30fb9c2385cb938cef0af0958fbb9c9b38742`; ethereum `0x6bcba7cd81a5f12c10ca1bf9b36761cc382658e8`; ethereum `0x7ac3958d1a36518b3eff6deeebd6cd95902a3746`; ethereum `0x8680acfacb3fed5408764343fc7e8358e8c85a4c`; ethereum `0x9ebf91b8d6ff68aa05545301a3d0984eaee54a03`; ethereum `0xa27a2c21a9d468634107b38d9fffb42ad09b204f`; ethereum `0xb3d6e9e142a785ea8a4f0050fee73bcc3438c5c5`; ethereum `0xc9b2c00f31b210fcea1242d91307a5b1e3b2be68`; ethereum `0xe21f59ce350efbed638850b739616f9c26556da2` | ⚠️ Unaudited |
| NFTStrategyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x12405f0de64393d863699cf954d790a44b7599a3`; ethereum `0x1966780f08b1699fb57e05ed2d7654e3ec64390d`; ethereum `0x6c108b4973b92638e713dc6b8e1601882c83b70a`; ethereum `0x84cf6b93cd330117af9e6ce6ae693a53289faec3`; ethereum `0xa1a196b5be89be04a2c1dc71643689ce013c22e5`; ethereum `0xd1b396bab80c7dad795c2674364d43b7bafc0636` | ⚠️ Unaudited |
| NFTStrategyHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c63a9813ac03be0e8618b627cb8170cfa468c4` | ⚠️ Unaudited |
| NFTStrategyRange | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742fd09cbbeb1ec4e3d6404dfc959a324deb50e6` | ⚠️ Unaudited |
| NFTStrategyRangeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05852ed6b0397f252969ec6a92b26c725bd975ff` | ⚠️ Unaudited |
| OtherdeedSplit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae6db040aeab35150296e4eca5041aa32bc30d69` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000004444c5dc75cb358380d2e3de08a90` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e` | ⚠️ Unaudited |
| PunkStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc50673edb3a7b94e8cad8a7d4e0cd68864e33edf` | ⚠️ Unaudited |
| PunkStrategyFinalOwner | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dccff56723269693ec237a7b3d720e9abf17545` | ⚠️ Unaudited |
| PunkStrategyPatch | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1244eae9fa2c064453b5f605d708c0a0bfba4838` | ⚠️ Unaudited |
| RecursiveStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e9f443f653bd72e44a87ea6cb27b9721465481` | ⚠️ Unaudited |
| RipeStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7212eda151e8ee9f78a63e3c617e115bf66c5ff8`; ethereum `0xf52ac217bcb1c90a5d12c9bb55291cfbf808c972` | ⚠️ Unaudited |
| StrategyPublicLauncher | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x217d043e1f80933eba31c11e28cdfd587773cc73`; ethereum `0x8d05e9a6c48a0dedcf3d9e33221eb7fafd731926`; ethereum `0xd7b44667d1eb4f5fbb5d64b1c640358ee3e72cf5` | ⚠️ Unaudited |
| StreetStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xae0afddc6559a8d612b0cbd6776039e4bcd49f41`; ethereum `0xcd2f5c1a32b2d9689bd2c8f4883fdb3867138b90` | ⚠️ Unaudited |
| TenThousandTokens | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d7ad0e930b54b84c00daad077ee31ba9e2fb2e` | ⚠️ Unaudited |
| V4Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a382acdabb6ec137cbd65f40d84c5e55aa65a15` | ⚠️ Unaudited |
| VibeStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0f8defae8f0aad5fdcdb813ff04434a55eb9a260`; ethereum `0x3558a4a24cb15d96247573cf083169604292ca89`; ethereum `0xb1485f610d54ed1058a06e99f5d667a16dbf3a1d`; ethereum `0xd0cc2b0efb168bfe1f94a948d8df70fa10257196` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b599aa98f48e26b590e98d9b7fa793d71d94645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1556bbddde99e77e88a7e547c7f6567a77a7aa78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c3c5670a64223e48b9932fd971eeaaa5613548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ed1bcfe471f1619fc1a7131f32961f1e39869f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac91707c81a748f2f200526df88875b0aeda930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3def7f8f7657feca26b799290e559824305b4686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44107048c821ad4dc2459da829b13347de0ee07d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x454f0b85f94bcb7ec2423d583fd5fba12eceace2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x467d66b9c85f6b7c4af575c8d8894b0704b04bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52802fff036826c276bcd3752167c0f8a4dc0fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d750ce0d452c7f22a2feecbbcfcb56d496728ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60d184419f7ed17ff6ecd2f4277fc21c7ed14615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cbec215ad4a98e67a0b42babdf794c4c5e2d82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7058507c5507a6f27f63a366ba2cfafc7b83c738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-173242 | `0x713bdb7c019d65ffa3d2e440b1c9f29bd78663b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7851a8ab05a35d82771202665b94d25a1b084aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8721d969ccf97ad61083d8fa7f7fcd771ea5dd3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x909810eb35014f8b17b3de519121cfe57484280b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91afca8543254b809f93d86473b63c8e2e6c42a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966107ad902420a3a3bca59888c7313084a1da3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f08ea3f2283ea6f8b264050bdb48423fe7b24dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa571e1161acc5d64b3a9f3022637ee191149092d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5a5a6379b421bd3f1abcdbc401222ced5310ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa758699af2d7d2ea620e17f61ae03146081aa287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbca4321d334ae643b428098a8d378958c5428400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc767271b7c12fa2d7cfd7e2bf9d50768a6005fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcce1db21c8d9782c2b0ab1895df7ffe53058a66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5c7b79ebb544aaea0814a5bb0037552414ca72f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5ef7d3d225770bcfc4a46f9cef413f440610dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b4f6e535baf90738911b3a9bbaf2d77d0fef7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1198727fa8d5f5d6f747505ba0df87861c28905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1450d7708de452b1d89cbf9b83e0cba97719d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e381a9b2c9fa2c3f89ea53df031e335c6a2d35` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
