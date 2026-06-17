# Agentic Audit Brief: 40 Acres

## Project Overview

- Project: 40 Acres (`40-acres`)
- Website: [https://www.40acres.finance/](https://www.40acres.finance/)
- Lifecycle: active (Tier 0, 57.7% below peak)
- Generated: 2026-06-17T07:00:47.433Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, base, ethereum, optimism
- Contract surface: 195 unique implementations (425 raw deployments)
- DeFi Llama TVL: $32,912,445.62
- On-chain TVL (included contracts): $8,725,742.54
- TVL by chain: Base $7,777,293.24 | Optimism $948,449.30

## Project Description

40 Acres is a DeFi lending protocol offering self-repaying, non-liquidating USDC loans against yield-bearing collateral and veNFTs. The live product is currently described as operating on Base, Optimism, and Avalanche; Ethereum deployments should be treated as historical, configuration, or deployment artifacts unless independently verified as live product contracts.

### Architecture

The 40 Acres family provides the core lending infrastructure (vaults, loan contracts, tokens) that is reused across chain-specific deployments like Base, Optimism, and Avalanche variants. Governance and configuration are centralized through shared VotingConfig, PortfolioManager, and various config contracts, while chain-specific loan and vault implementations inherit from the core logic.

## Contract Surface Quality

- Indexed contracts: 941; live-surface contracts included: 425 (425 live, 0 unknown).
- Excluded by liveness: 249 inactive, 267 singleton, 0 uninitialized.
- Deployment units: 7/137 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 27/219.

## Audit Coverage Summary

- Verified implementations audited: 0/128 (0.0%)
- Verified + Unaudited implementations: 128
- Verified by bytecode match: 0
- Unverified implementations: 67
- Unique implementations: 195
- Raw deployments: 425
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $8,725,742.54
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (128)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | base | n/a | 5 deployments: optimism `0x08dcdb...285957`; base [`0x053e49...19e3e9`](./contracts/base-8453/0x053e49f058851bb56469ebce4905b320fe19e3e9/); base `0xb99b6d...507cf5`; avalanche `0x80bab9...b62ec9`; avalanche `0x844054...8f2a90` | ⚠️ Unaudited |
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
| ERC1967Proxy | proxy | ethereum | unit-17758 | [`0x0e23a4...06d0ec`](./contracts/ethereum-1/0x0e23a4eb753334e747cd164c8dea620e0306d0ec/) | ⚠️ Unaudited |
| ERC4626LendingFacet | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x329f7a...af7d41`](./contracts/ethereum-1/0x329f7a20eae3eea7d300d85eb300bc4f2caf7d41/); ethereum `0x59a0ec...1bf08d`; ethereum `0x5f940c...d8484a`; ethereum `0x7b6f50...6b80e8`; ethereum `0xff17eb...c89ad6` | ⚠️ Unaudited |
| ERC721ReceiverFacet | token | ethereum | n/a | 4 deployments: ethereum [`0x3c28fa...d96579`](./contracts/ethereum-1/0x3c28fa57f8cd5751eb5dcd8d53c10651d7d96579/); ethereum `0x5ce0a3...18ea8e`; ethereum `0x9203c2...8ac60a`; ethereum `0xc6ed60...e82700` | ⚠️ Unaudited |
| FacetRegistry | registry | avalanche | n/a | [`0x9bca68...4943de`](./contracts/avalanche-43114/0x9bca68d9c613dc9b07b2727c28b5ce46204943de/) | ⚠️ Unaudited |
| FarmingCenter | unknown | avalanche | n/a | 3 deployments: avalanche [`0xa47ad2...b3a449`](./contracts/avalanche-43114/0xa47ad2c95fae476a73b85a355a5855adb4b3a449/); avalanche `0xcbf15e...0932ab`; avalanche `0xcecc64...f45541` | ⚠️ Unaudited |
| FeeCollector | unknown | avalanche | n/a | 3 deployments: avalanche [`0x088e2e...53bb64`](./contracts/avalanche-43114/0x088e2efad10f3262e745c6c01f661112f353bb64/); avalanche `0x1e1e2a...8437bc`; avalanche `0x82a411...185222` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | avalanche | n/a | 2 deployments: avalanche [`0x233433...3adc02`](./contracts/avalanche-43114/0x2334338da0bb192dcfc33356f5d1cc6bc03adc02/); avalanche `0x6a8591...106aa9` | ⚠️ Unaudited |
| FortyAcresMarketplaceFacet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2b0a87...aa7f25`](./contracts/ethereum-1/0x2b0a8766ea8d4ae8b2b8abf0fd1a3793c8aa7f25/); ethereum `0x678648...4a071e` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | 3 deployments: base [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/); avalanche `0xaecb52...f50586`; avalanche `0xd9a63c...5906b1` | ⚠️ Unaudited |
| GaugeManager | operational_periphery | avalanche | n/a | [`0x93c601...dc0b8f`](./contracts/avalanche-43114/0x93c601c31145185787dab3617d6b419894dc0b8f/) | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x6c6630...c66de5`](./contracts/avalanche-43114/0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5/); avalanche `0xdd3589...f3f946` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | avalanche | n/a | 3 deployments: avalanche [`0x15c50a...24d292`](./contracts/avalanche-43114/0x15c50acd86be6be893ab57cf4f47d0da7e24d292/); avalanche `0x19ff41...d7fcd8`; avalanche `0xdb7361...0da90e` | ⚠️ Unaudited |
| GenesisPoolFactory | registry | avalanche | n/a | [`0xdeb50a...53260f`](./contracts/avalanche-43114/0xdeb50ac7a0a03332626b3c45eb20e7310653260f/) | ⚠️ Unaudited |
| GenesisPoolManager | core_logic | avalanche | n/a | [`0x0eb1e1...4840dd`](./contracts/avalanche-43114/0x0eb1e103116b8ec5f13a72f6943440340c4840dd/) | ⚠️ Unaudited |
| KinkFeeCalculator | unknown | ethereum | n/a | [`0x4ca71e...ad7b1f`](./contracts/ethereum-1/0x4ca71eba4ecde733d3bd267fc08a011c1dad7b1f/) | ⚠️ Unaudited |
| LendingFacet | core_logic | avalanche | n/a | 2 deployments: ethereum `0x9ddbae...c807f4`; avalanche [`0x427c8b...e071b7`](./contracts/avalanche-43114/0x427c8b3de052ea4bbf0fb9c08b4f998fd4e071b7/) | ⚠️ Unaudited |
| Loan | unknown | ethereum | n/a | 19 deployments: ethereum [`0x16193d...e54fc9`](./contracts/ethereum-1/0x16193d68daeac524b4eb6e0981d732fa00e54fc9/); ethereum `0x9f242a...0ad874`; ethereum `0xef7475...f38d49`; ethereum `0xf46f93...524996`; optimism `0x16e2e8...b3e4d2`; optimism `0x20b7cd...b97f84`; optimism `0x2dee03...517a6b`; optimism `0x5122f5...623558`; optimism `0x6ca57c...691712`; optimism `0x761e20...d43c35`; base `0x371d2b...b234e1`; base `0x3addab...7657fa`; base `0x8b51e5...836d9d`; base `0x92f4cf...408f0b`; base `0x9c0fc7...391d32`; base `0xdd9b03...c735c3`; base `0xebeb86...a29708`; base `0xf6a044...279b5f`; avalanche `0xa8b2c8...b77b57` | ⚠️ Unaudited |
| Loan | unknown | base | unit-17822 | [`0x87f18b...58efd0`](./contracts/base-8453/0x87f18b377e625b62c708d5f6ea96ec193558efd0/) | ⚠️ Unaudited |
| LoanConfig | governance | ethereum | n/a | [`0x005130...7d2198`](./contracts/ethereum-1/0x005130b26f7b491e0a2adebfccb443789f7d2198/) | ⚠️ Unaudited |
| LoanV2Native | unknown | base | n/a | 5 deployments: base [`0x2acf5c...cacdec`](./contracts/base-8453/0x2acf5cde1f0ccaed7cc9b457df0232eb87cacdec/); base `0x71a28f...476341`; base `0xe2addc...f7e108`; base `0xf535d5...5caf27`; base `0xf755ec...f249c4` | ⚠️ Unaudited |
| MerkleClaim | operational_periphery | optimism | n/a | [`0x00d59b...777a49`](./contracts/optimism-10/0x00d59bc35174c3b250dd92a363495d38c8777a49/) | ⚠️ Unaudited |
| MevModule | unknown | avalanche | n/a | [`0xab5598...5309d8`](./contracts/avalanche-43114/0xab559850a251a6ebdba31076019ccf44165309d8/) | ⚠️ Unaudited |
| MevModule | unknown | avalanche | unit-17884 | [`0xe7187f...9975c4`](./contracts/avalanche-43114/0xe7187f0d21e1039e8fd8346aa4f9a7c9f99975c4/) | ⚠️ Unaudited |
| MigrationFacet | operational_periphery | avalanche | n/a | 2 deployments: ethereum `0x38dbdb...191878`; avalanche [`0x2d7182...dec4da`](./contracts/avalanche-43114/0x2d7182dea0b0f1a5167f0a21e6fd5bf537dec4da/) | ⚠️ Unaudited |
| Minter | operational_periphery | optimism | n/a | 4 deployments: optimism [`0x3460dc...a4102d`](./contracts/optimism-10/0x3460dc71a8863710d1c907b8d9d5dbc053a4102d/); optimism `0x6dc9e1...d10982`; base `0xeb0183...a33fe5`; avalanche `0xd23f12...222fde` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | avalanche | n/a | [`0x3265d6...99a8a0`](./contracts/avalanche-43114/0x3265d621c7d993151c8eb2acd4902cda0499a8a0/) | ⚠️ Unaudited |
| MockPoolDeployer | core_logic | avalanche | n/a | [`0x491280...4f3e96`](./contracts/avalanche-43114/0x49128053ae71470a6670895bb932ce19384f3e96/) | ⚠️ Unaudited |
| MummyFacet | unknown | avalanche | n/a | [`0x69fc8b...16ab61`](./contracts/avalanche-43114/0x69fc8b02a6e80b554ec8a2223ad331f22c16ab61/) | ⚠️ Unaudited |
| NFTDescriptor | token | avalanche | n/a | 2 deployments: avalanche [`0x469412...519e13`](./contracts/avalanche-43114/0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13/); avalanche `0xf91d96...ec3485` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | unit-17812 | [`0xbb5dfe...56adf4`](./contracts/optimism-10/0xbb5dfe1380333cee4c2eebd7202c80de2256adf4/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | avalanche | n/a | 3 deployments: avalanche [`0x3fed01...252146`](./contracts/avalanche-43114/0x3fed017ec0f5517cdf2e8a9a4156c64d74252146/); avalanche `0xbf5b19...9b9d70`; avalanche `0xfd1c72...329545` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | avalanche | n/a | [`0x6f17db...60a89a`](./contracts/avalanche-43114/0x6f17db548544a19162e82b20c67abee99960a89a/) | ⚠️ Unaudited |
| P33 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x26e9db...926ca9`](./contracts/avalanche-43114/0x26e9dbe75aed331e41272bece932ff1b48926ca9/); avalanche `0x640d2e...8867e6`; avalanche `0xcda419...22ca80`; avalanche `0xd8ee2b...4d4bd8` | ⚠️ Unaudited |
| PairBootstrapper | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa053ca...e09a22`](./contracts/avalanche-43114/0xa053ca9c51524d67e5e435c62031ad2031e09a22/); avalanche `0xa589c8...b2bd8d` | ⚠️ Unaudited |
| PairFactory | registry | optimism | n/a | [`0x25cbdd...b6b746`](./contracts/optimism-10/0x25cbddb98b35ab1ff77413456b31ec81a6b6b746/) | ⚠️ Unaudited |
| PairGenerator | unknown | avalanche | n/a | [`0x34098b...9afe1c`](./contracts/avalanche-43114/0x34098b39ec2e2c1a8f815bb8fa840d0d389afe1c/) | ⚠️ Unaudited |
| PermissionsRegistry | registry | avalanche | n/a | [`0x751b71...1a65ff`](./contracts/avalanche-43114/0x751b7152aa11e39216cd00c0f65311efdf1a65ff/) | ⚠️ Unaudited |
| Pharaoh | unknown | avalanche | n/a | [`0x13a466...1f28e7`](./contracts/avalanche-43114/0x13a466998ce03db73abc2d4df3bbd845ed1f28e7/) | ⚠️ Unaudited |
| PharaohLoanV2 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x094f0f...01b598`](./contracts/avalanche-43114/0x094f0fd0175cb751b2b1c2d9f4f013e1cf01b598/); avalanche `0xa9ad26...da14b0`; avalanche `0xc9651a...c088da`; avalanche `0xf4172a...5dc563` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | avalanche | n/a | 2 deployments: avalanche [`0xecbbc0...7863d3`](./contracts/avalanche-43114/0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3/); avalanche `0xefc098...bde662` | ⚠️ Unaudited |
| PortfolioAccountConfig | governance | ethereum | n/a | [`0x400c71...f80dd8`](./contracts/ethereum-1/0x400c710cbeadc5bb8b7132b3061fa1b6d6f80dd8/) | ⚠️ Unaudited |
| PortfolioFactory | registry | avalanche | n/a | [`0x52d43c...ea96c2`](./contracts/avalanche-43114/0x52d43c377e498980135c8f2e858f120a18ea96c2/) | ⚠️ Unaudited |
| PortfolioFactoryConfig | registry | ethereum | n/a | [`0x2cbf76...d9c61b`](./contracts/ethereum-1/0x2cbf7604dd5b7cd4873917a5a5d06c6b2fd9c61b/) | ⚠️ Unaudited |
| PortfolioManager | governance | optimism | n/a | 2 deployments: optimism [`0x40ac2e...6529ec`](./contracts/optimism-10/0x40ac2e40acb7bdd6ec83e468143262fe216529ec/); base [`0x40ac2e...6529ec`](./contracts/base-8453/0x40ac2e40acb7bdd6ec83e468143262fe216529ec/) | ⚠️ Unaudited |
| PortfolioMarketplace | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a4ffb...b95826`](./contracts/ethereum-1/0x4a4ffbb55123837544f3bb13f0da2e9189b95826/); ethereum `0xb71d66...68ceb2` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | [`0xd76306...c74bed`](./contracts/avalanche-43114/0xd763061cc3015642ca104496107bc69944c74bed/) | ⚠️ Unaudited |
| Quoter | periphery | avalanche | n/a | 2 deployments: avalanche [`0x7a88c4...48d214`](./contracts/avalanche-43114/0x7a88c46740fdfe446dd6ad97cc0a94716848d214/); avalanche `0xadae75...456465` | ⚠️ Unaudited |
| QuoterV2 | periphery | avalanche | n/a | 2 deployments: avalanche [`0x3e182b...9eb689`](./contracts/avalanche-43114/0x3e182bcf14be6142b9217847ec1112e3c39eb689/); avalanche `0xb72973...ea2138` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | avalanche | n/a | 8 deployments: avalanche [`0x00409b...3a4eea`](./contracts/avalanche-43114/0x00409b267f4573f601cbcdf3b9f0b27a263a4eea/); avalanche `0x906b98...81dfdb`; avalanche `0x9e89a0...727e01`; avalanche `0xa47aa2...466de0`; avalanche `0xaf9440...d4c011`; avalanche `0xd57ec4...d057e6`; avalanche `0xec8962...5fdc81`; avalanche `0xf2593b...5984b1` | ⚠️ Unaudited |
| RamsesV3Factory | registry | avalanche | n/a | [`0xae6e5c...157d0d`](./contracts/avalanche-43114/0xae6e5c62328ade73ceefd42228528b70c8157d0d/) | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | avalanche | n/a | [`0x6a4113...7c66f9`](./contracts/avalanche-43114/0x6a4113ed0915bcf5e48e758e8f4cebffc07c66f9/) | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | avalanche | unit-17826 | [`0x0b4478...ab4f39`](./contracts/avalanche-43114/0x0b4478e810d48b5882d4019d435a2f864bab4f39/) | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | proxy | avalanche | unit-17891 | [`0xfe99e9...131aa0`](./contracts/avalanche-43114/0xfe99e92df71f53a26005d1bfbe54c941a3131aa0/) | ⚠️ Unaudited |
| UniversalRouter | adapter | avalanche | n/a | 2 deployments: optimism `0xf132bd...3eb817`; avalanche [`0x5acc35...8ec6c6`](./contracts/avalanche-43114/0x5acc35397d2ce81ac54a4b1c6d9e1fb29f8ec6c6/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| Velo | token | optimism | n/a | 2 deployments: optimism [`0x3c8b65...a11a05`](./contracts/optimism-10/0x3c8b650257cfb5f272f799f5e2b4e65093a11a05/); optimism `0x9560e8...1088db` | ⚠️ Unaudited |
| VeloLoan | unknown | optimism | n/a | 2 deployments: optimism [`0x100451...8a94fb`](./contracts/optimism-10/0x100451f9986161bd242b16381bd577f1c88a94fb/); optimism `0xcc5cc6...e39b75` | ⚠️ Unaudited |
| VeloLoanNative | unknown | optimism | n/a | 3 deployments: optimism [`0x2421cf...8c86dc`](./contracts/optimism-10/0x2421cfd0b6f92418b64e7edb30d22734cf8c86dc/); optimism `0xc506fe...477181`; optimism `0xfa6e22...d84c40` | ⚠️ Unaudited |
| veNFTAPI | token | avalanche | n/a | [`0xb3629c...b35de9`](./contracts/avalanche-43114/0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9/) | ⚠️ Unaudited |
| VoteModule | unknown | avalanche | n/a | [`0x34f233...6f846b`](./contracts/avalanche-43114/0x34f233f868cdb42446a18562710ee705d66f846b/) | ⚠️ Unaudited |
| Voter | unknown | optimism | n/a | 8 deployments: optimism [`0x09236c...b8cf7e`](./contracts/optimism-10/0x09236cff45047dbee6b921e00704bed6d6b8cf7e/); optimism `0x41c914...5abf3c`; base `0x166135...c480a5`; avalanche `0x31a8a3...925d35`; avalanche `0x677e39...ab35f2`; avalanche `0x9334f3...45af21`; avalanche `0xaf6c9a...af4019`; avalanche `0xe59b0f...12d82a` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | optimism | n/a | 4 deployments: optimism [`0x9c7305...9a2e26`](./contracts/optimism-10/0x9c7305eb78a432ced5c4d14cac27e8ed569a2e26/); optimism `0xfaf8fd...06787d`; base `0xebf418...67e6b4`; avalanche `0xeac562...9ad763` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | avalanche | unit-17869 | [`0xaaaea1...b9ce6f`](./contracts/avalanche-43114/0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f/) | ⚠️ Unaudited |
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

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (67)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x264085...06bb48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bbe7c...f682c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54f394...465464` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x794207...9f149a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaa4a3...548193` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x038cba...0268bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c7417...95b54d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0ce185...6ab41d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x109309...2a82aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x15913e...2522bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2155f3...8327dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x227fab...4de16f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x242ec3...f20758` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x27ae8c...02c0f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x28fe58...b4d92a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2b17bf...73b6bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34c196...210981` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x376021...0ab3d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f90e9...da61d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x428b74...9534ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x469ab2...cbd534` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4cd133...e520f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x51d22d...284e25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52a7ab...0a4e33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5af7fa...5125ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b0f5a...5929e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d9916...968293` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fbdf3...9b60c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x638dc9...a1dab8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6bcce3...2b54a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71775f...55325a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73aa9a...e42619` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75a1c4...b5f690` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7dbab3...2f4ff4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f257a...5edfc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x81dd8a...783d27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x83ac60...b57e70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85448b...58f8c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87f18b...58efd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88a49c...2a9cd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x903ade...bb5a82` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91b8c8...4f7736` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b0c4d...20b47b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9cc445...50104f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9de4f9...871685` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa9ba8b...b34430` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb7c3ac...1b019e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8f679...f98f45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc02ff1...f4a69f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc45c20...6af5f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcf9fe8...846e59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd5d364...f4de90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd62c86...3f01d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6b661...0049b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xde8ac9...35835f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0e637...7c9300` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe168fc...2f06c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe57aec...c6b942` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe63f0d...64ec12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe809b7...4d2a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe946a9...f2f981` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec0af9...8be22f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec9099...3033d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf00742...a50964` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1f46f...db9f94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf31632...66d51b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff39c5...3b2fb6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [View Report](https://drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [View Report](https://drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [View Report](https://drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [View Report](https://drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 195 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4302] View Report
- [4303] View Report
- [4304] View Report
- [4305] View Report

Fork inheritance lineage and inherited audits are included when available.
