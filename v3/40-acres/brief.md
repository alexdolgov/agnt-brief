# Agentic Audit Brief: 40 Acres

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: 40 Acres (`40-acres`)
- Website: [https://www.40acres.finance/](https://www.40acres.finance/)
- Lifecycle: active (Tier 0, 35.9% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, ethereum, optimism
- Contract surface: 546 unique implementations (840 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $48,475,149.15
- On-chain TVL (included contracts): $9,508,727.33
- TVL by chain: Base $7,421,362.47 | Avalanche $1,189,486.54 | Optimism $897,878.32

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for 40 Acres in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 546 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 31
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/143
- Verified + Unaudited implementations: 143
- Verified by bytecode match: 0
- Unverified implementations: 403
- Unique implementations: 546
- Raw deployments: 840
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (143)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: optimism `0x08dcdb...285957`; optimism `0x1dbdbf...5dd46a`; optimism `0x723ae1...b99a02`; base `0x053e49...19e3e9`; base `0xb99b6d...507cf5`; avalanche `0x80bab9...b62ec9`; avalanche `0x844054...8f2a90` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xc0485c...04bcfd`; avalanche `0xf8e312...a8a612` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x555709...b8433f`; optimism `0x828322...283fe6` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x0253d2...fee4f1`; avalanche `0x081125...e2ebbe`; avalanche `0x272cd3...ea4bfb`; avalanche `0x639c4b...fb2c89`; avalanche `0x6c6fc8...a6eeb0`; avalanche `0x88451a...0c91e6`; avalanche `0xa9bf90...8660f0`; avalanche `0xaa589d...5c92ae`; avalanche `0xc2a104...fc9eba` | ⚠️ Unaudited |
| AccessHubDLMMActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a4203...5d6cfb` | ⚠️ Unaudited |
| AccessHubPhar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x06e053...118e1b`; avalanche `0x282a4f...c096ec`; avalanche `0x3f3af1...3c9e4f` | ⚠️ Unaudited |
| Aero | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x940181...d98631` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x580be5...294bfc` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x01a8a0...77271a`; avalanche `0x9c70be...248f5c`; avalanche `0xb6180a...c40fe5` | ⚠️ Unaudited |
| AlgebraFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x512eb7...5e9e5f` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9df945...5be48e` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b2441...8dba1e` | ⚠️ Unaudited |
| AlgebraVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc0b5d...d079b3` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x649638...0eaf03`; avalanche `0x7d51ed...fb37ab`; avalanche `0xbbe734...1ebb32` | ⚠️ Unaudited |
| AutoVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x47a2c1...2c8825`; avalanche `0x4bb193...ab5586`; avalanche `0x51d6ab...9b3d4b`; avalanche `0xa44cb7...299aeb` | ⚠️ Unaudited |
| BasePluginV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x5af551...1176ff`; avalanche `0x74544e...e52ed0` | ⚠️ Unaudited |
| Black | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd94a8...1c43f6` | ⚠️ Unaudited |
| BlackholeClaimingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x96d264...94ca85`; avalanche `0x0ec20b...bbf384` | ⚠️ Unaudited |
| BlackholeCollateralFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7915be...3d866c` | ⚠️ Unaudited |
| BlackholeLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93d12d...82cc55` | ⚠️ Unaudited |
| BlackholeLoanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 13 deployments: avalanche `0x07055a...d4adfc`; avalanche `0x1b0951...7a3802`; avalanche `0x21b48f...f3c35e`; avalanche `0x389c15...6d8163`; avalanche `0x3c7645...349a5c`; avalanche `0x90e222...1c4bb4`; avalanche `0x948050...9d50df`; avalanche `0x99f630...7a95d1`; avalanche `0xa738e4...e5ea28`; avalanche `0xc932a4...ff7b0f`; avalanche `0xe13fcd...2dd86e`; avalanche `0xed2b3e...ed59bb`; avalanche `0xf4cac2...488d89` | ⚠️ Unaudited |
| BlackholeLoanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x5122f5...623558`; avalanche `0x693ab0...440cdb` | ⚠️ Unaudited |
| BlackholeMarketplaceFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7e99c2...1b1a93`; ethereum `0x9536a1...f55980`; ethereum `0xda42b8...811b49` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3935f7...e32d43` | ⚠️ Unaudited |
| BlackholeRebaseHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87d0f8...9bde0c` | ⚠️ Unaudited |
| BlackholeRewardsProcessingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x129a76...2057e0`; ethereum `0x4d5512...1d6819`; ethereum `0x6cb266...a11eff`; ethereum `0x73b1e5...05fa68`; ethereum `0x7b9e8a...ee9a16`; ethereum `0x824659...8ce24a`; ethereum `0xc5cb7b...a721b5`; ethereum `0xd14ff8...fd70e5`; ethereum `0xd7763c...c0b8a5`; avalanche `0x20f0c0...b41bc7` | ⚠️ Unaudited |
| BlackholeVotingEscrowFacet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x45a5af...623337`; ethereum `0x774ebf...7ac577`; ethereum `0x7956ff...2d4891`; ethereum `0xacaf4b...93a8a3`; ethereum `0xb9d9d0...393e2c`; ethereum `0xdd9e19...5c5238`; avalanche `0xdb6e78...8a59ac` | ⚠️ Unaudited |
| BridgeFeeWrapper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c2207...b8888b` | ⚠️ Unaudited |
| ClaimingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x68ebca...8fdbd7`; ethereum `0x6bb7fb...4616cd`; ethereum `0xb58d41...fe5d66`; ethereum `0xc01a94...f658b1`; ethereum `0xdae3a4...e9fb60` | ⚠️ Unaudited |
| CollateralFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x034ecc...d2bc12`; ethereum `0x0d7bc9...8ac712`; ethereum `0x1f5f48...1cfb3b`; ethereum `0x2039d3...071669`; ethereum `0x26eb63...ecbed2`; ethereum `0x38089f...399635`; ethereum `0x42425c...8e21f5`; ethereum `0x6aa922...b93c99`; ethereum `0x71ffb6...62ea1f`; ethereum `0x8e4fb2...4b9c04`; ethereum `0xc3b716...44bdc1`; ethereum `0xcf27f7...456cd6`; avalanche `0x249146...e3bd50` | ⚠️ Unaudited |
| CommunityRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0x5fbdf3...9b60c5`; optimism `0x66d640...39b873`; optimism `0xf1f46f...db9f94`; optimism `0xf353d4...f008de`; base `0x3c113d...57e46d`; base `0xe63f5f...109aa2` | ⚠️ Unaudited |
| DLMMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb4800...a23d4d` | ⚠️ Unaudited |
| DLMMFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x684b34...42289c` | ⚠️ Unaudited |
| DLMMPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf41253...26d710` | ⚠️ Unaudited |
| DLMMQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xddae0a...5fef40` | ⚠️ Unaudited |
| DLMMRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x015f05...a037b3`; avalanche `0xa2ab12...059513`; avalanche `0xf1996b...120ab7` | ⚠️ Unaudited |
| DLMMRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff2bef...f5d93d` | ⚠️ Unaudited |
| DynamicYieldBasisLpClaimingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd394c...de777c` | ⚠️ Unaudited |
| DynamicYieldBasisLpFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcbe1ef...2b7ed7`; ethereum `0xf5bdac...8b1197` | ⚠️ Unaudited |
| DynamicYieldBasisLpLendingFacet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00d2f4...24ebb9` | ⚠️ Unaudited |
| DynamicYieldBasisLpRewardsProcessingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8de50...755a4c` | ⚠️ Unaudited |
| EntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaad038...d2056b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e23a4...06d0ec` | ⚠️ Unaudited |
| ERC4626LendingFacet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x329f7a...af7d41`; ethereum `0x59a0ec...1bf08d`; ethereum `0x5f940c...d8484a`; ethereum `0x7b6f50...6b80e8`; ethereum `0xff17eb...c89ad6` | ⚠️ Unaudited |
| ERC721ReceiverFacet | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3c28fa...d96579`; ethereum `0x5ce0a3...18ea8e`; ethereum `0x9203c2...8ac60a`; ethereum `0xc6ed60...e82700` | ⚠️ Unaudited |
| FacetRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bca68...4943de` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0xa47ad2...b3a449`; avalanche `0xcbf15e...0932ab`; avalanche `0xcecc64...f45541` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x088e2e...53bb64`; avalanche `0x1e1e2a...8437bc`; avalanche `0x82a411...185222` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x233433...3adc02`; avalanche `0x6a8591...106aa9` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5af7fa...5125ac` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x227fab...4de16f` | ⚠️ Unaudited |
| FortyAcresMarketplaceFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b0a87...aa7f25`; ethereum `0x678648...4a071e` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x35f35c...5bbcb5`; avalanche `0xaecb52...f50586`; avalanche `0xd9a63c...5906b1` | ⚠️ Unaudited |
| GaugeManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93c601...dc0b8f` | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6c6630...c66de5`; avalanche `0xdd3589...f3f946` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x15c50a...24d292`; avalanche `0x19ff41...d7fcd8`; avalanche `0xdb7361...0da90e` | ⚠️ Unaudited |
| GenesisPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdeb50a...53260f` | ⚠️ Unaudited |
| GenesisPoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0eb1e1...4840dd` | ⚠️ Unaudited |
| KinkFeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca71e...ad7b1f` | ⚠️ Unaudited |
| LendingFacet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x9ddbae...c807f4`; avalanche `0x427c8b...e071b7` | ⚠️ Unaudited |
| Loan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x16193d...e54fc9`; ethereum `0x9f242a...0ad874`; ethereum `0xef7475...f38d49`; ethereum `0xf46f93...524996`; optimism `0x16e2e8...b3e4d2`; optimism `0x20b7cd...b97f84`; optimism `0x2dee03...517a6b`; optimism `0x5122f5...623558`; optimism `0x6ca57c...691712`; optimism `0x761e20...d43c35`; optimism `0xdd233e...7884f1`; optimism `0xf00742...a50964`; optimism `0xf761ac...d13d01`; base `0x371d2b...b234e1`; base `0x3addab...7657fa`; base `0x8b51e5...836d9d`; base `0x92f4cf...408f0b`; base `0x9c0fc7...391d32`; base `0xdd9b03...c735c3`; base `0xebeb86...a29708`; base `0xf6a044...279b5f`; avalanche `0xa8b2c8...b77b57` | ⚠️ Unaudited |
| Loan | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x87f18b...58efd0` | ⚠️ Unaudited |
| LoanConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005130...7d2198` | ⚠️ Unaudited |
| LoanV2Native | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x2acf5c...cacdec`; base `0x71a28f...476341`; base `0xe2addc...f7e108`; base `0xf535d5...5caf27`; base `0xf755ec...f249c4` | ⚠️ Unaudited |
| MerkleClaim | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00d59b...777a49` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab5598...5309d8` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xe7187f...9975c4` | ⚠️ Unaudited |
| MigrationFacet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x38dbdb...191878`; avalanche `0x2d7182...dec4da` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x3460dc...a4102d`; optimism `0x6dc9e1...d10982`; base `0xeb0183...a33fe5`; avalanche `0xd23f12...222fde` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3265d6...99a8a0` | ⚠️ Unaudited |
| MockPoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x491280...4f3e96` | ⚠️ Unaudited |
| MummyFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69fc8b...16ab61` | ⚠️ Unaudited |
| NFTDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x469412...519e13`; avalanche `0xf91d96...ec3485` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xbb5dfe...56adf4` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3fed01...252146`; avalanche `0xbf5b19...9b9d70`; avalanche `0xfd1c72...329545` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f17db...60a89a` | ⚠️ Unaudited |
| P33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x26e9db...926ca9`; avalanche `0x640d2e...8867e6`; avalanche `0xcda419...22ca80`; avalanche `0xd8ee2b...4d4bd8` | ⚠️ Unaudited |
| PairBootstrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xa053ca...e09a22`; avalanche `0xa589c8...b2bd8d` | ⚠️ Unaudited |
| PairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25cbdd...b6b746` | ⚠️ Unaudited |
| PairGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34098b...9afe1c` | ⚠️ Unaudited |
| PermissionsRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x751b71...1a65ff` | ⚠️ Unaudited |
| Pharaoh | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13a466...1f28e7` | ⚠️ Unaudited |
| PharaohLoanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x094f0f...01b598`; avalanche `0xa9ad26...da14b0`; avalanche `0xc9651a...c088da`; avalanche `0xf4172a...5dc563` | ⚠️ Unaudited |
| PharaohLoanV2Native | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x54c269...206ad9`; avalanche `0xd3e726...2b11d4` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xecbbc0...7863d3`; avalanche `0xefc098...bde662` | ⚠️ Unaudited |
| PortfolioAccountConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400c71...f80dd8` | ⚠️ Unaudited |
| PortfolioFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52d43c...ea96c2` | ⚠️ Unaudited |
| PortfolioFactoryConfig | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cbf76...d9c61b` | ⚠️ Unaudited |
| PortfolioManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x40ac2e...6529ec`; base `0x40ac2e...6529ec`; avalanche `0x40ac2e...6529ec` | ⚠️ Unaudited |
| PortfolioMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4a4ffb...b95826`; ethereum `0xb71d66...68ceb2` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd76306...c74bed` | ⚠️ Unaudited |
| Quoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x7a88c4...48d214`; avalanche `0xadae75...456465` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x3e182b...9eb689`; avalanche `0xb72973...ea2138` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: avalanche `0x00409b...3a4eea`; avalanche `0x906b98...81dfdb`; avalanche `0x9e89a0...727e01`; avalanche `0xa47aa2...466de0`; avalanche `0xaf9440...d4c011`; avalanche `0xd57ec4...d057e6`; avalanche `0xec8962...5fdc81`; avalanche `0xf2593b...5984b1` | ⚠️ Unaudited |
| RamsesV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae6e5c...157d0d` | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a4113...7c66f9` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x0b4478...ab4f39` | ⚠️ Unaudited |
| RedeemCommunityShares | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x7ac9d0...3f7f52`; optimism `0x9fd29c...255447` | ⚠️ Unaudited |
| RewardsConfigFacet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x14b58f...06ddef`; ethereum `0x21732f...08f284`; ethereum `0x497beb...f42ee0`; ethereum `0x583e50...3af590`; ethereum `0x64bde9...22f808`; ethereum `0x842d8f...bb9876`; ethereum `0x9864fc...156236`; ethereum `0xe2a27a...4dd053`; ethereum `0xf625d2...736552`; avalanche `0x2271e0...da9cdd` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: optimism `0x5d5bea...3f784f`; optimism `0x9d4736...1ea99b`; base `0x227f65...964c7d`; avalanche `0x7c7bd8...83ba28` | ⚠️ Unaudited |
| RewardsProcessingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d5a4...bccd8c` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: optimism `0xa062ae...8b2858`; optimism `0xa132da...23f9c9`; base `0xcf77a3...874e43`; avalanche `0x9cee04...5e38cc` | ⚠️ Unaudited |
| RouterHelperZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd68b9c...9636e1` | ⚠️ Unaudited |
| RouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x04e1de...212fec`; avalanche `0x9eed16...f3c111` | ⚠️ Unaudited |
| SecurityRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x275e24...d82cb5`; avalanche `0xd2fe84...537b02` | ⚠️ Unaudited |
| SinkManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5aee5f...abcdae` | ⚠️ Unaudited |
| SwapConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3cb8...8771b2` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x053e49...19e3e9`; optimism `0x0fdf76...876e70`; optimism `0x33f04e...a9451f`; optimism `0x3e366f...bb3f17`; optimism `0x5ae73f...cfb142`; optimism `0xed29a1...cb0913`; base `0x0638ad...c83982`; avalanche `0x5ae73f...cfb142`; avalanche `0x5c7b76...faa680` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x9daea9...90acc5`; avalanche `0xabfc48...19709d`; avalanche `0xc8b8fc...d3915c` | ⚠️ Unaudited |
| TickLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x3a7aeb...94a100`; avalanche `0xe66aae...4a822e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xfe99e9...131aa0` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: optimism `0xf132bd...3eb817`; avalanche `0x5acc35...8ec6c6` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x844054...8f2a90`; optimism `0xb2607f...a348a8` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xc0485c...04bcfd`; optimism `0xfaa5c8...454c54` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe99924...54643e` | ⚠️ Unaudited |
| Velo | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x3c8b65...a11a05`; optimism `0x9560e8...1088db` | ⚠️ Unaudited |
| VeloLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 30 deployments: optimism `0x053ae6...880c0b`; optimism `0x100451...8a94fb`; optimism `0x16f521...064e3d`; optimism `0x3e8f20...c798ab`; optimism `0x4425dc...3f6e80`; optimism `0x44306f...841f3e`; optimism `0x56d6ab...8675dc`; optimism `0x5b0e7b...c1cab1`; optimism `0x60301f...0eb35b`; optimism `0x6c2eaa...a4b63f`; optimism `0x72b760...d62db9`; optimism `0x7af553...1d00aa`; optimism `0x81116f...0e0706`; optimism `0x8f7486...e8265d`; optimism `0x9261c5...63bf14`; optimism `0x9e3311...1284c2`; optimism `0x9f8380...b4eb85`; optimism `0x9fc666...cd7193`; optimism `0xa747d2...bbe604`; optimism `0xaba559...526c9d`; optimism `0xb28795...bc5947`; optimism `0xc34ed8...e3ac6d`; optimism `0xc4c2e1...775f72`; optimism `0xc8bf1a...e182b8`; optimism `0xcc5cc6...e39b75`; optimism `0xd00de8...b56f8e`; optimism `0xd2f7bc...fe2e1e`; optimism `0xe685f0...713118`; optimism `0xf6a044...279b5f`; optimism `0xfdb262...bc7489` | ⚠️ Unaudited |
| VeloLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x08c137...d81873`; optimism `0x1ed734...722b42` | ⚠️ Unaudited |
| VeloLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x26ecad...ca3f2a`; optimism `0xf18fcd...5f4a68` | ⚠️ Unaudited |
| VeloLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x972b1a...86ed3a`; optimism `0xf132bd...ba06a7` | ⚠️ Unaudited |
| VeloLoanNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x2421cf...8c86dc`; optimism `0xc506fe...477181`; optimism `0xfa6e22...d84c40` | ⚠️ Unaudited |
| VeloLoanNative | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x7d4ffa...0dfe59`; optimism `0xf8e312...a8a612` | ⚠️ Unaudited |
| VeloLoanNative | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x8c0ae2...1c0315`; optimism `0xbfb12b...f1e54b` | ⚠️ Unaudited |
| VeloLoanNative | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xa48b8d...82e4b2`; optimism `0xf4172a...5dc563` | ⚠️ Unaudited |
| veNFTAPI | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3629c...b35de9` | ⚠️ Unaudited |
| VoteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34f233...6f846b` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x09236c...b8cf7e`; optimism `0x41c914...5abf3c`; base `0x166135...c480a5`; avalanche `0x31a8a3...925d35`; avalanche `0x677e39...ab35f2`; avalanche `0x9334f3...45af21`; avalanche `0xaf6c9a...af4019`; avalanche `0xe59b0f...12d82a` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x9c7305...9a2e26`; optimism `0xfaf8fd...06787d`; base `0xebf418...67e6b4`; avalanche `0xeac562...9ad763` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaaea1...b9ce6f` | ⚠️ Unaudited |
| VotingEscrowSplitHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d67c7...500e6f` | ⚠️ Unaudited |
| VotingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1eaf3c...de23e5`; ethereum `0x34ea0b...1cf0f3`; ethereum `0x721924...ae6841`; ethereum `0x7a4e22...9e9c6c`; ethereum `0x7e1d83...846c3a`; ethereum `0xa043e9...b8359c`; ethereum `0xf92899...4fc59d`; avalanche `0x2c34c8...486b8b` | ⚠️ Unaudited |
| WalletFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8bc6e8...d4ee26`; ethereum `0xf01077...7ff6a4` | ⚠️ Unaudited |
| XPhar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8164e...736b9a` | ⚠️ Unaudited |
| XPharaohFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x150c52...faf08d`; avalanche `0x63f44f...499a1c`; avalanche `0x6cdf7c...cee747`; avalanche `0x79be5a...32e6d2`; avalanche `0x8a1800...7a3941`; avalanche `0xef7475...f38d49` | ⚠️ Unaudited |
| XPharaohLegacyClaimFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e9234...44b8b3` | ⚠️ Unaudited |
| XPharaohLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 13 deployments: avalanche `0x0a5261...8d89e0`; avalanche `0x16193d...e54fc9`; avalanche `0x20fbab...b2ceef`; avalanche `0x5b60c8...a9f099`; avalanche `0x5ce0a3...18ea8e`; avalanche `0x6f61a2...74947a`; avalanche `0x94bc48...5abb86`; avalanche `0xa1fa45...7f0947`; avalanche `0xacdf06...3bcb9b`; avalanche `0xbfb7ea...283d7e`; avalanche `0xc7d6b8...ea16ce`; avalanche `0xcfeda4...48a253`; avalanche `0xdd1427...ac522c` | ⚠️ Unaudited |
| YieldBasisFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3501bf...34035d`; ethereum `0x628011...c88d6e`; ethereum `0x79b756...bafb08`; ethereum `0x94bc48...5abb86`; ethereum `0xc6ef62...7caff4`; ethereum `0xc99639...ceab16` | ⚠️ Unaudited |
| YieldBasisLegacyMigrationFacet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf8e26...56f167` | ⚠️ Unaudited |
| YieldBasisLpClaimingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0b5a25...0ad298`; ethereum `0x2d70fd...48e4b1`; ethereum `0x3779e4...dca87f`; ethereum `0xbef11e...ef2a4d`; ethereum `0xf64893...00e1aa` | ⚠️ Unaudited |
| YieldBasisLpFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x12ae9b...611e67`; ethereum `0x3c30cc...ee3d08`; ethereum `0x57f8e9...ffb5a3`; ethereum `0x595913...425b46`; ethereum `0x91cf64...e8a891`; ethereum `0xb3fb3a...957eb5`; ethereum `0xc5da07...87b95f` | ⚠️ Unaudited |
| YieldBasisLpLendingFacet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f6296...c5dadf` | ⚠️ Unaudited |
| YieldBasisLpRewardsProcessingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3f64f2...d0281f`; ethereum `0x63edac...6e9279`; ethereum `0x746815...139081`; ethereum `0x9e67db...587d02`; ethereum `0xb676b7...41cd42` | ⚠️ Unaudited |
| YieldBasisVotingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x4057b0...29582b`; ethereum `0x6243e6...890cc1`; ethereum `0x87b8d3...066140`; ethereum `0x98779d...33ab4e`; ethereum `0xb5b865...d659f4`; ethereum `0xddb402...b90555`; ethereum `0xe108ff...ee838c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (403)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x124d00...09bac7`; avalanche `0x6243e6...890cc1` | ❓ Unverified |
| PharaohLoanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xd16443...42e0c6`; avalanche `0xf6a044...279b5f` | ❓ Unverified |
| Proxy (impl: 0x65b80810a0d229e01adf7f38a1d67f3fd3baf8f8) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x60301f...0eb35b`; avalanche `0x65b808...baf8f8` | ❓ Unverified |
| Proxy (impl: 0x9f1f6f4cd000e137ab6d79d066e0bf508794d32b) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6c2eaa...a4b63f`; avalanche `0x9f1f6f...94d32b` | ❓ Unverified |
| Proxy (impl: 0xb78ea551315053876e9155fdceb8d22f1a160337) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xad2fc8...b8c9cb`; avalanche `0xb78ea5...160337` | ❓ Unverified |
| Proxy (impl: 0xba0a8519e08cfe85eaa3e879d6ee5f460076c386) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x723ae1...b99a02`; avalanche `0xba0a85...76c386` | ❓ Unverified |
| Proxy (impl: 0xc99eb17309d7c6bdd96373db1e42412e0e1d44a1) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xbed7c0...791647`; avalanche `0xc99eb1...1d44a1` | ❓ Unverified |
| Proxy (impl: 0xd0a246f9fa9de9dc0f6f54523e8c9b938ea8316b) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7af553...1d00aa`; avalanche `0xd0a246...a8316b` | ❓ Unverified |
| Proxy (impl: 0xe02398ba3c10fe9625b576bf58ba8823f0609cce) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x5523f1...2bf7b5`; avalanche `0xe02398...609cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a706...f48b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01e9e8...2e9a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054ca4...2526a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0715f1...46974b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082efb...5609dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a5261...8d89e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa0e4...19ac9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c9e1e...f00717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec20b...bbf384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105c64...211320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11dee1...122ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121650...a40aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x148d1c...e8d27c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17cd3c...1fd397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3381...cf534c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bdd3d...f9e8d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d7ce3...080ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fd766...a2c8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204bee...f74ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x249146...e3bd50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2563ea...78fca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264085...06bb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c34c8...486b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d31fa...6bb111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e9234...44b8b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31d18b...77bfab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x323354...63a746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ccc6...d37a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3646c4...bd4390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3938f0...04a0f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5b18...f16daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42d937...b96cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43d43b...8cb8e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bbe7c...f682c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ecc8b...3ba7a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c767...92d677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-119377 | `0x5122f5...623558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d43c...ea96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f394...465464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9317...376e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c0709...c77e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c7b76...faa680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x643001...917df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aa887...8f1087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf2fe...6c8d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cacba...dd4e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7640fa...d5ef5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x794207...9f149a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f04f2...7bc4dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f072c...0dd086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80951b...5ec037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8165d3...d9b567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x826b8e...13b6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842a57...2fcfa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8706fd...087012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a66bc...c6730e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d104e...fa1a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3e0c...c6fc99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91d4bb...7ff934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991fe8...cf9472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c4c32...a06d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dbe46...658785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4bb09...5b77e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60d8a...f18089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8b2c8...b77b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9ad26...da14b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc23e...70bed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac0de1...c49364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae2f38...9e62c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb05e6f...b7e47d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14e0a...194770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb24a25...dea72c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48238...fd7cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb543db...99e4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6e5f4...13d9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb74527...6c0570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae094...d5348f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb0b59...54ccd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe69bf...97f279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef435...a38e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfeb34...721c55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7d6b8...ea16ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc85da8...67b208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9651a...c088da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa4a3...548193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4c9d...a17f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a0a1...f9cb4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd458b1...0d27c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ed85...f5dec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd504da...138f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5f0df...505eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6516f...4b4205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd89b3a...b3b352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb9a62...5ce46a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebee5...226e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe75c...bb6c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe125f0...2e12b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1caf5...7e5159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe29512...2598c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8951c...8029d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecb7ea...3c7b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed3217...50b228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb423...d03db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0bd31...f1c661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37075...6562b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4db82...d7cd3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf778b5...9dd0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfab5e5...0ea96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x157dc2...368552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4a039e...a8bd51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5669b3...1b7ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5f2f67...dcfa1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64dd80...d96c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x795551...3086a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x846e82...25a951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-119378 | `0x8ac5aa...a04dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa84ea9...6b748e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbcba2d...f2045b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5be2c...fa42c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3c5e2...93fa51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x030ad5...5a9fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x043413...f62b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x053ae6...880c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05f018...325b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08dcdb...285957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b4a35...6f4c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x100451...8a94fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12a31b...2fc92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x142ce7...fc9717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18c2ab...e6fe20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c0527...9b1af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1dc763...d3b858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x201e6f...5ca51d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20a27e...884498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20b7cd...b97f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21b48f...f3c35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21fd41...946bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23ca23...4c1d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25244f...2b9553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26ecad...ca3f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28fe58...b4d92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37eb65...5f44fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c7645...349a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4425dc...3f6e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x457fea...765b6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x478805...58d421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c8c3f...3d4f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51e5a0...d89fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53bfd2...fb1f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5523f1...2bf7b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56e0e3...cf4e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c0116...50a9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63a993...59566e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69e679...7c6972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6bd652...5bafe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x723ae1...b99a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x746514...c63913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x761e20...d43c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x776ec8...585b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x780cc3...c7c2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x81116f...0e0706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83ac60...b57e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x849ac2...6b306a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ac5aa...a04dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fbe84...d73821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90af87...daf390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c58aa...f56971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e3311...1284c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f1f6f...94d32b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fc666...cd7193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa217ca...7f1e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8deab...1c2046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad4edc...bd37ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf20d7...98714a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7c3ac...1b019e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb88dcf...4509c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba0a85...76c386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2425b...092fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc34ed8...e3ac6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc4c2e1...775f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc99eb1...1d44a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc5cc6...e39b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce6b7f...8436c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0a246...a8316b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1cfbc...0b5b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2f7bc...fe2e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3e726...2b11d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5ea7d...b82c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde8ac9...35835f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe02398...609cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2493c...4ffdc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe31ed4...361dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe685f0...713118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec0af9...8be22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeda1e6...93c061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeec8f8...3b8a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf132bd...ba06a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf18fcd...5f4a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4c17e...b0dd26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf761ac...d13d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb5053...95fbea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdb262...bc7489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x019070...22e1c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01e9e8...2e9a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x02db23...af1cfd`; avalanche `0x4a039e...a8bd51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x031a97...8cd262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x038cba...0268bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x054d96...dcd54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x065028...349aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x088703...432779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0aff49...76efa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c7417...95b54d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ce185...6ab41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0dea37...ad26f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e23a4...06d0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x109309...2a82aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1112f6...9dfec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14e4e3...e51cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15913e...2522bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16766b...9c99ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17cd3c...1fd397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18bf86...7d001f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19844c...33f0b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a624b...c66297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a6ed8...d89d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bdd3d...f9e8d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20cbeb...00cdd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2155f3...8327dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21760a...2d66b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21dadc...261a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23b216...9a81e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x242ec3...f20758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x263625...27c84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26dd96...473cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27ae8c...02c0f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28fe58...b4d92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29cd88...3afb41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b17bf...73b6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ca45d...3eac06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e694d...8256d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3176f6...4bf483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3388a5...f56196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34c196...210981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3646c4...bd4390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3755df...ed11c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x376021...0ab3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c28fa...d96579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c3945...509051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d3921...84ecd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f90e9...da61d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x400c71...f80dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4057b0...29582b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x428b74...9534ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x438aa2...49bf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43c4b7...4bf8db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44306f...841f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x469ab2...cbd534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48b1d4...133ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4cd133...e520f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x516ab0...789f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51d22d...284e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52a7ab...0a4e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52ae67...be8d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5363e3...8f0f7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53d569...4ae480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x553901...6f9988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56e0e3...cf4e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58318f...9631d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58b050...c56994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59aa17...76cbf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b0f5a...5929e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b2c91...c517bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d433a...960584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d9916...968293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ef387...1eff43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fbdf3...9b60c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x631c0e...88b41b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x638dc9...a1dab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x645ac0...6adaf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x646fff...4848a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6499d2...be40d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65b8ba...352d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65e36a...f8c485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x660862...e97882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66c665...974091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b1915...bfd9da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b6a3d...a6ea5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bcce3...2b54a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bd81e...0c4525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bf2fe...6c8d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c4acf...7baf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6cab65...f993d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6cdc88...5f8c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70fd0f...e39f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71775f...55325a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73aa9a...e42619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73c4b0...e8cdbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75a1c4...b5f690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79d6b8...fc2229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7dbab3...2f4ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f257a...5edfc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81dd8a...783d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x824dbc...3f0296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83700b...d0b21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83ac60...b57e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85448b...58f8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86cf4b...84428a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86eba1...f753e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87f18b...58efd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88a49c...2a9cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x89d3a5...c5366d`; avalanche `0x9f41a8...3e72d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ba179...978fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ce534...f8830e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f6c94...c287c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x903ade...bb5a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91b8c8...4f7736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x922b9c...8a2aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x943444...899bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x973012...d0dd44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98e329...afd615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9aebf5...1c2f8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b0c4d...20b47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cc445...50104f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d45e1...ee0bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9de4f9...871685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e95ef...ca6552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f52f2...d4d74f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa46552...951c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa90bc0...32cb7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9257e...b5431b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9ba8b...b34430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacc34a...06479b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb43f10...6166fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb603a7...ca37d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7c3ac...1b019e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb88897...2af336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8f679...f98f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb94ad9...229aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb98c60...006150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc02ff1...f4a69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc046f2...221aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc200e6...c60524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2b3bd...951fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc35af3...d3f422` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc45c20...6af5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9384c...2e7012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc99757...43d783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca756e...23afde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcad684...c01b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf9fe8...846e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd00de8...b56f8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1447c...bda08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd28467...88548c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2f7bc...fe2e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4862a...414369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5d364...f4de90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5ea7d...b82c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd62c86...3f01d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6b661...0049b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8d82c...107ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc469e...a15c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdca25b...3df21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcfccf...125d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde8ac9...35835f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0e637...7c9300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe168fc...2f06c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe30d0c...64d9e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe46d24...67b5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe56531...07d04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe57aec...c6b942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5be02...a17508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe63f0d...64ec12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe685f0...713118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe809b7...4d2a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe93b68...e5fc95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe946a9...f2f981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe98aec...1cf0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea6f59...03219b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec0af9...8be22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec9099...3033d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf00742...a50964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0274c...485b99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf03ce4...90a1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf18fcd...5f4a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf19a0f...8bfb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1f46f...db9f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf31632...66d51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf582b0...31cc6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7f32f...54112e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf9221d...45d767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc508b...864c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe8428...b365df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe9260...8c265c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff39c5...3b2fb6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view](https://drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view](https://drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view](https://drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view](https://drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4302] drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view — no match: Extracted 17 contract names from the scope section listing files. Audit date from 'Date Audited: November3-November8,2025'.
- [4303] drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view — no match: Extracted 19 contract names from the scope section listing files. Audit date is the end of the range June 30 - July 3, 2025.
- [4304] drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view — no match: Scope explicitly lists 10 files; audit date range April 21-23, 2025, end date used.
- [4305] drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view — no match: Scope section explicitly lists 6 files. Audit date range March 27-31, 2025, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | FacetRegistry | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | FortyAcresPortfolioAccount | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | PortfolioFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | XPharaohFacet | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | XRexFacet | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | IVoteModule | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | IXLoan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | IXVoter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | LibDiamond | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | LoanUtils | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | PharaohLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | XPharaohLoan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | AccountConfigStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | CollateralStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | CommunityRewards | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | EntryPoint | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | IReward | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | IVotingEscrow | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanUtils | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanV2Native | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | IRouter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | PharaohLoanV2Native | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | PharaohLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | PharaohVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | Swapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | VaultV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | VeloLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | LoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | Swapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | Vault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | VeloLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | IPool | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | IRouter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | IVotingEscrow | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | Loan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | Vault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | VeloLoan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 140 |
| upstream | 27 |
| standard_library | 12 |
| needs_review | 367 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 51 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [4302] drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view
- [4303] drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view
- [4304] drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view
- [4305] drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view

Fork inheritance lineage and inherited audits are included when available.
