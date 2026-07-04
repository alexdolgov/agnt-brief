# Agentic Audit Brief: 40 Acres

## Project Overview

- Project: 40 Acres (`40-acres`)
- Website: [https://www.40acres.finance/](https://www.40acres.finance/)
- Lifecycle: active (Tier 0, 35.9% below peak)
- Generated: 2026-07-03T21:05:23.668Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: avalanche, base, ethereum, optimism
- Contract surface: 651 unique implementations (937 raw deployments)
- DeFi Llama TVL: $48,475,149.15
- On-chain TVL (included contracts): $9,508,715.32
- TVL by chain: Base $7,421,362.47 | Avalanche $1,189,486.54 | Optimism $897,866.31

## Project Description

Lending. Structurally: 155 project-authored contract(s) across 4 chain(s); 2 ERC4626 vaults, 9 ERC20 tokens, 6 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 21 common project-authored base contract(s) (ownable2stepupgradeable, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 945; live-surface contracts included: 932 (401 live, 531 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/135 (0.0%)
- Deployed-live implementations: 136 of 651 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/143
- Verified + Unaudited implementations: 142
- Verified by bytecode match: 1
- Unverified implementations: 508
- Unique implementations: 651
- Raw deployments: 937
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $9,508,715.32
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (142)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | base | n/a | 5 deployments: optimism `0x08dcdb...285957`; base [`0x053e49...19e3e9`](./contracts/base-8453/0x053e49f058851bb56469ebce4905b320fe19e3e9/); base `0xb99b6d...507cf5`; avalanche `0x80bab9...b62ec9`; avalanche `0x844054...8f2a90` | ⚠️ Unaudited |
| Vault | core_logic | avalanche | n/a | 2 deployments: avalanche [`0xc0485c...04bcfd`](./contracts/avalanche-43114/0xc0485c4bafb594ae1457820fb6e5b67e8a04bcfd/); avalanche `0xf8e312...a8a612` | ⚠️ Unaudited |
| AccessHub | unknown | avalanche | n/a | 9 deployments: avalanche [`0x0253d2...fee4f1`](./contracts/avalanche-43114/0x0253d249a5e16269230fa81a58c104f5aafee4f1/); avalanche `0x081125...e2ebbe`; avalanche `0x272cd3...ea4bfb`; avalanche `0x639c4b...fb2c89`; avalanche `0x6c6fc8...a6eeb0`; avalanche `0x88451a...0c91e6`; avalanche `0xa9bf90...8660f0`; avalanche `0xaa589d...5c92ae`; avalanche `0xc2a104...fc9eba` | ⚠️ Unaudited |
| AccessHubDLMMActions | unknown | avalanche | n/a | [`0x1a4203...5d6cfb`](./contracts/avalanche-43114/0x1a4203a52ceed651d30cb038698382a8905d6cfb/) | ⚠️ Unaudited |
| AccessHubPhar | unknown | avalanche | n/a | 3 deployments: avalanche [`0x06e053...118e1b`](./contracts/avalanche-43114/0x06e05378a63a904afe03a6723cd1cbd9ec118e1b/); avalanche `0x282a4f...c096ec`; avalanche `0x3f3af1...3c9e4f` | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | avalanche | n/a | [`0x580be5...294bfc`](./contracts/avalanche-43114/0x580be59a0461eae3414352c0abd88e485a294bfc/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | avalanche | n/a | 3 deployments: avalanche [`0x01a8a0...77271a`](./contracts/avalanche-43114/0x01a8a00a6fc8106b94f84aabaef689fd0d77271a/); avalanche `0x9c70be...248f5c`; avalanche `0xb6180a...c40fe5` | ⚠️ Unaudited |
| AlgebraFactory | registry | avalanche | n/a | [`0x512eb7...5e9e5f`](./contracts/avalanche-43114/0x512eb749541b7cf294be882d636218c84a5e9e5f/) | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | avalanche | n/a | [`0x9df945...5be48e`](./contracts/avalanche-43114/0x9df9457d5c55b4c880dc86c67ae323b00b5be48e/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | avalanche | n/a | [`0x9b2441...8dba1e`](./contracts/avalanche-43114/0x9b2441037e286d5bf9456a3be7b5273fe28dba1e/) | ⚠️ Unaudited |
| AlgebraVaultFactory | registry | avalanche | n/a | [`0xdc0b5d...d079b3`](./contracts/avalanche-43114/0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3/) | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | avalanche | n/a | 3 deployments: avalanche [`0x649638...0eaf03`](./contracts/avalanche-43114/0x64963852966aa7ff2258434f361ec933bf0eaf03/); avalanche `0x7d51ed...fb37ab`; avalanche `0xbbe734...1ebb32` | ⚠️ Unaudited |
| AutoVault | core_logic | avalanche | n/a | 4 deployments: avalanche [`0x47a2c1...2c8825`](./contracts/avalanche-43114/0x47a2c15eeeef5018a3e13caf987b235d702c8825/); avalanche `0x4bb193...ab5586`; avalanche `0x51d6ab...9b3d4b`; avalanche `0xa44cb7...299aeb` | ⚠️ Unaudited |
| BasePluginV3Factory | registry | avalanche | n/a | 2 deployments: avalanche [`0x5af551...1176ff`](./contracts/avalanche-43114/0x5af551ba1bf743978b42d4e133bff8b6231176ff/); avalanche `0x74544e...e52ed0` | ⚠️ Unaudited |
| Black | unknown | avalanche | n/a | [`0xcd94a8...1c43f6`](./contracts/avalanche-43114/0xcd94a87696fac69edae3a70fe5725307ae1c43f6/) | ⚠️ Unaudited |
| BlackholeClaimingFacet | unknown | avalanche | n/a | 2 deployments: ethereum `0x96d264...94ca85`; avalanche [`0x0ec20b...bbf384`](./contracts/avalanche-43114/0x0ec20bd81b95334c9956e3eccaa04c103ebbf384/) | ⚠️ Unaudited |
| BlackholeCollateralFacet | unknown | ethereum | n/a | [`0x7915be...3d866c`](./contracts/ethereum-1/0x7915be57450df10a8da82bec64d98b09703d866c/) | ⚠️ Unaudited |
| BlackholeLoan | unknown | avalanche | n/a | [`0x93d12d...82cc55`](./contracts/avalanche-43114/0x93d12defa81c589a6fc1b8750fdfa29d9182cc55/) | ⚠️ Unaudited |
| BlackholeLoanV2 | unknown | avalanche | n/a | 13 deployments: avalanche [`0x07055a...d4adfc`](./contracts/avalanche-43114/0x07055a7f85e85cace75f6e0f98a56ca717d4adfc/); avalanche `0x1b0951...7a3802`; avalanche `0x21b48f...f3c35e`; avalanche `0x389c15...6d8163`; avalanche `0x3c7645...349a5c`; avalanche `0x90e222...1c4bb4`; avalanche `0x948050...9d50df`; avalanche `0x99f630...7a95d1`; avalanche `0xa738e4...e5ea28`; avalanche `0xc932a4...ff7b0f`; avalanche `0xe13fcd...2dd86e`; avalanche `0xed2b3e...ed59bb`; avalanche `0xf4cac2...488d89` | ⚠️ Unaudited |
| BlackholeLoanV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x5122f5...623558`](./contracts/avalanche-43114/0x5122f5154df20e5f29df53e633ce1ac5b6623558/); avalanche `0x693ab0...440cdb` | ⚠️ Unaudited |
| BlackholeMarketplaceFacet | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7e99c2...1b1a93`](./contracts/ethereum-1/0x7e99c22f3951386cdb032b9992fe1cb8f51b1a93/); ethereum `0x9536a1...f55980`; ethereum `0xda42b8...811b49` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | avalanche | n/a | [`0x3935f7...e32d43`](./contracts/avalanche-43114/0x3935f7e11e33e676b6108f6e86ab8578d8e32d43/) | ⚠️ Unaudited |
| BlackholeRebaseHelper | periphery | avalanche | n/a | [`0x87d0f8...9bde0c`](./contracts/avalanche-43114/0x87d0f8c19a891c13c85185d8ba71ab1a419bde0c/) | ⚠️ Unaudited |
| BlackholeRewardsProcessingFacet | unknown | ethereum | n/a | 10 deployments: ethereum [`0x129a76...2057e0`](./contracts/ethereum-1/0x129a760274721e84af287f30d4b0fd091b2057e0/); ethereum `0x4d5512...1d6819`; ethereum `0x6cb266...a11eff`; ethereum `0x73b1e5...05fa68`; ethereum `0x7b9e8a...ee9a16`; ethereum `0x824659...8ce24a`; ethereum `0xc5cb7b...a721b5`; ethereum `0xd14ff8...fd70e5`; ethereum `0xd7763c...c0b8a5`; avalanche `0x20f0c0...b41bc7` | ⚠️ Unaudited |
| BlackholeVotingEscrowFacet | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x45a5af...623337`](./contracts/ethereum-1/0x45a5afcaf55ac7784f3c3c4647efdf6944623337/); ethereum `0x774ebf...7ac577`; ethereum `0x7956ff...2d4891`; ethereum `0xacaf4b...93a8a3`; ethereum `0xb9d9d0...393e2c`; ethereum `0xdd9e19...5c5238`; avalanche `0xdb6e78...8a59ac` | ⚠️ Unaudited |
| BridgeFeeWrapper | operational_periphery | avalanche | n/a | [`0x8c2207...b8888b`](./contracts/avalanche-43114/0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b/) | ⚠️ Unaudited |
| ClaimingFacet | unknown | ethereum | n/a | 5 deployments: ethereum [`0x68ebca...8fdbd7`](./contracts/ethereum-1/0x68ebca9e306939794987ed4543631e718a8fdbd7/); ethereum `0x6bb7fb...4616cd`; ethereum `0xb58d41...fe5d66`; ethereum `0xc01a94...f658b1`; ethereum `0xdae3a4...e9fb60` | ⚠️ Unaudited |
| CollateralFacet | unknown | ethereum | n/a | 13 deployments: ethereum [`0x034ecc...d2bc12`](./contracts/ethereum-1/0x034eccde44e7faa6c79bf1d456bbb7ab39d2bc12/); ethereum `0x0d7bc9...8ac712`; ethereum `0x1f5f48...1cfb3b`; ethereum `0x2039d3...071669`; ethereum `0x26eb63...ecbed2`; ethereum `0x38089f...399635`; ethereum `0x42425c...8e21f5`; ethereum `0x6aa922...b93c99`; ethereum `0x71ffb6...62ea1f`; ethereum `0x8e4fb2...4b9c04`; ethereum `0xc3b716...44bdc1`; ethereum `0xcf27f7...456cd6`; avalanche `0x249146...e3bd50` | ⚠️ Unaudited |
| CommunityRewards | unknown | base | n/a | 3 deployments: optimism `0x66d640...39b873`; base [`0x3c113d...57e46d`](./contracts/base-8453/0x3c113d68c2eeb665c2219b26d3090074e257e46d/); base `0xe63f5f...109aa2` | ⚠️ Unaudited |
| DLMMFactory | registry | avalanche | n/a | [`0xeb4800...a23d4d`](./contracts/avalanche-43114/0xeb480050b016f6c6d45203d2346b68bddda23d4d/) | ⚠️ Unaudited |
| DLMMFeeCollector | unknown | avalanche | n/a | [`0x684b34...42289c`](./contracts/avalanche-43114/0x684b340014556d15d754b812ef7d1b134b42289c/) | ⚠️ Unaudited |
| DLMMPool | core_logic | avalanche | n/a | [`0xf41253...26d710`](./contracts/avalanche-43114/0xf41253c1258a7a3c291e695158267b173c26d710/) | ⚠️ Unaudited |
| DLMMQuoter | periphery | avalanche | n/a | [`0xddae0a...5fef40`](./contracts/avalanche-43114/0xddae0aa4e93be4936c1bcc12d3001b35c75fef40/) | ⚠️ Unaudited |
| DLMMRewarder | unknown | avalanche | n/a | 3 deployments: avalanche [`0x015f05...a037b3`](./contracts/avalanche-43114/0x015f051b1fe0df7693a9dc348bc48c608aa037b3/); avalanche `0xa2ab12...059513`; avalanche `0xf1996b...120ab7` | ⚠️ Unaudited |
| DLMMRouter | adapter | avalanche | n/a | [`0xff2bef...f5d93d`](./contracts/avalanche-43114/0xff2befc4ff86cb0f3e8d3d9d6200b7a05bf5d93d/) | ⚠️ Unaudited |
| DynamicYieldBasisLpClaimingFacet | unknown | ethereum | n/a | [`0xbd394c...de777c`](./contracts/ethereum-1/0xbd394c7769b0872082fa5bccc9cfbca528de777c/) | ⚠️ Unaudited |
| DynamicYieldBasisLpFacet | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcbe1ef...2b7ed7`](./contracts/ethereum-1/0xcbe1efe94e88ee54794a32044b390dbb0e2b7ed7/); ethereum `0xf5bdac...8b1197` | ⚠️ Unaudited |
| DynamicYieldBasisLpLendingFacet | core_logic | ethereum | n/a | [`0x00d2f4...24ebb9`](./contracts/ethereum-1/0x00d2f4f21bfe658f836010900f887618a924ebb9/) | ⚠️ Unaudited |
| DynamicYieldBasisLpRewardsProcessingFacet | unknown | ethereum | n/a | [`0xd8de50...755a4c`](./contracts/ethereum-1/0xd8de50803d77d4bc20276cc884f8d00f3a755a4c/) | ⚠️ Unaudited |
| EntryPoint | unknown | optimism | n/a | [`0xaad038...d2056b`](./contracts/optimism-10/0xaad038102e8b5630a89f4b77d5aef59868d2056b/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | [`0x0e23a4...06d0ec`](./contracts/ethereum-1/0x0e23a4eb753334e747cd164c8dea620e0306d0ec/) | ⚠️ Unaudited |
| ERC4626LendingFacet | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x329f7a...af7d41`](./contracts/ethereum-1/0x329f7a20eae3eea7d300d85eb300bc4f2caf7d41/); ethereum `0x59a0ec...1bf08d`; ethereum `0x5f940c...d8484a`; ethereum `0x7b6f50...6b80e8`; ethereum `0xff17eb...c89ad6` | ⚠️ Unaudited |
| ERC721ReceiverFacet | token | ethereum | n/a | 4 deployments: ethereum [`0x3c28fa...d96579`](./contracts/ethereum-1/0x3c28fa57f8cd5751eb5dcd8d53c10651d7d96579/); ethereum `0x5ce0a3...18ea8e`; ethereum `0x9203c2...8ac60a`; ethereum `0xc6ed60...e82700` | ⚠️ Unaudited |
| FacetRegistry | registry | avalanche | n/a | [`0x9bca68...4943de`](./contracts/avalanche-43114/0x9bca68d9c613dc9b07b2727c28b5ce46204943de/) | ⚠️ Unaudited |
| FarmingCenter | unknown | avalanche | n/a | 3 deployments: avalanche [`0xa47ad2...b3a449`](./contracts/avalanche-43114/0xa47ad2c95fae476a73b85a355a5855adb4b3a449/); avalanche `0xcbf15e...0932ab`; avalanche `0xcecc64...f45541` | ⚠️ Unaudited |
| FeeCollector | unknown | avalanche | n/a | 3 deployments: avalanche [`0x088e2e...53bb64`](./contracts/avalanche-43114/0x088e2efad10f3262e745c6c01f661112f353bb64/); avalanche `0x1e1e2a...8437bc`; avalanche `0x82a411...185222` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | avalanche | n/a | 2 deployments: avalanche [`0x233433...3adc02`](./contracts/avalanche-43114/0x2334338da0bb192dcfc33356f5d1cc6bc03adc02/); avalanche `0x6a8591...106aa9` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | avalanche | n/a | [`0x5af7fa...5125ac`](./contracts/avalanche-43114/0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac/) | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | avalanche | n/a | [`0x227fab...4de16f`](./contracts/avalanche-43114/0x227fabb4db11cc082ef8cd083cff5d034d4de16f/) | ⚠️ Unaudited |
| FortyAcresMarketplaceFacet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2b0a87...aa7f25`](./contracts/ethereum-1/0x2b0a8766ea8d4ae8b2b8abf0fd1a3793c8aa7f25/); ethereum `0x678648...4a071e` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | 3 deployments: base [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/); avalanche `0xaecb52...f50586`; avalanche `0xd9a63c...5906b1` | ⚠️ Unaudited |
| GaugeManager | operational_periphery | avalanche | n/a | [`0x93c601...dc0b8f`](./contracts/avalanche-43114/0x93c601c31145185787dab3617d6b419894dc0b8f/) | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x6c6630...c66de5`](./contracts/avalanche-43114/0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5/); avalanche `0xdd3589...f3f946` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | avalanche | n/a | 3 deployments: avalanche [`0x15c50a...24d292`](./contracts/avalanche-43114/0x15c50acd86be6be893ab57cf4f47d0da7e24d292/); avalanche `0x19ff41...d7fcd8`; avalanche `0xdb7361...0da90e` | ⚠️ Unaudited |
| GenesisPoolFactory | registry | avalanche | n/a | [`0xdeb50a...53260f`](./contracts/avalanche-43114/0xdeb50ac7a0a03332626b3c45eb20e7310653260f/) | ⚠️ Unaudited |
| GenesisPoolManager | core_logic | avalanche | n/a | [`0x0eb1e1...4840dd`](./contracts/avalanche-43114/0x0eb1e103116b8ec5f13a72f6943440340c4840dd/) | ⚠️ Unaudited |
| KinkFeeCalculator | unknown | ethereum | n/a | [`0x4ca71e...ad7b1f`](./contracts/ethereum-1/0x4ca71eba4ecde733d3bd267fc08a011c1dad7b1f/) | ⚠️ Unaudited |
| LendingFacet | core_logic | avalanche | n/a | 2 deployments: ethereum `0x9ddbae...c807f4`; avalanche [`0x427c8b...e071b7`](./contracts/avalanche-43114/0x427c8b3de052ea4bbf0fb9c08b4f998fd4e071b7/) | ⚠️ Unaudited |
| Loan | unknown | ethereum | n/a | 22 deployments: ethereum [`0x16193d...e54fc9`](./contracts/ethereum-1/0x16193d68daeac524b4eb6e0981d732fa00e54fc9/); ethereum `0x9f242a...0ad874`; ethereum `0xef7475...f38d49`; ethereum `0xf46f93...524996`; optimism `0x16e2e8...b3e4d2`; optimism `0x20b7cd...b97f84`; optimism `0x2dee03...517a6b`; optimism `0x5122f5...623558`; optimism `0x6ca57c...691712`; optimism `0x761e20...d43c35`; optimism `0xdd233e...7884f1`; optimism `0xf00742...a50964`; optimism `0xf761ac...d13d01`; base `0x371d2b...b234e1`; base `0x3addab...7657fa`; base `0x8b51e5...836d9d`; base `0x92f4cf...408f0b`; base `0x9c0fc7...391d32`; base `0xdd9b03...c735c3`; base `0xebeb86...a29708`; base `0xf6a044...279b5f`; avalanche `0xa8b2c8...b77b57` | ⚠️ Unaudited |
| Loan | unknown | base | n/a | [`0x87f18b...58efd0`](./contracts/base-8453/0x87f18b377e625b62c708d5f6ea96ec193558efd0/) | ⚠️ Unaudited |
| LoanConfig | governance | ethereum | n/a | [`0x005130...7d2198`](./contracts/ethereum-1/0x005130b26f7b491e0a2adebfccb443789f7d2198/) | ⚠️ Unaudited |
| LoanV2Native | unknown | base | n/a | 5 deployments: base [`0x2acf5c...cacdec`](./contracts/base-8453/0x2acf5cde1f0ccaed7cc9b457df0232eb87cacdec/); base `0x71a28f...476341`; base `0xe2addc...f7e108`; base `0xf535d5...5caf27`; base `0xf755ec...f249c4` | ⚠️ Unaudited |
| MerkleClaim | operational_periphery | optimism | n/a | [`0x00d59b...777a49`](./contracts/optimism-10/0x00d59bc35174c3b250dd92a363495d38c8777a49/) | ⚠️ Unaudited |
| MevModule | unknown | avalanche | n/a | [`0xab5598...5309d8`](./contracts/avalanche-43114/0xab559850a251a6ebdba31076019ccf44165309d8/) | ⚠️ Unaudited |
| MevModule | unknown | avalanche | n/a | [`0xe7187f...9975c4`](./contracts/avalanche-43114/0xe7187f0d21e1039e8fd8346aa4f9a7c9f99975c4/) | ⚠️ Unaudited |
| MigrationFacet | operational_periphery | avalanche | n/a | 2 deployments: ethereum `0x38dbdb...191878`; avalanche [`0x2d7182...dec4da`](./contracts/avalanche-43114/0x2d7182dea0b0f1a5167f0a21e6fd5bf537dec4da/) | ⚠️ Unaudited |
| Minter | operational_periphery | optimism | n/a | 4 deployments: optimism [`0x3460dc...a4102d`](./contracts/optimism-10/0x3460dc71a8863710d1c907b8d9d5dbc053a4102d/); optimism `0x6dc9e1...d10982`; base `0xeb0183...a33fe5`; avalanche `0xd23f12...222fde` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | avalanche | n/a | [`0x3265d6...99a8a0`](./contracts/avalanche-43114/0x3265d621c7d993151c8eb2acd4902cda0499a8a0/) | ⚠️ Unaudited |
| MockPoolDeployer | core_logic | avalanche | n/a | [`0x491280...4f3e96`](./contracts/avalanche-43114/0x49128053ae71470a6670895bb932ce19384f3e96/) | ⚠️ Unaudited |
| MummyFacet | unknown | avalanche | n/a | [`0x69fc8b...16ab61`](./contracts/avalanche-43114/0x69fc8b02a6e80b554ec8a2223ad331f22c16ab61/) | ⚠️ Unaudited |
| NFTDescriptor | token | avalanche | n/a | 2 deployments: avalanche [`0x469412...519e13`](./contracts/avalanche-43114/0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13/); avalanche `0xf91d96...ec3485` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0xbb5dfe...56adf4`](./contracts/optimism-10/0xbb5dfe1380333cee4c2eebd7202c80de2256adf4/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | avalanche | n/a | 3 deployments: avalanche [`0x3fed01...252146`](./contracts/avalanche-43114/0x3fed017ec0f5517cdf2e8a9a4156c64d74252146/); avalanche `0xbf5b19...9b9d70`; avalanche `0xfd1c72...329545` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | avalanche | n/a | [`0x6f17db...60a89a`](./contracts/avalanche-43114/0x6f17db548544a19162e82b20c67abee99960a89a/) | ⚠️ Unaudited |
| P33 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x26e9db...926ca9`](./contracts/avalanche-43114/0x26e9dbe75aed331e41272bece932ff1b48926ca9/); avalanche `0x640d2e...8867e6`; avalanche `0xcda419...22ca80`; avalanche `0xd8ee2b...4d4bd8` | ⚠️ Unaudited |
| PairBootstrapper | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa053ca...e09a22`](./contracts/avalanche-43114/0xa053ca9c51524d67e5e435c62031ad2031e09a22/); avalanche `0xa589c8...b2bd8d` | ⚠️ Unaudited |
| PairFactory | registry | optimism | n/a | [`0x25cbdd...b6b746`](./contracts/optimism-10/0x25cbddb98b35ab1ff77413456b31ec81a6b6b746/) | ⚠️ Unaudited |
| PairGenerator | unknown | avalanche | n/a | [`0x34098b...9afe1c`](./contracts/avalanche-43114/0x34098b39ec2e2c1a8f815bb8fa840d0d389afe1c/) | ⚠️ Unaudited |
| PermissionsRegistry | registry | avalanche | n/a | [`0x751b71...1a65ff`](./contracts/avalanche-43114/0x751b7152aa11e39216cd00c0f65311efdf1a65ff/) | ⚠️ Unaudited |
| Pharaoh | unknown | avalanche | n/a | [`0x13a466...1f28e7`](./contracts/avalanche-43114/0x13a466998ce03db73abc2d4df3bbd845ed1f28e7/) | ⚠️ Unaudited |
| PharaohLoanV2 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x094f0f...01b598`](./contracts/avalanche-43114/0x094f0fd0175cb751b2b1c2d9f4f013e1cf01b598/); avalanche `0xa9ad26...da14b0`; avalanche `0xc9651a...c088da`; avalanche `0xf4172a...5dc563` | ⚠️ Unaudited |
| PharaohLoanV2Native | unknown | avalanche | n/a | [`0x54c269...206ad9`](./contracts/avalanche-43114/0x54c269cf9712ab099ae1668b031f719156206ad9/) | ⚠️ Unaudited |
| PluginV3Deployer | unknown | avalanche | n/a | 2 deployments: avalanche [`0xecbbc0...7863d3`](./contracts/avalanche-43114/0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3/); avalanche `0xefc098...bde662` | ⚠️ Unaudited |
| PortfolioAccountConfig | governance | ethereum | n/a | [`0x400c71...f80dd8`](./contracts/ethereum-1/0x400c710cbeadc5bb8b7132b3061fa1b6d6f80dd8/) | ⚠️ Unaudited |
| PortfolioFactory | registry | avalanche | n/a | [`0x52d43c...ea96c2`](./contracts/avalanche-43114/0x52d43c377e498980135c8f2e858f120a18ea96c2/) | ⚠️ Unaudited |
| PortfolioFactoryConfig | registry | ethereum | n/a | [`0x2cbf76...d9c61b`](./contracts/ethereum-1/0x2cbf7604dd5b7cd4873917a5a5d06c6b2fd9c61b/) | ⚠️ Unaudited |
| PortfolioManager | governance | optimism | n/a | 3 deployments: optimism [`0x40ac2e...6529ec`](./contracts/optimism-10/0x40ac2e40acb7bdd6ec83e468143262fe216529ec/); base [`0x40ac2e...6529ec`](./contracts/base-8453/0x40ac2e40acb7bdd6ec83e468143262fe216529ec/); avalanche [`0x40ac2e...6529ec`](./contracts/avalanche-43114/0x40ac2e40acb7bdd6ec83e468143262fe216529ec/) | ⚠️ Unaudited |
| PortfolioMarketplace | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a4ffb...b95826`](./contracts/ethereum-1/0x4a4ffbb55123837544f3bb13f0da2e9189b95826/); ethereum `0xb71d66...68ceb2` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | [`0xd76306...c74bed`](./contracts/avalanche-43114/0xd763061cc3015642ca104496107bc69944c74bed/) | ⚠️ Unaudited |
| Quoter | periphery | avalanche | n/a | 2 deployments: avalanche [`0x7a88c4...48d214`](./contracts/avalanche-43114/0x7a88c46740fdfe446dd6ad97cc0a94716848d214/); avalanche `0xadae75...456465` | ⚠️ Unaudited |
| QuoterV2 | periphery | avalanche | n/a | 2 deployments: avalanche [`0x3e182b...9eb689`](./contracts/avalanche-43114/0x3e182bcf14be6142b9217847ec1112e3c39eb689/); avalanche `0xb72973...ea2138` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | avalanche | n/a | 8 deployments: avalanche [`0x00409b...3a4eea`](./contracts/avalanche-43114/0x00409b267f4573f601cbcdf3b9f0b27a263a4eea/); avalanche `0x906b98...81dfdb`; avalanche `0x9e89a0...727e01`; avalanche `0xa47aa2...466de0`; avalanche `0xaf9440...d4c011`; avalanche `0xd57ec4...d057e6`; avalanche `0xec8962...5fdc81`; avalanche `0xf2593b...5984b1` | ⚠️ Unaudited |
| RamsesV3Factory | registry | avalanche | n/a | [`0xae6e5c...157d0d`](./contracts/avalanche-43114/0xae6e5c62328ade73ceefd42228528b70c8157d0d/) | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | avalanche | n/a | [`0x6a4113...7c66f9`](./contracts/avalanche-43114/0x6a4113ed0915bcf5e48e758e8f4cebffc07c66f9/) | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | avalanche | n/a | [`0x0b4478...ab4f39`](./contracts/avalanche-43114/0x0b4478e810d48b5882d4019d435a2f864bab4f39/) | ⚠️ Unaudited |
| RedeemCommunityShares | unknown | optimism | n/a | 2 deployments: optimism [`0x7ac9d0...3f7f52`](./contracts/optimism-10/0x7ac9d050926e1add934eaea2b9cb0fcb923f7f52/); optimism `0x9fd29c...255447` | ⚠️ Unaudited |
| RewardsConfigFacet | governance | ethereum | n/a | 10 deployments: ethereum [`0x14b58f...06ddef`](./contracts/ethereum-1/0x14b58f61042293aafcfbc051721c21e41306ddef/); ethereum `0x21732f...08f284`; ethereum `0x497beb...f42ee0`; ethereum `0x583e50...3af590`; ethereum `0x64bde9...22f808`; ethereum `0x842d8f...bb9876`; ethereum `0x9864fc...156236`; ethereum `0xe2a27a...4dd053`; ethereum `0xf625d2...736552`; avalanche `0x2271e0...da9cdd` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | 4 deployments: optimism `0x5d5bea...3f784f`; optimism `0x9d4736...1ea99b`; base [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/); avalanche `0x7c7bd8...83ba28` | ⚠️ Unaudited |
| RewardsProcessingFacet | unknown | ethereum | n/a | [`0x83d5a4...bccd8c`](./contracts/ethereum-1/0x83d5a42a6444e9f08c5e424e80bc43b9b7bccd8c/) | ⚠️ Unaudited |
| Router | adapter | avalanche | n/a | 4 deployments: optimism `0xa062ae...8b2858`; optimism `0xa132da...23f9c9`; base `0xcf77a3...874e43`; avalanche [`0x9cee04...5e38cc`](./contracts/avalanche-43114/0x9cee04bdce127da7e448a333f006defb3d5e38cc/) | ⚠️ Unaudited |
| RouterHelperZap | adapter | avalanche | n/a | [`0xd68b9c...9636e1`](./contracts/avalanche-43114/0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1/) | ⚠️ Unaudited |
| RouterV2 | adapter | avalanche | n/a | 2 deployments: avalanche [`0x04e1de...212fec`](./contracts/avalanche-43114/0x04e1dee021cd12bba022a72806441b43d8212fec/); avalanche `0x9eed16...f3c111` | ⚠️ Unaudited |
| SecurityRegistry | registry | avalanche | n/a | 2 deployments: avalanche [`0x275e24...d82cb5`](./contracts/avalanche-43114/0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5/); avalanche `0xd2fe84...537b02` | ⚠️ Unaudited |
| SinkManager | governance | optimism | n/a | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | ⚠️ Unaudited |
| SwapConfig | governance | ethereum | n/a | [`0x1e3cb8...8771b2`](./contracts/ethereum-1/0x1e3cb82154197582f8b725d9550600b99c8771b2/) | ⚠️ Unaudited |
| Swapper | adapter | base | n/a | 6 deployments: optimism `0x0fdf76...876e70`; optimism `0x3e366f...bb3f17`; optimism `0x5ae73f...cfb142`; base [`0x0638ad...c83982`](./contracts/base-8453/0x0638add2b856e0a6157f2bae3aa08c2923c83982/); avalanche `0x5ae73f...cfb142`; avalanche `0x5c7b76...faa680` | ⚠️ Unaudited |
| SwapRouter | adapter | avalanche | n/a | 3 deployments: avalanche [`0x9daea9...90acc5`](./contracts/avalanche-43114/0x9daea9462ff3dd535643e07be587517a9790acc5/); avalanche `0xabfc48...19709d`; avalanche `0xc8b8fc...d3915c` | ⚠️ Unaudited |
| TickLens | periphery | avalanche | n/a | 2 deployments: avalanche [`0x3a7aeb...94a100`](./contracts/avalanche-43114/0x3a7aeb3c33922073f4f23207d0ff247e9694a100/); avalanche `0xe66aae...4a822e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | [`0xfe99e9...131aa0`](./contracts/avalanche-43114/0xfe99e92df71f53a26005d1bfbe54c941a3131aa0/) | ⚠️ Unaudited |
| UniversalRouter | adapter | avalanche | n/a | 2 deployments: optimism `0xf132bd...3eb817`; avalanche [`0x5acc35...8ec6c6`](./contracts/avalanche-43114/0x5acc35397d2ce81ac54a4b1c6d9e1fb29f8ec6c6/) | ⚠️ Unaudited |
| Vault | core_logic | optimism | n/a | 2 deployments: optimism [`0x844054...8f2a90`](./contracts/optimism-10/0x84405466bd98fd2d16093e120268a416058f2a90/); optimism `0xb2607f...a348a8` | ⚠️ Unaudited |
| Vault | core_logic | optimism | n/a | 2 deployments: optimism [`0xc0485c...04bcfd`](./contracts/optimism-10/0xc0485c4bafb594ae1457820fb6e5b67e8a04bcfd/); optimism `0xfaa5c8...454c54` | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| Velo | token | optimism | n/a | 2 deployments: optimism [`0x3c8b65...a11a05`](./contracts/optimism-10/0x3c8b650257cfb5f272f799f5e2b4e65093a11a05/); optimism `0x9560e8...1088db` | ⚠️ Unaudited |
| VeloLoan | unknown | optimism | n/a | 30 deployments: optimism [`0x053ae6...880c0b`](./contracts/optimism-10/0x053ae60117b2a90041e6872b18403ab102880c0b/); optimism `0x100451...8a94fb`; optimism `0x16f521...064e3d`; optimism `0x3e8f20...c798ab`; optimism `0x4425dc...3f6e80`; optimism `0x44306f...841f3e`; optimism `0x56d6ab...8675dc`; optimism `0x5b0e7b...c1cab1`; optimism `0x60301f...0eb35b`; optimism `0x6c2eaa...a4b63f`; optimism `0x72b760...d62db9`; optimism `0x7af553...1d00aa`; optimism `0x81116f...0e0706`; optimism `0x8f7486...e8265d`; optimism `0x9261c5...63bf14`; optimism `0x9e3311...1284c2`; optimism `0x9f8380...b4eb85`; optimism `0x9fc666...cd7193`; optimism `0xa747d2...bbe604`; optimism `0xaba559...526c9d`; optimism `0xb28795...bc5947`; optimism `0xc34ed8...e3ac6d`; optimism `0xc4c2e1...775f72`; optimism `0xc8bf1a...e182b8`; optimism `0xcc5cc6...e39b75`; optimism `0xd00de8...b56f8e`; optimism `0xd2f7bc...fe2e1e`; optimism `0xe685f0...713118`; optimism `0xf6a044...279b5f`; optimism `0xfdb262...bc7489` | ⚠️ Unaudited |
| VeloLoan | unknown | optimism | n/a | 2 deployments: optimism [`0x08c137...d81873`](./contracts/optimism-10/0x08c1375266b77841621b20586ef159b6e1d81873/); optimism `0x1ed734...722b42` | ⚠️ Unaudited |
| VeloLoan | unknown | optimism | n/a | 2 deployments: optimism [`0x26ecad...ca3f2a`](./contracts/optimism-10/0x26ecad2dcb7fc8431db5dace522ba972c2ca3f2a/); optimism `0xf18fcd...5f4a68` | ⚠️ Unaudited |
| VeloLoan | unknown | optimism | n/a | 2 deployments: optimism [`0x972b1a...86ed3a`](./contracts/optimism-10/0x972b1ac00dfb287f244205b379f4565ab286ed3a/); optimism `0xf132bd...ba06a7` | ⚠️ Unaudited |
| VeloLoanNative | unknown | optimism | n/a | 3 deployments: optimism [`0x2421cf...8c86dc`](./contracts/optimism-10/0x2421cfd0b6f92418b64e7edb30d22734cf8c86dc/); optimism `0xc506fe...477181`; optimism `0xfa6e22...d84c40` | ⚠️ Unaudited |
| VeloLoanNative | unknown | optimism | n/a | 2 deployments: optimism [`0x7d4ffa...0dfe59`](./contracts/optimism-10/0x7d4ffaf369e92b4a6b696eb7bae7345f290dfe59/); optimism `0xf8e312...a8a612` | ⚠️ Unaudited |
| VeloLoanNative | unknown | optimism | n/a | 2 deployments: optimism [`0x8c0ae2...1c0315`](./contracts/optimism-10/0x8c0ae206a52d3fdde6d43ea5b5cbbbe00e1c0315/); optimism `0xbfb12b...f1e54b` | ⚠️ Unaudited |
| VeloLoanNative | unknown | optimism | n/a | 2 deployments: optimism [`0xa48b8d...82e4b2`](./contracts/optimism-10/0xa48b8dd90f8c3763175e9f8d2171e0528582e4b2/); optimism `0xf4172a...5dc563` | ⚠️ Unaudited |
| veNFTAPI | token | avalanche | n/a | [`0xb3629c...b35de9`](./contracts/avalanche-43114/0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9/) | ⚠️ Unaudited |
| VoteModule | unknown | avalanche | n/a | [`0x34f233...6f846b`](./contracts/avalanche-43114/0x34f233f868cdb42446a18562710ee705d66f846b/) | ⚠️ Unaudited |
| Voter | unknown | optimism | n/a | 8 deployments: optimism [`0x09236c...b8cf7e`](./contracts/optimism-10/0x09236cff45047dbee6b921e00704bed6d6b8cf7e/); optimism `0x41c914...5abf3c`; base `0x166135...c480a5`; avalanche `0x31a8a3...925d35`; avalanche `0x677e39...ab35f2`; avalanche `0x9334f3...45af21`; avalanche `0xaf6c9a...af4019`; avalanche `0xe59b0f...12d82a` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | optimism | n/a | 4 deployments: optimism [`0x9c7305...9a2e26`](./contracts/optimism-10/0x9c7305eb78a432ced5c4d14cac27e8ed569a2e26/); optimism `0xfaf8fd...06787d`; base `0xebf418...67e6b4`; avalanche `0xeac562...9ad763` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | avalanche | n/a | [`0xaaaea1...b9ce6f`](./contracts/avalanche-43114/0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f/) | ⚠️ Unaudited |
| VotingEscrowSplitHelper | operational_periphery | avalanche | n/a | [`0x1d67c7...500e6f`](./contracts/avalanche-43114/0x1d67c7729135583f2ee11fd34c7921a8ae500e6f/) | ⚠️ Unaudited |
| VotingFacet | unknown | ethereum | n/a | 8 deployments: ethereum [`0x1eaf3c...de23e5`](./contracts/ethereum-1/0x1eaf3ca8063292f4098e7fe761b864a176de23e5/); ethereum `0x34ea0b...1cf0f3`; ethereum `0x721924...ae6841`; ethereum `0x7a4e22...9e9c6c`; ethereum `0x7e1d83...846c3a`; ethereum `0xa043e9...b8359c`; ethereum `0xf92899...4fc59d`; avalanche `0x2c34c8...486b8b` | ⚠️ Unaudited |
| WalletFacet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8bc6e8...d4ee26`](./contracts/ethereum-1/0x8bc6e85f8b5b0011e5e929ebe85151f9e0d4ee26/); ethereum `0xf01077...7ff6a4` | ⚠️ Unaudited |
| XPhar | unknown | avalanche | n/a | [`0xe8164e...736b9a`](./contracts/avalanche-43114/0xe8164ea89665dab7a553e667f81f30cfda736b9a/) | ⚠️ Unaudited |
| XPharaohFacet | unknown | avalanche | n/a | 6 deployments: avalanche [`0x150c52...faf08d`](./contracts/avalanche-43114/0x150c52c1e8707c2e4372974e352bbf20bafaf08d/); avalanche `0x63f44f...499a1c`; avalanche `0x6cdf7c...cee747`; avalanche `0x79be5a...32e6d2`; avalanche `0x8a1800...7a3941`; avalanche `0xef7475...f38d49` | ⚠️ Unaudited |
| XPharaohLegacyClaimFacet | unknown | avalanche | n/a | [`0x2e9234...44b8b3`](./contracts/avalanche-43114/0x2e92345305cf7791a8af02d80a1af16d4b44b8b3/) | ⚠️ Unaudited |
| XPharaohLoan | unknown | avalanche | n/a | 13 deployments: avalanche [`0x0a5261...8d89e0`](./contracts/avalanche-43114/0x0a5261faf3a3d717b7d8f6e7f80654a2de8d89e0/); avalanche `0x16193d...e54fc9`; avalanche `0x20fbab...b2ceef`; avalanche `0x5b60c8...a9f099`; avalanche `0x5ce0a3...18ea8e`; avalanche `0x6f61a2...74947a`; avalanche `0x94bc48...5abb86`; avalanche `0xa1fa45...7f0947`; avalanche `0xacdf06...3bcb9b`; avalanche `0xbfb7ea...283d7e`; avalanche `0xc7d6b8...ea16ce`; avalanche `0xcfeda4...48a253`; avalanche `0xdd1427...ac522c` | ⚠️ Unaudited |
| YieldBasisFacet | unknown | ethereum | n/a | 6 deployments: ethereum [`0x3501bf...34035d`](./contracts/ethereum-1/0x3501bf4b2640474d93a4321c4b9302ab6834035d/); ethereum `0x628011...c88d6e`; ethereum `0x79b756...bafb08`; ethereum `0x94bc48...5abb86`; ethereum `0xc6ef62...7caff4`; ethereum `0xc99639...ceab16` | ⚠️ Unaudited |
| YieldBasisLegacyMigrationFacet | operational_periphery | ethereum | n/a | [`0xdf8e26...56f167`](./contracts/ethereum-1/0xdf8e2629f9fcd6f202e39baeeff3b3418b56f167/) | ⚠️ Unaudited |
| YieldBasisLpClaimingFacet | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0b5a25...0ad298`](./contracts/ethereum-1/0x0b5a252fc951a6bc59ee3670571b64be580ad298/); ethereum `0x2d70fd...48e4b1`; ethereum `0x3779e4...dca87f`; ethereum `0xbef11e...ef2a4d`; ethereum `0xf64893...00e1aa` | ⚠️ Unaudited |
| YieldBasisLpFacet | unknown | ethereum | n/a | 7 deployments: ethereum [`0x12ae9b...611e67`](./contracts/ethereum-1/0x12ae9b941da833325030f01f39c1d01a01611e67/); ethereum `0x3c30cc...ee3d08`; ethereum `0x57f8e9...ffb5a3`; ethereum `0x595913...425b46`; ethereum `0x91cf64...e8a891`; ethereum `0xb3fb3a...957eb5`; ethereum `0xc5da07...87b95f` | ⚠️ Unaudited |
| YieldBasisLpLendingFacet | core_logic | ethereum | n/a | [`0x7f6296...c5dadf`](./contracts/ethereum-1/0x7f6296d24e5a175cd9b7b18026822a709bc5dadf/) | ⚠️ Unaudited |
| YieldBasisLpRewardsProcessingFacet | unknown | ethereum | n/a | 5 deployments: ethereum [`0x3f64f2...d0281f`](./contracts/ethereum-1/0x3f64f216e72cfa881bdb9848765594abc2d0281f/); ethereum `0x63edac...6e9279`; ethereum `0x746815...139081`; ethereum `0x9e67db...587d02`; ethereum `0xb676b7...41cd42` | ⚠️ Unaudited |
| YieldBasisVotingFacet | unknown | ethereum | n/a | 7 deployments: ethereum [`0x4057b0...29582b`](./contracts/ethereum-1/0x4057b08ce8665a1c9482aefd0e1ccb8b2c29582b/); ethereum `0x6243e6...890cc1`; ethereum `0x87b8d3...066140`; ethereum `0x98779d...33ab4e`; ethereum `0xb5b865...d659f4`; ethereum `0xddb402...b90555`; ethereum `0xe108ff...ee838c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | avalanche | n/a | 8 deployments: optimism `0x555709...b8433f`; optimism `0x828322...283fe6`; avalanche [`0x124d00...09bac7`](./contracts/avalanche-43114/0x124d00b1ce4453ffc5a5f65ce83af13a7709bac7/); avalanche `0x5523f1...2bf7b5`; avalanche `0x6c2eaa...a4b63f`; avalanche `0x7af553...1d00aa`; avalanche `0xad2fc8...b8c9cb`; avalanche `0xd3e726...2b11d4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (508)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PharaohLoanV2 | unknown | avalanche | n/a | 2 deployments: avalanche `0xd16443...42e0c6`; avalanche `0xf6a044...279b5f` | ❓ Unverified |
| Proxy (impl: 0x65b80810a0d229e01adf7f38a1d67f3fd3baf8f8) | proxy | avalanche | n/a | 2 deployments: avalanche `0x60301f...0eb35b`; avalanche `0x65b808...baf8f8` | ❓ Unverified |
| Proxy (impl: 0xba0a8519e08cfe85eaa3e879d6ee5f460076c386) | proxy | avalanche | n/a | 2 deployments: avalanche `0x723ae1...b99a02`; avalanche `0xba0a85...76c386` | ❓ Unverified |
| Proxy (impl: 0xc99eb17309d7c6bdd96373db1e42412e0e1d44a1) | proxy | avalanche | n/a | 2 deployments: avalanche `0xbed7c0...791647`; avalanche `0xc99eb1...1d44a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00a706...f48b07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01e9e8...2e9a2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x054ca4...2526a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0715f1...46974b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x082efb...5609dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a5261...8d89e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0aa0e4...19ac9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c9e1e...f00717` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ec20b...bbf384` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x105c64...211320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11dee1...122ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x121650...a40aa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x148d1c...e8d27c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17cd3c...1fd397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a3381...cf534c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bdd3d...f9e8d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d7ce3...080ced` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fd766...a2c8f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x204bee...f74ba3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x249146...e3bd50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2563ea...78fca0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x264085...06bb48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c34c8...486b8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d31fa...6bb111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e9234...44b8b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d18b...77bfab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x323354...63a746` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32ccc6...d37a92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3646c4...bd4390` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3938f0...04a0f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e5b18...f16daf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42d937...b96cb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43d43b...8cb8e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bbe7c...f682c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ecc8b...3ba7a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50c767...92d677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52d43c...ea96c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54f394...465464` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a9317...376e65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c0709...c77e85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c7b76...faa680` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x643001...917df8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6aa887...8f1087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bf2fe...6c8d2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cacba...dd4e70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7640fa...d5ef5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x794207...9f149a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f04f2...7bc4dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f072c...0dd086` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80951b...5ec037` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8165d3...d9b567` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x826b8e...13b6fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x842a57...2fcfa6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8706fd...087012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a66bc...c6730e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d104e...fa1a03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e3e0c...c6fc99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91d4bb...7ff934` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x991fe8...cf9472` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c4c32...a06d55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dbe46...658785` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4bb09...5b77e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa60d8a...f18089` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8b2c8...b77b57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9ad26...da14b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabc23e...70bed4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac0de1...c49364` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae2f38...9e62c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb05e6f...b7e47d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb14e0a...194770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb24a25...dea72c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb48238...fd7cb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb543db...99e4a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6e5f4...13d9fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb74527...6c0570` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbae094...d5348f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb0b59...54ccd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe69bf...97f279` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbef435...a38e06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfeb34...721c55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7d6b8...ea16ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc85da8...67b208` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9651a...c088da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaa4a3...548193` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce4c9d...a17f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0a0a1...f9cb4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd458b1...0d27c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4ed85...f5dec1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd504da...138f7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5f0df...505eac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6516f...4b4205` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd89b3a...b3b352` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb9a62...5ce46a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdebee5...226e0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdfe75c...bb6c52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe125f0...2e12b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1caf5...7e5159` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe29512...2598c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8951c...8029d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecb7ea...3c7b77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed3217...50b228` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedb423...d03db8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0bd31...f1c661` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf37075...6562b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4db82...d7cd3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf778b5...9dd0e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfab5e5...0ea96c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x005c6a...f9fa16` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0452df...02e3c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x06824d...29ab74` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x07f544...36f5ce` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x08947e...3f75d4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0a16cb...41d305` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0b3ba5...3f12d1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0b98e0...8a7356` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x133606...f6f78a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1486aa...11465f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x157dc2...368552` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1d5951...9df276` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1f3f75...e5078f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1f82e1...cbe989` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x209ce0...98e3f5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x20ffdb...3655ec` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x282ac0...f1592a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2c9988...834ff8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x301e46...943a1b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x380f23...12b4c2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x388c59...832f15` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3bf15b...1e9f88` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3f468e...142e9c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3fc8e6...38e2eb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x45ff00...ce78a4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x495193...447a69` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x49f248...30d3a4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4a039e...a8bd51` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4a9ea0...1782dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4bc0e3...bf1c8f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4d5787...74dc40` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x53ca9c...2611e3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x548118...8ac758` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5669b3...1b7ab9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x585af0...34f18d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x58f62e...cbfca2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a41a5...c289de` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a6f7f...26678a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a9932...9345d0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5d467a...3f5900` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5f2f67...dcfa1d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x61f42c...f1cdde` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x628ee3...9a678f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x629e12...7cd905` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6315dc...3056a3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x64dd80...d96c9e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6666b2...39ec4c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6d600c...332bad` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x71c05b...3b660a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x737464...aefd30` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x756e7c...ada8ec` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x77c839...0f4b51` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x785de6...350521` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x795551...3086a8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x79bca9...1f8dce` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7e4b99...aa7406` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7ef270...dc1d9e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x81944c...4c5e85` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x829f78...61bea9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8391fe...835071` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x846e82...25a951` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x848cfd...7ca13c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8526d8...dcac42` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x88d3cd...b82690` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8e5433...5e6700` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8f8fef...ffc08d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x90a1de...5b0e96` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x95885a...64e531` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9630dd...82d1e3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x98f3df...2c8279` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa22d25...1b5e14` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa2decf...63ce45` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa4ac92...76df62` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa5c362...6dfee2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa84ea9...6b748e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa8854e...aa5fc3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa90991...3aea73` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa9c319...69e9c1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb18cb9...9497de` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb81774...632777` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xba81ec...283896` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbcba2d...f2045b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbdd6f9...5170ef` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc38c3c...7d71e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc5be2c...fa42c5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc9b828...af648e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcdd958...05cff0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xda03dc...3b17ec` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdce58b...146ec0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdf9db1...560653` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe07eaa...eced54` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe0a596...a05d37` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe3c5e2...93fa51` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe92752...074eba` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe9321c...bc6f50` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf10460...e5ff5a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf3488a...211b1a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf41f45...d32e04` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf4c67c...aa1d7b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf74741...318cb8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfaa0a0...4301f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfb9155...1ff8a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x030ad5...5a9fe3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x043413...f62b4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x053ae6...880c0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x05f018...325b07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08dcdb...285957` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b3a74...d9990e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b4a35...6f4c82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x100451...8a94fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x12a31b...2fc92d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x142ce7...fc9717` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15e627...a05dcc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x18c2ab...e6fe20` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c0527...9b1af9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d75c4...1a216f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1dc763...d3b858` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x201e6f...5ca51d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20a27e...884498` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20b7cd...b97f84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21b48f...f3c35e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21fd41...946bcb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x23ca23...4c1d0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25244f...2b9553` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x26ecad...ca3f2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28fe58...b4d92a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37eb65...5f44fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ab1a1...1be23d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c7645...349a5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x420dd3...ce40da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4425dc...3f6e80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x457fea...765b6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45ca74...52b504` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x478805...58d421` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c8c3f...3d4f24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51e5a0...d89fd5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x536d46...aca7f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53bfd2...fb1f86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5523f1...2bf7b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56e0e3...cf4e4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c0116...50a9fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c3f18...9e37c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63a993...59566e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69e679...7c6972` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6bd652...5bafe6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x723ae1...b99a02` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x746514...c63913` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x761e20...d43c35` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x775a59...a9ae0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x776ec8...585b43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x780cc3...c7c2ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81116f...0e0706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81ce73...8e7246` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83ac60...b57e70` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x849ac2...6b306a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ac5aa...a04dfe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e6341...53b648` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fbe84...d73821` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x90af87...daf390` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x94c012...33f410` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c58aa...f56971` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e3311...1284c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f1f6f...94d32b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9fc666...cd7193` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa217ca...7f1e1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4e46b...3cd6d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa8deab...1c2046` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xad4edc...bd37ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf20d7...98714a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7c3ac...1b019e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb88dcf...4509c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba0a85...76c386` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2425b...092fc8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc34ed8...e3ac6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc4c2e1...775f72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc99eb1...1d44a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc5cc6...e39b75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce6b7f...8436c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0a246...a8316b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd1cfbc...0b5b4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2f7bc...fe2e1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3e726...2b11d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5ea7d...b82c6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6e6d5...31d59f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde8ac9...35835f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe02398...609cce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe2493c...4ffdc5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe31ed4...361dc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4c69a...bc382f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe685f0...713118` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec0af9...8be22f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeda1e6...93c061` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeec8f8...3b8a4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf132bd...ba06a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf18fcd...5f4a68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4c17e...b0dd26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf761ac...d13d01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb5053...95fbea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfda1fb...d2bdc3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdb262...bc7489` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x019070...22e1c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x01e9e8...2e9a2f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x02db23...af1cfd`; avalanche `0x4a039e...a8bd51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x031a97...8cd262` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x038cba...0268bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x054d96...dcd54c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x065028...349aef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x088703...432779` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0aff49...76efa2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c7417...95b54d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0ce185...6ab41d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0dea37...ad26f8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e23a4...06d0ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x109309...2a82aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1112f6...9dfec3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x14e4e3...e51cc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x15913e...2522bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16766b...9c99ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x17cd3c...1fd397` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18bf86...7d001f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19844c...33f0b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a624b...c66297` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a6ed8...d89d6f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1bdd3d...f9e8d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20cbeb...00cdd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2155f3...8327dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21760a...2d66b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21dadc...261a16` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23b216...9a81e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x242ec3...f20758` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x263625...27c84e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26dd96...473cc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x27ae8c...02c0f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x28fe58...b4d92a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x29cd88...3afb41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2b17bf...73b6bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ca45d...3eac06` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e694d...8256d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3176f6...4bf483` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3388a5...f56196` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34c196...210981` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3646c4...bd4390` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3755df...ed11c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x376021...0ab3d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3c28fa...d96579` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3c3945...509051` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d3921...84ecd3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f90e9...da61d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x400c71...f80dd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4057b0...29582b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x428b74...9534ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x438aa2...49bf5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x43c4b7...4bf8db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44306f...841f3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x469ab2...cbd534` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x48b1d4...133ace` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4cd133...e520f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x516ab0...789f85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x51d22d...284e25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52a7ab...0a4e33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52ae67...be8d21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5363e3...8f0f7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x53d569...4ae480` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x553901...6f9988` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x56e0e3...cf4e4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58318f...9631d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58b050...c56994` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x59aa17...76cbf6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b0f5a...5929e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b2c91...c517bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d433a...960584` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d9916...968293` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5ef387...1eff43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fbdf3...9b60c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6243e6...890cc1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x631c0e...88b41b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x638dc9...a1dab8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x645ac0...6adaf4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x646fff...4848a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6499d2...be40d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65b8ba...352d29` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65e36a...f8c485` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x660862...e97882` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66c665...974091` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b1915...bfd9da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b6a3d...a6ea5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6bcce3...2b54a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6bd81e...0c4525` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6bf2fe...6c8d2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c4acf...7baf2f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6cab65...f993d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6cdc88...5f8c3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x70fd0f...e39f43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71775f...55325a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73aa9a...e42619` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73c4b0...e8cdbc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75a1c4...b5f690` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x79d6b8...fc2229` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7dbab3...2f4ff4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f257a...5edfc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x81dd8a...783d27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x824dbc...3f0296` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x83700b...d0b21f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x83ac60...b57e70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85448b...58f8c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86cf4b...84428a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86eba1...f753e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87f18b...58efd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88a49c...2a9cd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x89d3a5...c5366d`; avalanche `0x9f41a8...3e72d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8ba179...978fdc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8ce534...f8830e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f6c94...c287c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x903ade...bb5a82` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91b8c8...4f7736` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x922b9c...8a2aa7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x943444...899bf7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x973012...d0dd44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x98e329...afd615` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9aebf5...1c2f8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b0c4d...20b47b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9cc445...50104f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9d45e1...ee0bb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9de4f9...871685` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e95ef...ca6552` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f1f6f...94d32b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f52f2...d4d74f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa46552...951c68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa90bc0...32cb7f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa9257e...b5431b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa9ba8b...b34430` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xacc34a...06479b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb43f10...6166fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb603a7...ca37d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb78ea5...160337` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb7c3ac...1b019e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb88897...2af336` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8f679...f98f45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb94ad9...229aa8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb98c60...006150` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc02ff1...f4a69f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc046f2...221aee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc200e6...c60524` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2b3bd...951fdf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc35af3...d3f422` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc45c20...6af5f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9384c...2e7012` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc99757...43d783` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xca756e...23afde` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcad684...c01b01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcf9fe8...846e59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd00de8...b56f8e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd0a246...a8316b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd1447c...bda08a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd28467...88548c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2f7bc...fe2e1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4862a...414369` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd5d364...f4de90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd5ea7d...b82c6c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd62c86...3f01d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6b661...0049b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd8d82c...107ba6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc469e...a15c84` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdca25b...3df21e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcfccf...125d29` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xde8ac9...35835f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe02398...609cce` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0e637...7c9300` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe168fc...2f06c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe30d0c...64d9e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe46d24...67b5e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe56531...07d04e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe57aec...c6b942` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5be02...a17508` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe63f0d...64ec12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe685f0...713118` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe809b7...4d2a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe93b68...e5fc95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe946a9...f2f981` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe98aec...1cf0be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xea6f59...03219b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec0af9...8be22f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec9099...3033d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf00742...a50964` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf0274c...485b99` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf03ce4...90a1f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf18fcd...5f4a68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf19a0f...8bfb9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1f46f...db9f94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf31632...66d51b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf582b0...31cc6e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf7f32f...54112e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf9221d...45d767` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc508b...864c46` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe8428...b365df` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe9260...8c265c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff39c5...3b2fb6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view](https://drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view](https://drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view](https://drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view](https://drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x053e49...19e3e9`](./contracts/base-8453/0x053e49f058851bb56469ebce4905b320fe19e3e9/) | Vault | core_logic | $8,319,228.74 | Verified native implementation with $8,319,228.74 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x124d00...09bac7`](./contracts/avalanche-43114/0x124d00b1ce4453ffc5a5f65ce83af13a7709bac7/) | Vault | core_logic | $526,296.84 | Verified native implementation with $526,296.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0253d2...fee4f1`](./contracts/avalanche-43114/0x0253d249a5e16269230fa81a58c104f5aafee4f1/) | AccessHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1a4203...5d6cfb`](./contracts/avalanche-43114/0x1a4203a52ceed651d30cb038698382a8905d6cfb/) | AccessHubDLMMActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x06e053...118e1b`](./contracts/avalanche-43114/0x06e05378a63a904afe03a6723cd1cbd9ec118e1b/) | AccessHubPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdc0b5d...d079b3`](./contracts/avalanche-43114/0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3/) | AlgebraVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x649638...0eaf03`](./contracts/avalanche-43114/0x64963852966aa7ff2258434f361ec933bf0eaf03/) | AutomatedFeeNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x47a2c1...2c8825`](./contracts/avalanche-43114/0x47a2c15eeeef5018a3e13caf987b235d702c8825/) | AutoVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcd94a8...1c43f6`](./contracts/avalanche-43114/0xcd94a87696fac69edae3a70fe5725307ae1c43f6/) | Black | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0ec20b...bbf384`](./contracts/avalanche-43114/0x0ec20bd81b95334c9956e3eccaa04c103ebbf384/) | BlackholeClaimingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7915be...3d866c`](./contracts/ethereum-1/0x7915be57450df10a8da82bec64d98b09703d866c/) | BlackholeCollateralFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x93d12d...82cc55`](./contracts/avalanche-43114/0x93d12defa81c589a6fc1b8750fdfa29d9182cc55/) | BlackholeLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x07055a...d4adfc`](./contracts/avalanche-43114/0x07055a7f85e85cace75f6e0f98a56ca717d4adfc/) | BlackholeLoanV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e99c2...1b1a93`](./contracts/ethereum-1/0x7e99c22f3951386cdb032b9992fe1cb8f51b1a93/) | BlackholeMarketplaceFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3935f7...e32d43`](./contracts/avalanche-43114/0x3935f7e11e33e676b6108f6e86ab8578d8e32d43/) | BlackholePairAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x87d0f8...9bde0c`](./contracts/avalanche-43114/0x87d0f8c19a891c13c85185d8ba71ab1a419bde0c/) | BlackholeRebaseHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x129a76...2057e0`](./contracts/ethereum-1/0x129a760274721e84af287f30d4b0fd091b2057e0/) | BlackholeRewardsProcessingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45a5af...623337`](./contracts/ethereum-1/0x45a5afcaf55ac7784f3c3c4647efdf6944623337/) | BlackholeVotingEscrowFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8c2207...b8888b`](./contracts/avalanche-43114/0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b/) | BridgeFeeWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68ebca...8fdbd7`](./contracts/ethereum-1/0x68ebca9e306939794987ed4543631e718a8fdbd7/) | ClaimingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x034ecc...d2bc12`](./contracts/ethereum-1/0x034eccde44e7faa6c79bf1d456bbb7ab39d2bc12/) | CollateralFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3c113d...57e46d`](./contracts/base-8453/0x3c113d68c2eeb665c2219b26d3090074e257e46d/) | CommunityRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x684b34...42289c`](./contracts/avalanche-43114/0x684b340014556d15d754b812ef7d1b134b42289c/) | DLMMFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xddae0a...5fef40`](./contracts/avalanche-43114/0xddae0aa4e93be4936c1bcc12d3001b35c75fef40/) | DLMMQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd394c...de777c`](./contracts/ethereum-1/0xbd394c7769b0872082fa5bccc9cfbca528de777c/) | DynamicYieldBasisLpClaimingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbe1ef...2b7ed7`](./contracts/ethereum-1/0xcbe1efe94e88ee54794a32044b390dbb0e2b7ed7/) | DynamicYieldBasisLpFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00d2f4...24ebb9`](./contracts/ethereum-1/0x00d2f4f21bfe658f836010900f887618a924ebb9/) | DynamicYieldBasisLpLendingFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8de50...755a4c`](./contracts/ethereum-1/0xd8de50803d77d4bc20276cc884f8d00f3a755a4c/) | DynamicYieldBasisLpRewardsProcessingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xaad038...d2056b`](./contracts/optimism-10/0xaad038102e8b5630a89f4b77d5aef59868d2056b/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x329f7a...af7d41`](./contracts/ethereum-1/0x329f7a20eae3eea7d300d85eb300bc4f2caf7d41/) | ERC4626LendingFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c28fa...d96579`](./contracts/ethereum-1/0x3c28fa57f8cd5751eb5dcd8d53c10651d7d96579/) | ERC721ReceiverFacet | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9bca68...4943de`](./contracts/avalanche-43114/0x9bca68d9c613dc9b07b2727c28b5ce46204943de/) | FacetRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x088e2e...53bb64`](./contracts/avalanche-43114/0x088e2efad10f3262e745c6c01f661112f353bb64/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x233433...3adc02`](./contracts/avalanche-43114/0x2334338da0bb192dcfc33356f5d1cc6bc03adc02/) | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5af7fa...5125ac`](./contracts/avalanche-43114/0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac/) | FeeDistributorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x227fab...4de16f`](./contracts/avalanche-43114/0x227fabb4db11cc082ef8cd083cff5d034d4de16f/) | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b0a87...aa7f25`](./contracts/ethereum-1/0x2b0a8766ea8d4ae8b2b8abf0fd1a3793c8aa7f25/) | FortyAcresMarketplaceFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x93c601...dc0b8f`](./contracts/avalanche-43114/0x93c601c31145185787dab3617d6b419894dc0b8f/) | GaugeManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6c6630...c66de5`](./contracts/avalanche-43114/0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5/) | GaugeOwner | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x15c50a...24d292`](./contracts/avalanche-43114/0x15c50acd86be6be893ab57cf4f47d0da7e24d292/) | GaugeV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdeb50a...53260f`](./contracts/avalanche-43114/0xdeb50ac7a0a03332626b3c45eb20e7310653260f/) | GenesisPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0eb1e1...4840dd`](./contracts/avalanche-43114/0x0eb1e103116b8ec5f13a72f6943440340c4840dd/) | GenesisPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca71e...ad7b1f`](./contracts/ethereum-1/0x4ca71eba4ecde733d3bd267fc08a011c1dad7b1f/) | KinkFeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x427c8b...e071b7`](./contracts/avalanche-43114/0x427c8b3de052ea4bbf0fb9c08b4f998fd4e071b7/) | LendingFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16193d...e54fc9`](./contracts/ethereum-1/0x16193d68daeac524b4eb6e0981d732fa00e54fc9/) | Loan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x005130...7d2198`](./contracts/ethereum-1/0x005130b26f7b491e0a2adebfccb443789f7d2198/) | LoanConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2acf5c...cacdec`](./contracts/base-8453/0x2acf5cde1f0ccaed7cc9b457df0232eb87cacdec/) | LoanV2Native | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00d59b...777a49`](./contracts/optimism-10/0x00d59bc35174c3b250dd92a363495d38c8777a49/) | MerkleClaim | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xab5598...5309d8`](./contracts/avalanche-43114/0xab559850a251a6ebdba31076019ccf44165309d8/) | MevModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2d7182...dec4da`](./contracts/avalanche-43114/0x2d7182dea0b0f1a5167f0a21e6fd5bf537dec4da/) | MigrationFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3460dc...a4102d`](./contracts/optimism-10/0x3460dc71a8863710d1c907b8d9d5dbc053a4102d/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x491280...4f3e96`](./contracts/avalanche-43114/0x49128053ae71470a6670895bb932ce19384f3e96/) | MockPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x69fc8b...16ab61`](./contracts/avalanche-43114/0x69fc8b02a6e80b554ec8a2223ad331f22c16ab61/) | MummyFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x469412...519e13`](./contracts/avalanche-43114/0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6f17db...60a89a`](./contracts/avalanche-43114/0x6f17db548544a19162e82b20c67abee99960a89a/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x26e9db...926ca9`](./contracts/avalanche-43114/0x26e9dbe75aed331e41272bece932ff1b48926ca9/) | P33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x751b71...1a65ff`](./contracts/avalanche-43114/0x751b7152aa11e39216cd00c0f65311efdf1a65ff/) | PermissionsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x13a466...1f28e7`](./contracts/avalanche-43114/0x13a466998ce03db73abc2d4df3bbd845ed1f28e7/) | Pharaoh | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x094f0f...01b598`](./contracts/avalanche-43114/0x094f0fd0175cb751b2b1c2d9f4f013e1cf01b598/) | PharaohLoanV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x400c71...f80dd8`](./contracts/ethereum-1/0x400c710cbeadc5bb8b7132b3061fa1b6d6f80dd8/) | PortfolioAccountConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x52d43c...ea96c2`](./contracts/avalanche-43114/0x52d43c377e498980135c8f2e858f120a18ea96c2/) | PortfolioFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cbf76...d9c61b`](./contracts/ethereum-1/0x2cbf7604dd5b7cd4873917a5a5d06c6b2fd9c61b/) | PortfolioFactoryConfig | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x40ac2e...6529ec`](./contracts/optimism-10/0x40ac2e40acb7bdd6ec83e468143262fe216529ec/) | PortfolioManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a4ffb...b95826`](./contracts/ethereum-1/0x4a4ffbb55123837544f3bb13f0da2e9189b95826/) | PortfolioMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x00409b...3a4eea`](./contracts/avalanche-43114/0x00409b267f4573f601cbcdf3b9f0b27a263a4eea/) | RamsesTreasuryHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14b58f...06ddef`](./contracts/ethereum-1/0x14b58f61042293aafcfbc051721c21e41306ddef/) | RewardsConfigFacet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83d5a4...bccd8c`](./contracts/ethereum-1/0x83d5a42a6444e9f08c5e424e80bc43b9b7bccd8c/) | RewardsProcessingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd68b9c...9636e1`](./contracts/avalanche-43114/0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1/) | RouterHelperZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x275e24...d82cb5`](./contracts/avalanche-43114/0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | SinkManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e3cb8...8771b2`](./contracts/ethereum-1/0x1e3cb82154197582f8b725d9550600b99c8771b2/) | SwapConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0638ad...c83982`](./contracts/base-8453/0x0638add2b856e0a6157f2bae3aa08c2923c83982/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc0485c...04bcfd`](./contracts/optimism-10/0xc0485c4bafb594ae1457820fb6e5b67e8a04bcfd/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x053ae6...880c0b`](./contracts/optimism-10/0x053ae60117b2a90041e6872b18403ab102880c0b/) | VeloLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08c137...d81873`](./contracts/optimism-10/0x08c1375266b77841621b20586ef159b6e1d81873/) | VeloLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x26ecad...ca3f2a`](./contracts/optimism-10/0x26ecad2dcb7fc8431db5dace522ba972c2ca3f2a/) | VeloLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x972b1a...86ed3a`](./contracts/optimism-10/0x972b1ac00dfb287f244205b379f4565ab286ed3a/) | VeloLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2421cf...8c86dc`](./contracts/optimism-10/0x2421cfd0b6f92418b64e7edb30d22734cf8c86dc/) | VeloLoanNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7d4ffa...0dfe59`](./contracts/optimism-10/0x7d4ffaf369e92b4a6b696eb7bae7345f290dfe59/) | VeloLoanNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa48b8d...82e4b2`](./contracts/optimism-10/0xa48b8dd90f8c3763175e9f8d2171e0528582e4b2/) | VeloLoanNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x34f233...6f846b`](./contracts/avalanche-43114/0x34f233f868cdb42446a18562710ee705d66f846b/) | VoteModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x09236c...b8cf7e`](./contracts/optimism-10/0x09236cff45047dbee6b921e00704bed6d6b8cf7e/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1d67c7...500e6f`](./contracts/avalanche-43114/0x1d67c7729135583f2ee11fd34c7921a8ae500e6f/) | VotingEscrowSplitHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1eaf3c...de23e5`](./contracts/ethereum-1/0x1eaf3ca8063292f4098e7fe761b864a176de23e5/) | VotingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bc6e8...d4ee26`](./contracts/ethereum-1/0x8bc6e85f8b5b0011e5e929ebe85151f9e0d4ee26/) | WalletFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x150c52...faf08d`](./contracts/avalanche-43114/0x150c52c1e8707c2e4372974e352bbf20bafaf08d/) | XPharaohFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2e9234...44b8b3`](./contracts/avalanche-43114/0x2e92345305cf7791a8af02d80a1af16d4b44b8b3/) | XPharaohLegacyClaimFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0a5261...8d89e0`](./contracts/avalanche-43114/0x0a5261faf3a3d717b7d8f6e7f80654a2de8d89e0/) | XPharaohLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3501bf...34035d`](./contracts/ethereum-1/0x3501bf4b2640474d93a4321c4b9302ab6834035d/) | YieldBasisFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf8e26...56f167`](./contracts/ethereum-1/0xdf8e2629f9fcd6f202e39baeeff3b3418b56f167/) | YieldBasisLegacyMigrationFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b5a25...0ad298`](./contracts/ethereum-1/0x0b5a252fc951a6bc59ee3670571b64be580ad298/) | YieldBasisLpClaimingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12ae9b...611e67`](./contracts/ethereum-1/0x12ae9b941da833325030f01f39c1d01a01611e67/) | YieldBasisLpFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f6296...c5dadf`](./contracts/ethereum-1/0x7f6296d24e5a175cd9b7b18026822a709bc5dadf/) | YieldBasisLpLendingFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f64f2...d0281f`](./contracts/ethereum-1/0x3f64f216e72cfa881bdb9848765594abc2d0281f/) | YieldBasisLpRewardsProcessingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4057b0...29582b`](./contracts/ethereum-1/0x4057b08ce8665a1c9482aefd0e1ccb8b2c29582b/) | YieldBasisVotingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 138 |
| upstream | 27 |
| standard_library | 11 |
| needs_review | 475 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4302] drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view
- [4303] drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view
- [4304] drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view
- [4305] drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view

Fork inheritance lineage and inherited audits are included when available.
